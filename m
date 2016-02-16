X-GM-THRID: 6251851704411619328
Date: Tue, 16 Feb 2016 03:41:48 -0800 (PST)
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: linux-wireless@vger.kernel.org, devel@driverdev.osuosl.org
Message-Id: <70b9a7cc-a1c7-4a7d-9a40-b71cbbdea99b@googlegroups.com>
In-Reply-To: <20160216163652.GA10221@janani-Inspiron-3521>
References: <20160216163652.GA10221@janani-Inspiron-3521>
Subject: Re: [PATCH] staging: wilc1000: Remove trailing whitespace errors
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_4816_2070989938.1455622908276"
X-Google-Token: EPyVjLYF1BNktQA61P00
X-Google-IP: 72.231.208.13

------=_Part_4816_2070989938.1455622908276
Content-Type: multipart/alternative; 
	boundary="----=_Part_4817_408377983.1455622908277"

------=_Part_4817_408377983.1455622908277
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Tuesday, 16 February 2016 06:37:36 UTC-5, Janani Ravichandran wrote:
>
> Remove trailing whitespace checkpatch errors. 
>
> Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com> 
> --- 
>  drivers/staging/wilc1000/host_interface.c | 2 +- 
>  drivers/staging/wilc1000/linux_mon.c      | 2 +- 
>  2 files changed, 2 insertions(+), 2 deletions(-) 
>
> diff --git a/drivers/staging/wilc1000/host_interface.c 
> b/drivers/staging/wilc1000/host_interface.c 
> index d1eedfb..04337c7 100644 
> --- a/drivers/staging/wilc1000/host_interface.c 
> +++ b/drivers/staging/wilc1000/host_interface.c 
> @@ -3352,7 +3352,7 @@ static s32 host_int_get_assoc_res_info(struct 
> wilc_vif *vif, 
>                  PRINT_ER("Failed to send association response config 
> packet\n"); 
>                  return -EINVAL; 
>          } 
> -         
> + 
>          *pu32RcvdAssocRespInfoLen = wid.size; 
>          return result; 
>  } 
> diff --git a/drivers/staging/wilc1000/linux_mon.c 
> b/drivers/staging/wilc1000/linux_mon.c 
> index 21f35d7..9fcb497 100644 
> --- a/drivers/staging/wilc1000/linux_mon.c 
> +++ b/drivers/staging/wilc1000/linux_mon.c 
> @@ -302,7 +302,7 @@ struct net_device *WILC_WFI_init_mon_interface(const 
> char *name, struct net_devi 
>          struct WILC_WFI_mon_priv *priv; 
>   
>          /*If monitor interface is already initialized, return it*/ 
> -        if (wilc_wfi_mon) 
> +        if (wilc_wfi_mon) 
>                  return wilc_wfi_mon; 
>   
>          wilc_wfi_mon = alloc_etherdev(sizeof(struct WILC_WFI_mon_priv)); 
> -- 
>

I see that someone else has sent a patch for the same issue. Please ignore 
this.

Janani. 

> 2.5.0 
>
>
------=_Part_4817_408377983.1455622908277
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Tuesday, 16 February 2016 06:37:36 UTC-5, Janan=
i Ravichandran  wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;=
margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">Remove t=
railing whitespace checkpatch errors.
<br>
<br>Signed-off-by: Janani Ravichandran &lt;<a href=3D"mailto:janani.rvchndr=
n@gmail.com" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D=
&#39;mailto:janani.rvchndrn@gmail.com&#39;;return true;" onclick=3D"this.hr=
ef=3D&#39;mailto:janani.rvchndrn@gmail.com&#39;;return true;">janani.rvchnd=
rn@gmail.com</a>&gt;
<br>---
<br>=C2=A0drivers/staging/wilc1000/<wbr>host_interface.c | 2 +-
<br>=C2=A0drivers/staging/wilc1000/<wbr>linux_mon.c =C2=A0 =C2=A0 =C2=A0| 2=
 +-
<br>=C2=A02 files changed, 2 insertions(+), 2 deletions(-)
<br>
<br>diff --git a/drivers/staging/wilc1000/<wbr>host_interface.c b/drivers/s=
taging/wilc1000/<wbr>host_interface.c
<br>index d1eedfb..04337c7 100644
<br>--- a/drivers/staging/wilc1000/<wbr>host_interface.c
<br>+++ b/drivers/staging/wilc1000/<wbr>host_interface.c
<br>@@ -3352,7 +3352,7 @@ static s32 host_int_get_assoc_res_info(<wbr>struc=
t wilc_vif *vif,
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0PRINT_ER(&quot;<wbr>Failed to send associa=
tion response config packet\n&quot;);
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return -EINVAL;
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
<br>+
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0*<wbr>pu32RcvdAss=
ocRespInfoLen =3D wid.size;
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return result;
<br>=C2=A0}
<br>diff --git a/drivers/staging/wilc1000/<wbr>linux_mon.c b/drivers/stagin=
g/wilc1000/<wbr>linux_mon.c
<br>index 21f35d7..9fcb497 100644
<br>--- a/drivers/staging/wilc1000/<wbr>linux_mon.c
<br>+++ b/drivers/staging/wilc1000/<wbr>linux_mon.c
<br>@@ -302,7 +302,7 @@ struct net_device *WILC_WFI_init_mon_interface(<wbr=
>const char *name, struct net_devi
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct WILC_WFI_m=
on_priv *priv;
<br>=C2=A0
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/*If monitor inte=
rface is already initialized, return it*/
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (wilc_wfi_mon)=20
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (wilc_wfi_mon)
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return wilc_wfi_mon;
<br>=C2=A0
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0wilc_wfi_mon =3D =
alloc_etherdev(sizeof(struct WILC_WFI_mon_priv));
<br>--=20
<br></blockquote><div><br>I see that someone else has sent a patch for the =
same issue. Please ignore this.<br><br>Janani. <br></div><blockquote class=
=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex;border-left: 1px #cc=
c solid;padding-left: 1ex;">2.5.0
<br>
<br></blockquote></div>
------=_Part_4817_408377983.1455622908277--

------=_Part_4816_2070989938.1455622908276--

