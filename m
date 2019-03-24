X-GM-THRID: 6670800416333103104
Date: Sun, 24 Mar 2019 00:15:06 -0700 (PDT)
From: sanjana99reddy99@gmail.com
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <82c255e4-201d-4034-a06f-1a3a3a8826fd@googlegroups.com>
In-Reply-To: <20190322160530.GA9031@kroah.com>
References: <20190321111222.11964-1-sanjana99reddy99@gmail.com>
 <20190321190102.GA30770@kroah.com>
 <dcd4eaa9-83e8-448e-ac97-00555572ac62@googlegroups.com>
 <20190322160530.GA9031@kroah.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8188eu: core:
 rtw_wlan_util.c: Modify return type suggested by Coccinelle.
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1250_903230257.1553411706885"
X-Google-Token: EPrc3OQFfvFYmwl261k0
X-Google-IP: 123.201.77.18

------=_Part_1250_903230257.1553411706885
Content-Type: multipart/alternative; 
	boundary="----=_Part_1251_1142512084.1553411706886"

------=_Part_1251_1142512084.1553411706886
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Friday, March 22, 2019 at 9:35:36 PM UTC+5:30, Greg Kroah-Hartman wrote:
>
> On Fri, Mar 22, 2019 at 08:27:09AM -0700, sanjana9...@gmail.com 
> <javascript:> wrote: 
> > 
> > 
> > On Friday, March 22, 2019 at 12:31:06 AM UTC+5:30, gregkh wrote: 
> > > 
> > > On Thu, Mar 21, 2019 at 04:42:22PM +0530, Sanjana Sanikommu wrote: 
> > > > The last two lines in the function could 
> > > > be compressed into one. Avoid usage of local variable. 
> > > > Challenge suggested by Coccinelle using ret.cocci. 
> > > > The below is the script for ret.cocci: 
> > > > @@ 
> > > > local idexpression res; 
> > > > expression e; 
> > > > @@ 
> > > > 
> > > > -res = 
> > > > +return 
> > > >      e; 
> > > > -return res; 
> > > > 
> > > > Signed-off-by: Sanjana Sanikommu <sanjana9...@gmail.com 
> <javascript:>> 
> > > > --- 
> > > >  drivers/staging/rtl8188eu/core/rtw_wlan_util.c | 4 +--- 
> > > >  1 file changed, 1 insertion(+), 3 deletions(-) 
> > > > 
> > > > diff --git a/drivers/staging/rtl8188eu/core/rtw_wlan_util.c 
> > > b/drivers/staging/rtl8188eu/core/rtw_wlan_util.c 
> > > > index 4480deef95a1..70776f8e19a6 100644 
> > > > --- a/drivers/staging/rtl8188eu/core/rtw_wlan_util.c 
> > > > +++ b/drivers/staging/rtl8188eu/core/rtw_wlan_util.c 
> > > > @@ -1182,10 +1182,8 @@ unsigned int update_MSC_rate(struct 
> > > ieee80211_ht_cap *pHT_caps) 
> > > >  { 
> > > >          unsigned int mask = 0; 
> > > >   
> > > > -        mask = (pHT_caps->mcs.rx_mask[0] << 12) | 
> > > > +        return (pHT_caps->mcs.rx_mask[0] << 12) | 
> > > >                 (pHT_caps->mcs.rx_mask[1] << 20); 
> > > > - 
> > > > -        return mask; 
> > > >  } 
> > > 
> > > Did you build this patch? 
> > > 
> > > Just looking at it I can see the compiler warning that it will emit... 
> > > 
> > > Please always test-build your patches, otherwise it just makes people 
> > > grumpy :) 
> > > 
> > 
> > I apologise for what happened regarding this patch. I submitted this 
> patch 
> > after 
> > 0 errors, 0 warnings, 0 checks i.e after post commit hooks. 
> > I would like to know where I went wrong. I will correct them :) 
>
> Did you build the code after making the change?  That's the most 
> important part :) 
>
>    I would resend the patch.
   sanjana

thanks, 
>
> greg k-h 
>

------=_Part_1251_1142512084.1553411706886
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Friday, March 22, 2019 at 9:35:36 PM UTC+5:30, =
Greg Kroah-Hartman wrote:<blockquote class=3D"gmail_quote" style=3D"margin:=
 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">On Fr=
