X-GM-THRID: 6802607426621145088
Date: Tue, 10 Mar 2020 10:45:07 -0700 (PDT)
From: Deepak Varma <mh12gx2825@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <63066886-84cf-4915-8def-1528f403a20f@googlegroups.com>
In-Reply-To: <20200310155053.GA27759@deeUbuntu>
References: <20200310155053.GA27759@deeUbuntu>
Subject: Re: [PATCH] staging : comedi : dt2801 : remove old unused code
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1978_1747049186.1583862307443"
X-Google-Token: EKOkn_MF3V2ICDrNouQ0
X-Google-IP: 103.240.207.69

------=_Part_1978_1747049186.1583862307443
Content-Type: multipart/alternative; 
	boundary="----=_Part_1979_1561392215.1583862307444"

------=_Part_1979_1561392215.1583862307444
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Thank you Julia. I will update the subject line and resubmit the patch.

Deepak.

On Tuesday, 10 March 2020 21:21:05 UTC+5:30, Deepak Varma wrote:
>
> there are 2 #if 0 blocks that have no recent history of any change. We 
> can remove those code blocks for improved readability of the code. 
>
> Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com> 
> --- 
>  drivers/staging/comedi/drivers/dt2801.c | 22 ---------------------- 
>  1 file changed, 22 deletions(-) 
>
> diff --git a/drivers/staging/comedi/drivers/dt2801.c 
> b/drivers/staging/comedi/drivers/dt2801.c 
> index a29880981d81..aad02faa2f83 100644 
> --- a/drivers/staging/comedi/drivers/dt2801.c 
> +++ b/drivers/staging/comedi/drivers/dt2801.c 
> @@ -87,17 +87,6 @@ 
>  #define DT2801_STATUS                1 
>  #define DT2801_CMD                1 
>   
> -#if 0 
> -/* ignore 'defined but not used' warning */ 
> -static const struct comedi_lrange range_dt2801_ai_pgh_bipolar = { 
> -        4, { 
> -                BIP_RANGE(10), 
> -                BIP_RANGE(5), 
> -                BIP_RANGE(2.5), 
> -                BIP_RANGE(1.25) 
> -        } 
> -}; 
> -#endif 
>  static const struct comedi_lrange range_dt2801_ai_pgl_bipolar = { 
>          4, { 
>                  BIP_RANGE(10), 
> @@ -107,17 +96,6 @@ static const struct comedi_lrange 
> range_dt2801_ai_pgl_bipolar = { 
>          } 
>  }; 
>   
> -#if 0 
> -/* ignore 'defined but not used' warning */ 
> -static const struct comedi_lrange range_dt2801_ai_pgh_unipolar = { 
> -        4, { 
> -                UNI_RANGE(10), 
> -                UNI_RANGE(5), 
> -                UNI_RANGE(2.5), 
> -                UNI_RANGE(1.25) 
> -        } 
> -}; 
> -#endif 
>  static const struct comedi_lrange range_dt2801_ai_pgl_unipolar = { 
>          4, { 
>                  UNI_RANGE(10), 
> -- 
> 2.17.1 
>
>
------=_Part_1979_1561392215.1583862307444
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thank you Julia. I will update the subject line and r=
esubmit the patch.</div><div><br></div><div>Deepak.<br></div><br>On Tuesday=
, 10 March 2020 21:21:05 UTC+5:30, Deepak Varma  wrote:<blockquote class=3D=
"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex;border-left: 1px #ccc s=
olid;padding-left: 1ex;">there are 2 #if 0 blocks that have no recent histo=
ry of any change. We
<br>can remove those code blocks for improved readability of the code.
<br>
<br>Signed-off-by: Deepak R Varma &lt;<a href=3D"mailto:mh12gx2825@gmail.co=
m" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;mailt=
o:mh12gx2825@gmail.com&#39;;return true;" onclick=3D"this.href=3D&#39;mailt=
o:mh12gx2825@gmail.com&#39;;return true;">mh12gx2825@gmail.com</a>&gt;
<br>---
<br>=C2=A0drivers/staging/comedi/<wbr>drivers/dt2801.c | 22 ---------------=
-------
<br>=C2=A01 file changed, 22 deletions(-)
<br>
<br>diff --git a/drivers/staging/comedi/<wbr>drivers/dt2801.c b/drivers/sta=
ging/comedi/<wbr>drivers/dt2801.c
<br>index a29880981d81..aad02faa2f83 100644
<br>--- a/drivers/staging/comedi/<wbr>drivers/dt2801.c
<br>+++ b/drivers/staging/comedi/<wbr>drivers/dt2801.c
<br>@@ -87,17 +87,6 @@
<br>=C2=A0#define DT2801_STATUS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A01
<br>=C2=A0#define DT2801_CMD=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A01
<br>=C2=A0
<br>-#if 0
<br>-/* ignore &#39;defined but not used&#39; warning */
<br>-static const struct comedi_lrange range_dt2801_ai_pgh_bipolar =3D {
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A04, {
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0BIP_RANGE(10)<wbr>,
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0BIP_RANGE(5),
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0BIP_RANGE(2.<wbr>5),
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0BIP_RANGE(1.<wbr>25)
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>-};
<br>-#endif
<br>=C2=A0static const struct comedi_lrange range_dt2801_ai_pgl_bipolar =3D=
 {
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A04, {
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0BIP_RANGE(10)<wbr>,
<br>@@ -107,17 +96,6 @@ static const struct comedi_lrange range_dt2801_ai_p=
gl_bipolar =3D {
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>=C2=A0};
<br>=C2=A0
<br>-#if 0
<br>-/* ignore &#39;defined but not used&#39; warning */
<br>-static const struct comedi_lrange range_dt2801_ai_pgh_unipolar =3D {
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A04, {
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0UNI_RANGE(10)<wbr>,
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0UNI_RANGE(5),
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0UNI_RANGE(2.<wbr>5),
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0UNI_RANGE(1.<wbr>25)
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>-};
<br>-#endif
<br>=C2=A0static const struct comedi_lrange range_dt2801_ai_pgl_unipolar =
=3D {
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A04, {
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0UNI_RANGE(10)<wbr>,
<br>--=20
<br>2.17.1
<br>
<br></blockquote></div>
------=_Part_1979_1561392215.1583862307444--

------=_Part_1978_1747049186.1583862307443--

