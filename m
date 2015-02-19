X-GM-THRID: 135506427904
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,2402c1ea35d84fcd
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
Date: Thu, 19 Feb 2015 09:10:46 -0800 (PST)
From: Navya Sri Nizamkari <navyasri.tech@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: aybuke.147@gmail.com
Message-Id: <955b6bf4-ddf9-4adf-b981-ac9857ac8169@googlegroups.com>
In-Reply-To: <alpine.DEB.2.10.1502191751180.3284@hadrien>
References: <1424364343-3944-1-git-send-email-aybuke.147@gmail.com>
 <alpine.DEB.2.10.1502191751180.3284@hadrien>
Subject: Re: [Outreachy kernel] [PATCH] Staging: emxx_udc: Convert from
 __attribute__((aligned(size))) to __aligned(size)
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_402_1992736010.1424365846924"
X-Google-Token: EJaymKcFnMgB_PaP-xE0
X-Google-IP: 111.93.6.70

------=_Part_402_1992736010.1424365846924
Content-Type: multipart/alternative; 
	boundary="----=_Part_403_1906645105.1424365846924"

------=_Part_403_1906645105.1424365846924
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

I too submitted a patch for it in the older mailing list last month.
Navya

On Thursday, February 19, 2015 at 10:20:23 PM UTC+5:30, Julia Lawall wrote:
>
> On Thu, 19 Feb 2015, aybuke ozdemir wrote: 
>
> > This fixes the following checkpatch.pl warnings in emxx_udc.h file: 
> > WARNING: __aligned(size) is preferred over 
> __attribute__((aligned(size))) 
>
> This was done already by Vatika Harlalka.  You can see what has been done 
> in the mailing list archives. 
>
> julia 
>
> > Signed-off-by: aybuke ozdemir <aybuk...@gmail.com <javascript:>> 
> > --- 
> >  drivers/staging/emxx_udc/emxx_udc.h | 2 +- 
> >  1 file changed, 1 insertion(+), 1 deletion(-) 
> > 
> > diff --git a/drivers/staging/emxx_udc/emxx_udc.h 
> b/drivers/staging/emxx_udc/emxx_udc.h 
> > index ee1b80d..2ac216f 100644 
> > --- a/drivers/staging/emxx_udc/emxx_udc.h 
> > +++ b/drivers/staging/emxx_udc/emxx_udc.h 
> > @@ -535,7 +535,7 @@ typedef struct _T_FC_REGS { 
> > 
> >          u8 Reserved1200[0x1000-0x200];        /* Reserved */ 
> > 
> > -} __attribute__ ((aligned(32))) T_FC_REGS, *PT_FC_REGS; 
> > +} __aligned(32) T_FC_REGS, *PT_FC_REGS; 
> > 
> > 
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
> https://groups.google.com/d/msgid/outreachy-kernel/1424364343-3944-1-git-send-email-aybuke.147%40gmail.com. 
>
> > For more options, visit https://groups.google.com/d/optout. 
> > 
>

------=_Part_403_1906645105.1424365846924
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<div dir="ltr">I too submitted a patch for it in the older mailing list last month.<br>Navya<br><br>On Thursday, February 19, 2015 at 10:20:23 PM UTC+5:30, Julia Lawall wrote:<blockquote class="gmail_quote" style="margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">On Thu, 19 Feb 2015, aybuke ozdemir wrote:
<br>
<br>&gt; This fixes the following <a href="http://checkpatch.pl" target="_blank" rel="nofollow">checkpatch.pl</a> warnings in emxx_udc.h file:
<br>&gt; WARNING: __aligned(size) is preferred over __attribute__((aligned(size)))
<br>
<br>This was done already by Vatika Harlalka. &nbsp;You can see what has been done
<br>in the mailing list archives.
<br>
<br>julia
<br>
<br>&gt; Signed-off-by: aybuke ozdemir &lt;<a href="javascript:" target="_blank" gdf-obfuscated-mailto="gZyR7_-5TJwJ" rel="nofollow">aybuk...@gmail.com</a>&gt;
<br>&gt; ---
<br>&gt; &nbsp;drivers/staging/emxx_udc/<wbr>emxx_udc.h | 2 +-
<br>&gt; &nbsp;1 file changed, 1 insertion(+), 1 deletion(-)
<br>&gt;
<br>&gt; diff --git a/drivers/staging/emxx_udc/<wbr>emxx_udc.h b/drivers/staging/emxx_udc/<wbr>emxx_udc.h
<br>&gt; index ee1b80d..2ac216f 100644
<br>&gt; --- a/drivers/staging/emxx_udc/<wbr>emxx_udc.h
<br>&gt; +++ b/drivers/staging/emxx_udc/<wbr>emxx_udc.h
<br>&gt; @@ -535,7 +535,7 @@ typedef struct _T_FC_REGS {
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;u8 Reserved1200[0x1000-0x200];&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/* Reserved */
<br>&gt;
<br>&gt; -} __attribute__ ((aligned(32))) T_FC_REGS, *PT_FC_REGS;
<br>&gt; +} __aligned(32) T_FC_REGS, *PT_FC_REGS;
<br>&gt;
<br>&gt;
<br>&gt;
<br>&gt; --
<br>&gt; 1.9.1
<br>&gt;
<br>&gt; --
<br>&gt; You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
<br>&gt; To unsubscribe from this group and stop receiving emails from it, send an email to <a href="javascript:" target="_blank" gdf-obfuscated-mailto="gZyR7_-5TJwJ" rel="nofollow">outreachy-kern...@<wbr>googlegroups.com</a>.
<br>&gt; To post to this group, send email to <a href="javascript:" target="_blank" gdf-obfuscated-mailto="gZyR7_-5TJwJ" rel="nofollow">outreach...@googlegroups.<wbr>com</a>.
<br>&gt; To view this discussion on the web visit <a href="https://groups.google.com/d/msgid/outreachy-kernel/1424364343-3944-1-git-send-email-aybuke.147%40gmail.com" target="_blank" rel="nofollow">https://groups.google.com/d/<wbr>msgid/outreachy-kernel/<wbr>1424364343-3944-1-git-send-<wbr>email-aybuke.147%40gmail.com</a>.
<br>&gt; For more options, visit <a href="https://groups.google.com/d/optout" target="_blank" rel="nofollow">https://groups.google.com/d/<wbr>optout</a>.
<br>&gt;
<br></blockquote></div>
------=_Part_403_1906645105.1424365846924--

------=_Part_402_1992736010.1424365846924--

