namespace :import_song do
  desc "import"
  task :do => :environment do
    open(Rails.root.join('list.txt')) do |f|
      f.each_line do |line|
        line.chomp!
        puts "#{f.lineno}: #{line}"
        s = Song.find_or_initialize_by(title: line)
        s.save! if s.new_record?
      end
    end
  end
end
