require 'fileutils'

HOBO_FCKEDITOR_HOME = File.dirname(__FILE__)

FileUtils.cp_r("#{HOBO_FCKEDITOR_HOME}/public", RAILS_ROOT)
