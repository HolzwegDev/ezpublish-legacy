<form action={concat("/shop/customerlist")|ezurl} method="post" name="Customerlist">
<div class="maincontentheader">
  <h1>{"Customer list"|i18n("design/standard/shop")}</h1>
</div>

{section show=$customer_list}
<table class="list" width="100%" cellspacing="0" cellpadding="0" border="0">
<tr>
	<th>
	{"Customer"|i18n("design/standard/shop")}
	</th>
	<th>
	{"Number of orders"|i18n("design/standard/shop")}
	</th>
	<th>
	{"Total ex. VAT"|i18n("design/standard/shop")}
	</th>
	<th>
	{"Total inc. VAT"|i18n("design/standard/shop")}
	</th>
</tr>

{section var="Customer" loop=$customer_list sequence=array(bglight,bgdark)}
<tr>
	<td class="{$Customer.sequence}">
    <a href={concat("/shop/customerorderview/",$Customer.user_id,"/", $Customer.email)|ezurl}>{$Customer.account_name}</a>
	</td>
	<td class="{$Customer.sequence}">
    {$Customer.order_count}
	</td>
	<td class="{$Customer.sequence}">
	{$Customer.sum_ex_vat|l10n(currency)}
	</td>
	<td class="{$Customer.sequence}">
	{$Customer.sum_inc_vat|l10n(currency)}
</tr>
{/section}
</table>
{section-else}

<div class="feedback">
  <h2>{"The customer list is empty"|i18n("design/standard/shop")}</h2>
</div>

{/section}

{include name=navigator
         uri='design:navigator/google.tpl'
         page_uri=concat('/shop/customerlist/')
         item_count=$custom_list_count
         view_parameters=$view_parameters
         item_limit=$limit}
</form>