class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :text

      t.timestamps
    end
  end
end


  #       Chec this if you delited migration

      #remove    db/migrate/QQQQQ_create_entries.rb
      #remove    app/models/entry.rb
      #invoke    test_unit
      #remove      test/models/entry_test.rb
      #remove      test/fixtures/entries.yml
#///////////////////////////////////////////////////////////////////////////////

#У Ruby on Rails есть консоль. Запустим её:

#rails console и введём в неё:

#"Contact.all" Чтобы узнать какие свойства (поля) у сущности (модели) введём:

#Contact.attribute_names