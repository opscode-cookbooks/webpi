#
# Author:: Willem Meints (willem.meints@infosupport.com)
# Cookbook Name:: webpi
# Resource:: application
#
# Copyright:: 2011, Opscode, Inc.
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
#

actions :install

default_action :install

attribute :product_id, :kind_of => String, :name_attribute => true
attribute :accept_eula, :kind_of => [TrueClass, FalseClass], :default => false
attribute :mysql_password, :kind_of => String
attribute :sql_password, :kind_of => String

# Covers 0.10.8 and earlier and COOK-1251
def initialize(*args)
  super
  @action = :install
end