{if isset($html)}
<div class="widget-html home-block block nopadding noborder nobackground">
	{if isset($widget_heading)&&!empty($widget_heading)}
	<h4 class="title_block">
		{$widget_heading}
	</h4>
	{/if}
	<div class="block_content toggle-footer">
		{$html}
	</div>
</div>
{/if}