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
    <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="css/bootstrap.min.css" rel="stylesheet" media="screen"> 
    <style>
        .img-responsive {
           width: 100%;
           
        }
    

    </style>
<title>Tim McHale - Indie Developer</title>
</head>
<body>

  <% @pictures.each do |picture| %>
    <img src="<%= picture.sub!(/public\//, '') %>" class="img-responsive" class="img"/>
  <% end %>
   <!-- <script src="//code.jquery.com/jquery.js"></script>
  //   <script src="js/bootstrap.min.js"></script> -->
</body>
</html>



