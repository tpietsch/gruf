# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: gruf/Error.proto
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

require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "gruf.ErrorHeader" do
    optional :error_code, :string, 1
    optional :error_message, :string, 2
    optional :error_type, :enum, 3, "gruf.ErrorHeader.ErrorType"
    repeated :field_errors, :message, 4, "gruf.FieldError"
    optional :debug_info, :message, 5, "gruf.DebugInfo"
  end
  add_enum "gruf.ErrorHeader.ErrorType" do
    value :INTERNAL, 0
    value :BAD_REQUEST, 1
    value :NOT_FOUND, 2
    value :UNAUTHORIZED, 3
  end
  add_message "gruf.FieldError" do
    optional :field_name, :string, 1
    optional :error_code, :string, 2
    optional :error_message, :string, 3
  end
  add_message "gruf.DebugInfo" do
    optional :detail, :string, 1
    repeated :stack_trace, :string, 2
  end
end

module Gruf
  ErrorHeader = Google::Protobuf::DescriptorPool.generated_pool.lookup("gruf.ErrorHeader").msgclass
  ErrorHeader::ErrorType = Google::Protobuf::DescriptorPool.generated_pool.lookup("gruf.ErrorHeader.ErrorType").enummodule
  FieldError = Google::Protobuf::DescriptorPool.generated_pool.lookup("gruf.FieldError").msgclass
  DebugInfo = Google::Protobuf::DescriptorPool.generated_pool.lookup("gruf.DebugInfo").msgclass
end
