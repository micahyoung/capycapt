require 'rubygems'
require 'bundler/setup'
require 'thin'
require 'sinatra'

require 'uri'
require 'digest/sha1'
require 'capybara-webkit'

class CapyCapt < Sinatra::Base
	configure do
		set :public, "public"
		set :server, "thin"
	end

	get '/' do
		# Params
		url = params[:url]
		width  = params[:width]  ? params[:width].to_i  : 320
		height = params[:height] ? params[:height].to_i : 480
		return unless url =~ URI::regexp(%w(http https))
		return unless width  > 0 and width  < 1024
		return unless height > 0 and height < 1024

		# Set image name based on URL/options hash
		url_hash = Digest::SHA1.hexdigest("#{url};#{width};#{height}")
		image_path = "captures/#{url_hash}.png"
		image_full_path = File.absolute_path("public/#{image_path}")

		# Remove existing file if needed
		File.delete(image_full_path) if File.exists?(image_full_path)

		# Use Capybara driver to visit URL & render image
		begin
			browser = Capybara::Driver::Webkit::Browser.new
			browser.command('Visit', url)
			browser.command('Render', image_full_path, width, height)
		rescue Capybara::Driver::Webkit::WebkitError => e
			return 'Capybara failed while rendering'
		end

		# If file not created, add error, cleanup and return false
		if File.exists?(image_full_path)
			redirect image_path
		else
			return false
		end
	end
end
