class Post < ApplicationRecord
    validates :title, presence: true
    validates :content, length: {minimum: 250}
    validates :summary, length: {maximum: 250}
    validates :category, inclusion: {in: ["Fiction","Non-Fiction"]}
    validate :only_click_bait_titles

    ARR = [/Won't Believe/i, /Secret/i, /Top \d/i,/Guess/i]
    def only_click_bait_titles
        if ARR.none? {|pattern| pattern.match title}
            errors.add(:title, "needs a better title")
         end
    end
end
