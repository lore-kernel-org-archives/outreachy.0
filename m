X-GM-THRID: 6802949681377705984
Date: Wed, 11 Mar 2020 13:17:42 -0700 (PDT)
From: Deepak Varma <mh12gx2825@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <92b5d69a-d4e6-480d-82ef-3a01b893fbd0@googlegroups.com>
In-Reply-To: <20200311135859.5626-1-shreeya.patel23498@gmail.com>
References: <20200311135859.5626-1-shreeya.patel23498@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8723bs: rtw_mlme: Remove
 unnecessary conditions
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_2258_2082745030.1583957862208"
X-Google-Token: EOaOpfMF1XaFRG1cgvo0
X-Google-IP: 103.240.207.69

------=_Part_2258_2082745030.1583957862208
Content-Type: multipart/alternative; 
	boundary="----=_Part_2259_2054745081.1583957862209"

------=_Part_2259_2054745081.1583957862209
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Wednesday, 11 March 2020 19:29:13 UTC+5:30, Shreeya Patel wrote:
>
> Remove unnecessary if and else conditions since both are leading to the 
> initialization of "phtpriv->ampdu_enable" with the same value. 
>
> Signed-off-by: Shreeya Patel <shreeya....@gmail.com <javascript:>> 
> --- 
>  drivers/staging/rtl8723bs/core/rtw_mlme.c | 10 +++------- 
>  1 file changed, 3 insertions(+), 7 deletions(-) 
>
> diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme.c 
> b/drivers/staging/rtl8723bs/core/rtw_mlme.c 
> index 71fcb466019a..48e9faf27321 100644 
> --- a/drivers/staging/rtl8723bs/core/rtw_mlme.c 
> +++ b/drivers/staging/rtl8723bs/core/rtw_mlme.c 
> @@ -2772,13 +2772,9 @@ void rtw_update_ht_cap(struct adapter *padapter, u8 
> *pie, uint ie_len, u8 channe 
>   
>          /* maybe needs check if ap supports rx ampdu. */ 
>          if (!(phtpriv->ampdu_enable) && pregistrypriv->ampdu_enable == 1) 
> { 
> -                if (pregistrypriv->wifi_spec == 1) { 
> -                        /* remove this part because testbed AP should 
> disable RX AMPDU */ 
> -                        /* phtpriv->ampdu_enable = false; */ 
> -                        phtpriv->ampdu_enable = true; 
> -                } else { 
> -                        phtpriv->ampdu_enable = true; 
> -                } 
> +                /* remove this part because testbed AP should disable RX 
> AMPDU */ 
> +                /* phtpriv->ampdu_enable = false; */ 
> +                phtpriv->ampdu_enable = true; 
>          } else if (pregistrypriv->ampdu_enable == 2) { 
>                  /* remove this part because testbed AP should disable RX 
> AMPDU */ 
>                  /* phtpriv->ampdu_enable = true; */ 
> -- 
> 2.17.1 
>
>  Juia, can you comment if the 2 commented lines [with '+' sign now] may 
also be removed to further simplify the code?

Deepak.

------=_Part_2259_2054745081.1583957862209
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Wednesday, 11 March 2020 19:29:13 UTC+5:30, Shr=
eeya Patel  wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;marg=
in-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">Remove unnec=
essary if and else conditions since both are leading to the
<br>initialization of &quot;phtpriv-&gt;ampdu_enable&quot; with the same va=
lue.
<br>
<br>Signed-off-by: Shreeya Patel &lt;<a href=3D"javascript:" target=3D"_bla=
nk" gdf-obfuscated-mailto=3D"BqJuvxYYAgAJ" rel=3D"nofollow" onmousedown=3D"=
this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.href=3D&#39=
;javascript:&#39;;return true;">shreeya....@gmail.com</a>&gt;
<br>---
<br>=C2=A0drivers/staging/rtl8723bs/<wbr>core/rtw_mlme.c | 10 +++-------
<br>=C2=A01 file changed, 3 insertions(+), 7 deletions(-)
<br>
<br>diff --git a/drivers/staging/rtl8723bs/<wbr>core/rtw_mlme.c b/drivers/s=
taging/rtl8723bs/<wbr>core/rtw_mlme.c
<br>index 71fcb466019a..48e9faf27321 100644
<br>--- a/drivers/staging/rtl8723bs/<wbr>core/rtw_mlme.c
<br>+++ b/drivers/staging/rtl8723bs/<wbr>core/rtw_mlme.c
<br>@@ -2772,13 +2772,9 @@ void rtw_update_ht_cap(struct adapter *padapter,=
 u8 *pie, uint ie_len, u8 channe
<br>=C2=A0
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* maybe needs ch=
eck if ap supports rx ampdu. */
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (!(phtpriv-&gt=
;ampdu_enable) &amp;&amp; pregistrypriv-&gt;ampdu_enable =3D=3D 1) {
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0if (pregistrypriv-&gt;wifi_spec =3D=3D 1) {
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
/* remove this part because testbed AP should disable RX AMPDU */
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
/* phtpriv-&gt;ampdu_enable =3D false; */
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
<wbr>phtpriv-&gt;ampdu_enable =3D true;
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0} else {
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
<wbr>phtpriv-&gt;ampdu_enable =3D true;
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0/* remove this part because testbed AP should di=
sable RX AMPDU */
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0/* phtpriv-&gt;ampdu_enable =3D false; */
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0phtpriv-&gt;<wbr>ampdu_enable =3D true;
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0} else if (pregis=
trypriv-&gt;ampdu_enable =3D=3D 2) {
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* remove this part because testbed AP sho=
uld disable RX AMPDU */
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* phtpriv-&gt;ampdu_enable =3D true; */
<br>--=20
<br>2.17.1
<br>
<br></blockquote><div>=C2=A0Juia, can you comment if the 2 commented lines =
[with &#39;+&#39; sign now] may also be removed to further simplify the cod=
e?</div><div><br></div><div>Deepak.<br></div></div>
------=_Part_2259_2054745081.1583957862209--

------=_Part_2258_2082745030.1583957862208--