i, Mar 22, 2019 at 08:27:09AM -0700, <a href=3D"javascript:" target=3D"_bla=
nk" gdf-obfuscated-mailto=3D"C4FtA_lxBAAJ" rel=3D"nofollow" onmousedown=3D"=
this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.href=3D&#39=
;javascript:&#39;;return true;">sanjana9...@gmail.com</a> wrote:
<br>&gt;=20
<br>&gt;=20
<br>&gt; On Friday, March 22, 2019 at 12:31:06 AM UTC+5:30, gregkh wrote:
<br>&gt; &gt;
<br>&gt; &gt; On Thu, Mar 21, 2019 at 04:42:22PM +0530, Sanjana Sanikommu w=
rote:=20
<br>&gt; &gt; &gt; The last two lines in the function could=20
<br>&gt; &gt; &gt; be compressed into one. Avoid usage of local variable.=
=20
<br>&gt; &gt; &gt; Challenge suggested by Coccinelle using ret.cocci.=20
<br>&gt; &gt; &gt; The below is the script for ret.cocci:=20
<br>&gt; &gt; &gt; @@=20
<br>&gt; &gt; &gt; local idexpression res;=20
<br>&gt; &gt; &gt; expression e;=20
<br>&gt; &gt; &gt; @@=20
<br>&gt; &gt; &gt;=20
<br>&gt; &gt; &gt; -res =3D=20
<br>&gt; &gt; &gt; +return=20
<br>&gt; &gt; &gt; =C2=A0 =C2=A0 =C2=A0e;=20
<br>&gt; &gt; &gt; -return res;=20
<br>&gt; &gt; &gt;=20
<br>&gt; &gt; &gt; Signed-off-by: Sanjana Sanikommu &lt;<a>sanjana9...@gmai=
l.com</a> &lt;javascript:&gt;&gt;=20
<br>&gt; &gt; &gt; ---=20
<br>&gt; &gt; &gt; =C2=A0drivers/staging/rtl8188eu/<wbr>core/rtw_wlan_util.=
c | 4 +---=20
<br>&gt; &gt; &gt; =C2=A01 file changed, 1 insertion(+), 3 deletions(-)=20
<br>&gt; &gt; &gt;=20
<br>&gt; &gt; &gt; diff --git a/drivers/staging/rtl8188eu/<wbr>core/rtw_wla=
n_util.c=20
<br>&gt; &gt; b/drivers/staging/rtl8188eu/<wbr>core/rtw_wlan_util.c=20
<br>&gt; &gt; &gt; index 4480deef95a1..70776f8e19a6 100644=20
<br>&gt; &gt; &gt; --- a/drivers/staging/rtl8188eu/<wbr>core/rtw_wlan_util.=
c=20
<br>&gt; &gt; &gt; +++ b/drivers/staging/rtl8188eu/<wbr>core/rtw_wlan_util.=
c=20
<br>&gt; &gt; &gt; @@ -1182,10 +1182,8 @@ unsigned int update_MSC_rate(stru=
ct=20
<br>&gt; &gt; ieee80211_ht_cap *pHT_caps)=20
<br>&gt; &gt; &gt; =C2=A0{=20
<br>&gt; &gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned int mask =3D =
0;=20
<br>&gt; &gt; &gt; =C2=A0=20
<br>&gt; &gt; &gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0mask =3D (pHT_caps-&gt;mcs.=
rx_mask[0] &lt;&lt; 12) |=20
<br>&gt; &gt; &gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0return (pHT_caps-&gt;mcs.rx=
_mask[0] &lt;&lt; 12) |=20
<br>&gt; &gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
(pHT_caps-&gt;mcs.rx_mask[1] &lt;&lt; 20);=20
<br>&gt; &gt; &gt; -=20
<br>&gt; &gt; &gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0return mask;=20
<br>&gt; &gt; &gt; =C2=A0}=20
<br>&gt; &gt;
<br>&gt; &gt; Did you build this patch?=20
<br>&gt; &gt;
<br>&gt; &gt; Just looking at it I can see the compiler warning that it wil=
l emit...=20
<br>&gt; &gt;
<br>&gt; &gt; Please always test-build your patches, otherwise it just make=
s people=20
<br>&gt; &gt; grumpy :)=20
<br>&gt; &gt;
<br>&gt;=20
<br>&gt; I apologise for what happened regarding this patch. I submitted th=
is patch=20
<br>&gt; after
<br>&gt; 0 errors, 0 warnings, 0 checks i.e after post commit hooks.
<br>&gt; I would like to know where I went wrong. I will correct them :)
<br>
<br>Did you build the code after making the change? =C2=A0That&#39;s the mo=
st
<br>important part :)
<br>
<br></blockquote><div>=C2=A0 =C2=A0I would resend the patch.</div><div>=C2=
=A0 =C2=A0sanjana</div><div><br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left=
: 1ex;">thanks,
<br>
<br>greg k-h
<br></blockquote></div>
------=_Part_1251_1142512084.1553411706886--

------=_Part_1250_903230257.1553411706885--

