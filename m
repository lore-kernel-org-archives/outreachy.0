X-GM-THRID: 6670800416333103104
Date: Fri, 22 Mar 2019 08:27:09 -0700 (PDT)
From: sanjana99reddy99@gmail.com
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <dcd4eaa9-83e8-448e-ac97-00555572ac62@googlegroups.com>
In-Reply-To: <20190321190102.GA30770@kroah.com>
References: <20190321111222.11964-1-sanjana99reddy99@gmail.com>
 <20190321190102.GA30770@kroah.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8188eu: core:
 rtw_wlan_util.c: Modify return type suggested by Coccinelle.
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_759_1784165648.1553268429913"
X-Google-Token: EM390-QFBwl9XdYKLBs0
X-Google-IP: 219.91.254.53

------=_Part_759_1784165648.1553268429913
Content-Type: multipart/alternative; 
	boundary="----=_Part_760_1172641794.1553268429913"

------=_Part_760_1172641794.1553268429913
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Friday, March 22, 2019 at 12:31:06 AM UTC+5:30, gregkh wrote:
>
> On Thu, Mar 21, 2019 at 04:42:22PM +0530, Sanjana Sanikommu wrote: 
> > The last two lines in the function could 
> > be compressed into one. Avoid usage of local variable. 
> > Challenge suggested by Coccinelle using ret.cocci. 
> > The below is the script for ret.cocci: 
> > @@ 
> > local idexpression res; 
> > expression e; 
> > @@ 
> > 
> > -res = 
> > +return 
> >      e; 
> > -return res; 
> > 
> > Signed-off-by: Sanjana Sanikommu <sanjana9...@gmail.com <javascript:>> 
> > --- 
> >  drivers/staging/rtl8188eu/core/rtw_wlan_util.c | 4 +--- 
> >  1 file changed, 1 insertion(+), 3 deletions(-) 
> > 
> > diff --git a/drivers/staging/rtl8188eu/core/rtw_wlan_util.c 
> b/drivers/staging/rtl8188eu/core/rtw_wlan_util.c 
> > index 4480deef95a1..70776f8e19a6 100644 
> > --- a/drivers/staging/rtl8188eu/core/rtw_wlan_util.c 
> > +++ b/drivers/staging/rtl8188eu/core/rtw_wlan_util.c 
> > @@ -1182,10 +1182,8 @@ unsigned int update_MSC_rate(struct 
> ieee80211_ht_cap *pHT_caps) 
> >  { 
> >          unsigned int mask = 0; 
> >   
> > -        mask = (pHT_caps->mcs.rx_mask[0] << 12) | 
> > +        return (pHT_caps->mcs.rx_mask[0] << 12) | 
> >                 (pHT_caps->mcs.rx_mask[1] << 20); 
> > - 
> > -        return mask; 
> >  } 
>
> Did you build this patch? 
>
> Just looking at it I can see the compiler warning that it will emit... 
>
> Please always test-build your patches, otherwise it just makes people 
> grumpy :) 
>

I apologise for what happened regarding this patch. I submitted this patch 
after
0 errors, 0 warnings, 0 checks i.e after post commit hooks.
I would like to know where I went wrong. I will correct them :)

Sanjana 
   

>
> thanks, 
>
> greg k-h 
>

------=_Part_760_1172641794.1553268429913
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Friday, March 22, 2019 at 12:31:06 AM UTC+5:30,=
 gregkh wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-l=
eft: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">On Thu, Mar 21, =
2019 at 04:42:22PM +0530, Sanjana Sanikommu wrote:
<br>&gt; The last two lines in the function could
<br>&gt; be compressed into one. Avoid usage of local variable.
<br>&gt; Challenge suggested by Coccinelle using ret.cocci.
<br>&gt; The below is the script for ret.cocci:
<br>&gt; @@
<br>&gt; local idexpression res;
<br>&gt; expression e;
<br>&gt; @@
<br>&gt;=20
<br>&gt; -res =3D
<br>&gt; +return
<br>&gt; =C2=A0 =C2=A0 =C2=A0e;
<br>&gt; -return res;
<br>&gt;=20
<br>&gt; Signed-off-by: Sanjana Sanikommu &lt;<a href=3D"javascript:" targe=
t=3D"_blank" gdf-obfuscated-mailto=3D"xxxw8fcsBAAJ" rel=3D"nofollow" onmous=
edown=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hr=
ef=3D&#39;javascript:&#39;;return true;">sanjana9...@gmail.com</a>&gt;
<br>&gt; ---
<br>&gt; =C2=A0drivers/staging/rtl8188eu/<wbr>core/rtw_wlan_util.c | 4 +---
<br>&gt; =C2=A01 file changed, 1 insertion(+), 3 deletions(-)
<br>&gt;=20
<br>&gt; diff --git a/drivers/staging/rtl8188eu/<wbr>core/rtw_wlan_util.c b=
/drivers/staging/rtl8188eu/<wbr>core/rtw_wlan_util.c
<br>&gt; index 4480deef95a1..70776f8e19a6 100644
<br>&gt; --- a/drivers/staging/rtl8188eu/<wbr>core/rtw_wlan_util.c
<br>&gt; +++ b/drivers/staging/rtl8188eu/<wbr>core/rtw_wlan_util.c
<br>&gt; @@ -1182,10 +1182,8 @@ unsigned int update_MSC_rate(struct ieee802=
11_ht_cap *pHT_caps)
<br>&gt; =C2=A0{
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0unsigned int=
 mask =3D 0;
<br>&gt; =C2=A0
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0mask =3D (pHT_cap=
s-&gt;mcs.rx_mask[0] &lt;&lt; 12) |
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return (pHT_caps-=
&gt;mcs.rx_mask[0] &lt;&lt; 12) |
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 (pHT_caps-&gt;mcs.rx_mask[1] &lt;&lt; 20);
<br>&gt; -
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return mask;
<br>&gt; =C2=A0}
<br>
<br>Did you build this patch?
<br>
<br>Just looking at it I can see the compiler warning that it will emit...
<br>
<br>Please always test-build your patches, otherwise it just makes people
<br>grumpy :)
<br></blockquote><div><br></div><div>I apologise for what happened regardin=
g this patch. I submitted this patch after</div><div>0 errors, 0 warnings, =
0 checks i.e after post commit hooks.</div><div>I would like to know where =
I went wrong. I will correct them :)</div><div><br></div><div>Sanjana=C2=A0=
</div><div>=C2=A0=C2=A0=C2=A0</div><blockquote class=3D"gmail_quote" style=
=3D"margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: =
1ex;">
<br>thanks,
<br>
<br>greg k-h
<br></blockquote></div>
------=_Part_760_1172641794.1553268429913--

------=_Part_759_1784165648.1553268429913--

