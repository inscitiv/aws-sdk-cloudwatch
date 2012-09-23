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

require 'aws/core'
require 'aws/core/client/query_xml'
require 'aws/core/option_grammar/double'
require 'yaml'

module AWS
  class CloudWatch
    
    class Client < Core::Client
      
      # this is copied from 'aws/core/client'; it's needed,
      # otherwise it searches in the original gem directory
      def self.api_config
        config_file = 
          File.dirname(File.dirname(__FILE__)) + 
          "/api_config/#{service_name}-#{self::API_VERSION}.yml"
        YAML.load(File.read(config_file))
      end
      
      API_VERSION = '2010-08-01'
      
      extend Core::Client::QueryXML
      
      CACHEABLE_REQUESTS = Set[
        # TODO
      ]
      
      define_client_method :delete_alarms, 'DeleteAlarms'
      define_client_method :describe_alarm_history, 'DescribeAlarmHistory'
      define_client_method :describe_alarms, 'DescribeAlarms'
      define_client_method :describe_alarms_for_metric, 'DescribeAlarmsForMetric'
      define_client_method :disable_alarm_actions, 'DisableAlarmActions'
      define_client_method :enable_alarm_actions, 'EnableAlarmActions'
      define_client_method :get_metric_statistics, 'GetMetricStatistics'
      define_client_method :list_metrics, 'ListMetrics'
      define_client_method :put_metric_alarm, 'PutMetricAlarm'
      define_client_method :put_metric_data, 'PutMetricData'
      define_client_method :set_alarm_state, 'SetAlarmState'
    
    end
    
  end
end