X-GM-THRID: 6330315371322540032
X-Received: by 10.107.25.147 with SMTP id 141mr4356027ioz.17.1473891402295;
        Wed, 14 Sep 2016 15:16:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.46.36 with SMTP id q33ls1960763otb.33.gmail; Wed, 14 Sep
 2016 15:16:42 -0700 (PDT)
X-Received: by 10.157.43.4 with SMTP id o4mr4045114otb.38.1473891401991;
        Wed, 14 Sep 2016 15:16:41 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from mail-qk0-x244.google.com (mail-qk0-x244.google.com. [2607:f8b0:400d:c09::244])
        by gmr-mx.google.com with ESMTPS id l185si39049ywb.5.2016.09.14.15.16.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Sep 2016 15:16:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400d:c09::244 as permitted sender) client-ip=2607:f8b0:400d:c09::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400d:c09::244 as permitted sender) smtp.mailfrom=namrataashettar@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x244.google.com with SMTP id n66so2084166qkf.0
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Sep 2016 15:16:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to;
        bh=vmchAX1KcD3Aa2rMR2c3lZFS5t3bo44xsDzNlSImuMM=;
        b=N/fdRw9XkwYinezLav/DyAtTi/PAOY9E5GSjZMuIbfshlIPohyut9UFaXF6F918OzM
         bDyhbzjWcxLkZxhwOYpCJweJVAXPCXUqkj1hjjZ1sYyxHj7u4u6DtW1pIhk4q8NYjFic
         K7Lp/wX0W2sDFqpOq1cL/PNN9ZWFweZmjmNyRbjgxzbzx3Nx/y+Jj3f+23xGJ2/zKTuc
         ulsgQCYPHj1zNkSXokSkVXeXXocFLsYT3Ud+B/aVJZWo47OmgnudSdEl4T4MTm5vAtDd
         56qYrlGmbdbs8ShMJRiptMFPA1XB1mLkLvTHiEBxvqCCDZwsKPSgtaJJ2x816d3L6wbA
         urBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=vmchAX1KcD3Aa2rMR2c3lZFS5t3bo44xsDzNlSImuMM=;
        b=h2c3MokHZ8CyTsievyjQsXpyzSoFLnJdjdIhUVm7awVpPiIH3W3KywfooBwEzwl6kr
         0wr1LYXrvBaK1HDQCgAF0Q0yVE/+ag7wqVW2MaISTlmdMXkCtieZBfdzb+gwZdIBH1v6
         L8ESXoHPV0OhojfZngHfpsb2EHH4mlBuhXu0mlbhCIXCrN5cpWImjbqr3Jtdf/d8jjVL
         cUz2OT+sNtQJ7lg7zOUkgx0eb/18tx4k33G+tCH/KKhzZB01mFSIffCUDSYrMDHTGnTk
         U8FXnXqyQf66YLvSR1rKJCXal9n83bACPHCOGVlVxToLQ+V3oSNaAbaS+HSlDYyitR5q
         k+yA==
X-Gm-Message-State: AE9vXwNy8dIsRHwllM4rLZA3ffcy0+fpi9oQaKRsxvwKE+ljtjF6mDi47e1/sYIZnIN+oATG4rUAx2qRCBazFQ==
X-Received: by 10.55.98.200 with SMTP id w191mr5970152qkb.154.1473891401804;
 Wed, 14 Sep 2016 15:16:41 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.237.41.97 with HTTP; Wed, 14 Sep 2016 15:16:21 -0700 (PDT)
From: Namrata A Shettar <namrataashettar@gmail.com>
Date: Thu, 15 Sep 2016 03:46:21 +0530
Message-ID: <CAFrQyDHKq8Ktv05E5zpQfiDfQGgceZu5B19WXF1bdhJT=w6tYg@mail.gmail.com>
Subject: [PATCH 2/6] staging: vt6656: main_usb: Remove unnecessary blank lines
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Malcolm Priestley <tvboxspy@gmail.com>, 
	Alison Schofield <amsfield22@gmail.com>, maomao xu <albert008.xu@gmail.com>, 
	Othmar Pasteka <pasteka@kabsi.at>, Parth Sane <laerdevstudios@gmail.com>, 
	Wolfram Sang <wsa-dev@sang-engineering.com>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary=94eb2c05726c7130a0053c7f1532

--94eb2c05726c7130a0053c7f1532
Content-Type: text/plain; charset=UTF-8

This patch resolves checkpatch issue of unnecessary blank lines.

Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
---
 drivers/staging/vt6656/main_usb.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

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
-       if (!(vnt_init_registers(priv)))
+        if (!(vnt_init_registers(priv)))
                return -EAGAIN;

        SET_IEEE80211_PERM_ADDR(priv->hw, priv->permanent_net_addr);

--
2.7.4

--94eb2c05726c7130a0053c7f1532
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">This patch resolves checkpatch issue of unnecessary blank =
lines.<br>
<br>
Signed-off-by: Namrata A Shettar &lt;<a href=3D"mailto:namrataashettar@gmai=
l.com" target=3D"_blank">namrataashettar@gmail.com</a>&gt;<br>
---<br>
=C2=A0drivers/staging/vt6656/main_u<wbr>sb.c | 5 +----<br>
=C2=A01 file changed, 1 insertion(+), 4 deletions(-)<br>
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
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0if (!(vnt_init_registers(priv)))<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (!(vnt_init_registers(priv)))<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return -EAGAIN;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 SET_IEEE80211_PERM_ADDR(priv-&gt;<wbr>hw, priv-=
&gt;permanent_net_addr);<div><div><img src=3D"https://ssl.gstatic.com/ui/v1=
/icons/mail/images/cleardot.gif" class=3D"gmail-CToWUd"></div></div><div><b=
r>
</div><span><font color=3D"#888888">--<br>
2.7.4</font></span></div>

--94eb2c05726c7130a0053c7f1532--

