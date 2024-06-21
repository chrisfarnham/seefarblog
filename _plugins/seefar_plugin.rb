Jekyll::Hooks.register :site, :pre_render do |site|
    # code to call after Jekyll renders a page
    nav_order_docs = site.collections["sections"].docs.sort_by! { |i| i.data["nav_order"] }
    nav_order_docs = nav_order_docs[10...]
    nav_order_docs.each { |doc|
        if doc.data["never_archive"] != true
            doc.data["nav_exclude"] = true
            doc.data["parent"] = "Older Journal Entries"
        end
    }
  end