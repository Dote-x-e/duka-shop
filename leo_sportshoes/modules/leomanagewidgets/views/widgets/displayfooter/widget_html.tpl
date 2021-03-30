{if isset($html)}
<div class="widget-html block footer-block block nopadding">
	{if isset($widget_heading)&&!empty($widget_heading)}
	<h4 class="title_block">
		{$widget_heading}
	</h4>
	{/if}
	<div class="block_content">
		{$html}
	</div>
</div>
{/if}