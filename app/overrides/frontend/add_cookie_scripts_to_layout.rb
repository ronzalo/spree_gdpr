Deface::Override.new(
    :virtual_path => "spree/layouts/spree_application",
    :name => "add_cookie_concent_script",
    :insert_bottom=> "[data-hook='body']",
    :partial => "frontend/cookie_scripts",
    :disabled => false
  )
