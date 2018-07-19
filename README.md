# ResIT Rails + Devise + Sidekiq Boilerplate
### Archivos que modificar:
- `application.rb` nombre de la aplicación
- `database.yml`: configuración DB
- `docker-compose.yml`: nombre de la aplicación y puertos
- `package.json`: detalles de la aplicación
- `cable.yml`: nombre aplicación
- `seeds.yml`: eliminar o editar
- `application_mailer.rb`: Cambiar _default from_ 
- `development.rb` y `production.rb`: ingresar datos mailer
- `devise.rb`: cambiar _mailer from_
- `_footer.html.erb`: cambiar datos empresa
### Comandos que correr
- `bundle exec rake secret` y reemplazar los _hash_ en `secrets.yml`