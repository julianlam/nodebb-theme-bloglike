<!DOCTYPE html>
<html>
<head>
	<title>{browserTitle}</title>
	<!-- BEGIN metaTags -->
	<meta<!-- IF metaTags.name --> name="{metaTags.name}"<!-- ENDIF metaTags.name --><!-- IF metaTags.property --> property="{metaTags.property}"<!-- ENDIF metaTags.property --><!-- IF metaTags.content --> content="{metaTags.content}"<!-- ENDIF metaTags.content --> />
	<!-- END metaTags -->
	<link rel="stylesheet" type="text/css" href="{relative_path}/stylesheet.css?{cache-buster}" />
	<!-- IF bootswatchCSS --><link href="{bootswatchCSS}" rel="stylesheet" media="screen"><!-- ENDIF bootswatchCSS -->
	<!-- BEGIN linkTags -->
	<link<!-- IF linkTags.link --> link="{linkTags.link}"<!-- ENDIF linkTags.link --><!-- IF linkTags.rel --> rel="{linkTags.rel}"<!-- ENDIF linkTags.rel --><!-- IF linkTags.type --> type="{linkTags.type}"<!-- ENDIF linkTags.type --><!-- IF linkTags.href --> href="{linkTags.href}"<!-- ENDIF linkTags.href --> />
	<!-- END linkTags -->
	<!-- IF useCustomCSS -->
	<style type="text/css">{customCSS}</style>
	<!-- ENDIF useCustomCSS -->

	<!--[if lt IE 9]>
  		<script src="//cdnjs.cloudflare.com/ajax/libs/es5-shim/2.3.0/es5-shim.min.js"></script>
  		<script src="//cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7/html5shiv.js"></script>
  		<script src="//cdnjs.cloudflare.com/ajax/libs/respond.js/1.4.2/respond.js"></script>
  		<script>__lt_ie_9__ = 1;</script>
	<![endif]-->

	<script>
		var RELATIVE_PATH = "{relative_path}";
	</script>
	<script src="{relative_path}/socket.io/socket.io.js"></script>
	<script src="{relative_path}/nodebb.min.js?{cache-buster}"></script>
	<script>
		require.config({
			baseUrl: "{relative_path}/src/modules",
			waitSeconds: 3,
			urlArgs: "{cache-buster}",
			paths: {
				'forum': '../forum',
				'vendor': '../../vendor',
				'buzz': '../../vendor/buzz/buzz.min',
				'hammer': '../../plugins/nodebb-theme-viridian/lib/hammer',
				'pace': '../../plugins/nodebb-theme-viridian/lib/pace'
			}
		});
	</script>
</head>

<body>
	<div class="nav-sidebar">
		<div class="sidebar-header">
			<div class="sidebar-close pull-right"><div>&times;</div></div>
			<h2></h2>
		</div>
		<div class="sidebar-body">
			<ul class="categories active"></ul><!--
			--><ul class="topics"></ul>
		</div>
	</div>

	<div class="navbar navbar-fixed-top header" role="navigation" id="header-menu">
		<div class="container">
			<!-- IMPORT partials/menu.tpl -->
		</div>
	</div>

	<input id="csrf_token" type="hidden" template-variable="csrf" value="{csrf}" />

	<div class="" id="content">
	<!-- IMPORT partials/noscript/warning.tpl -->