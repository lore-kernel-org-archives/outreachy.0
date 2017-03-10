X-GM-THRID: 6395630061335085056
Date: Fri, 10 Mar 2017 01:55:48 -0800 (PST)
From: Tamara Diaconita <diaconitatamara@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: diaconitatamara@gmail.com, aditya.shankar@microchip.com,
	ganesh.krishna@microchip.com, gregkh@linuxfoundation.org,
	diaconita.tamara@gmail.com
Message-Id: <7d6aece5-b445-4b82-b7d7-e948c81fb36d@googlegroups.com>
In-Reply-To: <alpine.DEB.2.20.1703101016560.2169@hadrien>
References: <20170310091221.7109-1-diaconita.tamara@gmail.com>
 <alpine.DEB.2.20.1703101016560.2169@hadrien>
Subject: Re: [Outreachy kernel] [PATCH v3] staging: wilc1000: Enhance code
 formatting
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_2024_200092029.1489139748495"
X-Google-Token: EKTwicYF2RyahykTbAM0
X-Google-IP: 2a02:2f0b:8130:11ea:d515:7bde:c1d1:c737

------=_Part_2024_200092029.1489139748495
Content-Type: multipart/alternative; 
	boundary="----=_Part_2025_415308020.1489139748495"

------=_Part_2025_415308020.1489139748495
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

I compiled the code and I understand what you said. I modified the files 
related to the one I changed in the first place.
Do I need to make a patch set with all the files I have changed?

