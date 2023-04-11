Rails.application.routes.draw do  
  # PART 1: EACH IN ERB
  # ===================

  get("/", { :controller => "lottery", :action => "lucky"})
  get("/lottery/lucky", { :controller => "lottery", :action => "lucky"})
  get("/lottery/unlucky", { :controller => "lottery", :action => "unlucky"})

  # PART 2: RCAV DEBUGGING
  # ======================

  get("/zodiacs/:the_signs", { :controller => "fortunes", :action => "horoscope" })

  get("/roll/:number_of_dice/:how_many_sides", { :controller => "dice", :action => "infinity_and_beyond" })
end
