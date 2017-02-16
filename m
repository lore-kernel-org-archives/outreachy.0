X-GM-THRID: 6387793530273660928
Date: Thu, 16 Feb 2017 11:44:07 -0800 (PST)
From: SIMRAN SINGHAL <singhalsimran0@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <5fb34db6-a0f0-433f-8d40-49002332e38e@googlegroups.com>
In-Reply-To: <20170216194114.GA17810@singhal-Inspiron-5558>
References: <20170216194114.GA17810@singhal-Inspiron-5558>
Subject: Re:
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_11950_1164770189.1487274247344"
X-Google-Token: EIeCmMUFIOM6SHLlZBU0
X-Google-IP: 14.139.82.6

------=_Part_11950_1164770189.1487274247344
Content-Type: multipart/alternative; 
	boundary="----=_Part_11951_1763538018.1487274247344"

------=_Part_11951_1763538018.1487274247344
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Friday, February 17, 2017 at 1:11:19 AM UTC+5:30, SIMRAN SINGHAL wrote:
>
> linux-kernel@vger.kernel.org 
> Bcc: 
> Subject: [PATCH 1/3] staging: rtl8192u: Replace symbolic permissions with 
>  octal permissions 
> Reply-To: 
>
> WARNING: Symbolic permissions 'S_IRUGO | S_IWUSR' are not preferred. 
> Consider using octal permissions '0644'. 
> This warning is detected by checkpatch.pl 
>
> Signed-off-by: simran singhal <singhalsimran0@gmail.com> 
> --- 
>  drivers/staging/rtl8192u/ieee80211/ieee80211_module.c | 2 +- 
>  1 file changed, 1 insertion(+), 1 deletion(-) 
>
> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_module.c 
> b/drivers/staging/rtl8192u/ieee80211/ieee80211_module.c 
> index a9a92d8..2ebc320 100644 
> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_module.c 
> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_module.c 
> @@ -283,7 +283,7 @@ int __init ieee80211_debug_init(void) 
>                                  " proc directory\n"); 
>                  return -EIO; 
>          } 
> -        e = proc_create("debug_level", S_IRUGO | S_IWUSR, 
> +        e = proc_create("debug_level", 0644, 
>                                ieee80211_proc, &fops); 
>          if (!e) { 
>                  remove_proc_entry(DRV_NAME, init_net.proc_net); 
> -- 
> 2.7.4 
>
>
Sorry, Ignore this. 

------=_Part_11951_1763538018.1487274247344
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Friday, February 17, 2017 at 1:11:19 AM UTC+5:3=
0, SIMRAN SINGHAL wrote:<blockquote class=3D"gmail_quote" style=3D"margin: =
0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;"><a hre=
f=3D"mailto:linux-kernel@vger.kernel.org" target=3D"_blank" rel=3D"nofollow=
" onmousedown=3D"this.href=3D&#39;mailto:linux-kernel@vger.kernel.org&#39;;=
return true;" onclick=3D"this.href=3D&#39;mailto:linux-kernel@vger.kernel.o=
rg&#39;;return true;">linux-kernel@vger.kernel.org</a>
<br>Bcc:=20
<br>Subject: [PATCH 1/3] staging: rtl8192u: Replace symbolic permissions wi=
th
<br>=C2=A0octal permissions
<br>Reply-To:=20
<br>
<br>WARNING: Symbolic permissions &#39;S_IRUGO | S_IWUSR&#39; are not prefe=
rred.
<br>Consider using octal permissions &#39;0644&#39;.
<br>This warning is detected by <a href=3D"http://checkpatch.pl" target=3D"=
_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;http://www.google.=
com/url?q\x3dhttp%3A%2F%2Fcheckpatch.pl\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dA=
FQjCNGoRgUgHq29dhmk72L974NI3_mFug&#39;;return true;" onclick=3D"this.href=
=3D&#39;http://www.google.com/url?q\x3dhttp%3A%2F%2Fcheckpatch.pl\x26sa\x3d=
D\x26sntz\x3d1\x26usg\x3dAFQjCNGoRgUgHq29dhmk72L974NI3_mFug&#39;;return tru=
e;">checkpatch.pl</a>
<br>
<br>Signed-off-by: simran singhal &lt;<a href=3D"mailto:singhalsimran0@gmai=
l.com" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;m=
ailto:singhalsimran0@gmail.com&#39;;return true;" onclick=3D"this.href=3D&#=
39;mailto:singhalsimran0@gmail.com&#39;;return true;">singhalsimran0@gmail.=
com</a>&gt;
<br>---
<br>=C2=A0drivers/staging/rtl8192u/<wbr>ieee80211/ieee80211_module.c | 2 +-
<br>=C2=A01 file changed, 1 insertion(+), 1 deletion(-)
<br>
<br>diff --git a/drivers/staging/rtl8192u/<wbr>ieee80211/ieee80211_module.c=
 b/drivers/staging/rtl8192u/<wbr>ieee80211/ieee80211_module.c
<br>index a9a92d8..2ebc320 100644
<br>--- a/drivers/staging/rtl8192u/<wbr>ieee80211/ieee80211_module.c
<br>+++ b/drivers/staging/rtl8192u/<wbr>ieee80211/ieee80211_module.c
<br>@@ -283,7 +283,7 @@ int __init ieee80211_debug_init(void)
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0&quot; proc dire=
ctory\n&quot;);
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return -EIO;
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0e =3D proc_create(&quo=
t;debug_level&quot;, S_IRUGO | S_IWUSR,
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0e =3D proc_create(&quo=
t;debug_level&quot;, 0644,
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 =C2=A0 =C2=A0 =C2=A0ieee80211_proc, &amp;fops);
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (!e) {
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0remove_proc_<wbr>entry(DRV_NAME, init_net.=
proc_net);
<br>--=20
<br>2.7.4
<br>
<br></blockquote><div><br>Sorry, Ignore this. <br></div></div>
------=_Part_11951_1763538018.1487274247344--

------=_Part_11950_1164770189.1487274247344--

