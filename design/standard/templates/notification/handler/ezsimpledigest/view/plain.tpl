{set-block scope=root variable=subject}{'[%sitename] Digest for %date'
                                        |i18n("design/standard/notification",,
                                              hash('%date',currentdate()|l10n(datetime),
                                                   '%sitename',ezini("SiteSettings","SiteURL")))}{/set-block}
{"This email is to inform you on news at %sitename."
 |i18n('design/standard/notification',,
       hash('%sitename',ezini("SiteSettings","SiteURL")))}


{"If you do not wish to continue receiving these notifications,
change your settings at:"|i18n('design/standard/notification')}
http://{ezini("SiteSettings","SiteURL")}{concat("notification/settings/")|ezurl(no)}

-- 
{"%sitename notification system"
 |i18n('design/standard/notification',,
       hash('%sitename',ezini("SiteSettings","SiteURL")))}
