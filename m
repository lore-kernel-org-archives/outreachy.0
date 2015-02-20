X-GM-THRID: 1469972480000
X-Received: by 10.112.199.69 with SMTP id ji5mr1534039lbc.0.1424465131708;
        Fri, 20 Feb 2015 12:45:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.204.134 with SMTP id ky6ls138757lac.76.gmail; Fri, 20 Feb
 2015 12:45:31 -0800 (PST)
X-Received: by 10.112.144.130 with SMTP id sm2mr1576255lbb.9.1424465131249;
        Fri, 20 Feb 2015 12:45:31 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-lb0-x236.google.com (mail-lb0-x236.google.com. [2a00:1450:4010:c04::236])
        by gmr-mx.google.com with ESMTPS id mv2si3030295lbc.0.2015.02.20.12.45.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Feb 2015 12:45:31 -0800 (PST)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:4010:c04::236 as permitted sender) client-ip=2a00:1450:4010:c04::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:4010:c04::236 as permitted sender) smtp.mail=ksenija.stanojevic@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-lb0-x236.google.com with SMTP id b6so8678107lbj.2
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Feb 2015 12:45:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=t1KFTgJdKTnnrAzAF8+uChIcGBjpnCWLRrjfb2qFnIk=;
        b=oVslK5yl30PXhIFqVJYxlv3uKoif1IYOYLc3UslXymT5ffVUn825ll3q5DbWKes1IS
         4t6I2t61+LUmLF/4qe5JH2tohYODa6rtXSjoacxDXiKIOFwPB2cL8F6OKPfRsondO3iF
         c4juo3hFpP9fZanK2e8zDMsy5x0HbBXokLUCpIAjQqNE3eP/J/YlIqd/xbdhZub5kVnG
         0GQNwQD/BhCr91kXdknI6/affrGls+7UD0dZBSnmVwjBaWZ4kA9ufKeiIzglLpiH8kGY
         1AAHTUnzufLvAqW92VjcytCmFDez9Ib5nMw19PWNXzrT8buBluauAJOT9eaXL9BdkApn
         K00w==
MIME-Version: 1.0
X-Received: by 10.152.21.136 with SMTP id v8mr3714630lae.64.1424465131051;
 Fri, 20 Feb 2015 12:45:31 -0800 (PST)
Received: by 10.114.182.9 with HTTP; Fri, 20 Feb 2015 12:45:31 -0800 (PST)
In-Reply-To: <54E78F3E.7010704@gmail.com>
References: <1424460720-6136-1-git-send-email-ksenija.stanojevic@gmail.com>
	<54E78F3E.7010704@gmail.com>
Date: Fri, 20 Feb 2015 21:45:31 +0100
Message-ID: <CAL7P5j+ucoNiBEbRfkwZFObjPxH8=i0yMQTNxsoCj8fubdbSHw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8192u: ieee80211: Replace
 <asm/string.h> with <linux/string.h>
From: =?UTF-8?Q?Ksenija_Stanojevi=C4=87?= <ksenija.stanojevic@gmail.com>
To: Jes Sorensen <jes.sorensen@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=089e0158b718221a4b050f8b2217

--089e0158b718221a4b050f8b2217
Content-Type: text/plain; charset=UTF-8

Ok. Should i make a separate patch or v2 of one of them?

On Fri, Feb 20, 2015 at 8:47 PM, Jes Sorensen <jes.sorensen@gmail.com>
wrote:

> On 02/20/15 14:32, Ksenija Stanojevic wrote:
> > This patch fixes the following checkpatch.pl warning:
> > Use #include <linux/string.h> instead of <asm/string.h>
> >
> > Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
> > ---
> >  drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
> b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
> > index 5533221..80dfa07 100644
> > --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
> > +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
> > @@ -15,7 +15,7 @@
> >  #include <linux/module.h>
> >  #include <linux/init.h>
> >  #include <linux/slab.h>
> > -#include <asm/string.h>
> > +#include <linux/string.h>
> >  #include <asm/errno.h>
> >
> >  #include "ieee80211.h"
> >
>
> I just noticed you were generating two patches for very similar changes
> errno.h and string.h. Since these changes are to the same file and
> basically identical changes, doing them both in one patch is preferred.
>
> Cheers,
> Jes
>
>

--089e0158b718221a4b050f8b2217
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Ok. Should i make a separate patch or v2 of one of them?<b=
r></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Fri, F=
eb 20, 2015 at 8:47 PM, Jes Sorensen <span dir=3D"ltr">&lt;<a href=3D"mailt=
o:jes.sorensen@gmail.com" target=3D"_blank">jes.sorensen@gmail.com</a>&gt;<=
/span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8=
ex;border-left:1px #ccc solid;padding-left:1ex"><div class=3D"HOEnZb"><div =
class=3D"h5">On 02/20/15 14:32, Ksenija Stanojevic wrote:<br>
&gt; This patch fixes the following <a href=3D"http://checkpatch.pl" target=
=3D"_blank">checkpatch.pl</a> warning:<br>
&gt; Use #include &lt;linux/string.h&gt; instead of &lt;asm/string.h&gt;<br=
>
&gt;<br>
&gt; Signed-off-by: Ksenija Stanojevic &lt;<a href=3D"mailto:ksenija.stanoj=
evic@gmail.com">ksenija.stanojevic@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c | 2 +-<br>
&gt;=C2=A0 1 file changed, 1 insertion(+), 1 deletion(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c b/dr=
ivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c<br>
&gt; index 5533221..80dfa07 100644<br>
&gt; --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c<br>
&gt; +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c<br>
&gt; @@ -15,7 +15,7 @@<br>
&gt;=C2=A0 #include &lt;linux/module.h&gt;<br>
&gt;=C2=A0 #include &lt;linux/init.h&gt;<br>
&gt;=C2=A0 #include &lt;linux/slab.h&gt;<br>
&gt; -#include &lt;asm/string.h&gt;<br>
&gt; +#include &lt;linux/string.h&gt;<br>
&gt;=C2=A0 #include &lt;asm/errno.h&gt;<br>
&gt;<br>
&gt;=C2=A0 #include &quot;ieee80211.h&quot;<br>
&gt;<br>
<br>
</div></div>I just noticed you were generating two patches for very similar=
 changes<br>
errno.h and string.h. Since these changes are to the same file and<br>
basically identical changes, doing them both in one patch is preferred.<br>
<br>
Cheers,<br>
Jes<br>
<br>
</blockquote></div><br></div>

--089e0158b718221a4b050f8b2217--