vineri, 10 martie 2017, 11:18:11 UTC+2, Julia Lawall a scris:
>
>
>
> On Fri, 10 Mar 2017, Tamara Diaconita wrote: 
>
> > This trims line size at 80 characters by shortening the names of 
> > variables. 
> > 
> > It makes code easier to read. 
> > 
> > Problem found with checkpatch.pl 
> > 
> > Signed-off-by: Tamara Diaconita <diaconit...@gmail.com <javascript:>> 
> > --- 
> > Changes since v2: 
> > *Shorten variables name. 
> > *Separate the patch from a patch set. 
> > 
> > Changes since v1: 
> > *Put the pacth in a set. 
> > 
> >  drivers/staging/wilc1000/coreconfigurator.h | 2 +- 
> >  1 file changed, 1 insertion(+), 1 deletion(-) 
> > 
> > diff --git a/drivers/staging/wilc1000/coreconfigurator.h 
> b/drivers/staging/wilc1000/coreconfigurator.h 
> > index 10101f8..45563b9 100644 
> > --- a/drivers/staging/wilc1000/coreconfigurator.h 
> > +++ b/drivers/staging/wilc1000/coreconfigurator.h 
> > @@ -123,7 +123,7 @@ struct disconnect_info { 
> >  s32 wilc_parse_network_info(u8 *msg_buffer, 
> >                              struct network_info **ret_network_info); 
> >  s32 wilc_parse_assoc_resp_info(u8 *buffer, u32 buffer_len, 
> > -                               struct connect_resp_info 
> **ret_connect_resp_info); 
> > +                               struct resp_info **ret_resp_info); 
>
> I don't think you can change the name of a type in only one place.  You 
> would have to change the declaration of the type and all of the other 
> uses.  Did you compile any file that includes this code?  Changing a 
> header file is tricky, because you can't compile it directly.  You have to 
> find a .c file that contains it. 
>
> julia 
>
> >  void wilc_scan_complete_received(struct wilc *wilc, u8 *pu8Buffer, 
> >                                   u32 u32Length); 
> >  void wilc_network_info_received(struct wilc *wilc, u8 *pu8Buffer, 
> > -- 
> > 2.9.3 
> > 
> > -- 
> > You received this message because you are subscribed to the Google 
> Groups "outreachy-kernel" group. 
> > To unsubscribe from this group and stop receiving emails from it, send 
> an email to outreachy-kern...@googlegroups.com <javascript:>. 
> > To post to this group, send email to outreach...@googlegroups.com 
> <javascript:>. 
> > To view this discussion on the web visit 
> https://groups.google.com/d/msgid/outreachy-kernel/20170310091221.7109-1-diaconita.tamara%40gmail.com. 
>
> > For more options, visit https://groups.google.com/d/optout. 
> > 
>

------=_Part_2025_415308020.1489139748495
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I compiled the code and I understand what you said. I modi=
fied the files related to the one I changed in the first place.<br>Do I nee=
d to make a patch set with all the files I have changed?<br><br>vineri, 10 =
martie 2017, 11:18:11 UTC+2, Julia Lawall a scris:<blockquote class=3D"gmai=
l_quote" style=3D"margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;=
padding-left: 1ex;">
<br>
<br>On Fri, 10 Mar 2017, Tamara Diaconita wrote:
<br>
<br>&gt; This trims line size at 80 characters by shortening the names of
<br>&gt; variables.
<br>&gt;
<br>&gt; It makes code easier to read.
<br>&gt;
<br>&gt; Problem found with <a href=3D"http://checkpatch.pl" target=3D"_bla=
nk" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;http://www.google.com/=
url?q\x3dhttp%3A%2F%2Fcheckpatch.pl\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjC=
NGoRgUgHq29dhmk72L974NI3_mFug&#39;;return true;" onclick=3D"this.href=3D&#3=
9;http://www.google.com/url?q\x3dhttp%3A%2F%2Fcheckpatch.pl\x26sa\x3dD\x26s=
ntz\x3d1\x26usg\x3dAFQjCNGoRgUgHq29dhmk72L974NI3_mFug&#39;;return true;">ch=
eckpatch.pl</a>
<br>&gt;
<br>&gt; Signed-off-by: Tamara Diaconita &lt;<a href=3D"javascript:" target=
=3D"_blank" gdf-obfuscated-mailto=3D"d_8q_YaDAgAJ" rel=3D"nofollow" onmouse=
down=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hre=
f=3D&#39;javascript:&#39;;return true;">diaconit...@gmail.com</a>&gt;
<br>&gt; ---
<br>&gt; Changes since v2:
<br>&gt; *Shorten variables name.
<br>&gt; *Separate the patch from a patch set.
<br>&gt;
<br>&gt; Changes since v1:
<br>&gt; *Put the pacth in a set.
<br>&gt;
<br>&gt; =C2=A0drivers/staging/wilc1000/<wbr>coreconfigurator.h | 2 +-
<br>&gt; =C2=A01 file changed, 1 insertion(+), 1 deletion(-)
<br>&gt;
<br>&gt; diff --git a/drivers/staging/wilc1000/<wbr>coreconfigurator.h b/dr=
ivers/staging/wilc1000/<wbr>coreconfigurator.h
<br>&gt; index 10101f8..45563b9 100644
<br>&gt; --- a/drivers/staging/wilc1000/<wbr>coreconfigurator.h
<br>&gt; +++ b/drivers/staging/wilc1000/<wbr>coreconfigurator.h
<br>&gt; @@ -123,7 +123,7 @@ struct disconnect_info {
<br>&gt; =C2=A0s32 wilc_parse_network_info(u8 *msg_buffer,
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 =C2=A0 =C2=A0struct network_info **ret_network_info);
<br>&gt; =C2=A0s32 wilc_parse_assoc_resp_info(u8 *buffer, u32 buffer_len,
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 struct connect_resp_info **ret_connect_resp_inf=
o);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 struct resp_info **ret_resp_info);
<br>
<br>I don&#39;t think you can change the name of a type in only one place. =
=C2=A0You
<br>would have to change the declaration of the type and all of the other
<br>uses. =C2=A0Did you compile any file that includes this code? =C2=A0Cha=
nging a
<br>header file is tricky, because you can&#39;t compile it directly. =C2=
=A0You have to
<br>find a .c file that contains it.
<br>
<br>julia
<br>
<br>&gt; =C2=A0void wilc_scan_complete_received(<wbr>struct wilc *wilc, u8 =
*pu8Buffer,
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0 u32 u32Lengt=
h);
<br>&gt; =C2=A0void wilc_network_info_received(<wbr>struct wilc *wilc, u8 *=
pu8Buffer,
<br>&gt; --
<br>&gt; 2.9.3
<br>&gt;
<br>&gt; --
<br>&gt; You received this message because you are subscribed to the Google=
 Groups &quot;outreachy-kernel&quot; group.
<br>&gt; To unsubscribe from this group and stop receiving emails from it, =
send an email to <a href=3D"javascript:" target=3D"_blank" gdf-obfuscated-m=
ailto=3D"d_8q_YaDAgAJ" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;jav=
ascript:&#39;;return true;" onclick=3D"this.href=3D&#39;javascript:&#39;;re=
turn true;">outreachy-kern...@<wbr>googlegroups.com</a>.
<br>&gt; To post to this group, send email to <a href=3D"javascript:" targe=
t=3D"_blank" gdf-obfuscated-mailto=3D"d_8q_YaDAgAJ" rel=3D"nofollow" onmous=
edown=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hr=
ef=3D&#39;javascript:&#39;;return true;">outreach...@googlegroups.<wbr>com<=
/a>.
<br>&gt; To view this discussion on the web visit <a href=3D"https://groups=
.google.com/d/msgid/outreachy-kernel/20170310091221.7109-1-diaconita.tamara=
%40gmail.com" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=
=3D&#39;https://groups.google.com/d/msgid/outreachy-kernel/20170310091221.7=
109-1-diaconita.tamara%40gmail.com&#39;;return true;" onclick=3D"this.href=
=3D&#39;https://groups.google.com/d/msgid/outreachy-kernel/20170310091221.7=
109-1-diaconita.tamara%40gmail.com&#39;;return true;">https://groups.google=
.com/d/<wbr>msgid/outreachy-kernel/<wbr>20170310091221.7109-1-<wbr>diaconit=
a.tamara%40gmail.com</a>.
<br>&gt; For more options, visit <a href=3D"https://groups.google.com/d/opt=
out" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;htt=
ps://groups.google.com/d/optout&#39;;return true;" onclick=3D"this.href=3D&=
#39;https://groups.google.com/d/optout&#39;;return true;">https://groups.go=
ogle.com/d/<wbr>optout</a>.
<br>&gt;
<br></blockquote></div>
------=_Part_2025_415308020.1489139748495--

------=_Part_2024_200092029.1489139748495--

