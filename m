X-GM-THRID: 6330624598541860864
Date: Thu, 15 Sep 2016 12:35:06 -0700 (PDT)
From: Rehas Sachdeva <aquannie@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: oleg.drokin@intel.com, andreas.dilger@intel.com, jsimmons@infradead.org,
	gregkh@linuxfoundation.org
Message-Id: <be530b86-d52d-451b-9e76-ff930f0bf943@googlegroups.com>
In-Reply-To: <20160915192249.GA4550@toblerone>
References: <20160915192249.GA4550@toblerone>
Subject: Re: [PATCH v2] staging: lustre: Remove unnecessary return capture
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_742_1988818163.1473968106411"
X-Google-Token: EOrv674Fa4nTqPBhEME0
X-Google-IP: 14.139.82.6

------=_Part_742_1988818163.1473968106411
Content-Type: multipart/alternative; 
	boundary="----=_Part_743_1145530392.1473968106411"

------=_Part_743_1145530392.1473968106411
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Please ignore this for v2 as i forgot to include the changelog.

On Friday, September 16, 2016 at 12:53:01 AM UTC+5:30, Rehas Sachdeva wrote:
>
> Instead of storing the return value of a function call into a variable and 
> then returning it, we can club the two into a single return statement. 
> This 
> change was made using the following semantic patch by Coccinelle: 
>
> @@ 
> local idexpression ret; 
> expression e; 
> @@ 
>
> -ret = 
> +return 
>      e; 
> -return ret; 
>
> Signed-off-by: Rehas Sachdeva <aquannie@gmail.com> 
> --- 
>  drivers/staging/lustre/lustre/mdc/mdc_request.c | 5 ++--- 
>  1 file changed, 2 insertions(+), 3 deletions(-) 
>
> diff --git a/drivers/staging/lustre/lustre/mdc/mdc_request.c 
> b/drivers/staging/lustre/lustre/mdc/mdc_request.c 
> index 5bf95f9..cf94926 100644 
> --- a/drivers/staging/lustre/lustre/mdc/mdc_request.c 
> +++ b/drivers/staging/lustre/lustre/mdc/mdc_request.c 
> @@ -2488,9 +2488,8 @@ static int mdc_set_info_async(const struct lu_env 
> *env, 
>                  } 
>                  spin_unlock(&imp->imp_lock); 
>   
> -                rc = do_set_info_async(imp, MDS_SET_INFO, 
> LUSTRE_MDS_VERSION, 
> -                                       keylen, key, vallen, val, set); 
> -                return rc; 
> +                return do_set_info_async(imp, MDS_SET_INFO, 
> LUSTRE_MDS_VERSION, 
> +                                         keylen, key, vallen, val, set); 
>          } 
>          if (KEY_IS(KEY_SPTLRPC_CONF)) { 
>                  sptlrpc_conf_client_adapt(exp->exp_obd); 
> -- 
> 2.7.4 
>
>
------=_Part_743_1145530392.1473968106411
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Please ignore this for v2 as i forgot to include the chang=
elog.<br><br>On Friday, September 16, 2016 at 12:53:01 AM UTC+5:30, Rehas S=
achdeva wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-l=
eft: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">Instead of stori=
ng the return value of a function call into a variable and
<br>then returning it, we can club the two into a single return statement. =
This
<br>change was made using the following semantic patch by Coccinelle:
<br>
<br>@@
<br>local idexpression ret;
<br>expression e;
<br>@@
<br>
<br>-ret =3D
<br>+return
<br>=C2=A0 =C2=A0 =C2=A0e;
<br>-return ret;
<br>
<br>Signed-off-by: Rehas Sachdeva &lt;<a href=3D"mailto:aquannie@gmail.com"=
 target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;mailto:=
aquannie@gmail.com&#39;;return true;" onclick=3D"this.href=3D&#39;mailto:aq=
uannie@gmail.com&#39;;return true;">aquannie@gmail.com</a>&gt;
<br>---
<br>=C2=A0drivers/staging/lustre/<wbr>lustre/mdc/mdc_request.c | 5 ++---
<br>=C2=A01 file changed, 2 insertions(+), 3 deletions(-)
<br>
<br>diff --git a/drivers/staging/lustre/<wbr>lustre/mdc/mdc_request.c b/dri=
vers/staging/lustre/<wbr>lustre/mdc/mdc_request.c
<br>index 5bf95f9..cf94926 100644
<br>--- a/drivers/staging/lustre/<wbr>lustre/mdc/mdc_request.c
<br>+++ b/drivers/staging/lustre/<wbr>lustre/mdc/mdc_request.c
<br>@@ -2488,9 +2488,8 @@ static int mdc_set_info_async(const struct lu_env=
 *env,
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0spin_unlock(&amp;<wbr>imp-&gt;imp_lock);
<br>=C2=A0
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0rc =3D do_set_info_async(imp, MDS_SET_INFO, LUST=
RE_MDS_VERSION,
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
keylen, key, vallen, val, set);
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0return rc;
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0return do_set_info_async(imp, MDS_SET_INFO, LUST=
RE_MDS_VERSION,
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 keylen, key, vallen, val, set);
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (KEY_IS(KEY_SP=
TLRPC_CONF)) {
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0sptlrpc_conf_<wbr>client_adapt(exp-&gt;exp=
_obd);
<br>--=20
<br>2.7.4
<br>
<br></blockquote></div>
------=_Part_743_1145530392.1473968106411--

------=_Part_742_1988818163.1473968106411--

