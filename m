X-GM-THRID: 6330315371322540032
X-Received: by 10.66.249.36 with SMTP id yr4mr8402791pac.16.1473971941206;
        Thu, 15 Sep 2016 13:39:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.29.220 with SMTP id w28ls4404548otw.27.gmail; Thu, 15 Sep
 2016 13:39:00 -0700 (PDT)
X-Received: by 10.157.40.120 with SMTP id h53mr8374969otd.44.1473971940811;
        Thu, 15 Sep 2016 13:39:00 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from mail-qk0-x244.google.com (mail-qk0-x244.google.com. [2607:f8b0:400d:c09::244])
        by gmr-mx.google.com with ESMTPS id l185si389446ywb.5.2016.09.15.13.39.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 13:39:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400d:c09::244 as permitted sender) client-ip=2607:f8b0:400d:c09::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400d:c09::244 as permitted sender) smtp.mailfrom=namrataashettar@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x244.google.com with SMTP id b204so4146822qkc.1
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Sep 2016 13:39:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to;
        bh=ScrBUqgiTzXAvYHxEl180dS2DBwFTrNOAFSwVyziR8Y=;
        b=mE+VdZdx/dXBbZMVSAU7twemjsnry/wZbe0GrqK3YOlSTrUpYb02DJik7IOA9a7Qnb
         s0TgHLMii5cwWQwi8DCpmx0EZkdkwsciz02iAzO1k/x006QOkN5kI52oopXJAhje5nMn
         DW+jmcTHFixiTmeHG9BDSetD8Nd1pK/mgZuK2Oje++EQl1/HEDMLQgK7OA99GmZZb7wL
         3dU0Wn70HArY02xSvdOGlpxm812cUcegEkZndV2AS6hhTwx1/QfbvrWzsyKSNDd9RbHU
         DMHXwdo79K4Ua3vaFthUspahPT4I55ofp6SFGq7hFzaJZw+duAScStpzr+SkKlNJ11mb
         6DLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=ScrBUqgiTzXAvYHxEl180dS2DBwFTrNOAFSwVyziR8Y=;
        b=kZ1CysdYPczEd3WUK89e6Ovy5pU84R19kvXSXmZYHeF0OoDKqGgsmmadp2Yl/b6yBx
         D1vVaQ01Jw0ll/rpzOF7CFOcgsKHuaujBKZZ8kiOqZSBUkOb99ME0WNOUgjhOPCT2Lr9
         dM1D9MQgWyV3gJozOB7PsKnsJi1yjwIOwE/uJ/TRqtnBkq5fcQMo3UJpslW/dQaQ32Qi
         F3XS0eklidLlyNd/VcbJBNE/x1UE54fGKTihCMVDmcHaG6ncYWLDhXDKHU0pqaVySPYY
         uuCy6PXdynm8TE6K6xiL2tE+U7pgopSGKTySHE+3kgKAEYgYxt3B8aXRbaiHq7YzeAPA
         cjTw==
X-Gm-Message-State: AE9vXwNbghAcxYWKWavKQkisqq/DMaElU1ovoNk9O/9IsHZy92AV0vNJG7swM2F4ajhnCv7/ltXWesQaC2uDGw==
X-Received: by 10.55.168.69 with SMTP id r66mr11653769qke.155.1473971940648;
 Thu, 15 Sep 2016 13:39:00 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.237.41.97 with HTTP; Thu, 15 Sep 2016 13:38:40 -0700 (PDT)
From: Namrata A Shettar <namrataashettar@gmail.com>
Date: Fri, 16 Sep 2016 02:08:40 +0530
Message-ID: <CAFrQyDHatOgFeaKSg_ML3z4hDuRHqC-pZUiwMq8vio0N507=Yw@mail.gmail.com>
Subject: [PATCH v2 2/6] staging: vt6656: main_usb: Remove unnecessary blank lines
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Malcolm Priestley <tvboxspy@gmail.com>, 
	Alison Schofield <amsfield22@gmail.com>, maomao xu <albert008.xu@gmail.com>, 
	Othmar Pasteka <pasteka@kabsi.at>, Parth Sane <laerdevstudios@gmail.com>, 
	Wolfram Sang <wsa-dev@sang-engineering.com>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary=94eb2c065742ee6ba1053c91d51e

