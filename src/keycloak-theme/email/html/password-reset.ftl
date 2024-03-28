<#import "template.ftl" as layout>
<@layout.emailLayout ; section>
    <#if section = "subject">
      ${msg("passwordResetSubject")?no_esc}
    </#if>
    
    <#if section = "text">
      ${msg("passwordResetBodyHtml")?no_esc}
    </#if>

    <#if section = "linkText">
      ${msg("passwordResetLinkTextHtml")?no_esc}
    </#if>

    <#if section = "footer">
      ${msg("passwordResetFooterBodyHtml")?no_esc}
    </#if>

</@layout.emailLayout>
