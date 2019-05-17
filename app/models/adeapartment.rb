class Adeapartment < ApplicationRecord
  belongs_to :category
  
  def self.search(term, page)
  if term
      
    where('name LIKE ?', "%#{term}%").paginate(page: page, per_page: 4).order('id DESC')
  else
    paginate(page: page, per_page: 4).order('id DESC') 
  end
  end
end
