X-GM-THRID: 6463854288984604672
Date: Mon, 11 Sep 2017 10:10:08 -0700 (PDT)
From: Srishti Sharma <srishtishar@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <7469455c-545c-4b30-af5b-5c54fc343c90@googlegroups.com>
In-Reply-To: <1504983347-2957-1-git-send-email-shreeya.patel23498@gmail.com>
References: <1504983347-2957-1-git-send-email-shreeya.patel23498@gmail.com>
Subject: Re: [PATCH v2] Staging: rtlwifi: Remove unnecessary 'out of memory'
 message.
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_15380_1241767082.1505149808416"
X-Google-Token: EPCG280FTjYCIeQ9y6w0
X-Google-IP: 122.168.5.9

------=_Part_15380_1241767082.1505149808416
Content-Type: multipart/alternative; 
	boundary="----=_Part_15381_46554799.1505149808416"

------=_Part_15381_46554799.1505149808416
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Sunday, September 10, 2017 at 12:25:54 AM UTC+5:30, Shreeya Patel wrote:
>
> This patch removes unnecessary 'out of memory' message to make 
> the code more efficient. 
>
> Problem found by checkpatch. 
>
> Signed-off-by: Shreeya Patel <shreeya.p...@gmail.com <javascript:>> 
> --- 
>
> Changes in v2: 
>   -Add a tab before the return statement. 
>
>  drivers/staging/rtlwifi/rc.c | 4 +--- 
>  1 file changed, 1 insertion(+), 3 deletions(-) 
>
> diff --git a/drivers/staging/rtlwifi/rc.c b/drivers/staging/rtlwifi/rc.c 
> index 65de0c7..779a5c6 100644 
> --- a/drivers/staging/rtlwifi/rc.c 
> +++ b/drivers/staging/rtlwifi/rc.c 
> @@ -281,10 +281,8 @@ static void *rtl_rate_alloc_sta(void *ppriv, 
>          struct rtl_rate_priv *rate_priv; 
>   
>          rate_priv = kzalloc(sizeof(*rate_priv), gfp); 
> -        if (!rate_priv) { 
> -                pr_err("Unable to allocate private rc structure\n"); 
> +        if (!rate_priv) 
>                  return NULL; 
> -        } 
>   
>          rtlpriv->rate_priv = rate_priv; 
>   
> -- 
> 2.7.4 
>

After you format your patch , open it in vim and try running this command 
:%s/\s\+$//e  
This removes trailing whitespaces , this might work for you . It works for 
me . 

Regards,
Srishti 

------=_Part_15381_46554799.1505149808416
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Sunday, September 10, 2017 at 12:25:54 AM UTC+5=
:30, Shreeya Patel wrote:<blockquote class=3D"gmail_quote" style=3D"margin:=
 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">This =
patch removes unnecessary &#39;out of memory&#39; message to make
<br>the code more efficient.
<br>
<br>Problem found by checkpatch.
<br>
<br>Signed-off-by: Shreeya Patel &lt;<a href=3D"javascript:" target=3D"_bla=
nk" gdf-obfuscated-mailto=3D"0dV1YywnAwAJ" rel=3D"nofollow" onmousedown=3D"=
this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.href=3D&#39=
;javascript:&#39;;return true;">shreeya.p...@gmail.com</a>&gt;
<br>---
<br>
<br>Changes in v2:
<br>=C2=A0 -Add a tab before the return statement.
<br>
<br>=C2=A0drivers/staging/rtlwifi/rc.c | 4 +---
<br>=C2=A01 file changed, 1 insertion(+), 3 deletions(-)
<br>
<br>diff --git a/drivers/staging/rtlwifi/rc.c b/drivers/staging/rtlwifi/rc.=
c
<br>index 65de0c7..779a5c6 100644
<br>--- a/drivers/staging/rtlwifi/rc.c
<br>+++ b/drivers/staging/rtlwifi/rc.c
<br>@@ -281,10 +281,8 @@ static void *rtl_rate_alloc_sta(void *ppriv,
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct rtl_rate_p=
riv *rate_priv;
<br>=C2=A0
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0rate_priv =3D kza=
lloc(sizeof(*rate_priv), gfp);
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (!rate_priv) {
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0pr_err(&quot;<wbr>Unable to allocate private rc =
structure\n&quot;);
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (!rate_priv)
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return NULL;
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>=C2=A0
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0rtlpriv-&gt;rate_=
priv =3D rate_priv;
<br>=C2=A0
<br>--=20
<br>2.7.4
<br></blockquote><div><br></div><div>After you format your patch , open it =
in vim and try running this command :%s/\s\+$//e =C2=A0</div><div>This remo=
ves trailing whitespaces , this might work for you . It works for me .=C2=
=A0</div><div><br></div><div>Regards,</div><div>Srishti=C2=A0<br></div></di=
v>
------=_Part_15381_46554799.1505149808416--

------=_Part_15380_1241767082.1505149808416--

