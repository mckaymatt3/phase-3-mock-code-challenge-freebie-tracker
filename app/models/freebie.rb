class Freebie < ActiveRecord::Base

    belongs_to :dev
    belongs_to :company

    # def print_details
    #     binding.pry
    #     # "#{dev.name} owns a #{item_name} from #{company.name}"
    # end

    def print_details
        # binding.pry
        "#{self.dev.name} owns a #{self.item_name} from #{self.company.name}"
    end

end
