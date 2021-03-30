{if $MENU != ''}
	<!-- Menu -->
	<div id="block_top_menu" class="sf-contener">
		<div class="navbar-header">
		      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
		        <span class="sr-only">Toggle navigation</span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		      </button>
		</div>
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
				<ul class="sf-menu clearfix menu-content nav navbar-nav">
					{$MENU}
					{if $MENU_SEARCH}
						<li class="sf-search noBack" style="float:right">
							<form id="searchbox" action="{$link->getPageLink('search')|escape:'html':'UTF-8'}" method="get">
								<p>
									<input type="hidden" name="controller" value="search" />
									<input type="hidden" value="position" name="orderby"/>
									<input type="hidden" value="desc" name="orderway"/>
									<input type="text" name="search_query" value="{if isset($smarty.get.search_query)}{$smarty.get.search_query|escape:'html':'UTF-8'}{/if}" />
								</p>
							</form>
						</li>
					{/if}
				</ul>
		</div>
	</div>
	<!--/ Menu -->
{/if}