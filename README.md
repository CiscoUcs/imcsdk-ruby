# RubyImcSdk README

SDK for Cisco IMC Server (standalone)

## Installation
Download the Ruby IMC Sdk, and navigate to the ImcSdk folder.
Install it yourself as:

    `$make install`

## Un-installation

Un-install it yourself as:

    `$make clean`

## Usage

add `require 'ImcSdk'`
in your application file to start using the methods.
For using the apis defined in the SDK additionally add  
* `require 'ImcSdk/apis/admin/<admin api file name>'`
* `require 'ImcSdk/apis/server/<server api file name>'`

Admin api file names:
* ipmi.rb
* ldap.rb
* ntp.rb
* user.rb

Server Api file names:
* bios.rb
* power.rb
* remotepresence.rb
* serveractions.rb
* storage.rb

## Documentation
To read the documetation, navigate to `docs` folder and open the `index.html` in browser.

## Development

* Configure the `test_helper.rb` file, `test_helper.rb` file is located under `ImcSdk/test` folder.
* Add an appropriate CIMC IP, Username and Password in the `test_helper.rb` file.
* Run `rake test` from ImcSdk folder to run all the unit tests in test folder.
* For running tests in a single file run as follows
    `rake test TEST=test/ImcSdk_ipmi_test.rb`


## Contributing

TODO: steps to raise bugs

## License
***
Copyright 2017 Cisco Systems, Inc.

Licensed under the Apache License, Version 2.0 (the "License");   
you may not use this file except in compliance with the License.   
You may obtain a copy of the License at   

    http://www.apache.org/licenses/LICENSE-2.0   

Unless required by applicable law or agreed to in writing, software   
distributed under the License is distributed on an "AS IS" BASIS,   
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.   
See the License for the specific language governing permissions and   
limitations under the License.   

## Authors
***
Name: Amit Mandal   
email: amimanda@cisco.com 

