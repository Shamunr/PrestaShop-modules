{*
* 2007-2014 PrestaShop
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
*  @copyright  2007-2014 PrestaShop SA
*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}


<script type="text/javascript">
	regenerate_token_show = false;
	{if $regenerate_token != false}
	regenerate_token_show = true;
	{/if}
</script>
{*
<fieldset>
	{if $img_stats}
		<center><img src="{$path|escape:'htmlall'}{$img_stats|escape:'htmlall'}" alt="eBay stats"/></center><br />
	{/if}
	<u><a href="{l s="http://pages.ebay.fr/professionnels/index.html" mod='ebay'}" target="_blank">{l s='Click here to learn more about business selling on eBay' mod='ebay'}</a></u>
</fieldset>
<br />
*}
<link rel="stylesheet" href="{$css_file}" />
<script>
	var $j = $;
</script>
{if substr($smarty.const._PS_VERSION_, 0, 3) == "1.4" || substr($smarty.const._PS_VERSION_, 0, 5) == "1.5.2"}
	<link rel="stylesheet" href="{$fancyboxCss}" />
	<script src="{$ebayjquery|escape:'htmlall'}"></script>
	<script src="{$noConflicts|escape:'htmlall'}"></script>
	<script>
		if(typeof($j172) != 'undefined')
			$j = $j172;
		else 
			$j = $;
	</script>
	<script src="{$fancybox|escape:'htmlall'}"></script>
{/if}
<script src="{$tooltip|escape:'htmlall'}" type="text/javascript"></script>
<script src="{$tips202|escape:'htmlall'}" type="text/javascript"></script>

{literal}

{/literal}
<fieldset>
	<legend><img src="{$path|escape:'htmlall'}logo.gif" alt="" />{l s='eBay Module Status' mod='ebay'}</legend>
	<div style="float: left; width: 45%">
	{if empty($alert)}
		<img src="../modules/ebay/views/img/valid.png" /><strong>{l s='eBay Module is configured and online!' mod='ebay'}</strong>
		{if $is_version_one_dot_five}
			{if $is_version_one_dot_five_dot_one}
				<br/><img src="../modules/ebay/views/img/warn.png" /><strong>{l s='You\'re using version 1.5.1 of PrestaShop. We invite you to upgrade to version 1.5.2  so you can use the eBay module properly.' mod='ebay'}</strong>
				<br/><strong>{l s='Please synchronize your eBay sales in your Prestashop front office' mod='ebay'}</strong>
			{/if}
		{/if}
	{else}
		<img src="../modules/ebay/views/img/warn.png" /><strong>{l s='Please complete the following settings to configure the module' mod='ebay'}</strong>
		<br />{if in_array('registration', $alert)}<img src="../modules/ebay/views/img/warn.png" />{else}<img src="../modules/ebay/views/img/valid.png" />{/if} 1) {l s='Register the module on eBay' mod='ebay'}
		<br />{if in_array('allowurlfopen', $alert)}<img src="../modules/ebay/views/img/warn.png" />{else}<img src="../modules/ebay/views/img/valid.png" />{/if} 2) {l s='Allow url fopen' mod='ebay'}
		<br />{if in_array('curl', $alert)}<img src="../modules/ebay/views/img/warn.png" />{else}<img src="../modules/ebay/views/img/valid.png" />{/if} 3) {l s='Enable cURL' mod='ebay'}
		<br />{if in_array('SellerBusinessType', $alert)}<img src="../modules/ebay/views/img/warn.png" />{else}<img src="../modules/ebay/views/img/valid.png" />{/if} 4) {l s='Please register an eBay business seller account to configure the application' mod='ebay'}
	{/if}

	</div><div style="float: right; width: 45%">{$prestashop_content|escape:'htmlall'}<br>{l s='Connection to eBay.' mod='ebay'}{$site_extension|escape:'htmlall'}<br/><a href="http://www.202-ecommerce.com/ebay/doc_{$documentation_lang|escape:'htmlall'}.pdf" target="_blank">{l s='Download documentation' mod='ebay'}</a></div>
	<div class="clear"></div>
	<div><a href="{l s="http://pages.ebay.fr/professionnels/index.html" mod='ebay'}" target="_blank">{l s='Click here to learn more about business selling on eBay' mod='ebay'}</a></div>
</fieldset><div class="clear">&nbsp;</div>