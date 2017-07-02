module ApplicationHelper
    def toLocal local
         local.in_time_zone('Tokyo')
    end
end
