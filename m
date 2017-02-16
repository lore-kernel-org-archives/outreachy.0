X-GM-THRID: 6387814559590121472
Date: Thu, 16 Feb 2017 13:15:13 -0800 (PST)
From: SIMRAN SINGHAL <singhalsimran0@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org
Message-Id: <f93df0da-f4a8-47f1-a858-e7256152a633@googlegroups.com>
In-Reply-To: <20170216210249.GA28497@singhal-Inspiron-5558>
References: <20170216210249.GA28497@singhal-Inspiron-5558>
Subject: Re: [PATCH 2/3] staging: rtl8192u: Fixed 'tabstop' coding style
 warnings
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_12580_2062380589.1487279713591"
X-Google-Token: EOGsmMUFYfCto5eUUxY0
X-Google-IP: 14.139.82.6

------=_Part_12580_2062380589.1487279713591
Content-Type: multipart/alternative; 
	boundary="----=_Part_12581_1779220621.1487279713591"

------=_Part_12581_1779220621.1487279713591
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Friday, February 17, 2017 at 2:32:55 AM UTC+5:30, SIMRAN SINGHAL wrote:
>
> Replace a mix of tabs and spaces indentation by tabs only. 
>
> Fixed checkpatch warning "Statements should start on a tabstop" in 
> rtl8192u module. 
>
> Signed-off-by: simran singhal <singhalsimran0@gmail.com> 
> --- 
>  drivers/staging/rtl8192u/ieee80211/ieee80211_wx.c | 2 +- 
>  1 file changed, 1 insertion(+), 1 deletion(-) 
>
> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_wx.c 
> b/drivers/staging/rtl8192u/ieee80211/ieee80211_wx.c 
> index 563d7fe..814ab5a 100644 
> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_wx.c 
> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_wx.c 
> @@ -666,7 +666,7 @@ int ieee80211_wx_set_encode_ext(struct 
> ieee80211_device *ieee, 
>          if (ieee->set_security) 
>                  ieee->set_security(ieee->dev, &sec); 
>   
> -         if (ieee->reset_on_keychange && 
> +        if (ieee->reset_on_keychange && 
>              ieee->iw_mode != IW_MODE_INFRA && 
>              ieee->reset_port && ieee->reset_port(dev)) { 
>                  IEEE80211_DEBUG_WX("%s: reset_port failed\n", dev->name); 
> -- 
> 2.7.4 
>
> ok, I will fix it and resend it again. 
 

------=_Part_12581_1779220621.1487279713591
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Friday, February 17, 2017 at 2:32:55 AM UTC+5:3=
0, SIMRAN SINGHAL wrote:<blockquote class=3D"gmail_quote" style=3D"margin: =
0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">Replac=
e a mix of tabs and spaces indentation by tabs only.
<br>
<br>Fixed checkpatch warning &quot;Statements should start on a tabstop&quo=
t; in
<br>rtl8192u module.
<br>
<br>Signed-off-by: simran singhal &lt;<a href=3D"mailto:singhalsimran0@gmai=
l.com" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;m=
ailto:singhalsimran0@gmail.com&#39;;return true;" onclick=3D"this.href=3D&#=
39;mailto:singhalsimran0@gmail.com&#39;;return true;">singhalsimran0@gmail.=
com</a>&gt;
<br>---
<br>=C2=A0drivers/staging/rtl8192u/<wbr>ieee80211/ieee80211_wx.c | 2 +-
<br>=C2=A01 file changed, 1 insertion(+), 1 deletion(-)
<br>
<br>diff --git a/drivers/staging/rtl8192u/<wbr>ieee80211/ieee80211_wx.c b/d=
rivers/staging/rtl8192u/<wbr>ieee80211/ieee80211_wx.c
<br>index 563d7fe..814ab5a 100644
<br>--- a/drivers/staging/rtl8192u/<wbr>ieee80211/ieee80211_wx.c
<br>+++ b/drivers/staging/rtl8192u/<wbr>ieee80211/ieee80211_wx.c
<br>@@ -666,7 +666,7 @@ int ieee80211_wx_set_encode_ext(<wbr>struct ieee802=
11_device *ieee,
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (ieee-&gt;set_=
security)
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ieee-&gt;set_<wbr>security(ieee-&gt;dev, &=
amp;sec);
<br>=C2=A0
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (ieee-&gt;reset_on=
_keychange &amp;&amp;
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (ieee-&gt;reset_on_=
keychange &amp;&amp;
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0iee=
e-&gt;iw_mode !=3D IW_MODE_INFRA &amp;&amp;
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0iee=
e-&gt;reset_port &amp;&amp; ieee-&gt;reset_port(dev)) {
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0IEEE80211_<wbr>DEBUG_WX(&quot;%s: reset_po=
rt failed\n&quot;, dev-&gt;name);
<br>--=20
<br>2.7.4
<br>
<br></blockquote><div>ok, I will fix it and resend it again. <br>=C2=A0</di=
v></div>
------=_Part_12581_1779220621.1487279713591--

------=_Part_12580_2062380589.1487279713591--

