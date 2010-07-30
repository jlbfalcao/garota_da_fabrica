##
# Tradução dos steps da framework factory girl
# Para cada factory definida em seu projeto serão gerados os steps em portugues
# Ex:
#  Factory.define :produto do |p|
#    p.descricao 'Caneta'
#    p.preco 9.90
#  end
# Para esta fabrica serao gerados os seguintes steps:
#  Dado que existe o seguinte produto do |table|
#    |descricao | preco |
#    |livro     | 30    |
#
#  Dado que existem os seguintes produtos do |table|
#    |descricao| preco|
#    |livro    | 30   |
#    |cantea   | 10   |
#
#  Dado que existe um produto (neste caso um produto sera criado baseado na factory :produto definida acima)
#  Dado que existem 10 produtos ( como acima ele vai criar 10 produtos ) 
#  Dado que existe um produto com descricao igual a mochila
#  Dado que existem 8 produtos com preco igual a 80
## 
FactoryGirl.factories.values.each do |factory|
  Dado /^que existem? (?:o|a)s? seguintes? (?:#{factory.human_name}|#{factory.human_name.pluralize}):$/ do |table|
    Given %{the following #{factory.human_name} exists:}, table
  end
  
  Dado /^que existe uma? #{factory.human_name}$/ do
    Given %{an #{factory.human_name} exists}
  end

  Dado /^que existem (\d+) #{factory.human_name.pluralize}$/ do |count|
    Given %{#{count} #{factory.human_name.pluralize} exist}
  end

 if factory.build_class.respond_to?(:columns)
    factory.build_class.columns.each do |column|
      human_column_name = column.name.downcase.gsub('_', ' ')

      Dado /^que existe uma? #{factory.human_name} com #{human_column_name} igual a "([^"]*)"$/ do |value|
        Given %{an #{factory.human_name} exists with an #{human_column_name} of "#{value}"}
      end

      Dado /^que existem (\d+) #{factory.human_name.pluralize} com #{human_column_name} igual a "([^"]*)"$/ do |count, value|
        Given %{#{count} #{factory.human_name.pluralize} exist with an #{human_column_name} of "#{value}"}
      end
    end
  end
end