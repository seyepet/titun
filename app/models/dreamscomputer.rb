class Dreamscomputer < ApplicationRecord
  
  
  
  def self.search(term, page)
  if term
      
    where('name LIKE ?', "%#{term}%").paginate(page: page, per_page: 6).order('id DESC')
  else
    paginate(page: page, per_page: 6).order('id DESC') 
  end
  end
  
  
end
