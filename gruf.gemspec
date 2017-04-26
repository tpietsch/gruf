# coding: utf-8
# Copyright (c) 2017, BigCommerce Inc.
# All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
# 1. Redistributions of source code must retain the above copyright
# notice, this list of conditions and the following disclaimer.
# 2. Redistributions in binary form must reproduce the above copyright
# notice, this list of conditions and the following disclaimer in the
# documentation and/or other materials provided with the distribution.
# 3. All advertising materials mentioning features or use of this software
# must display the following acknowledgement:
# This product includes software developed by BigCommerce Inc.
# 4. Neither the name of BigCommerce Inc. nor the
# names of its contributors may be used to endorse or promote products
# derived from this software without specific prior written permission.
#
# THIS SOFTWARE IS PROVIDED BY BIGCOMMERCE INC ''AS IS'' AND ANY
# EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
# WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
# DISCLAIMED. IN NO EVENT SHALL BIGCOMMERCE INC BE LIABLE FOR ANY
# DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
# (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
# LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
# ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
# (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
# SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
$:.push File.expand_path("../lib", __FILE__)
require 'gruf/version'

Gem::Specification.new do |spec|
  spec.name          = 'gruf'
  spec.version       = Gruf::VERSION
  spec.authors       = ['Shaun McCormick']
  spec.email         = ['shaun.mccormick@bigcommerce.com']

  spec.summary       = %q{gRPC Ruby Framework}
  spec.description   = spec.summary
  spec.homepage      = 'https://github.com/bigcommerce/gruf'

  spec.files         = Dir['README.md', 'CHANGELOG.md', 'CODE_OF_CONDUCT.md', 'lib/**/*', 'gruf.gemspec']
  spec.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency 'bundler', '~> 1.11'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'ffaker'
  spec.add_development_dependency 'pry'

  spec.add_runtime_dependency 'grpc', '~> 1.2.5'
  spec.add_runtime_dependency 'grpc-tools', '~> 1.2.5'
  spec.add_runtime_dependency 'activesupport'
end
