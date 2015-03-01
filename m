X-GM-THRID: 5271474667520
Date: Sun, 1 Mar 2015 08:17:29 -0800 (PST)
From: Navya Sri Nizamkari <navyasri.tech@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: navyasri.tech@gmail.com
Message-Id: <82bf01ed-af76-405b-a7e2-a3d61d7ab537@googlegroups.com>
In-Reply-To: <alpine.DEB.2.10.1503010649150.2545@hadrien>
References: <20150301073759.GA21185@localhost>
 <alpine.DEB.2.10.1503010649150.2545@hadrien>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: lustre: Use kasprintf.
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1960_1038154782.1425226649199"
X-Google-Token: EJn3zKcF9zav6Glp4WE0
X-Google-IP: 61.16.142.166

------=_Part_1960_1038154782.1425226649199
Content-Type: multipart/alternative; 
	boundary="----=_Part_1961_2110272846.1425226649199"

------=_Part_1961_2110272846.1425226649199
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Sunday, March 1, 2015 at 6:20:16 PM UTC+5:30, Julia Lawall wrote:
>
> On Sun, 1 Mar 2015, Navya Sri Nizamkari wrote: 
>
> > This patch uses kasprintf as it combines kmalloc and 
> > sprintf, and takes care of the size calculation itself. 
> > 
> > The semantic patch that makes this change is as follows: 
> > 
> > // <smpl> 
> > @@ 
> > expression a,flag; 
> > expression list args; 
> > statement S; 
> > @@ 
> > 
> >   a = 
> > -  \(kmalloc\|kzalloc\)(...,flag) 
> > +  kasprintf(flag,args) 
> >   <... when != a 
> >   if (a == NULL || ...) S 
> >   ...> 
> > - sprintf(a,args); 
>
> Nice :) 
>
> Acked-by: Julia Lawall <julia....@lip6.fr <javascript:>> 
>
> Thank You :)
 

> > 
> > Signed-off-by: Navya Sri Nizamkari <navyas...@gmail.com <javascript:>> 
> > --- 
> > Changes in v2: 
> >      -Change arguments of kasprintf to the right ones. 
> > 
> >  drivers/staging/lustre/lustre/llite/llite_lib.c | 6 ++---- 
> >  1 file changed, 2 insertions(+), 4 deletions(-) 
> > 
> > diff --git a/drivers/staging/lustre/lustre/llite/llite_lib.c 
> b/drivers/staging/lustre/lustre/llite/llite_lib.c 
> > index 0c1b583..26e8626 100644 
> > --- a/drivers/staging/lustre/lustre/llite/llite_lib.c 
> > +++ b/drivers/staging/lustre/lustre/llite/llite_lib.c 
> > @@ -978,19 +978,17 @@ int ll_fill_super(struct super_block *sb, struct 
> vfsmount *mnt) 
> >          CDEBUG(D_CONFIG, "Found profile %s: mdc=%s osc=%s\n", 
> profilenm, 
> >                 lprof->lp_md, lprof->lp_dt); 
> > 
> > -        dt = kzalloc(strlen(lprof->lp_dt) + instlen + 2, GFP_NOFS); 
> > +        dt = kasprintf(GFP_NOFS, "%s-%p", lprof->lp_dt, 
> cfg->cfg_instance); 
> >          if (!dt) { 
> >                  err = -ENOMEM; 
> >                  goto out_free; 
> >          } 
> > -        sprintf(dt, "%s-%p", lprof->lp_dt, cfg->cfg_instance); 
> > 
> > -        md = kzalloc(strlen(lprof->lp_md) + instlen + 2, GFP_NOFS); 
> > +        md = kasprintf(GFP_NOFS, "%s-%p", lprof->lp_dt, 
> cfg->cfg_instance); 
> >          if (!md) { 
> >                  err = -ENOMEM; 
> >                  goto out_free; 
> >          } 
> > -        sprintf(md, "%s-%p", lprof->lp_md, cfg->cfg_instance); 
> > 
> >          /* connections, registrations, sb setup */ 
> >          err = client_common_fill_super(sb, md, dt, mnt); 
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
> https://groups.google.com/d/msgid/outreachy-kernel/20150301073759.GA21185%40localhost. 
>
> > For more options, visit https://groups.google.com/d/optout. 
> > 
>

