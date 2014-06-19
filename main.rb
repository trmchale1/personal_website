require 'sinatra'

def load_pictures
	  Dir.glob("public/slideshow_pictures/*.{jpg,JPG}")
end


get '/' do
	@pictures = load_pictures
    erb :index
  end

__END__

@@index
<!DOCTYPE html>
<html>
  <head>
    <style>
        .img-responsive {
           width: 100%;
           
        }
    

    </style>
  <meta charset="UTF-8">
  <meta name="viewport" content="user-scalable=yes, width=device-width" />
<title>Tim McHale - Indie Developer</title>
</head>
<body>

  <% @pictures.each do |picture| %>
    <img src="<%= picture.sub!(/public\//, '') %>" class="img-responsive" class="img"/>
  <% end %>
</body>
</html>



