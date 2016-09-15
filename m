X-GM-THRID: 6330315371322540032
X-Received: by 10.237.59.8 with SMTP id p8mr7951984qte.1.1473971247969;
        Thu, 15 Sep 2016 13:27:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.40.231 with SMTP id s94ls4199410ota.17.gmail; Thu, 15 Sep
 2016 13:27:27 -0700 (PDT)
X-Received: by 10.157.34.41 with SMTP id o38mr7848963ota.34.1473971247639;
        Thu, 15 Sep 2016 13:27:27 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from mail-qk0-x242.google.com (mail-qk0-x242.google.com. [2607:f8b0:400d:c09::242])
        by gmr-mx.google.com with ESMTPS id c75si422154ywh.0.2016.09.15.13.27.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 13:27:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400d:c09::242 as permitted sender) client-ip=2607:f8b0:400d:c09::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400d:c09::242 as permitted sender) smtp.mailfrom=namrataashettar@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x242.google.com with SMTP id z143so4127555qka.3
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Sep 2016 13:27:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to;
        bh=pWfLRw4R1gi6yenxNb5TCZY+H0zLBuwWPhM5g0L2qwg=;
        b=upTftm+ijycGNdnsgaHseDlDjUfcGbAAYJN8PGQ5IH+1otfU59nm+c+nQDJXEzAipg
         hHrSnVKhOmkKLvZpjqXxvNlZhbfAoeFLGWYA9E8tfyh849JKThgnun3ypZKRgucPdAAD
         pDS50FabMewwopJdPtvlts8pO415sX+YyJktgflTL8/H872k4swi8z6aeKBI7sSINtj9
         8TqaY9Xtd7++mQ0IT9s9e6pu6etv+YF2vfk2U8HMxWtiqs8pGNwa7IXi/XlfMhFROfo/
         133FoUk777GXBymzEwjuMoDM5mxVCfbzo34nOv7BLworb22MwWakk3g7EeMK41Yfziou
         cqLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=pWfLRw4R1gi6yenxNb5TCZY+H0zLBuwWPhM5g0L2qwg=;
        b=NwMJxFxq0+NHEv7KwoWEdEVWZVqTGuZvDHzfVia4ODix6PTgkrmMl6S6lvDvNFE3cZ
         xtdG2iv8TyC4FPKsneOEKNBrmeSumBb4cFAde87cfrM6iyoSNpHLla9kRNcHboCkIPX4
         ZAElQCoZ9XPLZOOQx5XLqb0gfLYlwSKPht7w3QnJJGfM0zwUU1O24Bpbi8j5gD9QUQeX
         /BDjIP4mYqVA5XiKHpSdg6vZSRDz++AcZXcGNxgyy0LlWF2mzfp36BEYg0sovNavppXv
         MA8saKb1ZUlBKzfAjxYnOom7TPtCkVi8h53wCNso2LV3orMoJK0qJC646orvgpn8q0n4
         YtLA==
X-Gm-Message-State: AE9vXwMrRn+jVKQKkReGhKq43aONuURWirTSblM1fufXP1zGLHWWnZnC6tUsYSSChztyEfUFASpGwejvMScsow==
X-Received: by 10.55.187.194 with SMTP id l185mr11249109qkf.82.1473971247462;
 Thu, 15 Sep 2016 13:27:27 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.237.41.97 with HTTP; Thu, 15 Sep 2016 13:27:07 -0700 (PDT)
From: Namrata A Shettar <namrataashettar@gmail.com>
Date: Fri, 16 Sep 2016 01:57:07 +0530
Message-ID: <CAFrQyDFJrBz7+U6dryPOTELHKSA2r-J0ohqRJsu+tfJCfMw+5A@mail.gmail.com>
Subject: [PATCH v2 2/6] staging: vt6656: main_usb: Remove unnecessary blank lines
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Malcolm Priestley <tvboxspy@gmail.com>, 
	Alison Schofield <amsfield22@gmail.com>, maomao xu <albert008.xu@gmail.com>, 
	Othmar Pasteka <pasteka@kabsi.at>, Parth Sane <laerdevstudios@gmail.com>, 
	Wolfram Sang <wsa-dev@sang-engineering.com>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary=94eb2c042faa9d440e053c91ac7e

--94eb2c042faa9d440e053c91ac7e
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

--94eb2c042faa9d440e053c91ac7e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Remove unnecessary blank lines to fix checkpatch issue.<br=
><br>
Signed-off-by: Namrata A Shettar &lt;<a href=3D"mailto:namrataashettar@gmai=
l.com" target=3D"_blank">namrataashettar@gmail.com</a>&gt;<br>
---<br>
=C2=A0drivers/staging/vt6656/main_u<wbr>sb.c | 4 ----<br>
=C2=A01 file changed, 4 deletions(-)<br>
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
-<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (!(vnt_init_registers(priv)))<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return -EAGAIN;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 SET_IEEE80211_PERM_ADDR(priv-&gt;<wbr>hw, priv-=
&gt;permanent_net_addr);<div><div><img class=3D"gmail-CToWUd" src=3D"https:=
//ssl.gstatic.com/ui/v1/icons/mail/images/cleardot.gif"></div></div><div><b=
r>
</div><span><font color=3D"#888888">--<br>
2.7.4</font></span><br></div>

--94eb2c042faa9d440e053c91ac7e--