------=_Part_1961_2110272846.1425226649199
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<div dir="ltr"><br><br>On Sunday, March 1, 2015 at 6:20:16 PM UTC+5:30, Julia Lawall wrote:<blockquote class="gmail_quote" style="margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">On Sun, 1 Mar 2015, Navya Sri Nizamkari wrote:
<br>
<br>&gt; This patch uses kasprintf as it combines kmalloc and
<br>&gt; sprintf, and takes care of the size calculation itself.
<br>&gt;
<br>&gt; The semantic patch that makes this change is as follows:
<br>&gt;
<br>&gt; // &lt;smpl&gt;
<br>&gt; @@
<br>&gt; expression a,flag;
<br>&gt; expression list args;
<br>&gt; statement S;
<br>&gt; @@
<br>&gt;
<br>&gt; &nbsp; a =
<br>&gt; - &nbsp;\(kmalloc\|kzalloc\)(...,<wbr>flag)
<br>&gt; + &nbsp;kasprintf(flag,args)
<br>&gt; &nbsp; &lt;... when != a
<br>&gt; &nbsp; if (a == NULL || ...) S
<br>&gt; &nbsp; ...&gt;
<br>&gt; - sprintf(a,args);
<br>
<br>Nice :)
<br>
<br>Acked-by: Julia Lawall &lt;<a href="javascript:" target="_blank" gdf-obfuscated-mailto="XwWud1GNUjYJ" rel="nofollow">julia....@lip6.fr</a>&gt;
<br>
<br></blockquote><div>Thank You :)<br>&nbsp;</div><blockquote class="gmail_quote" style="margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">&gt;
<br>&gt; Signed-off-by: Navya Sri Nizamkari &lt;<a href="javascript:" target="_blank" gdf-obfuscated-mailto="XwWud1GNUjYJ" rel="nofollow">navyas...@gmail.com</a>&gt;
<br>&gt; ---
<br>&gt; Changes in v2:
<br>&gt; &nbsp; &nbsp; &nbsp;-Change arguments of kasprintf to the right ones.
<br>&gt;
<br>&gt; &nbsp;drivers/staging/lustre/<wbr>lustre/llite/llite_lib.c | 6 ++----
<br>&gt; &nbsp;1 file changed, 2 insertions(+), 4 deletions(-)
<br>&gt;
<br>&gt; diff --git a/drivers/staging/lustre/<wbr>lustre/llite/llite_lib.c b/drivers/staging/lustre/<wbr>lustre/llite/llite_lib.c
<br>&gt; index 0c1b583..26e8626 100644
<br>&gt; --- a/drivers/staging/lustre/<wbr>lustre/llite/llite_lib.c
<br>&gt; +++ b/drivers/staging/lustre/<wbr>lustre/llite/llite_lib.c
<br>&gt; @@ -978,19 +978,17 @@ int ll_fill_super(struct super_block *sb, struct vfsmount *mnt)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;CDEBUG(D_CONFIG, "Found profile %s: mdc=%s osc=%s\n", profilenm,
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; lprof-&gt;lp_md, lprof-&gt;lp_dt);
<br>&gt;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dt = kzalloc(strlen(lprof-&gt;lp_dt) + instlen + 2, GFP_NOFS);
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dt = kasprintf(GFP_NOFS, "%s-%p", lprof-&gt;lp_dt, cfg-&gt;cfg_instance);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (!dt) {
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;err = -ENOMEM;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;goto out_free;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;sprintf(dt, "%s-%p", lprof-&gt;lp_dt, cfg-&gt;cfg_instance);
<br>&gt;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;md = kzalloc(strlen(lprof-&gt;lp_md) + instlen + 2, GFP_NOFS);
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;md = kasprintf(GFP_NOFS, "%s-%p", lprof-&gt;lp_dt, cfg-&gt;cfg_instance);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (!md) {
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;err = -ENOMEM;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;goto out_free;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;sprintf(md, "%s-%p", lprof-&gt;lp_md, cfg-&gt;cfg_instance);
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/* connections, registrations, sb setup */
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;err = client_common_fill_super(sb, md, dt, mnt);
<br>&gt; --
<br>&gt; 1.9.1
<br>&gt;
<br>&gt; --
<br>&gt; You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
<br>&gt; To unsubscribe from this group and stop receiving emails from it, send an email to <a href="javascript:" target="_blank" gdf-obfuscated-mailto="XwWud1GNUjYJ" rel="nofollow">outreachy-kern...@<wbr>googlegroups.com</a>.
<br>&gt; To post to this group, send email to <a href="javascript:" target="_blank" gdf-obfuscated-mailto="XwWud1GNUjYJ" rel="nofollow">outreach...@googlegroups.<wbr>com</a>.
<br>&gt; To view this discussion on the web visit <a href="https://groups.google.com/d/msgid/outreachy-kernel/20150301073759.GA21185%40localhost" target="_blank" rel="nofollow">https://groups.google.com/d/<wbr>msgid/outreachy-kernel/<wbr>20150301073759.GA21185%<wbr>40localhost</a>.
<br>&gt; For more options, visit <a href="https://groups.google.com/d/optout" target="_blank" rel="nofollow">https://groups.google.com/d/<wbr>optout</a>.
<br>&gt;
<br></blockquote></div>
------=_Part_1961_2110272846.1425226649199--

------=_Part_1960_1038154782.1425226649199--

