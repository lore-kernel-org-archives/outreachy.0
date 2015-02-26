X-GM-THRID: 2517133950976
Date: Wed, 25 Feb 2015 23:26:29 -0800 (PST)
From: Navya Sri Nizamkari <navyasri.tech@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: navyasri.tech@gmail.com
Message-Id: <326a6742-203a-4632-a8d6-4098f739e751@googlegroups.com>
In-Reply-To: <54EB83B0.3090505@gmail.com>
References: <cover.1424683659.git.navyasri.tech@gmail.com> <0103912c5f48fa319b9503c985a2fd28952e2b90.1424683660.git.navyasri.tech@gmail.com>
 <54EB83B0.3090505@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v3 2/4] staging: rtl8192u: Clean-up
 comment line style
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_3487_1457458177.1424935589058"
X-Google-Token: EKWVu6cF_PCovnLj1yo0
X-Google-IP: 111.93.6.70

------=_Part_3487_1457458177.1424935589058
Content-Type: multipart/alternative; 
	boundary="----=_Part_3488_1301103157.1424935589058"

------=_Part_3488_1301103157.1424935589058
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Tuesday, February 24, 2015 at 1:16:58 AM UTC+5:30, jes.sorensen wrote:
>
> On 02/23/15 04:51, Navya Sri Nizamkari wrote: 
> > Convert style of comment from C99 to C89 to fix the 
> > following checkpatch.pl error: 
> > 
> > ERROR: "Do not use C99 // comments" 
> > 
> > Signed-off-by: Navya Sri Nizamkari <navyas...@gmail.com <javascript:>> 
> > --- 
> > Changes in v3: 
> >     -None in this file of the patchset 
> > 
> >  drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c | 2 +- 
> >  1 file changed, 1 insertion(+), 1 deletion(-) 
> > 
> > diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c 
> b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c 
> > index eb89321..bcb2479 100644 
> > --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c 
> > +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c 
> > @@ -11,7 +11,7 @@ 
> >   * 
> >   */ 
> >   
> > -//#include <linux/config.h> 
> > +/* #include <linux/config.h> */ 
> >  #include <linux/module.h> 
> >  #include <linux/init.h> 
> >  #include <linux/slab.h> 
> > 
>
> This is dead code, rather than changing the comment style, you should 
> remove the line completely. 
>
> Cheers, 
> Jes 
>
>
Hi,
I sent in the older version of this patch by mistake. I sent a newer 
version of the patchset.
Navya  

------=_Part_3488_1301103157.1424935589058
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<div dir="ltr"><br><br>On Tuesday, February 24, 2015 at 1:16:58 AM UTC+5:30, jes.sorensen wrote:<blockquote class="gmail_quote" style="margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">On 02/23/15 04:51, Navya Sri Nizamkari wrote:
<br>&gt; Convert style of comment from C99 to C89 to fix the
<br>&gt; following <a href="http://checkpatch.pl" target="_blank" rel="nofollow">checkpatch.pl</a> error:
<br>&gt; 
<br>&gt; ERROR: "Do not use C99 // comments"
<br>&gt; 
<br>&gt; Signed-off-by: Navya Sri Nizamkari &lt;<a href="javascript:" target="_blank" gdf-obfuscated-mailto="rvB7mNnIva0J" rel="nofollow">navyas...@gmail.com</a>&gt;
<br>&gt; ---
<br>&gt; Changes in v3:
<br>&gt; &nbsp; &nbsp; -None in this file of the patchset
<br>&gt; 
<br>&gt; &nbsp;drivers/staging/rtl8192u/<wbr>ieee80211/ieee80211_crypt.c | 2 +-
<br>&gt; &nbsp;1 file changed, 1 insertion(+), 1 deletion(-)
<br>&gt; 
<br>&gt; diff --git a/drivers/staging/rtl8192u/<wbr>ieee80211/ieee80211_crypt.c b/drivers/staging/rtl8192u/<wbr>ieee80211/ieee80211_crypt.c
<br>&gt; index eb89321..bcb2479 100644
<br>&gt; --- a/drivers/staging/rtl8192u/<wbr>ieee80211/ieee80211_crypt.c
<br>&gt; +++ b/drivers/staging/rtl8192u/<wbr>ieee80211/ieee80211_crypt.c
<br>&gt; @@ -11,7 +11,7 @@
<br>&gt; &nbsp; *
<br>&gt; &nbsp; */
<br>&gt; &nbsp;
<br>&gt; -//#include &lt;linux/config.h&gt;
<br>&gt; +/* #include &lt;linux/config.h&gt; */
<br>&gt; &nbsp;#include &lt;linux/module.h&gt;
<br>&gt; &nbsp;#include &lt;linux/init.h&gt;
<br>&gt; &nbsp;#include &lt;linux/slab.h&gt;
<br>&gt; 
<br>
<br>This is dead code, rather than changing the comment style, you should
<br>remove the line completely.
<br>
<br>Cheers,
<br>Jes
<br>
<br></blockquote><div><br>Hi,<br>I sent in the older version of this patch by mistake. I sent a newer version of the patchset.<br>Navya&nbsp; <br></div></div>
------=_Part_3488_1301103157.1424935589058--

------=_Part_3487_1457458177.1424935589058--

