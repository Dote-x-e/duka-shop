{*
* 2007-2015 PrestaShop
*
* NOTICE OF LICENSE
*
* This source file is subject to the Academic Free License (AFL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/afl-3.0.php
* If you did not receive a copy of the license and are unable to
* obtain it through the world-wide-web, please send an email
* to license@prestashop.com so we can send you a copy immediately.
*
* DISCLAIMER
*
* Do not edit or add to this file if you wish to upgrade PrestaShop to newer
* versions in the future. If you wish to customize PrestaShop for your
* needs please refer to http://www.prestashop.com for more information.
*
*  @author PrestaShop SA <contact@prestashop.com>
*  @copyright  2007-2015 PrestaShop SA
*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}
{if $PS_SC_TWITTER || $PS_SC_FACEBOOK || $PS_SC_GOOGLE || $PS_SC_PINTEREST}
	<div id="social-share-compare">
		<p>{l s="Share this comparison with your friends:" mod='socialsharing'}</p>
		<p class="socialsharing_product">
			{if $PS_SC_TWITTER}
				<button type="button" class="btn btn-default btn-block btn-twitter" onclick="socialsharing_twitter_click({if isset($product)}'{$product->name|escape:'htmlall':'UTF-8':'js=1'} {$link->getProductLink($product)|addslashes}'{/if});">
					<i class="fa fa-twitter"></i> {l s="Tweet" mod='socialsharing'}
				</button>
			{/if}
			{if $PS_SC_FACEBOOK}
				<button type="button" class="btn btn-default btn-block btn-facebook" onclick="socialsharing_facebook_click();">
					<i class="fa fa-facebook"></i> {l s="Share" mod='socialsharing'}
				</button>
			{/if}
			{if $PS_SC_GOOGLE}
				<button type="button" class="btn btn-default btn-block btn-google-plus" onclick="socialsharing_google_click();">
					<i class="fa fa-google-plus"></i> {l s="Google+" mod='socialsharing'}
				</button>
			{/if}
			{if $PS_SC_PINTEREST}
				<button type="button" class="btn btn-default btn-block btn-pinterest" onclick="socialsharing_pinterest_click('{$logo_url}');">
  					<i class="fa fa-pinterest"></i> {l s="Pinterest" mod='socialsharing'}
  				</button>
			{/if}
		</p>
	</div>
{/if}