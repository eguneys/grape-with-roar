module Acme
  module Api
    module Presenters
      module BasePresenter
        
        def self.included(mod)
          mod.instance_eval do
            include Roar::JSON::HAL
            include Roar::Hypermedia
            include Grape::Roar::Representer
          end
        end
      end
    end
  end
end
