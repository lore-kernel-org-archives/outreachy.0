X-GM-THRID: 6329478247155236864
Date: Mon, 12 Sep 2016 11:38:24 -0700 (PDT)
From: Namrata A Shettar <namrataashettar@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <0a02f556-58fa-409c-b5bc-445cdbbee939@googlegroups.com>
In-Reply-To: <CAFrQyDEvVL_XEL3DtCn9npXa8H+Jxaixv7nVEzY2Sx8ROCD+RA@mail.gmail.com>
References: <CAFrQyDEvVL_XEL3DtCn9npXa8H+Jxaixv7nVEzY2Sx8ROCD+RA@mail.gmail.com>
Subject: Re: [PATCH] staging: comedi: comedidev: Fixes CamelCase issue
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_18730_945995062.1473705504626"
X-Google-Token: EKDs274Fxqtd6uJZfpI0
X-Google-IP: 103.225.101.21

------=_Part_18730_945995062.1473705504626
Content-Type: multipart/alternative; 
	boundary="----=_Part_18731_1487847001.1473705504626"

------=_Part_18731_1487847001.1473705504626
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Yes,will keep that in mind the next time I am making such a change.

Thanks,
Namrata

On Monday, September 12, 2016 at 9:38:14 PM UTC+5:30, Namrata A Shettar 
wrote:
>
> This patch fixes the checkpatch.pl issue:
> -Avoid CamelCase
>
> Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
> ---
>  drivers/staging/comedi/comedidev.h | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/staging/comedi/comedidev.h 
> b/drivers/staging/comedi/comedidev.h
> index dcb6376..9d941b1 100644
> --- a/drivers/staging/comedi/comedidev.h
> +++ b/drivers/staging/comedi/comedidev.h
> @@ -582,7 +582,7 @@ int comedi_check_chanlist(struct comedi_subdevice *s,
>
>  #define RANGE(a, b)            {(a) * 1e6, (b) * 1e6, 0}
>  #define RANGE_ext(a, b)                {(a) * 1e6, (b) * 1e6, RF_EXTERNAL}
> -#define RANGE_mA(a, b)         {(a) * 1e6, (b) * 1e6, UNIT_mA}
> +#define RANGE_ma(a, b)         {(a) * 1e6, (b) * 1e6, UNIT_ma}
>  #define RANGE_unitless(a, b)   {(a) * 1e6, (b) * 1e6, 0}
>  #define BIP_RANGE(a)           {-(a) * 1e6, (a) * 1e6, 0}
>  #define UNI_RANGE(a)           {0, (a) * 1e6, 0}
> @@ -593,9 +593,9 @@ extern const struct comedi_lrange range_bipolar2_5;
>  extern const struct comedi_lrange range_unipolar10;
>  extern const struct comedi_lrange range_unipolar5;
>  extern const struct comedi_lrange range_unipolar2_5;
> -extern const struct comedi_lrange range_0_20mA;
> -extern const struct comedi_lrange range_4_20mA;
> -extern const struct comedi_lrange range_0_32mA;
> +extern const struct comedi_lrange range_0_20ma;
> +extern const struct comedi_lrange range_4_20ma;
> +extern const struct comedi_lrange range_0_32ma;
>  extern const struct comedi_lrange range_unknown;
>
>  #define range_digital          range_unipolar5
> --
> 2.7.4
>

------=_Part_18731_1487847001.1473705504626
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Yes,will keep that in mind the next time I am making such =
a change.<br><br>Thanks,<br>Namrata<br><br>On Monday, September 12, 2016 at=
 9:38:14 PM UTC+5:30, Namrata A Shettar wrote:<blockquote class=3D"gmail_qu=
ote" style=3D"margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padd=
ing-left: 1ex;"><div dir=3D"ltr">This patch fixes the <a href=3D"http://che=
ckpatch.pl" rel=3D"nofollow" target=3D"_blank" onmousedown=3D"this.href=3D&=
#39;http://www.google.com/url?q\x3dhttp%3A%2F%2Fcheckpatch.pl\x26sa\x3dD\x2=
6sntz\x3d1\x26usg\x3dAFQjCNGoRgUgHq29dhmk72L974NI3_mFug&#39;;return true;" =
onclick=3D"this.href=3D&#39;http://www.google.com/url?q\x3dhttp%3A%2F%2Fche=
ckpatch.pl\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNGoRgUgHq29dhmk72L974NI3_=
mFug&#39;;return true;">checkpatch.pl</a> issue:<br>
-Avoid CamelCase<br>
<br>
Signed-off-by: Namrata A Shettar &lt;<a href=3D"mailto:namrataashettar@gmai=
l.com" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;m=
ailto:namrataashettar@gmail.com&#39;;return true;" onclick=3D"this.href=3D&=
#39;mailto:namrataashettar@gmail.com&#39;;return true;">namrataashettar@gma=
il.com</a>&gt;<br>
---<br>
=C2=A0drivers/staging/comedi/<wbr>comedidev.h | 8 ++++----<br>
=C2=A01 file changed, 4 insertions(+), 4 deletions(-)<br>
<br>
diff --git a/drivers/staging/comedi/<wbr>comedidev.h b/drivers/staging/come=
di/<wbr>comedidev.h<br>
index dcb6376..9d941b1 100644<br>
--- a/drivers/staging/comedi/<wbr>comedidev.h<br>
+++ b/drivers/staging/comedi/<wbr>comedidev.h<br>
@@ -582,7 +582,7 @@ int comedi_check_chanlist(struct comedi_subdevice *s,<b=
r>
<br>
=C2=A0#define RANGE(a, b)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 {(a) * 1=
e6, (b) * 1e6, 0}<br>
=C2=A0#define RANGE_ext(a, b)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 {(a) * 1e6, (b) * 1e6, RF_EXTERNAL}<br>
-#define RANGE_mA(a, b)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0{(a) * 1e6, (b) * =
1e6, UNIT_mA}<br>
+#define RANGE_ma(a, b)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0{(a) * 1e6, (b) * =
1e6, UNIT_ma}<br>
=C2=A0#define RANGE_unitless(a, b)=C2=A0 =C2=A0{(a) * 1e6, (b) * 1e6, 0}<br=
>
=C2=A0#define BIP_RANGE(a)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0{-(a) * =
1e6, (a) * 1e6, 0}<br>
=C2=A0#define UNI_RANGE(a)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0{0, (a) =
* 1e6, 0}<br>
@@ -593,9 +593,9 @@ extern const struct comedi_lrange range_bipolar2_5;<br>
=C2=A0extern const struct comedi_lrange range_unipolar10;<br>
=C2=A0extern const struct comedi_lrange range_unipolar5;<br>
=C2=A0extern const struct comedi_lrange range_unipolar2_5;<br>
-extern const struct comedi_lrange range_0_20mA;<br>
-extern const struct comedi_lrange range_4_20mA;<br>
-extern const struct comedi_lrange range_0_32mA;<br>
+extern const struct comedi_lrange range_0_20ma;<br>
+extern const struct comedi_lrange range_4_20ma;<br>
+extern const struct comedi_lrange range_0_32ma;<br>
=C2=A0extern const struct comedi_lrange range_unknown;<br>
<br>
=C2=A0#define range_digital=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 range_unipola=
r5<br>
--<br>
2.7.4</div>
</blockquote></div>
------=_Part_18731_1487847001.1473705504626--

------=_Part_18730_945995062.1473705504626--

