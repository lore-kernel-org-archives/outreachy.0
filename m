X-GM-THRID: 6256054516784824320
Date: Sun, 28 Feb 2016 01:09:53 -0800 (PST)
From: sandhya bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <ca3f6ce0-ac74-4496-baa0-2d982d4434e9@googlegroups.com>
In-Reply-To: <20160227112641.GA5408@sandhya>
References: <20160227112641.GA5408@sandhya>
Subject: Re: [PATCH 1/2] Staging: usb: Use PTR_ERR_OR_ZERO instead of
 if(IS_ERR(...)) + PTR_ERR.
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_2633_2110816683.1456650593759"
X-Google-Token: EOHyyrYFyi75jMPsx640
X-Google-IP: 59.161.35.134

------=_Part_2633_2110816683.1456650593759
Content-Type: multipart/alternative; 
	boundary="----=_Part_2634_966798064.1456650593760"

------=_Part_2634_966798064.1456650593760
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit


Please ignore this patchset. I was not in  driver/staging.


On Sunday, February 28, 2016 at 12:56:39 AM UTC+5:30, sandhya bankar wrote:
>
> Use PTR_ERR_OR_ZERO instead of if(IS_ERR(...)) + PTR_ERR. 
>
> Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com> 
> --- 
>  drivers/usb/phy/phy-qcom-8x16-usb.c | 5 +---- t
>  1 file changed, 1 insertion(+), 4 deletions(-) 
>
> diff --git a/drivers/usb/phy/phy-qcom-8x16-usb.c 
> b/drivers/usb/phy/phy-qcom-8x16-usb.c 
> index 579587d..dc97abe 100644 
> --- a/drivers/usb/phy/phy-qcom-8x16-usb.c 
> +++ b/drivers/usb/phy/phy-qcom-8x16-usb.c 
> @@ -291,10 +291,7 @@ static int phy_8x16_read_devicetree(struct phy_8x16 
> *qphy) 
>   
>          qphy->switch_gpio = devm_gpiod_get_optional(dev, "switch", 
>                                                     GPIOD_OUT_LOW); 
> -        if (IS_ERR(qphy->switch_gpio)) 
> -                return PTR_ERR(qphy->switch_gpio); 
> - 
> -        return 0; 
> +        PTR_ERR_OR_ZERO(qphy->switch_gpio); 
>  } 
>   
>  static int phy_8x16_reboot_notify(struct notifier_block *this, 
> -- 
> 1.8.3.4 
>
>
------=_Part_2634_966798064.1456650593760
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br>Please ignore this patchset. I was not in=C2=A0 driver=
/staging.<br><br><br>On Sunday, February 28, 2016 at 12:56:39 AM UTC+5:30, =
sandhya bankar wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;m=
argin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">Use PTR_E=
RR_OR_ZERO instead of if(IS_ERR(...)) + PTR_ERR.
<br>
<br>Signed-off-by: Sandhya Bankar &lt;<a href=3D"mailto:bankarsandhya512@gm=
ail.com" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39=
;mailto:bankarsandhya512@gmail.com&#39;;return true;" onclick=3D"this.href=
=3D&#39;mailto:bankarsandhya512@gmail.com&#39;;return true;">bankarsandhya5=
12@gmail.com</a>&gt;
<br>---
<br>=C2=A0drivers/usb/phy/phy-qcom-<wbr>8x16-usb.c | 5 +----
t<br>=C2=A01 file changed, 1 insertion(+), 4 deletions(-)
<br>
<br>diff --git a/drivers/usb/phy/phy-qcom-<wbr>8x16-usb.c b/drivers/usb/phy=
/phy-qcom-<wbr>8x16-usb.c
<br>index 579587d..dc97abe 100644
<br>--- a/drivers/usb/phy/phy-qcom-<wbr>8x16-usb.c
<br>+++ b/drivers/usb/phy/phy-qcom-<wbr>8x16-usb.c
<br>@@ -291,10 +291,7 @@ static int phy_8x16_read_devicetree(<wbr>struct ph=
y_8x16 *qphy)
<br>=C2=A0
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0qphy-&gt;switch_g=
pio =3D devm_gpiod_get_optional(dev, &quot;switch&quot;,
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 =C2=A0 GPIOD_OUT_LOW);
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (IS_ERR(qphy-&gt;sw=
itch_gpio))
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0return PTR_ERR(qphy-&gt;switch_gpio);
<br>-
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return 0;
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0PTR_ERR_OR_ZERO(qphy-<=
wbr>&gt;switch_gpio);
<br>=C2=A0}
<br>=C2=A0
<br>=C2=A0static int phy_8x16_reboot_notify(struct notifier_block *this,
<br>--=20
<br>1.8.3.4
<br>
<br></blockquote></div>
------=_Part_2634_966798064.1456650593760--

------=_Part_2633_2110816683.1456650593759--

