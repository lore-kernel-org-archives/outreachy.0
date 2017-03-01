X-GM-THRID: 6392252135167229952
Date: Wed, 1 Mar 2017 13:32:50 -0800 (PST)
From: Georgiana Chelu <georgiana.chelu93@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: gregkh@linuxfoundation.org
Message-Id: <3b25b19d-132d-44b4-b9dd-418cf3a1dbf8@googlegroups.com>
In-Reply-To: <20170228200257.GA14816@fireworks>
References: <20170228200257.GA14816@fireworks>
Subject: Re: [PATCH] staging:rtl8192u: Check memory allocation
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1751_2005472279.1488403970172"
X-Google-Token: EIL83MUFyWStNDqVadk0
X-Google-IP: 84.117.92.113

------=_Part_1751_2005472279.1488403970172
Content-Type: multipart/alternative; 
	boundary="----=_Part_1752_1437706910.1488403970172"

------=_Part_1752_1437706910.1488403970172
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi Julia,

Thank you for your time spent to explain me what is the better approach. I 
tried to
take into account your advice and to make use of the existing code. Please, 
let me
know if am I on the right path.



On Tuesday, 28 February 2017 22:02:59 UTC+2, Georgiana Chelu wrote:
>
> Check if the allocation is not successful and 
> return the error code -ENOMEM. 
>
> Signed-off-by: Georgiana Rodica Chelu <georgiana.chelu93@gmail.com> 
> --- 
>  drivers/staging/rtl8192u/r8192U_core.c | 4 ++++ 
>  1 file changed, 4 insertions(+) 
>
> diff --git a/drivers/staging/rtl8192u/r8192U_core.c 
> b/drivers/staging/rtl8192u/r8192U_core.c 
> index b631990..04025b6 100644 
> --- a/drivers/staging/rtl8192u/r8192U_core.c 
> +++ b/drivers/staging/rtl8192u/r8192U_core.c 
> @@ -1689,9 +1689,13 @@ static short rtl8192_usb_initendpoints(struct 
> net_device *dev) 
>  #ifndef JACKSON_NEW_RX 
>          for (i = 0; i < (MAX_RX_URB + 1); i++) { 
>                  priv->rx_urb[i] = usb_alloc_urb(0, GFP_KERNEL); 
> +                if (!priv->rx_urb[i]) 
> +                        return -ENOMEM; 
>   
>                  priv->rx_urb[i]->transfer_buffer = 
>                          kmalloc(RX_URB_SIZE, GFP_KERNEL); 
> +                if (!priv->rx_urb[i]->transfer_buffer) 
> +                        return -ENOMEM; 
>   
>                  priv->rx_urb[i]->transfer_buffer_length = RX_URB_SIZE; 
>          } 
> -- 
> 2.7.4 
>
>
------=_Part_1752_1437706910.1488403970172
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Julia,<br><br>Thank you for your time spent to explain =
me what is the better approach. I tried to<br>take into account your advice=
 and to make use of the existing code. Please, let me<br>know if am I on th=
e right path.<br><br><br><br>On Tuesday, 28 February 2017 22:02:59 UTC+2, G=
eorgiana Chelu  wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;=
margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">Check if=
 the allocation is not successful and
<br>return the error code -ENOMEM.
<br>
<br>Signed-off-by: Georgiana Rodica Chelu &lt;<a href=3D"mailto:georgiana.c=
helu93@gmail.com" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.hr=
ef=3D&#39;mailto:georgiana.chelu93@gmail.com&#39;;return true;" onclick=3D"=
this.href=3D&#39;mailto:georgiana.chelu93@gmail.com&#39;;return true;">geor=
giana.chelu93@gmail.com</a>&gt;
<br>---
<br>=C2=A0drivers/staging/rtl8192u/<wbr>r8192U_core.c | 4 ++++
<br>=C2=A01 file changed, 4 insertions(+)
<br>
<br>diff --git a/drivers/staging/rtl8192u/<wbr>r8192U_core.c b/drivers/stag=
ing/rtl8192u/<wbr>r8192U_core.c
<br>index b631990..04025b6 100644
<br>--- a/drivers/staging/rtl8192u/<wbr>r8192U_core.c
<br>+++ b/drivers/staging/rtl8192u/<wbr>r8192U_core.c
<br>@@ -1689,9 +1689,13 @@ static short rtl8192_usb_initendpoints(<wbr>stru=
ct net_device *dev)
<br>=C2=A0#ifndef JACKSON_NEW_RX
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0for (i =3D 0; i &=
lt; (MAX_RX_URB + 1); i++) {
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0priv-&gt;rx_urb[<wbr>i] =3D usb_alloc_urb(=
0, GFP_KERNEL);
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0if (!priv-&gt;rx_urb[i])
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
<wbr>return -ENOMEM;
<br>=C2=A0
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0priv-&gt;rx_urb[<wbr>i]-&gt;transfer_buffe=
r =3D
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>kmalloc(RX_URB_SIZE, GFP_KERNEL);
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0if (!priv-&gt;rx_urb[i]-&gt;transfer_<wbr>buffer=
)
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
<wbr>return -ENOMEM;
<br>=C2=A0
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0priv-&gt;rx_urb[<wbr>i]-&gt;transfer_buffe=
r_length =3D RX_URB_SIZE;
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>--=20
<br>2.7.4
<br>
<br></blockquote></div>
------=_Part_1752_1437706910.1488403970172--

------=_Part_1751_2005472279.1488403970172--

