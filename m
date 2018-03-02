X-GM-THRID: 6528466201738215424
Date: Fri, 2 Mar 2018 13:47:06 -0800 (PST)
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <20f31178-9d6a-4178-a363-fb29298b9fe5@googlegroups.com>
In-Reply-To: <1520026941-16548-1-git-send-email-arushisinghal19971997@gmail.com>
References: <1520026941-16548-1-git-send-email-arushisinghal19971997@gmail.com>
Subject: Re: [PATCH 0/4] staging: rtl8712: fix coding style issues
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_8561_592632870.1520027227023"
X-Google-Token: ENqM59QFYca56Kk9zZw0
X-Google-IP: 14.139.82.6

------=_Part_8561_592632870.1520027227023
Content-Type: multipart/alternative; 
	boundary="----=_Part_8562_1553810407.1520027227023"

------=_Part_8562_1553810407.1520027227023
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Saturday, March 3, 2018 at 3:13:07 AM UTC+5:30, Arushi Singhal wrote:
>
> Fix issues found with checkpatch.pl for rtl8712 driver. 
>

Please Ignore this patch series 
Thanks

>
> Arushi Singhal (4): 
>   staging: rtl8712: Remove multiple blank line(s) 
>   staging: rtl8712: Added spaces around '+'. 
>   staging: rtl8712: Add spaces around '|' 
>   staging: rtl8712: remove unnecessary parentheses 
>
>  drivers/staging/rtl8712/os_intfs.c                 |  1 - 
>  drivers/staging/rtl8712/recv_linux.c               |  4 +- 
>  drivers/staging/rtl8712/rtl8712_bitdef.h           |  1 - 
>  drivers/staging/rtl8712/rtl8712_cmd.c              |  8 +-- 
>  drivers/staging/rtl8712/rtl8712_cmd.h              |  4 +- 
>  drivers/staging/rtl8712/rtl8712_cmdctrl_bitdef.h   |  2 +- 
>  drivers/staging/rtl8712/rtl8712_cmdctrl_regdef.h   |  2 - 
>  drivers/staging/rtl8712/rtl8712_debugctrl_bitdef.h |  1 - 
>  drivers/staging/rtl8712/rtl8712_debugctrl_regdef.h |  2 - 
>  drivers/staging/rtl8712/rtl8712_fifoctrl_bitdef.h  |  1 - 
>  drivers/staging/rtl8712/rtl8712_fifoctrl_regdef.h  |  2 - 
>  drivers/staging/rtl8712/rtl8712_gp_bitdef.h        |  2 +- 
>  drivers/staging/rtl8712/rtl8712_gp_regdef.h        |  1 - 
>  drivers/staging/rtl8712/rtl8712_interrupt_bitdef.h |  1 - 
>  drivers/staging/rtl8712/rtl8712_led.c              | 70 
> +++++++++++----------- 
>  15 files changed, 45 insertions(+), 57 deletions(-) 
>
> -- 
> 2.7.4 
>
>
------=_Part_8562_1553810407.1520027227023
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Saturday, March 3, 2018 at 3:13:07 AM UTC+5:30,=
 Arushi Singhal wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;=
margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">Fix issu=
es found with <a href=3D"http://checkpatch.pl" target=3D"_blank" rel=3D"nof=
ollow" onmousedown=3D"this.href=3D&#39;http://www.google.com/url?q\x3dhttp%=
3A%2F%2Fcheckpatch.pl\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNGoRgUgHq29dhm=
k72L974NI3_mFug&#39;;return true;" onclick=3D"this.href=3D&#39;http://www.g=
oogle.com/url?q\x3dhttp%3A%2F%2Fcheckpatch.pl\x26sa\x3dD\x26sntz\x3d1\x26us=
g\x3dAFQjCNGoRgUgHq29dhmk72L974NI3_mFug&#39;;return true;">checkpatch.pl</a=
> for rtl8712 driver.
<br></blockquote><div><br>Please Ignore this patch series <br>Thanks<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex;=
border-left: 1px #ccc solid;padding-left: 1ex;">
<br>Arushi Singhal (4):
<br>=C2=A0 staging: rtl8712: Remove multiple blank line(s)
<br>=C2=A0 staging: rtl8712: Added spaces around &#39;+&#39;.
<br>=C2=A0 staging: rtl8712: Add spaces around &#39;|&#39;
<br>=C2=A0 staging: rtl8712: remove unnecessary parentheses
<br>
<br>=C2=A0drivers/staging/rtl8712/os_<wbr>intfs.c =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | =C2=A01 -
<br>=C2=A0drivers/staging/rtl8712/recv_<wbr>linux.c =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 | =C2=A04 +-
<br>=C2=A0drivers/staging/rtl8712/<wbr>rtl8712_bitdef.h =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 | =C2=A01 -
<br>=C2=A0drivers/staging/rtl8712/<wbr>rtl8712_cmd.c =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0| =C2=A08 +--
<br>=C2=A0drivers/staging/rtl8712/<wbr>rtl8712_cmd.h =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0| =C2=A04 +-
<br>=C2=A0drivers/staging/rtl8712/<wbr>rtl8712_cmdctrl_bitdef.h =C2=A0 | =
=C2=A02 +-
<br>=C2=A0drivers/staging/rtl8712/<wbr>rtl8712_cmdctrl_regdef.h =C2=A0 | =
=C2=A02 -
<br>=C2=A0drivers/staging/rtl8712/<wbr>rtl8712_debugctrl_bitdef.h | =C2=A01=
 -
<br>=C2=A0drivers/staging/rtl8712/<wbr>rtl8712_debugctrl_regdef.h | =C2=A02=
 -
<br>=C2=A0drivers/staging/rtl8712/<wbr>rtl8712_fifoctrl_bitdef.h =C2=A0| =
=C2=A01 -
<br>=C2=A0drivers/staging/rtl8712/<wbr>rtl8712_fifoctrl_regdef.h =C2=A0| =
=C2=A02 -
<br>=C2=A0drivers/staging/rtl8712/<wbr>rtl8712_gp_bitdef.h =C2=A0 =C2=A0 =
=C2=A0 =C2=A0| =C2=A02 +-
<br>=C2=A0drivers/staging/rtl8712/<wbr>rtl8712_gp_regdef.h =C2=A0 =C2=A0 =
=C2=A0 =C2=A0| =C2=A01 -
<br>=C2=A0drivers/staging/rtl8712/<wbr>rtl8712_interrupt_bitdef.h | =C2=A01=
 -
<br>=C2=A0drivers/staging/rtl8712/<wbr>rtl8712_led.c =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0| 70 +++++++++++-----------
<br>=C2=A015 files changed, 45 insertions(+), 57 deletions(-)
<br>
<br>--=20
<br>2.7.4
<br>
<br></blockquote></div>
------=_Part_8562_1553810407.1520027227023--

------=_Part_8561_592632870.1520027227023--

