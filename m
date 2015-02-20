X-GM-THRID: 1013903785984
X-Received: by 10.152.43.166 with SMTP id x6mr1230503lal.3.1424434690665;
        Fri, 20 Feb 2015 04:18:10 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.73.227 with SMTP id o3ls88054wiv.3.gmail; Fri, 20 Feb 2015
 04:18:08 -0800 (PST)
X-Received: by 10.194.239.41 with SMTP id vp9mr1228566wjc.5.1424434688812;
        Fri, 20 Feb 2015 04:18:08 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-la0-x22c.google.com (mail-la0-x22c.google.com. [2a00:1450:4010:c03::22c])
        by gmr-mx.google.com with ESMTPS id xl7si2882874lbb.1.2015.02.20.04.18.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Feb 2015 04:18:08 -0800 (PST)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:4010:c03::22c as permitted sender) client-ip=2a00:1450:4010:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:4010:c03::22c as permitted sender) smtp.mail=ksenija.stanojevic@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-la0-x22c.google.com with SMTP id s18so5651827lam.13
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Feb 2015 04:18:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=dLDBLiWRIR99Q+d+XpKQt7NlIsREUipHxYTtKx3q5cE=;
        b=VbQ9lKe0UH5QePI8SuLvzD/FZr06Uw9VmFfOkv3ZD6uFywWwoFOLa1LrP3ALwAzUXi
         QqZIxfUgjsW4ac/rVu5BFZCBVpEvbu8Xh1Ox4nampuwBaScEJ9FbbIYYmMXwmQyEGC72
         snpaLwrStQkpeFHQbHcWmu+gkTNda8yp64FwYyg9PuN3vM2EkG1K6ONFF/f3c1wz8lLF
         SrxRB/xb9mM/sdJHBFAxCfYZfq3WB3A4q001mHGINs93tE/tD3Lc85BdDuqoZKxtbWXA
         rp1OkMphItMODdfkXup2JmbdqiZiYS0bfMg8UNAup4JgnOprgKE44hmf1kLh35ydtNJ+
         Tc7Q==
MIME-Version: 1.0
X-Received: by 10.112.135.196 with SMTP id pu4mr8110940lbb.41.1424434688695;
 Fri, 20 Feb 2015 04:18:08 -0800 (PST)
Received: by 10.114.182.9 with HTTP; Fri, 20 Feb 2015 04:18:08 -0800 (PST)
In-Reply-To: <1424432471809.1839906750@boxbe>
References: <1424383520-21750-1-git-send-email-ksenija.stanojevic@gmail.com>
	<1424432471809.1839906750@boxbe>
Date: Fri, 20 Feb 2015 13:18:08 +0100
Message-ID: <CAL7P5jK_ckFa2s0TResHqCEZf4hyqBRRAHv7XdAyWm11iLNQzw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8192u: Remove space beforetab
From: =?UTF-8?Q?Ksenija_Stanojevi=C4=87?= <ksenija.stanojevic@gmail.com>
To: Jes Sorensen <jes.sorensen@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=089e011607c6a02222050f840bd2

--089e011607c6a02222050f840bd2
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Thank you for your feedback. I'll try to keep that in mind next time.
Should i make v2 out of this patch?

On Fri, Feb 20, 2015 at 12:32 PM, Jes Sorensen <jes.sorensen@gmail.com>
wrote:

