<div class="recent col-xs-12">
	<a href="{relative_path}/recent">
		<div class="alert alert-warning hide" id="new-topics-alert"></div>
	</a>

	<!-- IF !topics.length -->
	<div class="alert alert-warning" id="category-no-topics">
		<strong>[[recent:no_recent_topics]]</strong>
	</div>
	<!-- ENDIF !topics.length -->

	<div class="category row">
		<div class="col-md-12">
			<!-- IMPORT partials/topics_list.tpl -->
		</div>
	</div>
</div>