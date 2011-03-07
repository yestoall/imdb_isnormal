# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{imdb_isnormal}
  s.version = ""

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jon Maddox", "Nacho Rapallo"]
  s.date = %q{2011-03-07}
  s.description = %q{IMDB client using the IMDB API that their iPhone app uses}
  s.email = %q{nacho@yestoall.com}
  s.extra_rdoc_files = [
    "LICENSE",
    "README.md"
  ]
  s.files = [
    "LICENSE",
    "README.md",
    "Rakefile",
    "VERSION",
    "imdb_isnormal.gemspec",
    "lib/imdb_isnormal.rb",
    "lib/imdb_isnormal/httparty_icebox.rb",
    "lib/imdb_isnormal/imdb.rb",
    "lib/imdb_isnormal/movie.rb",
    "lib/imdb_isnormal/person.rb",
    "test/movie_test.rb",
    "test/person_test.rb",
    "test/search_test.rb",
    "test/test_helper.rb"
  ]
  s.homepage = %q{http://github.com/yestoall/imdb_isnormal}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.5.0}
  s.summary = %q{IMDB client using the IMDB API that their iPhone app uses}
  s.test_files = [
    "test/movie_test.rb",
    "test/person_test.rb",
    "test/search_test.rb",
    "test/test_helper.rb"
  ]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<shoulda>, [">= 0"])
      s.add_runtime_dependency(%q<httparty>, [">= 0"])
    else
      s.add_dependency(%q<shoulda>, [">= 0"])
      s.add_dependency(%q<httparty>, [">= 0"])
    end
  else
    s.add_dependency(%q<shoulda>, [">= 0"])
    s.add_dependency(%q<httparty>, [">= 0"])
  end
end

