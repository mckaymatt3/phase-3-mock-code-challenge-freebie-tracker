class Company < ActiveRecord::Base

    has_many :freebies
    has_many :devs, through: :freebies

    # def give_freebie(dev, item_name, value)
    #     binding.pry
    #     # Freebie.create(dev: dev, item_name: item_name, value: value, company: self)
    # end

    # def self.oldest_company
    #     # binding.pry
    #     self.all.min_by do |company|
    #         # binding.pry
    #         company.founding_year
    #     end
    # end

    def give_freebie(dev, item_name, value)
        # binding.pry
        Freebie.create(item_name: item_name, value: value, company_id: self.id, dev_id: dev.id)
    end

    def self.oldest_company
        # binding.pry
        self.all.min_by do |company|
            # binding.pry
            company.founding_year
        end
    end

end
