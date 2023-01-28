class ApplicationController < ActionController::Base
    
    before_action :configure_permitted_parameters, if: :devise_controller?

    protected
  
    def configure_permitted_parameters
    
        devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
    end


end



#Все контроллеры наследуются от базового контроллера ApplicationController и чтобы задать 
#для всех контроллеров один параметр, надо прописать это в ApplicationController.

#before_action (в ранних версиях Rails это было before_filter), 
#фильтрует методы в контроллерах до того как их обработать.