>  [image: Boxbe] <https://www.boxbe.com/overview> Jes Sorensen (
> jes.sorensen@gmail.com) added themselves to your Guest List
> <https://www.boxbe.com/approved-list?tc_serial=3D20496783221&tc_rand=3D14=
93252507&utm_source=3Dstf&utm_medium=3Demail&utm_campaign=3DANNO_TEST&utm_c=
ontent=3D001&token=3Di2atJwHe4epXXgrOAoB9CRCp5nADSeAaRmjeHYkSuo%2FZyz5Dy5R9=
loS9DPc3JQf0&key=3DZcbJ7iKYyZvdE1XUDLdCP3vOsOAhAqbogORJWFDMtAk%3D>
> | Remove them
> <https://www.boxbe.com/anno?action=3Dremove&tc_serial=3D20496783221&tc_ra=
nd=3D1493252507&utm_source=3Dstf&utm_medium=3Demail&utm_campaign=3DANNO_TES=
T&utm_content=3D001&token=3Di2atJwHe4epXXgrOAoB9CRCp5nADSeAaRmjeHYkSuo%2FZy=
z5Dy5R9loS9DPc3JQf0&key=3DZcbJ7iKYyZvdE1XUDLdCP3vOsOAhAqbogORJWFDMtAk%3D>
> | Block them
> <https://www.boxbe.com/anno?action=3Dadd&disp=3Db&tc_serial=3D20496783221=
&tc_rand=3D1493252507&utm_source=3Dstf&utm_medium=3Demail&utm_campaign=3DAN=
NO_TEST&utm_content=3D001&token=3Di2atJwHe4epXXgrOAoB9CRCp5nADSeAaRmjeHYkSu=
o%2FZyz5Dy5R9loS9DPc3JQf0&key=3DZcbJ7iKYyZvdE1XUDLdCP3vOsOAhAqbogORJWFDMtAk=
%3D>
>
> On 02/19/15 17:05, Ksenija Stanojevic wrote:
> > This patch fixes the checkpatch.pl warning:
> > WARNING: "please, no space before tabs"
> >
> > Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
> > ---
> >  drivers/staging/rtl8192u/r819xU_phy.c | 8 ++++----
> >  1 file changed, 4 insertions(+), 4 deletions(-)
>
> Again here your patch looks fine, the only thing needed to make it top
> of the line is a more personalized commit message.
>
> Cheers,
> Jes
>
> > diff --git a/drivers/staging/rtl8192u/r819xU_phy.c
> b/drivers/staging/rtl8192u/r819xU_phy.c
> > index 0589602..dbd3321 100644
> > --- a/drivers/staging/rtl8192u/r819xU_phy.c
> > +++ b/drivers/staging/rtl8192u/r819xU_phy.c
> > @@ -106,10 +106,10 @@ void rtl8192_setBBreg(struct net_device *dev, u32
> reg_addr, u32 bitmask,
> >
> /************************************************************************=
******
> >   * function:  This function reads specific bits from BB register
> >   * input:     net_device     *dev
> > - *            u32            reg_addr   //target addr to be readback
> > - *            u32            bitmask    //taget bit pos to be readback
> > + *            u32            reg_addr   //target addr to be readback
> > + *            u32            bitmask    //taget bit pos to be readback
> >   * output:    none
> > - * return:    u32            data       //the readback register value
> > + * return:    u32            data       //the readback register value
> >   * notice:
> >
>  ************************************************************************=
******/
> >  u32 rtl8192_QueryBBReg(struct net_device *dev, u32 reg_addr, u32
> bitmask)
> > @@ -478,7 +478,7 @@ static void phy_FwRFSerialWrite(struct net_device
> *dev,
> >
> /************************************************************************=
******
> >   * function:  This function reads BB parameters from header file we
> generate,
> >   *            and do register read/write
> > - * input:     net_device     *dev
> > + * input:     net_device     *dev
> >   * output:    none
> >   * return:    none
> >   * notice:    BB parameters may change all the time, so please make
> >
>
>
>

--089e011607c6a02222050f840bd2
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thank you for your feedback. I&#39;ll try to keep that in =
mind next time. Should i make v2 out of this patch?</div><div class=3D"gmai=
l_extra"><br><div class=3D"gmail_quote">On Fri, Feb 20, 2015 at 12:32 PM, J=
es Sorensen <span dir=3D"ltr">&lt;<a href=3D"mailto:jes.sorensen@gmail.com"=
 target=3D"_blank">jes.sorensen@gmail.com</a>&gt;</span> wrote:<br><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc s=
olid;padding-left:1ex">
<div style=3D"font-size:12px;color:#777;font-family:&#39;Lucida Grande&#39;=
,Helvetica,Arial,sans-serif;background-color:#fff;padding:4px">
<a href=3D"https://www.boxbe.com/overview" style=3D"text-decoration:none;co=
lor:#5e96ea" target=3D"_blank"><img alt=3D"Boxbe" src=3D"http://www.boxbe.c=
om/images/logo_dark_small.png" width=3D"64px" style=3D"margin-left:0px;bord=
er:none"></a>

<img src=3D"http://www.boxbe.com/stfopen?tc_serial=3D20496783221&amp;tc_ran=
d=3D1493252507&amp;utm_source=3Dstf&amp;utm_medium=3Demail&amp;utm_campaign=
=3DANNO_TEST&amp;utm_content=3D001">

  Jes Sorensen (<a href=3D"mailto:jes.sorensen@gmail.com" target=3D"_blank"=
>jes.sorensen@gmail.com</a>) added themselves to <a style=3D"text-decoratio=
n:none;color:#5e96ea" href=3D"https://www.boxbe.com/approved-list?tc_serial=
=3D20496783221&amp;tc_rand=3D1493252507&amp;utm_source=3Dstf&amp;utm_medium=
=3Demail&amp;utm_campaign=3DANNO_TEST&amp;utm_content=3D001&amp;token=3Di2a=
tJwHe4epXXgrOAoB9CRCp5nADSeAaRmjeHYkSuo%2FZyz5Dy5R9loS9DPc3JQf0&amp;key=3DZ=
cbJ7iKYyZvdE1XUDLdCP3vOsOAhAqbogORJWFDMtAk%3D" target=3D"_blank">your Guest=
 List</a> |
  <a style=3D"text-decoration:none;color:#5e96ea" href=3D"https://www.boxbe=
.com/anno?action=3Dremove&amp;tc_serial=3D20496783221&amp;tc_rand=3D1493252=
507&amp;utm_source=3Dstf&amp;utm_medium=3Demail&amp;utm_campaign=3DANNO_TES=
T&amp;utm_content=3D001&amp;token=3Di2atJwHe4epXXgrOAoB9CRCp5nADSeAaRmjeHYk=
Suo%2FZyz5Dy5R9loS9DPc3JQf0&amp;key=3DZcbJ7iKYyZvdE1XUDLdCP3vOsOAhAqbogORJW=
FDMtAk%3D" target=3D"_blank">Remove them</a> | <a style=3D"text-decoration:=
none;color:#5e96ea" href=3D"https://www.boxbe.com/anno?action=3Dadd&amp;dis=
p=3Db&amp;tc_serial=3D20496783221&amp;tc_rand=3D1493252507&amp;utm_source=
=3Dstf&amp;utm_medium=3Demail&amp;utm_campaign=3DANNO_TEST&amp;utm_content=
=3D001&amp;token=3Di2atJwHe4epXXgrOAoB9CRCp5nADSeAaRmjeHYkSuo%2FZyz5Dy5R9lo=
S9DPc3JQf0&amp;key=3DZcbJ7iKYyZvdE1XUDLdCP3vOsOAhAqbogORJWFDMtAk%3D" target=
=3D"_blank">Block them</a>=20


  <br>

</div>
<br>On 02/19/15 17:05, Ksenija Stanojevic wrote:<br>
&gt; This patch fixes the <a href=3D"http://checkpatch.pl" target=3D"_blank=
">checkpatch.pl</a> warning:<br>
&gt; WARNING: &quot;please, no space before tabs&quot;<br>
&gt;<br>
&gt; Signed-off-by: Ksenija Stanojevic &lt;<a href=3D"mailto:ksenija.stanoj=
evic@gmail.com">ksenija.stanojevic@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/rtl8192u/r819xU_phy.c | 8 ++++----<br>
&gt;=C2=A0 1 file changed, 4 insertions(+), 4 deletions(-)<br>
<br>
Again here your patch looks fine, the only thing needed to make it top<br>
of the line is a more personalized commit message.<br>
<br>
Cheers,<br>
Jes<br>
<br>
&gt; diff --git a/drivers/staging/rtl8192u/r819xU_phy.c b/drivers/staging/r=
tl8192u/r819xU_phy.c<br>
&gt; index 0589602..dbd3321 100644<br>
&gt; --- a/drivers/staging/rtl8192u/r819xU_phy.c<br>
&gt; +++ b/drivers/staging/rtl8192u/r819xU_phy.c<br>
&gt; @@ -106,10 +106,10 @@ void rtl8192_setBBreg(struct net_device *dev, u3=
2 reg_addr, u32 bitmask,<br>
&gt;=C2=A0 /***************************************************************=
***************<br>
&gt;=C2=A0 =C2=A0* function:=C2=A0 This function reads specific bits from B=
B register<br>
&gt;=C2=A0 =C2=A0* input:=C2=A0 =C2=A0 =C2=A0net_device=C2=A0 =C2=A0 =C2=A0=
*dev<br>
&gt; - *=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 u32=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 reg_addr=C2=A0 =C2=A0//target addr to be readback<br>
&gt; - *=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 u32=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 bitmask=C2=A0 =C2=A0 //taget bit pos to be readback<br=
>
&gt; + *=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 u32=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 reg_addr=C2=A0 =C2=A0//target addr to be readback<br>
&gt; + *=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 u32=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 bitmask=C2=A0 =C2=A0 //taget bit pos to be readback<br=
>
&gt;=C2=A0 =C2=A0* output:=C2=A0 =C2=A0 none<br>
&gt; - * return:=C2=A0 =C2=A0 u32=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
data=C2=A0 =C2=A0 =C2=A0 =C2=A0//the readback register value<br>
&gt; + * return:=C2=A0 =C2=A0 u32=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
data=C2=A0 =C2=A0 =C2=A0 =C2=A0//the readback register value<br>
&gt;=C2=A0 =C2=A0* notice:<br>
&gt;=C2=A0 =C2=A0**********************************************************=
********************/<br>
&gt;=C2=A0 u32 rtl8192_QueryBBReg(struct net_device *dev, u32 reg_addr, u32=
 bitmask)<br>
&gt; @@ -478,7 +478,7 @@ static void phy_FwRFSerialWrite(struct net_device =
*dev,<br>
&gt;=C2=A0 /***************************************************************=
***************<br>
&gt;=C2=A0 =C2=A0* function:=C2=A0 This function reads BB parameters from h=
eader file we generate,<br>
&gt;=C2=A0 =C2=A0*=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 and do register=
 read/write<br>
&gt; - * input:=C2=A0 =C2=A0 =C2=A0net_device=C2=A0 =C2=A0 =C2=A0*dev<br>
&gt; + * input:=C2=A0 =C2=A0 =C2=A0net_device=C2=A0 =C2=A0 =C2=A0*dev<br>
&gt;=C2=A0 =C2=A0* output:=C2=A0 =C2=A0 none<br>
&gt;=C2=A0 =C2=A0* return:=C2=A0 =C2=A0 none<br>
&gt;=C2=A0 =C2=A0* notice:=C2=A0 =C2=A0 BB parameters may change all the ti=
me, so please make<br>
&gt;<br>
<br>
<br></blockquote></div><br></div>

--089e011607c6a02222050f840bd2--

