<ul>
     <li>不建议使用QQ邮箱，因为经常会被列入垃圾邮件</li>
     <li>若只有QQ邮箱，请参考下图</li>
     <li>若仍无法收到邮件，可与我联系</li>
     <li>邮箱：souloutclub@gmail.com</li>
     <li>TG：<a href="https://t.me/out_soul" target="_blank">@oul_soul</a></li>
     
    <img src="/images/email_nrcy.jpg" height="458" width="468">
    <br/>
    {if $config["enable_admin_contact"] == 'true'}
        <p>如果发现“收信查询”中没有找到邮件，请联系管理员：</p>
        {if $config["admin_contact1"]!=null}
            <li>{$config["admin_contact1"]}</li>
        {/if}
        {if $config["admin_contact2"]!=null}
            <li>{$config["admin_contact2"]}</li>
        {/if}
        {if $config["admin_contact3"]!=null}
            <li>{$config["admin_contact3"]}</li>
        {/if}
    {/if}
</ul>