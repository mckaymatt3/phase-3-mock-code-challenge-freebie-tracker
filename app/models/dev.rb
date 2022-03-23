class Dev < ActiveRecord::Base

    has_many :freebies
    has_many :companies, through: :freebies

    def received_one(item_name)
        check_freebies = self.freebies.find do |freebie|
            # binding.pry
            freebie.item_name == item_name
            # binding.pry
        end
        if (check_freebies != nil)
            "We got the freebie"
        else ("Get outta here")
        end
    end

    def give_away(dev, freebie)
        # binding.pry
        check_freebies = self.freebies.find do |f|
            binding.pry
            f.item_name == freebie.item_name
        end
        if (check_freebies != nil)
            # binding.pry
            freebie.update(dev: dev)
        else ("Nada")
        end

    end

end
