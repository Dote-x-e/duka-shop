{*
	************************
		Creat by leo themes
	*************************
*}
{if !isset($callFromModule) || $callFromModule==0}
{include file="$tpl_dir./layout/setting.tpl"}
{/if}
	<div class="product-container text-center product-block" itemscope itemtype="https://schema.org/Product">
		<div class="item-product">
		<div class="left-block">
			<div class="product-image-container image">
			   <div class="leo-more-info" data-idproduct="{$product.id_product}"></div>
				<a class="product_img_link"	href="{$product.link|escape:'html':'UTF-8'}" title="{$product.name|escape:'html':'UTF-8'}" itemprop="url">
					<img class="replace-2x img-responsive" src="{$link->getImageLink($product.link_rewrite, $product.id_image, 'home_default')|escape:'html':'UTF-8'}" alt="{if !empty($product.legend)}{$product.legend|escape:'html':'UTF-8'}{else}{$product.name|escape:'html':'UTF-8'}{/if}" title="{if !empty($product.legend)}{$product.legend|escape:'html':'UTF-8'}{else}{$product.name|escape:'html':'UTF-8'}{/if}" itemprop="image" />
					<span class="product-additional" data-idproduct="{$product.id_product}"></span>
				</a>
				{if isset($product.new) && $product.new == 1}
					<span class="new-box">
						<span class="new-label product-label">{l s='New'}</span>
					</span>
				{/if}
				{if isset($product.on_sale) && $product.on_sale && isset($product.show_price) && $product.show_price && !$PS_CATALOG_MODE}
					<span class="sale-box">
						<span class="sale-label product-label">{l s='Sale!'}</span>
					</span>
				{/if}
			</div>
			{hook h="displayProductDeliveryTime" product=$product}
			{hook h="displayProductPriceBlock" product=$product type="weight"}
		</div>
		<div class="center-block ImageWrapper">
			<p class="product-desc" itemprop="description">
				<a href="{$product.link|escape:'html':'UTF-8'}" title="{$product.name|escape:'html':'UTF-8'}" itemprop="url" >
					{$product.description_short|strip_tags:'UTF-8'|truncate:360:'...'}
				</a>
			</p>
			{if isset($product.color_list) && $ENABLE_COLOR}
				<div class="color-list-container">{$product.color_list} </div>
			{/if}
			<div class="product-flags">
				{if (!$PS_CATALOG_MODE AND ((isset($product.show_price) && $product.show_price) || (isset($product.available_for_order) && $product.available_for_order)))}
				{if isset($product.online_only) && $product.online_only}
					<span class="online_only label label-warning">{l s='Online only'}</span>
				{/if}
				{/if}
				{if isset($product.on_sale) && $product.on_sale && isset($product.show_price) && $product.show_price && !$PS_CATALOG_MODE}
				{elseif isset($product.reduction) && $product.reduction && isset($product.show_price) && $product.show_price && !$PS_CATALOG_MODE}
					<span class="discount label label-danger">{l s='Reduced price!'}</span>
				{/if}
			</div>

			{if isset($quick_view) && $quick_view}
				<a class="quick-view btn-outline-inverse btn" href="{$product.link|escape:'html':'UTF-8'}" rel="{$product.link|escape:'html':'UTF-8'}" title="{l s='Quick view'}" >
					{l s='Quick view'}
				</a>
			{/if}

			{if $page_name !='product'}
				<div class="functional-buttons clearfix Buttons CStyleC">
					{if $ENABLE_WISHLIST}
						{hook h='displayProductListFunctionalButtons' product=$product}
					{/if}				
					<div class="cart WhiteRounded">
						{if ($product.id_product_attribute == 0 || (isset($add_prod_display) && ($add_prod_display == 1))) && $product.available_for_order && !isset($restricted_country_mode) && $product.customizable != 2 && !$PS_CATALOG_MODE}
							{if (!isset($product.customization_required) || !$product.customization_required) && ($product.allow_oosp || $product.quantity > 0)}
								{capture}add=1&amp;id_product={$product.id_product|intval}{if isset($product.id_product_attribute) && $product.id_product_attribute}&amp;ipa={$product.id_product_attribute|intval}{/if}{if isset($static_token)}&amp;token={$static_token}{/if}{/capture}
								<a class="ajax_add_to_cart_button" href="{$link->getPageLink('cart', true, NULL, $smarty.capture.default, false)|escape:'html':'UTF-8'}" rel="nofollow" title="{l s='Add to cart'}" data-id-product-attribute="{$product.id_product_attribute|intval}" data-id-product="{$product.id_product|intval}" data-minimal_quantity="{if isset($product.product_attribute_minimal_quantity) && $product.product_attribute_minimal_quantity >= 1}{$product.product_attribute_minimal_quantity|intval}{else}{$product.minimal_quantity|intval}{/if}">
									<i class="fa fa-shopping-cart"></i>
									<span>{l s='Add to cart'}</span>
								</a>
							{else}
								<span class="ajax_add_to_cart_button disabled" title="{l s='Out of stock'}">
									<i class="fa fa-shopping-cart"></i>
									<span>{l s='Out of stock'}</span>
								</span>
							{/if}
						{/if}
					</div>
					{if isset($comparator_max_item) && $comparator_max_item}
					<div class="compare WhiteRounded">
						<a class="add_to_compare compare" href="{$product.link|escape:'html':'UTF-8'}" data-id-product="{$product.id_product}" title="{l s='Add to compare'}" >
							<i class="fa fa-files-o"></i>
							<span>{l s='Add to compare'}</span>
						</a>						
					</div>
						
					{/if}
				</div>
			{/if}

		</div>
		<!-- End center block -->
		<div class="right-block">
			<div class="product-meta">
				{if $page_name !="product"}
					{capture name='displayProductListReviews'}{hook h='displayProductListReviews' product=$product}{/capture}
					{if $smarty.capture.displayProductListReviews}
						<div class="hook-reviews">
						{hook h='displayProductListReviews' product=$product}
						</div>
					{/if}
				{/if}
				<h5 itemprop="name" class="name">
					{if isset($product.pack_quantity) && $product.pack_quantity}{$product.pack_quantity|intval|cat:' x '}{/if}
					<a class="product-name" href="{$product.link|escape:'html':'UTF-8'}" title="{$product.name|escape:'html':'UTF-8'}" itemprop="url" >
						{$product.name|truncate:45:'...'|escape:'html':'UTF-8'}
					</a>
				</h5>
				{if (!$PS_CATALOG_MODE AND ((isset($product.show_price) && $product.show_price) || (isset($product.available_for_order) && $product.available_for_order)))}
					<div class="content_price">
						{if isset($product.show_price) && $product.show_price && !isset($restricted_country_mode)}
							{hook h="displayProductPriceBlock" product=$product type='before_price'}
							<span class="price product-price">
								{if !$priceDisplay}{convertPrice price=$product.price}{else}{convertPrice price=$product.price_tax_exc}{/if}
							</span>
							{if $product.price_without_reduction > 0 && isset($product.specific_prices) && $product.specific_prices && isset($product.specific_prices.reduction) && $product.specific_prices.reduction > 0}
								{hook h="displayProductPriceBlock" product=$product type="old_price"}
								<span class="old-price product-price">
									{displayWtPrice p=$product.price_without_reduction}
								</span>
								{hook h="displayProductPriceBlock" id_product=$product.id_product type="old_price"}
								{if $product.specific_prices.reduction_type == 'percentage'}
									<span class="price-percent-reduction">-{$product.specific_prices.reduction * 100}%</span>
								{/if}
							{/if}
							{hook h="displayProductPriceBlock" product=$product type="price"}
							{hook h="displayProductPriceBlock" product=$product type="unit_price"}
							{hook h="displayProductPriceBlock" product=$product type='after_price'}
						{/if}
					</div>
				{/if}
				{if (!$PS_CATALOG_MODE && $PS_STOCK_MANAGEMENT && ((isset($product.show_price) && $product.show_price) || (isset($product.available_for_order) && $product.available_for_order)))}
					{if isset($product.available_for_order) && $product.available_for_order && !isset($restricted_country_mode)}
						<span class="availability">
							{if ($product.allow_oosp || $product.quantity > 0)}
								<span class="label{if $product.quantity <= 0 && isset($product.allow_oosp) && !$product.allow_oosp} out-of-stock label-danger{elseif $product.quantity <= 0} available-dif label-warning{else} available-now label-success{/if}">
									{if $product.quantity <= 0}{if $product.allow_oosp}{if isset($product.available_later) && $product.available_later}{$product.available_later}{else}{l s='In Stock'}{/if}{else}{l s='Out of stock'}{/if}{else}{if isset($product.available_now) && $product.available_now}{$product.available_now}{else}{l s='In Stock'}{/if}{/if}
								</span>
							{elseif (isset($product.quantity_all_versions) && $product.quantity_all_versions > 0)}
								<span class="available-dif label label-warning">
									{l s='Product available with different options'}
								</span>
							{else}
								<span class="out-of-stock label label-danger">
									{l s='Out of stock'}
								</span>
							{/if}
						</span>
					{/if}
				{/if}
			</div>
		</div>
	</div>
</div>
<!-- .product-container> -->

