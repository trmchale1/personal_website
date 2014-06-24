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


          .carousel-control.left, .carousel-control.right {
                  background-image: none
        }




    </style>
<title>Tim McHale - Developer</title>
</head>
<body>
    <% @pictures.each do |picture| %>
    <% @pic.each do |pic| %>
    <%@pic2.each do |pic2|%>



    <div id="this-carousel-id" class="carousel slide"><!-- class of slide for animation -->
  <div class="carousel-inner">

    <div class="item active"><!-- class of active since it's the first item -->

      <img src="<%= picture.sub!(/public\//, '') %>" class="img-responsive" />

    </div>
      <div class="item">
      <img src="<%= pic.sub!(/public\//, '') %>" class="img-responsive" />
    </div>

      <div class="item">
      <img src="<%= pic2.sub!(/public\//, '') %>" class="img-responsive" />
    </div>
    </div>
  </div>

    <a class="carousel-control left" href="#this-carousel-id" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a>
    <a class="carousel-control right" href="#this-carousel-id" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
  <% end %>
  <% end %>
  <% end %>
</div><!-- /.carousel -->

 <%@pic3.each do |pic3|%>
 <%@pic4.each do |pic4|%>

<hr class="featurette-divider">

       <div class="row featurette img-responsive">
        <div class="col-3">
          <h2 class="featurette-heading text-center"> <span class="text-danger">Hire me!</span></h2>
          <p class="lead text-center">My name is Tim McHale. I'm a mobile and web developer.</p>
          <p class="lead text-center">I am currently looking for the right opportunity to contribute and grow.</p>

					<p class="lead text-center"> Please contact me at trmchale@gmail.com</p>
        </div>
        <div class="col-md-5">
          <img class="featurette-image img-responsive" >
        </div>
      </div>

      <hr class="featurette-divider">


      <div class="row featurette img-responsive">
        <div class="col-md-5">
          <h2 class="featurette-heading text-center"> <span class="text-danger">I've built</span></h2>
          <p class="lead text-center"> a native iOS analytics platform for Tag</p>
					<p class="lead text-center">Tag is an iOS app that let's you share your location with friends</p>
        </div>
        <div class="col-md-6">
          <img class="featurette-image img-center img-responsive" src="<%= pic3.sub!(/public\//, '') %>" >
					</div>

      </div>

      <hr class="featurette-divider">

     <div class="row featurette img-responsive">
        <div class="col-md-3">
					<img class="featurette-image img-responsive" src="<%= pic4.sub!(/public\//, '') %>">
				</div>

      <div class="col-5">
          <h2 class="featurette-heading text-center"><span class="text-danger">And</span></h2>
          <p class="lead text-center">I developed an iOS application for AstraZenca</p>
      </div>
      </div>

			<hr class="featurette-divider">

			<div class="col-5">
					<h2 class="featurette-heading text-center"><span class="text-danger">Tech Stack</span></h2>
					<p class="lead text-center">In the past I have worked with Rails, Sinatra, jQuery/Javascript libraries,</p>
					<p class="lead text-center">Bootstrap/HTML/CSS, Ruby, scripting with Python, Obj-C/iOS development, JSON, XML, a variety of NoSQL databases</p>
					<p class="lead text-center">and I am fanatical about git version control</p>

					<p class="lead text-center">This site was built with Sinatra</p>
					<p class="lead text-center">Please take the time to view my github: trmchale1<%=link_to nil,"http://#{www.github.com}"%></p>

			</div>
			</div>
			<%end%>
      <%end%>
      <%end%>
      <!-- /END THE FEATURETTES -->


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
