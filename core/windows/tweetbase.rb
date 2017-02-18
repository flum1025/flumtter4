module Flumtter
  class Window::TweetBase < Window::Buf::Element
    def id
      @object.id
    end

    private
    def user
      "#{@object.user.name} (@#{@object.user.screen_name})"
    end

    def created_at
      @object.created_at.strftime("%Y/%m/%d %H:%M:%S")
    end

    def header
      "#{@index} ".ljust(width, ?-)
    end

    def body
      @object.text.nl
    end

    def footer
      "#{created_at}".ljust(width, nil, @object.via)
    end
  end
end
