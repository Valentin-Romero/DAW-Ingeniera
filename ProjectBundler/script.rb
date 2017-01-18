require 'rubygems'
require 'bundler/setup'

require 'awesome_print'
require 'pry'
require 'sqlite3'

require './sqlite/sqlite_script'
require './app/permissions'
require './pry/propina_script'

admin_personal_info = {'name'=>'Valentin', 'last_name'=>'Romero', 'birth_year'=>1995}
admin_contact_info = {'email'=>'valedor_10@hotmail.com', 'mob'=>'4181224590'}
admin_role = Role.new('users','contacts','promotions')
admin = User.new(admin_personal_info, admin_contact_info, admin_role)

ap admin_personal_info
ap admin_contact_info
ap admin_role.permissions

ap admin_role.methods - Object.methods

puts tip(80)

save_new_user('Alonso', 'alonso@utng.edu.mx', 1990)
users = save_new_user('Coral', 'coral@utng.edu.mx', 2014)
ap users