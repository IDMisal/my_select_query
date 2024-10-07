class MySelectQuery
    def initialize(csv_content)
      @data = csv_content.strip.split("\n")
      @headers = @data[0].split(",")
    end
  
    def where(column_name, criteria)
      collumn_index = @headers.index(column_name)
      @data[1..-1].select { |row| row.split(",")[collumn_index] == criteria }
    end
  end
  
  
  csv_data = <<-EOS
  name,year_start,year_end,position,height,weight,birth_date,college
  Alaa Abdelnaby,1991,1995,F-C,6-10,240,'June 24, 1968',Duke University
  Zaid Abdul-Aziz,1969,1978,C-F,6-9,235,'April 7, 1946',Iowa State University
  Kareem Abdul-Jabbar,1970,1989,C,7-2,225,'April 16, 1947','University of California, Los Angeles'
  Mahmoud Abdul-Rauf,1991,2001,G,6-1,162,'March 9, 1969',Louisiana State University
  EOS
  
  msq = MySelectQuery.new(csv_data)
  result = msq.where("name", "Andre Brown")
  puts result
  