module ApplicationHelper
    def full_title(page_title = '')
        base_title = "Circumstellar Disk"
        if page_title.empty?
            base_title
        else
            page_title + " | " + base_title
        end
    end
end
