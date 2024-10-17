#create s3 bucket
resource "aws_s3_bucket" "mybucket" {
  bucket = var.bucketname
}

resource "aws_s3_bucket_ownership_controls" "example" {
  bucket = aws_s3_bucket.mybucket.id

  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket_public_access_block" "example" {
  bucket = aws_s3_bucket.mybucket.id

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}

resource "aws_s3_bucket_acl" "example" {
  depends_on = [
    aws_s3_bucket_ownership_controls.example,
    aws_s3_bucket_public_access_block.example,
  ]

  bucket = aws_s3_bucket.mybucket.id
  acl    = "public-read"
}

resource "aws_s3_object" "index" {
  bucket = aws_s3_bucket.mybucket.id
  key = "index.html"
  source = "index.html"
  acl = "public-read"
  content_type = "text/html"
}

resource "aws_s3_object" "script" {
  bucket = aws_s3_bucket.mybucket.id
  key = "js/bootstrap.js"
  source = "js/bootstrap.js"
  acl = "public-read"
  content_type = "application/javascript" 
}

resource "aws_s3_object" "custom" {
  bucket = aws_s3_bucket.mybucket.id
  key = "js/custom.js"
  source = "js/custom.js"
  acl = "public-read"
  content_type = "application/javascript" 
}

resource "aws_s3_object" "jquery" {
  bucket = aws_s3_bucket.mybucket.id
  key = "js/jquery-3.4.1.min.js"
  source = "js/jquery-3.4.1.min.js"
  acl = "public-read"
  content_type = "application/javascript" 
}

resource "aws_s3_object" "bootstrapcss" {
  bucket = aws_s3_bucket.mybucket.id
  key = "css/bootstrap.css"
  source = "css/bootstrap.css"
  acl = "public-read"
  content_type = "text/css"
}
resource "aws_s3_object" "style" {
  bucket = aws_s3_bucket.mybucket.id
  key = "css/style.css"
  source = "css/style.css"
  acl = "public-read"
  content_type = "text/css"
}

resource "aws_s3_object" "responsivecss" {
  bucket = aws_s3_bucket.mybucket.id
  key = "css/responsive.css"
  source = "css/responsive.css"
  acl = "public-read"
  content_type = "text/css"
}

resource "aws_s3_object" "fontawesomemin" {
  bucket = aws_s3_bucket.mybucket.id
  key = "css/font-awesome.min.css"
  source = "css/font-awesome.min.css"
  acl = "public-read"
  content_type = "text/css"
}


resource "aws_s3_object" "stypecssmap" {
  bucket = aws_s3_bucket.mybucket.id
  key = "css/style.css.map"
  source = "css/style.css.map"
  acl = "public-read"
  content_type = "text/css"
}

resource "aws_s3_object" "stylescss" {
  bucket = aws_s3_bucket.mybucket.id
  key = "css/style.scss"
  source = "css/style.scss"
  acl = "public-read"
  content_type = "text/css"
}


resource "aws_s3_object" "font" {
  bucket = aws_s3_bucket.mybucket.id
  key = "fonts/fontawesome-webfont.ttf"
  source = "fonts/fontawesome-webfont.ttf"
  acl = "public-read"
}

resource "aws_s3_object" "fontwoff" {
  bucket = aws_s3_bucket.mybucket.id
  key = "fonts/fontawesome-webfont.woff"
  source = "fonts/fontawesome-webfont.woff"
  acl = "public-read"
}

resource "aws_s3_object" "fontwoff2" {
  bucket = aws_s3_bucket.mybucket.id
  key = "fonts/fontawesome-webfont.woff2"
  source = "fonts/fontawesome-webfont.woff2"
  acl = "public-read"
}

resource "aws_s3_object" "image1" {
  bucket = aws_s3_bucket.mybucket.id
  key = "images/about-img.jpg"
  source = "images/about-img.jpg"
  acl = "public-read"
}

resource "aws_s3_object" "about" {
  bucket = aws_s3_bucket.mybucket.id
  key = "images/about-img.png"
  source = "images/about-img.png"
  acl = "public-read"
}



