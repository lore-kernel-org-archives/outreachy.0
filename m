X-GM-THRID: 6339181082300121088
Date: Sun, 9 Oct 2016 12:54:43 -0700 (PDT)
From: Varsha Rao <rvarsha016@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: rvarsha016@gmail.com, forest@alittletooquiet.net
Message-Id: <98a7e8ad-d35b-4e8a-b10b-0790b9ddb985@googlegroups.com>
In-Reply-To: <20161009140401.GA14623@kroah.com>
References: <20161008194005.GA18035@euri>
 <20161009140401.GA14623@kroah.com>
Subject: Re: [PATCH] Staging: vt6655: Rename dwIoBase as iobase
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_5396_474341556.1476042883384"
X-Google-Token: EIPB6r8FR94oWwXVFxM0
X-Google-IP: 117.232.163.80

------=_Part_5396_474341556.1476042883384
Content-Type: multipart/alternative; 
	boundary="----=_Part_5397_1617808249.1476042883384"

------=_Part_5397_1617808249.1476042883384
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Sunday, October 9, 2016 at 7:33:57 PM UTC+5:30, gregkh wrote:
>
> On Sun, Oct 09, 2016 at 01:10:05AM +0530, Varsha Rao wrote: 
> > In this patch dwIoBase is renamed as iobase. 
> > This is done to fix the checkpatch issue of CamelCase. 
> > 
> > Signed-off-by: Varsha Rao <rvars...@gmail.com <javascript:>> 
> > --- 
> >  drivers/staging/vt6655/baseband.c |  52 +++--- 
> >  drivers/staging/vt6655/baseband.h |   8 +- 
>
> This patch fails to apply in this file, perhaps you are out of sync with 
> my tree? 
>

    Yes, I have updated it now and made the changes.  

> @@ -1916,7 +1916,7 @@ void vnt_get_phy_field(struct vnt_private *priv, 
> u32 frame_length, 
> >   * 
> >   * Parameters: 
> >   *  In: 
> > - *      dwIoBase    - I/O base address 
> > + *      iobase      - I/O base address 
> >   *      byBBAddr    - address of register in Baseband 
> >   *  Out: 
> >   *      pbyData     - data read 
>
> Minor nit, this isn't a parameter to the function at all.  Perhaps you 
> can go through and fix them all up to have the proper data (or just 
> remove them, they are pretty pointless...) 
>
   
    But here only dwIoBase is not a parameter. Also the function mentioned 
here is already updated. But there is different function for which the 
parameter does not match.
    bool BBbWriteEmbedded(struct vnt_private *priv, unsigned char byBBAddr, 
unsigned char byData)
    
     * Description: Write a Byte to BASEBAND, by embedded programming
 *
 * Parameters:
 *  In:
 *      dwIoBase      - I/O base address
 *      byBBAddr    - address of register in Baseband
 *      byData      - data to write
 *  Out:
 *      none

  I will remove dwIoBase and add description for priv. Sorry for the 
inconvenience but kindly check the patch with subject " [PATCH] Staging: 
vt6655: Replace dwIoBase by iobase".It is updated.

------=_Part_5397_1617808249.1476042883384
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Sunday, October 9, 2016 at 7:33:57 PM UTC+5:30,=
 gregkh wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-l=
eft: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">On Sun, Oct 09, =
2016 at 01:10:05AM +0530, Varsha Rao wrote:
<br>&gt; In this patch dwIoBase is renamed as iobase.
<br>&gt; This is done to fix the checkpatch issue of CamelCase.
<br>&gt;=20
<br>&gt; Signed-off-by: Varsha Rao &lt;<a href=3D"javascript:" target=3D"_b=
lank" gdf-obfuscated-mailto=3D"XvnCW2yqAAAJ" rel=3D"nofollow" onmousedown=
=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.href=3D=
&#39;javascript:&#39;;return true;">rvars...@gmail.com</a>&gt;
<br>&gt; ---
<br>&gt; =C2=A0drivers/staging/vt6655/<wbr>baseband.c | =C2=A052 +++---
<br>&gt; =C2=A0drivers/staging/vt6655/<wbr>baseband.h | =C2=A0 8 +-
<br>
<br>This patch fails to apply in this file, perhaps you are out of sync wit=
h
<br>my tree?
<br></blockquote><div><br>=C2=A0 =C2=A0 Yes, I have updated it now and made=
 the changes.=C2=A0 <br><br><blockquote class=3D"gmail_quote" style=3D"marg=
in: 0px 0px 0px 0.8ex; border-left: 1px solid rgb(204, 204, 204); padding-l=
eft: 1ex;">&gt; @@ -1916,7 +1916,7 @@ void vnt_get_phy_field(struct vnt_pri=
vate *priv, u32 frame_length,
<br>&gt; =C2=A0 *
<br>&gt; =C2=A0 * Parameters:
<br>&gt; =C2=A0 * =C2=A0In:
<br>&gt; - * =C2=A0 =C2=A0 =C2=A0dwIoBase =C2=A0 =C2=A0- I/O base address
<br>&gt; + * =C2=A0 =C2=A0 =C2=A0iobase =C2=A0 =C2=A0 =C2=A0- I/O base addr=
ess
<br>&gt; =C2=A0 * =C2=A0 =C2=A0 =C2=A0byBBAddr =C2=A0 =C2=A0- address of re=
gister in Baseband
<br>&gt; =C2=A0 * =C2=A0Out:
<br>&gt; =C2=A0 * =C2=A0 =C2=A0 =C2=A0pbyData =C2=A0 =C2=A0 - data read
<br>
<br>Minor nit, this isn&#39;t a parameter to the function at all. =C2=A0Per=
haps you
<br>can go through and fix them all up to have the proper data (or just
<br>remove them, they are pretty pointless...)
<br></blockquote><div>=C2=A0=C2=A0 <br>=C2=A0=C2=A0=C2=A0 But here only dwI=
oBase is not a parameter. Also the function mentioned here is already updat=
ed. But there is different function for which the parameter does not match.=
<br>=C2=A0=C2=A0=C2=A0 bool BBbWriteEmbedded(struct vnt_private *priv, unsi=
gned char byBBAddr, unsigned char byData)<br>=C2=A0=C2=A0=C2=A0 <br>=C2=A0=
=C2=A0=C2=A0=C2=A0 * Description: Write a Byte to BASEBAND, by embedded pro=
gramming<br>=C2=A0*<br>=C2=A0* Parameters:<br>=C2=A0*=C2=A0 In:<br>=C2=A0*=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 dwIoBase=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - I/O=
 base address<br>=C2=A0*=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 byBBAddr=C2=A0=C2=A0=
=C2=A0 - address of register in Baseband<br>=C2=A0*=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 byData=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - data to write<br>=C2=A0*=C2=
=A0 Out:<br>=C2=A0*=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 none<br><br>=C2=A0 I will=
 remove dwIoBase and add description for priv. Sorry for the inconvenience =
but kindly check the patch with subject &quot;<font size=3D"2"> [PATCH] Sta=
ging: vt6655: Replace dwIoBase by iobase</font>&quot;.It is updated.<br></d=
iv></div></div>
------=_Part_5397_1617808249.1476042883384--

------=_Part_5396_474341556.1476042883384--

