X-GM-THRID: 6200896862154653696
Date: Fri, 2 Oct 2015 01:09:30 -0700 (PDT)
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: shivanib134@gmail.com
Message-Id: <83a1df2c-03c5-456a-9131-3dca7182d7ef@googlegroups.com>
In-Reply-To: <alpine.DEB.2.10.1510020959500.2633@hadrien>
References: <20151002040637.GA41415@ubuntu>
 <alpine.DEB.2.10.1510020959500.2633@hadrien>
Subject: Re: [Outreachy kernel] [PATCH] Staging: board: Fixed the error for
 implicit declaration of function
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_603_550258093.1443773370152"
X-Google-Token: ELr3uLAF7fyErXJ6jbg0
X-Google-IP: 124.124.47.116

------=_Part_603_550258093.1443773370152
Content-Type: multipart/alternative; 
	boundary="----=_Part_604_329565809.1443773370153"

------=_Part_604_329565809.1443773370153
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

I tried declaring it first, it didn't work. I added the header, it worked. 
Now, when I tried again, it works without header too. I'll update the 
patch, I must have done something wrong while declaring for the first time. 
Thanks, Julia. I'm sorry I'm making such petty errors, I'm noting 
everything, I'll make sure to send a good patch soon.

On Friday, October 2, 2015 at 1:30:40 PM UTC+5:30, Julia Lawall wrote:
>
> On Fri, 2 Oct 2015, Shivani Bhardwaj wrote: 
>
> > Fixed the error for implicit declaration of the function 
> > 'of_find_all_nodes' by adding the appropriate header file and declaring 
> > the function before it has been called. 
>
> I haven't looked at the code, but I wonder why you need both the header 
> file and the local declaration? 
>
> julia 
>
> > Signed-off-by: Shivani Bhardwaj: <shiva...@gmail.com <javascript:>> 
> > --- 
> >  drivers/staging/board/board.c | 2 ++ 
> >  1 file changed, 2 insertions(+) 
> > 
> > diff --git a/drivers/staging/board/board.c 
> b/drivers/staging/board/board.c 
> > index 29d456e..8d0ac82 100644 
> > --- a/drivers/staging/board/board.c 
> > +++ b/drivers/staging/board/board.c 
> > @@ -19,11 +19,13 @@ 
> >  #include <linux/of_irq.h> 
> >  #include <linux/platform_device.h> 
> >  #include <linux/pm_domain.h> 
> > +#include <asm/prom.h> 
> > 
> >  #include "board.h" 
> > 
> >  static struct device_node *irqc_node __initdata; 
> >  static unsigned int irqc_base __initdata; 
> > +struct device_node *of_find_all_nodes(struct device_node *prev); 
> > 
> >  static bool find_by_address(u64 base_address) 
> >  { 
> > -- 
> > 2.1.0 
> > 
> > -- 
> > You received this message because you are subscribed to the Google 
> Groups "outreachy-kernel" group. 
> > To unsubscribe from this group and stop receiving emails from it, send 
> an email to outreachy-kern...@googlegroups.com <javascript:>. 
> > To post to this group, send email to outreach...@googlegroups.com 
> <javascript:>. 
> > To view this discussion on the web visit 
> https://groups.google.com/d/msgid/outreachy-kernel/20151002040637.GA41415%40ubuntu. 
>
> > For more options, visit https://groups.google.com/d/optout. 
> > 
>

------=_Part_604_329565809.1443773370153
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I tried declaring it first, it didn&#39;t work. I added th=
e header, it worked. Now, when I tried again, it works without header too. =
I&#39;ll update the patch, I must have done something wrong while declaring=
 for the first time. Thanks, Julia. I&#39;m sorry I&#39;m making such petty=
 errors, I&#39;m noting everything, I&#39;ll make sure to send a good patch=
 soon.<br><br>On Friday, October 2, 2015 at 1:30:40 PM UTC+5:30, Julia Lawa=
ll wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-left: =
0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">On Fri, 2 Oct 2015, S=
hivani Bhardwaj wrote:
<br>
<br>&gt; Fixed the error for implicit declaration of the function
<br>&gt; &#39;of_find_all_nodes&#39; by adding the appropriate header file =
and declaring
<br>&gt; the function before it has been called.
<br>
<br>I haven&#39;t looked at the code, but I wonder why you need both the he=
ader
<br>file and the local declaration?
<br>
<br>julia
<br>
<br>&gt; Signed-off-by: Shivani Bhardwaj: &lt;<a href=3D"javascript:" targe=
t=3D"_blank" gdf-obfuscated-mailto=3D"w2oxKKZaCAAJ" rel=3D"nofollow">shiva.=
..@gmail.com</a>&gt;
<br>&gt; ---
<br>&gt; =C2=A0drivers/staging/board/board.c | 2 ++
<br>&gt; =C2=A01 file changed, 2 insertions(+)
<br>&gt;
<br>&gt; diff --git a/drivers/staging/board/board.<wbr>c b/drivers/staging/=
board/board.<wbr>c
<br>&gt; index 29d456e..8d0ac82 100644
<br>&gt; --- a/drivers/staging/board/board.<wbr>c
<br>&gt; +++ b/drivers/staging/board/board.<wbr>c
<br>&gt; @@ -19,11 +19,13 @@
<br>&gt; =C2=A0#include &lt;linux/of_irq.h&gt;
<br>&gt; =C2=A0#include &lt;linux/platform_device.h&gt;
<br>&gt; =C2=A0#include &lt;linux/pm_domain.h&gt;
<br>&gt; +#include &lt;asm/prom.h&gt;
<br>&gt;
<br>&gt; =C2=A0#include &quot;board.h&quot;
<br>&gt;
<br>&gt; =C2=A0static struct device_node *irqc_node __initdata;
<br>&gt; =C2=A0static unsigned int irqc_base __initdata;
<br>&gt; +struct device_node *of_find_all_nodes(struct device_node *prev);
<br>&gt;
<br>&gt; =C2=A0static bool find_by_address(u64 base_address)
<br>&gt; =C2=A0{
<br>&gt; --
<br>&gt; 2.1.0
<br>&gt;
<br>&gt; --
<br>&gt; You received this message because you are subscribed to the Google=
 Groups &quot;outreachy-kernel&quot; group.
<br>&gt; To unsubscribe from this group and stop receiving emails from it, =
send an email to <a href=3D"javascript:" target=3D"_blank" gdf-obfuscated-m=
ailto=3D"w2oxKKZaCAAJ" rel=3D"nofollow">outreachy-kern...@<wbr>googlegroups=
.com</a>.
<br>&gt; To post to this group, send email to <a href=3D"javascript:" targe=
t=3D"_blank" gdf-obfuscated-mailto=3D"w2oxKKZaCAAJ" rel=3D"nofollow">outrea=
ch...@googlegroups.<wbr>com</a>.
<br>&gt; To view this discussion on the web visit <a href=3D"https://groups=
.google.com/d/msgid/outreachy-kernel/20151002040637.GA41415%40ubuntu" targe=
t=3D"_blank" rel=3D"nofollow">https://groups.google.com/d/<wbr>msgid/outrea=
chy-kernel/<wbr>20151002040637.GA41415%<wbr>40ubuntu</a>.
<br>&gt; For more options, visit <a href=3D"https://groups.google.com/d/opt=
out" target=3D"_blank" rel=3D"nofollow">https://groups.google.com/d/<wbr>op=
tout</a>.
<br>&gt;
<br></blockquote></div>
------=_Part_604_329565809.1443773370153--

------=_Part_603_550258093.1443773370152--

