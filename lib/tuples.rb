require 'pathname'

(require_files = -> (initial_path = __dir__) do
  Pathname.new(initial_path).each_child do |file|
    File.directory?(file) and require_files[file] or
      File.extname(file) == '.rb' and require_relative file.expand_path
  end
end).call
