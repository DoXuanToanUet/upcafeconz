<!DOCTYPE html>
<html lang="en" class="h-100">

<head>
    <meta name="google-site-verification" content="8hG6PEegxmaDni6apOtAT4IfbBr2EalrJFzjmEEteW4" />
    <meta name="msvalidate.01" content="F058880958D3A2E9388FE3967FDA0A8D" />
    <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="keywords" content="Up Cafe, Auckland Cafe, Best Cafe Auckland, Top 10 Cafe, Auckland city eatery, Auckland eatery, Cafes, upcafe, award winning cafes, best food, best service, best catering service, best food" />
	<meta name="author" content="Upcafe" />
	<meta name="robots" content="" />
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Up Cafe is celebrated as a Top Cafes & Best Food Delivery Services in Auckland 2020. Up Cafe provides breakfast, lunch and dinner. Fully licenced bar with catering and private functions services." />
	<meta property="og:title" content="Up Cafe | Top Reviews NZ Cafe in Auckland New Zealand" />
	<meta property="og:description" content="Up Cafe is celebrated as a Top Cafes & Best Food Delivery Services in Auckland 2020. Up Cafe provides breakfast, lunch and dinner. Fully licenced bar with catering and private functions services." />
    <meta property="og:image" content="{{asset('assets/admin/images/screen_area.png')}}" />
	<meta name="format-detection" content="telephone=no">
	
	<!-- PAGE TITLE HERE -->
	<title>Up Cafe | @yield('title')</title>

    <meta name="csrf-token" content="{{ csrf_token() }}">
	
	<!-- FAVICONS ICON -->
	<link rel="shortcut icon" type="image/png" href="/assets/front/assets/img/fabicon.png" />

    <link rel="stylesheet" href="/assets/front/css/slick.css">
    <link rel="stylesheet" href="/assets/front/css/bootstrap.min.css">
    <link rel="stylesheet" href="/assets/front/css/animate.css">
    <link rel="stylesheet" href="/assets/front/css/font-awesome.min.css">
    <link rel="stylesheet" href="/assets/front/css/style.css">
    <link rel="stylesheet" href="/assets/front/css/media.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css" integrity="sha512-YWzhKL2whUzgiheMoBFwW8CKV4qpHQAEuvilg9FAn5VJUDwKZZxkJNuGM4XkWuk94WCrrwslk8yWNGmY1EduTA==" crossorigin="anonymous" referrerpolicy="no-referrer" />


    

    <link rel="stylesheet" type="text/css" href="/assets/front/assets/lib/perfect-scrollbar/css/perfect-scrollbar.css" />
    <link rel="stylesheet" type="text/css" href="/assets/front/assets/lib/material-design-icons/css/material-design-iconic-font.min.css" />
    <link rel="stylesheet" type="text/css" href="/assets/front/assets/lib/jquery.vectormap/jquery-jvectormap-1.2.2.css" />
    <link rel="stylesheet" type="text/css" href="/assets/front/assets/lib/jqvmap/jqvmap.min.css" />
    <link rel="stylesheet" type="text/css" href="/assets/front/assets/lib/datetimepicker/css/bootstrap-datetimepicker.min.css" />

    

    <!-- font -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
   
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>  

    <link rel="stylesheet" href="/assets/front/assets/css/style.css">
    <link href="/assets/front/css/custom.css" rel="stylesheet">
    <link href="/assets/front/css/footer.css" rel="stylesheet">
    <link href="/assets/front/css/custom-front.css" rel="stylesheet">
    <link href="/assets/front/css/custom-order.css" rel="stylesheet">
    @yield('styles')
</head>

<body>
    <div id="wait" style="background-size: 200px;"></div>
    <div id="app">
        @yield('content')
    </div>
    @include('layouts.script')
    @yield('scripts')
</body>