require 'redcarpet'
require 'json'
require 'rest-client'
require 'open-uri'

module ApplicationHelper
  
  #Class of node
  class Data
  	#constructor
  	def initialize(name1,type,url)
		@name1 = name1
		@type = type
		@durl = url
	end
	#function to get name
	def getname
		return @name1
	end
	#function to get type
	def gettype
		return @type
	end
	#function to get type
	def getdurl
		return @durl
	end
		
  end

  def temp
  	return "abc"
  end



  # Convert markdown to HTML
  def markdown(text)
    options = {
      filter_html:     true,
      hard_wrap:       true, 
      link_attributes: { rel: 'nofollow', target: "_blank" },
      space_after_headers: true, 
      fenced_code_blocks: true
    }

    extensions = {
      autolink:           true,
      superscript:        true,
      disable_indented_code_blocks: true
    }

    renderer    = Redcarpet::Render::HTML.new(options)
    @markdown ||= Redcarpet::Markdown.new(renderer, extensions)
    return @markdown.render(text).html_safe   
  end    

  # get content from sample 
  def geturl()
  	url="https://api.github.com/repos/panu2306/sample/contents"
  end

  def geturlnest(text)
  	url="https://api.github.com/repos/panu2306/sample/contents"+"/"+text;
  end




  def getlist(url)
  	listofcontent=Array.new()
  	response = RestClient.get(url)
  	a=JSON.parse(response)
  	(0..a.count-1).each do |i|
  		data1 = Data.new(a[i]['name'],a[i]['type'],a[i]['download_url'])
  	   listofcontent[i] = data1
  	end
  	return listofcontent
  end

end