X-GM-THRID: 6250871374774009856
Date: Sat, 13 Feb 2016 20:54:00 -0800 (PST)
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: bhumirks@gmail.com
Message-Id: <fced03a5-0c11-4936-9521-7a69e0624eab@googlegroups.com>
In-Reply-To: <20160213212255.GA5341@kroah.com>
References: <1455394376-2616-1-git-send-email-bhumirks@gmail.com>
 <20160213212255.GA5341@kroah.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8723au: Remove unused
 macros
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_140_259393485.1455425640789"
X-Google-Token: EOiQgLYF4f1dl78-Xao0
X-Google-IP: 14.139.242.195

------=_Part_140_259393485.1455425640789
Content-Type: multipart/alternative; 
	boundary="----=_Part_141_1423911355.1455425640789"

------=_Part_141_1423911355.1455425640789
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Sunday, February 14, 2016 at 2:52:56 AM UTC+5:30, gregkh wrote:
>
> On Sun, Feb 14, 2016 at 01:42:56AM +0530, Bhumika Goyal wrote: 
> > The macros PlatformAcquireSpinLock and PlatformReleaseSpinLock are not 
> > used anywhere so remove them. Used grep to find occurences. 
> > 
> > Signed-off-by: Bhumika Goyal <bhum...@gmail.com <javascript:>> 
> > --- 
> >  drivers/staging/rtl8723au/hal/rtl8723a_bt-coexist.c | 2 -- 
> >  1 file changed, 2 deletions(-) 
> > 
> > diff --git a/drivers/staging/rtl8723au/hal/rtl8723a_bt-coexist.c 
> b/drivers/staging/rtl8723au/hal/rtl8723a_bt-coexist.c 
> > index d46d1c7..33eabf4 100644 
> > --- a/drivers/staging/rtl8723au/hal/rtl8723a_bt-coexist.c 
> > +++ b/drivers/staging/rtl8723au/hal/rtl8723a_bt-coexist.c 
> > @@ -80,8 +80,6 @@ if ((BTCoexDbgLevel == _bt_dbg_on_)) {\ 
> >  #define PlatformProcessHCICommands(...) 
> >  #define PlatformTxBTQueuedPackets(...) 
> >  #define PlatformIndicateBTACLData(...)        (RT_STATUS_SUCCESS) 
> > -#define PlatformAcquireSpinLock(padapter, type) 
> > -#define PlatformReleaseSpinLock(padapter, type) 
>
> Can you also remove the commented out places where these macros were 
> being called? 
>   Yeah sure. I am sending a patchset for that as the comments are in 
> rtl8192u.
> thanks, 
>
> greg k-h 
>

------=_Part_141_1423911355.1455425640789
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Sunday, February 14, 2016 at 2:52:56 AM UTC+5:3=
0, gregkh wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;margin=
-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">On Sun, Feb 14=
, 2016 at 01:42:56AM +0530, Bhumika Goyal wrote:
<br>&gt; The macros PlatformAcquireSpinLock and PlatformReleaseSpinLock are=
 not
<br>&gt; used anywhere so remove them. Used grep to find occurences.
<br>&gt;=20
<br>&gt; Signed-off-by: Bhumika Goyal &lt;<a href=3D"javascript:" target=3D=
"_blank" gdf-obfuscated-mailto=3D"TOnnq7ItAgAJ" rel=3D"nofollow" onmousedow=
n=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.href=
=3D&#39;javascript:&#39;;return true;">bhum...@gmail.com</a>&gt;
<br>&gt; ---
<br>&gt; =C2=A0drivers/staging/rtl8723au/<wbr>hal/rtl8723a_bt-coexist.c | 2=
 --
<br>&gt; =C2=A01 file changed, 2 deletions(-)
<br>&gt;=20
<br>&gt; diff --git a/drivers/staging/rtl8723au/<wbr>hal/rtl8723a_bt-coexis=
t.c b/drivers/staging/rtl8723au/<wbr>hal/rtl8723a_bt-coexist.c
<br>&gt; index d46d1c7..33eabf4 100644
<br>&gt; --- a/drivers/staging/rtl8723au/<wbr>hal/rtl8723a_bt-coexist.c
<br>&gt; +++ b/drivers/staging/rtl8723au/<wbr>hal/rtl8723a_bt-coexist.c
<br>&gt; @@ -80,8 +80,6 @@ if ((BTCoexDbgLevel =3D=3D _bt_dbg_on_)) {\
<br>&gt; =C2=A0#define PlatformProcessHCICommands(...<wbr>)
<br>&gt; =C2=A0#define PlatformTxBTQueuedPackets(...)
<br>&gt; =C2=A0#define PlatformIndicateBTACLData(...)<wbr>=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0(RT_STATUS_SUCCESS)
<br>&gt; -#define PlatformAcquireSpinLock(<wbr>padapter, type)
<br>&gt; -#define PlatformReleaseSpinLock(<wbr>padapter, type)
<br>
<br>Can you also remove the commented out places where these macros were
<br>being called?
<br>=C2=A0
Yeah sure. I am sending a patchset for that as the comments are in rtl8192u=
.<br>thanks,
<br>
<br>greg k-h
<br></blockquote></div>
------=_Part_141_1423911355.1455425640789--

------=_Part_140_259393485.1455425640789--