--94eb2c065742ee6ba1053c91d51e
Content-Type: text/plain; charset=UTF-8

Remove unnecessary blank lines to fix checkpatch issue.

Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
---
 drivers/staging/vt6656/main_usb.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/staging/vt6656/main_usb.c
b/drivers/staging/vt6656/main_usb.c
index 0594828..d79f07f 100644
--- a/drivers/staging/vt6656/main_usb.c
+++ b/drivers/staging/vt6656/main_usb.c
@@ -692,7 +692,6 @@ static void vnt_bss_info_changed(struct ieee80211_hw
*hw,
        if (changed & BSS_CHANGED_BSSID && conf->bssid)
                vnt_mac_set_bssid_addr(priv, (u8 *)conf->bssid);

-
        if (changed & BSS_CHANGED_BASIC_RATES) {
                priv->basic_rates = conf->basic_rates;

@@ -814,7 +813,6 @@ static void vnt_configure(struct ieee80211_hw *hw,
                } else {
                        rx_mode &= ~(RCR_MULTICAST | RCR_BROADCAST);
                }
-
        }

        if (changed_flags & (FIF_OTHER_BSS | FIF_BCN_PRBRESP_PROMISC)) {
@@ -925,8 +923,7 @@ static const struct ieee80211_ops vnt_mac_ops = {

 int vnt_init(struct vnt_private *priv)
 {
-
        if (!(vnt_init_registers(priv)))
                return -EAGAIN;

        SET_IEEE80211_PERM_ADDR(priv->hw, priv->permanent_net_addr);

--
2.7.4

--94eb2c065742ee6ba1053c91d51e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Remove unnecessary blank lines to fix checkpatch issue.<sp=
an class=3D"gmail-im"><br><br>
Signed-off-by: Namrata A Shettar &lt;<a target=3D"_blank" href=3D"mailto:na=
mrataashettar@gmail.com">namrataashettar@gmail.com</a>&gt;<br>
---<br></span>
=C2=A0drivers/staging/vt6656/main_u<wbr>sb.c | 4 ----<br>
=C2=A01 file changed, 4 deletions(-)<span class=3D"gmail-im"><br>
<br>
diff --git a/drivers/staging/vt6656/main_<wbr>usb.c b/drivers/staging/vt665=
6/main_<wbr>usb.c<br>
index 0594828..d79f07f 100644<br>
--- a/drivers/staging/vt6656/main_<wbr>usb.c<br>
+++ b/drivers/staging/vt6656/main_<wbr>usb.c<br>
@@ -692,7 +692,6 @@ static void vnt_bss_info_changed(struct ieee80211_hw *h=
w,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (changed &amp; BSS_CHANGED_BSSID &amp;&amp; =
conf-&gt;bssid)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 vnt_mac_set_bssid_a=
ddr(priv, (u8 *)conf-&gt;bssid);<br>
<br>
-<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (changed &amp; BSS_CHANGED_BASIC_RATES) {<br=
>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 priv-&gt;basic_rate=
s =3D conf-&gt;basic_rates;<br>
<br>
@@ -814,7 +813,6 @@ static void vnt_configure(struct ieee80211_hw *hw,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 } else {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 rx_mode &amp;=3D ~(RCR_MULTICAST | RCR_BROADCAST);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
-<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (changed_flags &amp; (FIF_OTHER_BSS | FIF_BC=
N_PRBRESP_PROMISC)) {<br>
@@ -925,8 +923,7 @@ static const struct ieee80211_ops vnt_mac_ops =3D {<br>
<br>
=C2=A0int vnt_init(struct vnt_private *priv)<br>
=C2=A0{<br>
-<br></span>=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (!(vnt_init_registers(priv)))<sp=
an class=3D"gmail-im"><br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return -EAGAIN;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 SET_IEEE80211_PERM_ADDR(priv-&gt;<wbr>hw, priv-=
&gt;permanent_net_addr);</span><div><div><img src=3D"https://ssl.gstatic.co=
m/ui/v1/icons/mail/images/cleardot.gif" class=3D"gmail-CToWUd"></div></div>=
<div><br>
</div><span><font color=3D"#888888">--<br>
2.7.4</font></span></div>

--94eb2c065742ee6ba1053c91d51e--

