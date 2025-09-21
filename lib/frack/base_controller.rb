module Frack
  class BaseController
    attr_reader :request, :session, :current_user

    def initialize(env)
      @request
      @flash_message = request@flash_message = request.session&.delete('flash')
      @current_user = User.find_by_id request.session['user_id']
    end

    def render(view)
      render_template('layouts/application') do
        render_template(view)
      end 
    end

    def render_template(path, &block)
        Tilt.new(file(path)).render(self, &block)
    end

    def file(path)
      Dir[File.join('app', 'views', "#{path}.html.*")].first
    end
  end
end 