resource "aws_s3_object" "client1" {
  bucket = aws_s3_bucket.mybucket.id
  key = "images/client1.jpg"
  source = "images/client1.jpg"
  acl = "public-read"
}

resource "aws_s3_object" "client2" {
  bucket = aws_s3_bucket.mybucket.id
  key = "images/client2.jpg"
  source = "images/client2.jpg"
  acl = "public-read"
}

resource "aws_s3_object" "favicon" {
  bucket = aws_s3_bucket.mybucket.id
  key = "images/favicon.png"
  source = "images/favicon.png"
  acl = "public-read"
}


resource "aws_s3_object" "s1" {
  bucket = aws_s3_bucket.mybucket.id
  key = "images/s1.png"
  source = "images/s1.png"
  acl = "public-read"
}

resource "aws_s3_object" "s2" {
  bucket = aws_s3_bucket.mybucket.id
  key = "images/s2.png"
  source = "images/s2.png"
  acl = "public-read"
}

resource "aws_s3_object" "next" {
  bucket = aws_s3_bucket.mybucket.id
  key = "images/next.png"
  source = "images/next.png"
  acl = "public-read"
}

resource "aws_s3_object" "hero-bg" {
  bucket = aws_s3_bucket.mybucket.id
  key = "images/hero-bg.png"
  source = "images/hero-bg.png"
  acl = "public-read"
}


resource "aws_s3_object" "prev" {
  bucket = aws_s3_bucket.mybucket.id
  key = "images/prev.png"
  source = "images/prev.png"
  acl = "public-read"
}

resource "aws_s3_object" "s3" {
  bucket = aws_s3_bucket.mybucket.id
  key = "images/s3.png"
  source = "images/s3.png"
  acl = "public-read"
}

resource "aws_s3_object" "sliderbg" {
  bucket = aws_s3_bucket.mybucket.id
  key = "images/slider-bg.jpg"
  source = "images/slider-bg.jpg"
  acl = "public-read"
}

resource "aws_s3_object" "sliderimg" {
  bucket = aws_s3_bucket.mybucket.id
  key = "images/slider-img.png"
  source = "images/slider-img.png"
  acl = "public-read"
}

resource "aws_s3_object" "team-1" {
  bucket = aws_s3_bucket.mybucket.id
  key = "images/team-1.jpg"
  source = "images/team-1.jpg"
  acl = "public-read"
}

resource "aws_s3_object" "team-2" {
  bucket = aws_s3_bucket.mybucket.id
  key = "images/team-2.jpg"
  source = "images/team-2.jpg"
  acl = "public-read"
}

resource "aws_s3_object" "team-3" {
  bucket = aws_s3_bucket.mybucket.id
  key = "images/team-3.jpg"
  source = "images/team-3.jpg"
  acl = "public-read"
}

resource "aws_s3_object" "team-4" {
  bucket = aws_s3_bucket.mybucket.id
  key = "images/team-4.jpg"
  source = "images/team-4.jpg"
  acl = "public-read"
}

resource "aws_s3_object" "track-bg" {
  bucket = aws_s3_bucket.mybucket.id
  key = "images/track-bg.jpg"
  source = "images/track-bg.jpg"
  acl = "public-read"
}

resource "aws_s3_object" "w1" {
  bucket = aws_s3_bucket.mybucket.id
  key = "images/w1.png"
  source = "images/w1.png"
  acl = "public-read"
}

resource "aws_s3_object" "w2" {
  bucket = aws_s3_bucket.mybucket.id
  key = "images/w2.png"
  source = "images/w2.png"
  acl = "public-read"
}

resource "aws_s3_object" "w3" {
  bucket = aws_s3_bucket.mybucket.id
  key = "images/w3.png"
  source = "images/w3.png"
  acl = "public-read"
}

resource "aws_s3_object" "w4" {
  bucket = aws_s3_bucket.mybucket.id
  key = "images/w4.png"
  source = "images/w4.png"
  acl = "public-read"
}

resource "aws_s3_bucket_website_configuration" "website" {
  bucket = aws_s3_bucket.mybucket.id
  index_document {
    suffix = "index.html"
  }

  depends_on = [ aws_s3_bucket_acl.example ]
}