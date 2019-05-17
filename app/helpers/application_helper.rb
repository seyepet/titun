module ApplicationHelper
    
    def title(page_title)
    content_for(:title) { page_title }
    end
  
    def meta_tag(tag, text)
    content_for :"meta_#{tag}", text
    end

    def yield_meta_tag(tag, default_text='Akobe Limited')
    content_for?(:"meta_#{tag}") ? content_for(:"meta_#{tag}") : default_text
    end
    
    def will_paginate(collection_or_options = nil, options = {})
    if collection_or_options.is_a? Hash
      options, collection_or_options = collection_or_options, nil
    end
    unless options[:renderer]
      options = options.merge renderer: WillPaginate::ActionView::BootstrapLinkRenderer
    end
       super *[collection_or_options, options].compact
    end
end
