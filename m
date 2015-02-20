X-GM-THRID: 1346431352832
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,1fdd4451ee4a6ec5
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
Date: Fri, 20 Feb 2015 08:31:15 -0800 (PST)
From: Navya Sri Nizamkari <navyasri.tech@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: navyasri.tech@gmail.com
Message-Id: <fc705749-6e36-41a8-864e-5b0a3d1234b7@googlegroups.com>
In-Reply-To: <alpine.DEB.2.10.1502201714490.2375@hadrien>
References: <1424446833-22298-1-git-send-email-navyasri.tech@gmail.com>
 <alpine.DEB.2.10.1502201714490.2375@hadrien>
Subject: Re: [Outreachy kernel] [PATCH] staging: i2o : Replace printk with
 dev_warn
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_653_2056956048.1424449875490"
X-Google-Token: ENPCnacFCkF__hdwxmY0
X-Google-IP: 61.16.142.166

------=_Part_653_2056956048.1424449875490
Content-Type: multipart/alternative; 
	boundary="----=_Part_654_1850333096.1424449875498"

------=_Part_654_1850333096.1424449875498
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

It did give a breaking up strings error. But I thought it would be better 
if I made another patch to address that. Indeed, it prints out the driver 
name. I'll change it in the patch.
Navya

On Friday, February 20, 2015 at 9:46:31 PM UTC+5:30, Julia Lawall wrote:
>
> On Fri, 20 Feb 2015, Navya Sri Nizamkari wrote: 
>
> > This patch fixes the checkpatch.pl warning: 
> > WARNING: Prefer netdev_info(netdev, ... then dev_info 
> > (dev, ... then pr_info(...  to printk(KERN_INFO ... 
> > 
> > i2o being a device driver, printk(KERN_WARNING can be 
> > replaced with the dev_warn function which is preferable. 
> > 
> > Signed-off-by: Navya Sri Nizamkari <navyas...@gmail.com <javascript:>> 
> > --- 
> >  drivers/staging/i2o/exec-osm.c | 2 +- 
> >  1 file changed, 1 insertion(+), 1 deletion(-) 
> > 
> > diff --git a/drivers/staging/i2o/exec-osm.c 
> b/drivers/staging/i2o/exec-osm.c 
> > index 16d857d..89e464d 100644 
> > --- a/drivers/staging/i2o/exec-osm.c 
> > +++ b/drivers/staging/i2o/exec-osm.c 
> > @@ -507,7 +507,7 @@ static int i2o_exec_reply(struct i2o_controller *c, 
> u32 m, 
> >           * to aid in debugging. 
> >           * 
> >           */ 
> > -        printk(KERN_WARNING "%s: Unsolicited message reply sent to 
> core!" 
> > +        dev_warn(c->pdev->dev, "%s: Unsolicited message reply sent to 
> core!" 
> >                 "Message dumped to syslog\n", c->name); 
>
> I wonder if c->name is necessary if you are using dev_warn?  Look at the 
> definition of dev_warn and see if it already prints out something that 
> looks like the name of the driver. 
>
> Another checkpatch warning would be about not breaking up strings.  I'm 
> surprised that it didn't complain about it. 
>
> julia 
>
> >          i2o_dump_message(msg); 
> > 
> > -- 
> > 1.9.1 
> > 
> > -- 
> > You received this message because you are subscribed to the Google 
> Groups "outreachy-kernel" group. 
> > To unsubscribe from this group and stop receiving emails from it, send 
> an email to outreachy-kern...@googlegroups.com <javascript:>. 
> > To post to this group, send email to outreach...@googlegroups.com 
> <javascript:>. 
> > To view this discussion on the web visit 
> https://groups.google.com/d/msgid/outreachy-kernel/1424446833-22298-1-git-send-email-navyasri.tech%40gmail.com. 
>
> > For more options, visit https://groups.google.com/d/optout. 
> > 
>

------=_Part_654_1850333096.1424449875498
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<div dir="ltr">It did give a breaking up strings error. But I thought it would be better if I made another patch to address that. Indeed, it prints out the driver name. I'll change it in the patch.<br>Navya<br><br>On Friday, February 20, 2015 at 9:46:31 PM UTC+5:30, Julia Lawall wrote:<blockquote class="gmail_quote" style="margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">On Fri, 20 Feb 2015, Navya Sri Nizamkari wrote:
<br>
<br>&gt; This patch fixes the <a href="http://checkpatch.pl" target="_blank" rel="nofollow">checkpatch.pl</a> warning:
<br>&gt; WARNING: Prefer netdev_info(netdev, ... then dev_info
<br>&gt; (dev, ... then pr_info(... &nbsp;to printk(KERN_INFO ...
<br>&gt;
<br>&gt; i2o being a device driver, printk(KERN_WARNING can be
<br>&gt; replaced with the dev_warn function which is preferable.
<br>&gt;
<br>&gt; Signed-off-by: Navya Sri Nizamkari &lt;<a href="javascript:" target="_blank" gdf-obfuscated-mailto="A28odsaF248J" rel="nofollow">navyas...@gmail.com</a>&gt;
<br>&gt; ---
<br>&gt; &nbsp;drivers/staging/i2o/exec-osm.<wbr>c | 2 +-
<br>&gt; &nbsp;1 file changed, 1 insertion(+), 1 deletion(-)
<br>&gt;
<br>&gt; diff --git a/drivers/staging/i2o/exec-<wbr>osm.c b/drivers/staging/i2o/exec-<wbr>osm.c
<br>&gt; index 16d857d..89e464d 100644
<br>&gt; --- a/drivers/staging/i2o/exec-<wbr>osm.c
<br>&gt; +++ b/drivers/staging/i2o/exec-<wbr>osm.c
<br>&gt; @@ -507,7 +507,7 @@ static int i2o_exec_reply(struct i2o_controller *c, u32 m,
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * to aid in debugging.
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; *
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; */
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;printk(KERN_WARNING "%s: Unsolicited message reply sent to core!"
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dev_warn(c-&gt;pdev-&gt;<wbr>dev, "%s: Unsolicited message reply sent to core!"
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; "Message dumped to syslog\n", c-&gt;name);
<br>
<br>I wonder if c-&gt;name is necessary if you are using dev_warn? &nbsp;Look at the
<br>definition of dev_warn and see if it already prints out something that
<br>looks like the name of the driver.
<br>
<br>Another checkpatch warning would be about not breaking up strings. &nbsp;I'm
<br>surprised that it didn't complain about it.
<br>
<br>julia
<br>
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;i2o_dump_message(msg)<wbr>;
<br>&gt;
<br>&gt; --
<br>&gt; 1.9.1
<br>&gt;
<br>&gt; --
<br>&gt; You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
<br>&gt; To unsubscribe from this group and stop receiving emails from it, send an email to <a href="javascript:" target="_blank" gdf-obfuscated-mailto="A28odsaF248J" rel="nofollow">outreachy-kern...@<wbr>googlegroups.com</a>.
<br>&gt; To post to this group, send email to <a href="javascript:" target="_blank" gdf-obfuscated-mailto="A28odsaF248J" rel="nofollow">outreach...@googlegroups.<wbr>com</a>.
<br>&gt; To view this discussion on the web visit <a href="https://groups.google.com/d/msgid/outreachy-kernel/1424446833-22298-1-git-send-email-navyasri.tech%40gmail.com" target="_blank" rel="nofollow">https://groups.google.com/d/<wbr>msgid/outreachy-kernel/<wbr>1424446833-22298-1-git-send-<wbr>email-navyasri.tech%40gmail.<wbr>com</a>.
<br>&gt; For more options, visit <a href="https://groups.google.com/d/optout" target="_blank" rel="nofollow">https://groups.google.com/d/<wbr>optout</a>.
<br>&gt;
<br></blockquote></div>
------=_Part_654_1850333096.1424449875498--

------=_Part_653_2056956048.1424449875490--

