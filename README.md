# ResIT Rails + Devise + Sidekiq Boilerplate

### Español
Boilerplate de Rails + Devise + Sidekiq _dockerizado_ y basado en el template [Tabler](https://tabler.github.io/tabler/).

Además, implementa un _scaffold_ únicamente de vistas en la carpeta `lib`. Se utiliza igual que el _scaffold_ normal de Rails y genera formularios basados en Tabler y tablas con DataTables ya implementado. Por ejemplo:
```
rails g tabler_scaffold Order user:references client:references name due_date
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

### Comandos que correr
- `bundle exec rake secret` y reemplazar los _hash_ en `secrets.yml`
- `rake db:create && rake db:seed`
- `npm install`

### English
Rails + Devise + Sidekiq dockerized boilerplate based on [Tabler](https://tabler.github.io/tabler/) template.

It also implements a _Tabler ready_ views scaffold placed on `lib` folder. It's used the same way usual scaffold is used and it generates forms based on Tabler forms, including DataTable's ready tables and combo boxes with `references` fields. For example:
```
rails g tabler_scaffold Order user:references client:references name due_date
```

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

### Commands
- `bundle exec rake secret` and replace `secrets.yml` secrets
- `rake db:create && rake db:seed`
- `npm install`
