X-GM-THRID: 108667076608
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,24a44102f4e077fa
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
Date: Tue, 17 Feb 2015 06:05:28 -0800 (PST)
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: vatikaharlalka@gmail.com
Message-Id: <e2cb14b0-3571-4c8f-9044-1aee3e0f0fa7@googlegroups.com>
In-Reply-To: <alpine.DEB.2.10.1502171422400.2171@hadrien>
References: <20150217131048.GA5235@gmail.com>
 <alpine.DEB.2.10.1502171422400.2171@hadrien>
Subject: Re: [Outreachy kernel] [Patch] Staging: emxx_udc: Convert from
 __attribute__((aligned(size))) to __aligned(size).
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_579_1950906717.1424181929047"
X-Google-Token: EKiVjacFeLo4PRtTO0U0
X-Google-IP: 14.139.82.6

------=_Part_579_1950906717.1424181929047
Content-Type: multipart/alternative; 
	boundary="----=_Part_580_1108870223.1424181929047"

------=_Part_580_1108870223.1424181929047
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Tuesday, 17 February 2015 18:52:23 UTC+5:30, Julia Lawall wrote:
>
> On Tue, 17 Feb 2015, Vatika Harlalka wrote: 
>
> > This patch addresses the checkpatch.pl warning 
> > 
> > WARNING: __aligned(size) is preferred over 
> __attribute__((aligned(size))) 
>
> You could try to find out why it is preferred and explain that.  I don't 
> know if there is an interesting reason, but you might find some comments 
> in git logs. 
>
>   >> Thanks for the input. I checked git logs and it seems that aligned(x) 
is a macro :
  >>     #define __aligned(x)                   __attribute__((aligned(x)))

> Signed-off-by: Vatika Harlalka <vatikah...@gmail.com <javascript:>> 
> > --- 
> >  drivers/staging/emxx_udc/emxx_udc.h | 3 +-- 
> >  1 file changed, 1 insertion(+), 2 deletions(-) 
> > 
> > diff --git a/drivers/staging/emxx_udc/emxx_udc.h 
> b/drivers/staging/emxx_udc/emxx_udc.h 
> > index ee1b80d..90c5d1d 100644 
> > --- a/drivers/staging/emxx_udc/emxx_udc.h 
> > +++ b/drivers/staging/emxx_udc/emxx_udc.h 
> > @@ -535,8 +535,7 @@ typedef struct _T_FC_REGS { 
> > 
> >          u8 Reserved1200[0x1000-0x200];        /* Reserved */ 
> > 
> > -} __attribute__ ((aligned(32))) T_FC_REGS, *PT_FC_REGS; 
> > - 
> > +} __aligned(32) T_FC_REGS, *PT_FC_REGS; 
>
> It looks like an extra line has disappeared?  Was that intentional? 
>
 
 >> The extra line was not a part of the original code. I had added and 
then removed it.
 

> julia 
>
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
> https://groups.google.com/d/msgid/outreachy-kernel/20150217131048.GA5235%40gmail.com. 
>
> > For more options, visit https://groups.google.com/d/optout. 
> > 
>

------=_Part_580_1108870223.1424181929047
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<div dir="ltr"><br><br>On Tuesday, 17 February 2015 18:52:23 UTC+5:30, Julia Lawall  wrote:<blockquote class="gmail_quote" style="margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">On Tue, 17 Feb 2015, Vatika Harlalka wrote:
<br>
<br>&gt; This patch addresses the <a href="http://checkpatch.pl" target="_blank" rel="nofollow">checkpatch.pl</a> warning
<br>&gt;
<br>&gt; WARNING: __aligned(size) is preferred over __attribute__((aligned(size)))
<br>
<br>You could try to find out why it is preferred and explain that. &nbsp;I don't
<br>know if there is an interesting reason, but you might find some comments
<br>in git logs.
<br>
<br></blockquote><div>&nbsp; &gt;&gt; Thanks for the input. I checked git logs and it seems that aligned(x) is a macro :<br>&nbsp; &gt;&gt; &nbsp;&nbsp;&nbsp; #define __aligned(x)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; __attribute__((aligned(x)))<br><br></div><blockquote class="gmail_quote" style="margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">&gt; Signed-off-by: Vatika Harlalka &lt;<a href="javascript:" target="_blank" gdf-obfuscated-mailto="c5rniGoy8kYJ" rel="nofollow">vatikah...@gmail.com</a>&gt;
<br>&gt; ---
<br>&gt; &nbsp;drivers/staging/emxx_udc/<wbr>emxx_udc.h | 3 +--
<br>&gt; &nbsp;1 file changed, 1 insertion(+), 2 deletions(-)
<br>&gt;
<br>&gt; diff --git a/drivers/staging/emxx_udc/<wbr>emxx_udc.h b/drivers/staging/emxx_udc/<wbr>emxx_udc.h
<br>&gt; index ee1b80d..90c5d1d 100644
<br>&gt; --- a/drivers/staging/emxx_udc/<wbr>emxx_udc.h
<br>&gt; +++ b/drivers/staging/emxx_udc/<wbr>emxx_udc.h
<br>&gt; @@ -535,8 +535,7 @@ typedef struct _T_FC_REGS {
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;u8 Reserved1200[0x1000-0x200];&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/* Reserved */
<br>&gt;
<br>&gt; -} __attribute__ ((aligned(32))) T_FC_REGS, *PT_FC_REGS;
<br>&gt; -
<br>&gt; +} __aligned(32) T_FC_REGS, *PT_FC_REGS;
<br>
<br>It looks like an extra line has disappeared? &nbsp;Was that intentional?
<br></blockquote><div>&nbsp;<br>&nbsp;&gt;&gt; The extra line was not a part of the original code. I had added and then removed it.<br></div><div>&nbsp;</div><blockquote class="gmail_quote" style="margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">julia
<br>
<br>&gt;
<br>&gt;
<br>&gt; --
<br>&gt; 1.9.1
<br>&gt;
<br>&gt; --
<br>&gt; You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
<br>&gt; To unsubscribe from this group and stop receiving emails from it, send an email to <a href="javascript:" target="_blank" gdf-obfuscated-mailto="c5rniGoy8kYJ" rel="nofollow">outreachy-kern...@<wbr>googlegroups.com</a>.
<br>&gt; To post to this group, send email to <a href="javascript:" target="_blank" gdf-obfuscated-mailto="c5rniGoy8kYJ" rel="nofollow">outreach...@googlegroups.<wbr>com</a>.
<br>&gt; To view this discussion on the web visit <a href="https://groups.google.com/d/msgid/outreachy-kernel/20150217131048.GA5235%40gmail.com" target="_blank" rel="nofollow">https://groups.google.com/d/<wbr>msgid/outreachy-kernel/<wbr>20150217131048.GA5235%40gmail.<wbr>com</a>.
<br>&gt; For more options, visit <a href="https://groups.google.com/d/optout" target="_blank" rel="nofollow">https://groups.google.com/d/<wbr>optout</a>.
<br>&gt;
<br></blockquote></div>
------=_Part_580_1108870223.1424181929047--

------=_Part_579_1950906717.1424181929047--

