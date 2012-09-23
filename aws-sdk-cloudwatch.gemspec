# Copyright 2012 Inscitiv
# 
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
#     http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "aws-sdk-cloudwatch"
  s.version     = '0.0.5'
  s.authors     = ["Rafał Rzepecki"]
  s.email       = ["divided.mind@gmail.com"]
  s.homepage    = "https://github.com/inscitiv/aws-sdk-cloudwatch"
  s.summary = 'AWS CloudWatch API support'
  s.description = 'Extends the original aws-sdk gem from Amazon with support for the CloudWatch API'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency 'aws-sdk', '~> 1.3', '>= 1.3.9', '< 1.5.7'
  s.add_development_dependency 'bundler', '~> 1.0', '>= 1.0.15'
  s.add_development_dependency 'rspec', '~> 2.10'
  s.add_development_dependency 'rake'
end
