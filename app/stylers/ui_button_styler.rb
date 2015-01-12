module RubyMotionQuery
  module Stylers
    class UIButtonStyler < UIControlStyler 
      def image_selected=(value)
        @view.setImage(value, forState: UIControlStateSelected)
      end
     end
    end
  end