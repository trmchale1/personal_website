require 'sinatra'

def load_pictures
	  Dir.glob("public/slideshow_pictures/*.{jpg,JPG}")
end

def pic
    Dir.glob("public/image/*.{jpg,JPG}")
end

get '/' do
	@pictures = load_pictures
  @pic = pic
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
           height: 100%;
        }
    

    </style>
<title>Tim McHale - Indie Developer</title>
</head>
<body>
    <% @pictures.each do |picture| %>
    <% @pic.each do |pic| %>
    


    <div id="this-carousel-id" class="carousel slide"><!-- class of slide for animation -->
  <div class="carousel-inner">
    <div class="item active"><!-- class of active since it's the first item -->
      <img src="<%= picture.sub!(/public\//, '') %>" class="img-responsive" class="img"/>
    </div>
      <div class="item">
      <img src="<%= pic.sub!(/public\//, '') %>" class="img-responsive" class="img" 
      <div class="carousel-caption">
        <p>Caption text here</p>
      </div>
    </div>
  </div><!-- /.carousel-inner -->
  <!--  Next and Previous controls below
        href values must reference the id for this carousel -->
    <a class="carousel-control left" href="#this-carousel-id" data-slide="prev">&lsaquo;</a>
    <a class="carousel-control right" href="#this-carousel-id" data-slide="next">&rsaquo;</a>
</div><!-- /.carousel -->
  <% end %>
  <% end %>
   <script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="js/jquery-1.7.2.min.js"><\/script>')</script>
   <script src="//code.jquery.com/jquery.js"></script>
   <script src="js/bootstrap.min.js"></script>
   <script>
      $(document).ready(function(){
        $('.carousel').carousel({
          interval: 4000
        });
      });
    </script>
</body>
</html>



