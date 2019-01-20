# ResIT Rails + Devise + Sidekiq + Webpacker Boilerplate

[![Code Climate](https://codeclimate.com/github/resitcl/rails-tabler-webpacker-boilerplate.png)](https://codeclimate.com/github/resitcl/rails-tabler-webpacker-boilerplate)

### Español
Boilerplate de Rails + Devise + Sidekiq + Webpacker _dockerizado_ y basado en el template [Tabler](https://tabler.github.io/tabler/).

Fork de https://github.com/resitcl/rails-tabler-boilerplate

Implementa dos _scaffold_ en la carpeta `lib`. Se utilizan igual que el _scaffold_ normal de Rails:

* Este genera formularios basados en Tabler y tablas con DataTables ya implementado. Por ejemplo:

    ```
    rails g tabler_scaffold Order user:references client:references name due_date
    ```
* Este genera un componente javascrip en la carpeta app/javascript, el cual puede ser implementado en las vistas. Por ejemplo:
    
    ```
    rails g component_js Input
    ```

### Archivos que modificar:
- `application.rb` y `application.html.rb`: nombre de la aplicación
- `database.yml`: configuración DB
- `docker-compose.yml`: nombre de la aplicación, puertos y credenciales Postgres
- `package.json`: detalles de la aplicación
- `cable.yml`: nombre aplicación
- `seeds.yml`: eliminar o editar
- `application_mailer.rb`: Cambiar _default from_ 
- `development.rb` y `production.rb`: ingresar datos mailer
- `devise.rb`: cambiar _mailer from_
- `_footer.html.erb`: cambiar datos empresa
- `config/webpack/environment.js`: configuración de Webpaker

### Comandos que correr
- `bundle exec rake secret` y reemplazar los _hash_ en `secrets.yml`
- `rake db:create && rake db:seed`
- `yarn install`
- `./bin/webpack-dev-server`: para refrescamiento automático

### English
Rails + Devise + Sidekiq + Webpacker _dockerized_ boilerplate based on [Tabler](https://tabler.github.io/tabler/) template.

Fork of https://github.com/resitcl/rails-tabler-boilerplate

Implement tow _scaffold_ place on `lib` folder. They are used just like the normal Rails _scaffold_:

* This generates forms based on Tabler and tables with DataTables already implemented. For example:

    ```
    rails g tabler_scaffold Order user:references client:references name due_date
    ```
* This generates a javascript component in the app/javascript folder, which can be implemented in the views. For example:
    
    ```
    rails g component_js Input

### Files which require modification:
- `application.rb` y `application.html.rb`: app name
- `database.yml`: DB configuration
- `docker-compose.yml`: app name, ports and Postgres credentials.
- `package.json`: app name and details.
- `cable.yml`: app name
- `seeds.yml`: edit or remove
- `application_mailer.rb`: set _default from_ 
- `development.rb` y `production.rb`: set mailer data
- `devise.rb`: set _mailer from_
- `_footer.html.erb`: set company or legal info
- `config/webpack/environment.js`: configuración de Webpaker

### Commands
- `bundle exec rake secret` and replace `secrets.yml` secrets
- `rake db:create && rake db:seed`
- `npm install`
- `./bin/webpack-dev-server`: para refrescamiento automático
