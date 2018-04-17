require 'csv'

module FileLoader
  def load_file(filename)
    CSV.open filename, headers: true, header_converters: :symbol
  end
end
