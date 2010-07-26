
# Tradução dos steps da framework factory girl

FactoryGirl.factories.values.each do |factory|
  Dado /^que existem? (?:o|a)s? seguintes? (?:#{factory.human_name}|#{factory.human_name.pluralize}):$/ do |table|
    # [Sergio] Se precisar debugar o step eh soh descomentar isso aqui:
    # begin
    Given %{the following #{factory.human_name} exists:}, table
    # rescue ActiveRecord::RecordInvalid => err
    #     err.record.errors.each do |e,t|
    #       puts "#{factory.human_name}"
    #       puts "#{e} - #{t}"
    #       puts err.record.class
    #       breakpoint  
    #       0
    #     end
    # end    
  end
  
  Dado /^que existe uma? #{factory.human_name}$/ do
    Given %{an #{factory.human_name} exists}
  end

  Dado /^que existem (\d+) #{factory.human_name.pluralize}$/ do |count|
    Given %{#{count} #{factory.human_name.pluralize} exist}
  end

  # puts %{que existem? (?:o|a)s? seguintes? #{factory.human_name}|#{factory.human_name.pluralize}:}
  # puts %{que existe uma? #{factory.human_name}}
  # puts %{que existem (\d+) #{factory.human_name.pluralize}}

 if factory.build_class.respond_to?(:columns)
    factory.build_class.columns.each do |column|
      human_column_name = column.name.downcase.gsub('_', ' ')
      #   
      # puts %{que existe uma? #{factory.human_name} com #{human_column_name} igual a "([^"]*)"}
      # puts %{que existem (\d+) #{factory.human_name.pluralize} com #{human_column_name} igual a "([^"]*)"}
  
      Dado /^que existe uma? #{factory.human_name} com #{human_column_name} igual a "([^"]*)"$/ do |value|
        Given %{an #{factory.human_name} exists with an #{human_column_name} of "#{value}"}
      end

      Dado /^que existem (\d+) #{factory.human_name.pluralize} com #{human_column_name} igual a "([^"]*)"$/ do |count, value|
        Given %{#{count} #{factory.human_name.pluralize} exist with an #{human_column_name} of "#{value}"}
      end
    end
  end
end