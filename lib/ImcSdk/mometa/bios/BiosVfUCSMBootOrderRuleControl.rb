#This module contains the general information for BiosVfUCSMBootOrderRuleControl ManagedObject.

require_relative '../../imcmo'
require_relative '../../imccoremeta'
require_relative '../../imcmeta'


class BiosVfUCSMBootOrderRuleControlConsts
    VP_UCSMBOOT_ORDER_RULE_LOOSE = "Loose"
    VP_UCSMBOOT_ORDER_RULE_STRICT = "Strict"
    VP_UCSMBOOT_ORDER_RULE_PLATFORM_DEFAULT = "platform-default"
end


class BiosVfUCSMBootOrderRuleControl < ManagedObject
    #This is BiosVfUCSMBootOrderRuleControl class.

    @@consts = BiosVfUCSMBootOrderRuleControlConsts.new()
#    @@naming_props = set([])

    @@mo_meta = {
        "classic" => MoMeta.new("BiosVfUCSMBootOrderRuleControl", "biosVfUCSMBootOrderRuleControl", "Boot-Order-Rules", VersionMeta::VERSION151F, "InputOutput", 0x1f, [], ["admin"], ["Get", "Set"]),
        "modular" => MoMeta.new("BiosVfUCSMBootOrderRuleControl", "biosVfUCSMBootOrderRuleControl", "Boot-Order-Rules", VersionMeta::VERSION2013E, "InputOutput", 0x1f, [], ["admin"], ["Get", "Set"])
    }

    def self.mo_meta
        @@mo_meta
    end

    @@prop_meta = {

        "classic" => {
        "child_action" => MoPropertyMeta.new("child_action", "childAction", "string", VersionMeta::VERSION151F, MoPropertyMeta::INTERNAL, nil, nil, nil, nil, [], []), 
        "dn" => MoPropertyMeta.new("dn", "dn", "string", VersionMeta::VERSION151F, MoPropertyMeta::READ_WRITE, 0x2, 0, 255, nil, [], []), 
        "rn" => MoPropertyMeta.new("rn", "rn", "string", VersionMeta::VERSION151F, MoPropertyMeta::READ_WRITE, 0x4, 0, 255, nil, [], []), 
        "status" => MoPropertyMeta.new("status", "status", "string", VersionMeta::VERSION151F, MoPropertyMeta::READ_WRITE, 0x8, nil, nil, nil, ["", "created", "deleted", "modified", "removed"], []), 
        "vp_ucsm_boot_order_rule" => MoPropertyMeta.new("vp_ucsm_boot_order_rule", "vpUCSMBootOrderRule", "string", VersionMeta::VERSION151F, MoPropertyMeta::READ_WRITE, 0x10, nil, nil, nil, ["Loose", "Strict", "platform-default"], []), 
        },

        "modular" => {
            "child_action" => MoPropertyMeta.new("child_action", "childAction", "string", VersionMeta::VERSION2013E, MoPropertyMeta::INTERNAL, nil, nil, nil, nil, [], []), 
            "dn" => MoPropertyMeta.new("dn", "dn", "string", VersionMeta::VERSION2013E, MoPropertyMeta::READ_WRITE, 0x2, 0, 255, nil, [], []), 
            "rn" => MoPropertyMeta.new("rn", "rn", "string", VersionMeta::VERSION2013E, MoPropertyMeta::READ_WRITE, 0x4, 0, 255, nil, [], []), 
            "status" => MoPropertyMeta.new("status", "status", "string", VersionMeta::VERSION2013E, MoPropertyMeta::READ_WRITE, 0x8, nil, nil, nil, ["", "created", "deleted", "modified", "removed"], []), 
            "vp_ucsm_boot_order_rule" => MoPropertyMeta.new("vp_ucsm_boot_order_rule", "vpUCSMBootOrderRule", "string", VersionMeta::VERSION2013E, MoPropertyMeta::READ_WRITE, 0x10, nil, nil, nil, ["Loose", "Strict", "platform-default"], []), 
        },

    }



    def self.prop_meta
        @@prop_meta
    end

    @@prop_map = {

        "classic" => {
        "childAction" => "child_action", 
        "dn" => "dn", 
        "rn" => "rn", 
        "status" => "status", 
        "vpUCSMBootOrderRule" => "vp_ucsm_boot_order_rule", 
        },

        "modular" => {
            "childAction" => "child_action", 
            "dn" => "dn", 
            "rn" => "rn", 
            "status" => "status", 
            "vpUCSMBootOrderRule" => "vp_ucsm_boot_order_rule", 
        },

    }



    def self.prop_map
        @@prop_map
    end

    attr_reader :child_action
    attr_accessor :status
    attr_accessor :vp_ucsm_boot_order_rule


    def initialize(parent_mo_or_dn: nil,  **kwargs)
        @dirty_mask = 0
        @child_action = nil
        @status = nil
        @vp_ucsm_boot_order_rule = nil

        super(class_id: "BiosVfUCSMBootOrderRuleControl", parent_mo_or_dn: parent_mo_or_dn, **kwargs)

    end
end
