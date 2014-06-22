require 'sinatra'

def load_pictures
	  Dir.glob("public/slideshow_pictures/*.{jpg,JPG}")
end

def pic
    Dir.glob("public/image/*.{jpg,JPG}")
end

def pic2
  Dir.glob("public/images/*.{jpg,JPG}")
end

def pic3
  Dir.glob("public/image2/*.{jpg,JPG}")
end

def pic4
  Dir.glob("public/image3/*.{jpg,JPG}")
end


get '/' do
	@pictures = load_pictures
  @pic = pic
  @pic2 = pic2
  @pic3 = pic3
  @pic4 = pic4
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
    <%@pic2.each do |pic2|%>
    


    <div id="this-carousel-id" class="carousel slide"><!-- class of slide for animation -->
  <div class="carousel-inner">
    <div class="item active"><!-- class of active since it's the first item -->
      <img src="<%= picture.sub!(/public\//, '') %>" class="img-responsive" class="img"/>
    </div>
      <div class="item">
      <img src="<%= pic.sub!(/public\//, '') %>" class="img-responsive" class="img" 
      <div class="carousel-caption">
        
      </div>

      <div class="item">
      <img src="<%= pic2.sub!(/public\//, '') %>" class="img-responsive" class="img" 
      <div class="carousel-caption">
        
      </div>
    </div>
    </div>
  </div>

    <a class="carousel-control left" href="#this-carousel-id" data-slide="prev">&lsaquo;</a>
    <a class="carousel-control right" href="#this-carousel-id" data-slide="next">&rsaquo;</a>
  <% end %>
  <% end %>
  <% end %>
</div><!-- /.carousel -->
 
 <%@pic3.each do |pic3|%>
 <%@pic4.each do |pic4|%>

<hr class="featurette-divider">

      <div class="row featurette">
        <div class="col-md-6">
          <h2 class="featurette-heading "> <span class="text-muted">I've built</span></h2>
          <p class="lead"> a native iOS analytics platform for Tag</p>
        </div>
        <div class="col-md-5">
          <img class="featurette-image img-responsive" src="<%= pic3.sub!(/public\//, '') %>" >
        </div>
      </div>

      <hr class="featurette-divider">

      <div class="row featurette">
        <div class="col-md-5">
          <img class="featurette-image img-responsive" src="<%= pic4.sub!(/public\//, '') %>">
        </div>
        <div class="col-md-4">
          <h2 class="featurette-heading"><span class="text-muted">And</span></h2>
          <p class="lead">developed mobile applications for AstraZenca</p>
        </div>
      </div>

      <hr class="featurette-divider">

         <div class="row featurette">
        <div class="col-md-6">
          <h2 class="featurette-heading"> <span class="text-muted">Hire me!</span></h2>
          <p class="lead">I am available for hire at your startup</p>
          <p class="lead"> Please contact me at trmchale@gmail.com</p>
        </div>
        <div class="col-md-5">
          <img class="featurette-image img-responsive" >
        </div>
      </div>

      <hr class="featurette-divider">

      <%end%>
      <%end%>
      <!-- /END THE FEATURETTES -->

      <!-- FOOTER -->
      <footer>
        <p class="pull-right"><a href="#">Back to top</a></p>
        <p>&copy; 2014 Tim McHale &middot; </p>
      </footer>

    </div><!-- /.container -->





   <script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="js/jquery-1.7.2.min.js"><\/script>')</script>
   <script src="//code.jquery.com/jquery.js"></script>
   <script src="js/bootstrap.min.js"></script>
   <script>
      $(document).ready(function(){
        $('.carousel').carousel({
          interval: 5000
        });
      });
    </script>
</body>
</html>



