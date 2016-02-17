X-GM-THRID: 6251919067627651072
Date: Wed, 17 Feb 2016 11:32:36 -0800 (PST)
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <ab395860-1f7c-4b6b-b98a-7239fceb0c25@googlegroups.com>
In-Reply-To: <20160216205817.GA16090@janani-Inspiron-3521>
References: <20160216205817.GA16090@janani-Inspiron-3521>
Subject: Re: [PATCH] staging: wilc1000: Use kmalloc_array instead of kmalloc
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_600_849884905.1455737556531"
X-Google-Token: ENSVk7YFdfixgnXKlwE0
X-Google-IP: 2620:cc:8000:483:5635:30ff:fe6b:610b

------=_Part_600_849884905.1455737556531
Content-Type: multipart/alternative; 
	boundary="----=_Part_601_389891560.1455737556532"

------=_Part_601_389891560.1455737556532
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Tuesday, 16 February 2016 10:59:00 UTC-5, Janani Ravichandran wrote:
>
> Use kmalloc_array instead of kmalloc for arrays to prevent integer 
> overflows. 
>
> Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com> 
> --- 
>  drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 2 +- 
>  1 file changed, 1 insertion(+), 1 deletion(-) 
>
> diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c 
> b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c 
> index 81a2ee9..7554cd4 100644 
> --- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c 
> +++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c 
> @@ -664,7 +664,7 @@ static int scan(struct wiphy *wiphy, struct 
> cfg80211_scan_request *request) 
>                  PRINT_D(CFG80211_DBG, "Number of SSIDs %d\n", 
> request->n_ssids); 
>   
>                  if (request->n_ssids >= 1) { 
> -                        strHiddenNetwork.net_info = 
> kmalloc(request->n_ssids * sizeof(struct hidden_network), GFP_KERNEL); 
> +                        strHiddenNetwork.net_info = 
> kmalloc_array(request->n_ssids, sizeof(struct hidden_network), 
> GFP_KERNEL); 
>                          strHiddenNetwork.n_ssids = request->n_ssids; 
>   
>   
> -- 
>

Greg, please ignore this patch as I've sent a patchset for the same issue 
after considering Julia's suggestion. 

Janani.

> 2.5.0 
>
>
------=_Part_601_389891560.1455737556532
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"color: rgb(102, 102, 102);"><br><br>On Tues=
day, 16 February 2016 10:59:00 UTC-5, Janani Ravichandran  wrote:</span><bl=
ockquote class=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex;border=
-left: 1px #ccc solid;padding-left: 1ex;"><span style=3D"color: rgb(102, 10=
2, 102);">Use kmalloc_array instead of kmalloc for arrays to prevent intege=
r
<br>overflows.
<br>
<br>Signed-off-by: Janani Ravichandran &lt;<a href=3D"mailto:janani.rvchndr=
n@gmail.com" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D=
&#39;mailto:janani.rvchndrn@gmail.com&#39;;return true;" onclick=3D"this.hr=
ef=3D&#39;mailto:janani.rvchndrn@gmail.com&#39;;return true;">janani.rvchnd=
rn@gmail.com</a>&gt;
<br>---
<br>=C2=A0drivers/staging/wilc1000/</span><wbr><span style=3D"color: rgb(10=
2, 102, 102);">wilc_wfi_cfgoperations.c | 2 +-
<br>=C2=A01 file changed, 1 insertion(+), 1 deletion(-)
<br>
<br>diff --git a/drivers/staging/wilc1000/</span><wbr><span style=3D"color:=
 rgb(102, 102, 102);">wilc_wfi_cfgoperations.c b/drivers/staging/wilc1000/<=
/span><wbr><span style=3D"color: rgb(102, 102, 102);">wilc_wfi_cfgoperation=
s.c
<br>index 81a2ee9..7554cd4 100644
<br>--- a/drivers/staging/wilc1000/</span><wbr><span style=3D"color: rgb(10=
2, 102, 102);">wilc_wfi_cfgoperations.c
<br>+++ b/drivers/staging/wilc1000/</span><wbr><span style=3D"color: rgb(10=
2, 102, 102);">wilc_wfi_cfgoperations.c
<br>@@ -664,7 +664,7 @@ static int scan(struct wiphy *wiphy, struct cfg8021=
1_scan_request *request)
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0PRINT_D(</span><wbr><span style=3D"color: =
rgb(102, 102, 102);">CFG80211_DBG, &quot;Number of SSIDs %d\n&quot;, reques=
t-&gt;n_ssids);
<br>=C2=A0
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (request-&gt;n_ssids &gt;=3D 1) {
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
</span><wbr><span style=3D"color: rgb(102, 102, 102);">strHiddenNetwork.net=
_info =3D kmalloc(request-&gt;n_ssids * sizeof(struct hidden_network), GFP_=
KERNEL);
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
</span><wbr><span style=3D"color: rgb(102, 102, 102);">strHiddenNetwork.net=
_info =3D kmalloc_array(request-&gt;n_</span><wbr><span style=3D"color: rgb=
(102, 102, 102);">ssids, sizeof(struct hidden_network), GFP_KERNEL);
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0</span><wbr><span style=3D"color: rgb(102, 102, 102);">strHiddenNetwo=
rk.n_ssids =3D request-&gt;n_ssids;
<br>=C2=A0
<br>=C2=A0
<br>--=20
</span><br></blockquote><div><br>Greg, please ignore this patch as I&#39;ve=
 sent a patchset for the same issue after considering Julia&#39;s suggestio=
n. <br><br>Janani.<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">2.=
5.0
<br>
<br></blockquote></div>
------=_Part_601_389891560.1455737556532--

------=_Part_600_849884905.1455737556531--

