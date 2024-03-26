<#macro emailLayout>
<html>
<head>
</head>
<body>
<div style="outline:none;margin:0;padding:0" bgcolor="#3177FF" text="#02072C">

<#if realmName??>
<table width="100%" bgcolor="#ffffff" cellspacing="0" cellpadding="15">
<tr>
<td>
<font style="font-size:16px;" size="5"><b>
${realmName}
</b></font>
</td>
</tr>
</table>
</#if>

<#if link??>
<table width="600" align="center" cellspacing="0" cellpadding="0" border="0" bgcolor="#ffffff" style="outline:none;border-collapse:collapse;border-spacing:0;table-layout:fixed;width:600px;min-width:600px;margin:0 auto;padding:0">
<tr>
<td width="600" bgcolor="#ffffff" style="outline:none;width:600px;min-width:600px;margin:0;padding:0" align="left" valign="top">
<#nested "text">
</td>
</tr>
</table>
</#if>

</div>
</body>
</html>
</#macro>