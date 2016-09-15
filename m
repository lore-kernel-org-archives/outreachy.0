X-GM-THRID: 6330315423850954752
X-Received: by 10.98.26.8 with SMTP id a8mr7911278pfa.4.1473971273768;
        Thu, 15 Sep 2016 13:27:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.15.19 with SMTP id x19ls1333400ioi.43.gmail; Thu, 15 Sep
 2016 13:27:53 -0700 (PDT)
X-Received: by 10.98.205.131 with SMTP id o125mr7891161pfg.12.1473971273407;
        Thu, 15 Sep 2016 13:27:53 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from mail-qk0-x242.google.com (mail-qk0-x242.google.com. [2607:f8b0:400d:c09::242])
        by gmr-mx.google.com with ESMTPS id c75si422154ywh.0.2016.09.15.13.27.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 13:27:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400d:c09::242 as permitted sender) client-ip=2607:f8b0:400d:c09::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400d:c09::242 as permitted sender) smtp.mailfrom=namrataashettar@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x242.google.com with SMTP id z143so4127555qka.3
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Sep 2016 13:27:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to;
        bh=sn72v/XJmjua94VdIPlbsOhgvjAcBDlUxqG/Gp2tKww=;
        b=T12up3HBbWJYK4yi6LksHxj5eo+UR36RGs8n/+wTEg8CatG26B3T5Mu7q/M9kcyKqZ
         D/IJw20iHGS5x1nSnbWPE0ujLmKExs687pCL0SYlrn23GAixKqmchSw1GZ9Gxm7ZsV5X
         tAOh9p6RKq2ikm5Z3wSlHwdSt1LiGTQRJ9eL8/e/oTkguYlSVs1FlOFSO3O6gC3Owk3A
         KxX62FC9dyRaysKBcvfZ9r/J5Bs64LV7YQ1PJoZUSsT+CVs0W62pFhh9v34e228bRJlf
         PrAbpn4lS4GgBt8u67NfwNKnD/BsvsP2IS/wPMvVJLdUDfWsX6W4QPMSpWp4QEAueFcZ
         PRjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=sn72v/XJmjua94VdIPlbsOhgvjAcBDlUxqG/Gp2tKww=;
        b=EYKGWY3oBuz2Q+LsTcKpeWFbhqxefu+UiCWLwewKGF7fcmyOCUIKnaWqYzxMfwndLt
         NpyvC7B9W7EiaZUtLpnd6v5lD1aLeuKr00iVtlsAcqgdvdVhKJ23Sbu5oimVeJLPvB9i
         cSOy96tAZRCSaxw+332GRwm7TdgikfZcK4shJ8qqaKX/XBmJIE9yr+o7Qm/Th1zCYVfR
         uTsOp+h18oz6fCsKVV6b+T8LPXuBr6JyjLzhfTyGgUVHhdW/fkia4/l6Zx4Gp+UwyUVs
         2lkwnsJjART5CoD781qk5u2wPhYQeAcplX1jMcSYnGxtK7x/DNqxoFNfM+Yy0I9Xo+kt
         HoKw==
X-Gm-Message-State: AE9vXwNZM1KbzyUjkxadsPCL5/uNzM9VGESGhzDiAfai1RNfgwkRHU7r55C18+1GrWgC3rR5v4HnpEOK9DHqww==
X-Received: by 10.55.94.4 with SMTP id s4mr2811013qkb.314.1473971273205; Thu,
 15 Sep 2016 13:27:53 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.237.41.97 with HTTP; Thu, 15 Sep 2016 13:27:32 -0700 (PDT)
From: Namrata A Shettar <namrataashettar@gmail.com>
Date: Fri, 16 Sep 2016 01:57:32 +0530
Message-ID: <CAFrQyDFttaD5iPr=CCcVXuVxGWaApnL1BYJwXh-fM0o=H1ufkw@mail.gmail.com>
Subject: [PATCH v2 5/6] staging: vt6656: rxtx: Remove unneccessary blank lines
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Malcolm Priestley <tvboxspy@gmail.com>, 
	Alison Schofield <amsfield22@gmail.com>, maomao xu <albert008.xu@gmail.com>, 
	Othmar Pasteka <pasteka@kabsi.at>, Parth Sane <laerdevstudios@gmail.com>, 
	Wolfram Sang <wsa-dev@sang-engineering.com>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary=001a114e632a2610d8053c91ae92

--001a114e632a2610d8053c91ae92
Content-Type: text/plain; charset=UTF-8

Remove unnecessary blank lines to fix checkpatch issue.

Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
---
 drivers/staging/vt6656/rxtx.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/staging/vt6656/rxtx.c b/drivers/staging/vt6656/rxtx.c
index aa59e7f..a8553e3a 100644
--- a/drivers/staging/vt6656/rxtx.c
+++ b/drivers/staging/vt6656/rxtx.c
@@ -263,7 +263,6 @@ static u16 vnt_mac_hdr_pos(struct vnt_usb_send_context
*tx_context,
 static u16 vnt_rxtx_datahead_g(struct vnt_usb_send_context *tx_context,
                               struct vnt_tx_datahead_g *buf)
 {
-
        struct vnt_private *priv = tx_context->priv;
        struct ieee80211_hdr *hdr =
                                (struct ieee80211_hdr
*)tx_context->skb->data;
@@ -687,7 +686,6 @@ static u16 vnt_generate_tx_parameter(struct
vnt_usb_send_context *tx_context,
        struct vnt_mic_hdr **mic_hdr, u32 need_mic,
        bool need_rts)
 {
-
        if (tx_context->pkt_type == PK_TYPE_11GB ||
            tx_context->pkt_type == PK_TYPE_11GA) {
                if (need_rts) {
@@ -774,14 +772,12 @@ static void vnt_fill_txkey(struct
vnt_usb_send_context *tx_context,
                if (ieee80211_has_a4(hdr->frame_control))
                        ether_addr_copy(mic_hdr->addr4, hdr->addr4);

-
                memcpy(key_buffer, tx_key->key, WLAN_KEY_LEN_CCMP);

                break;
      }
-
 }

int vnt_tx_packet(struct vnt_private *priv, struct sk_buff *skb)

--
2.7.4

--001a114e632a2610d8053c91ae92
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Remove unnecessary blank lines to fix checkpatch issue.<br=
><div>
<br>
Signed-off-by: Namrata A Shettar &lt;<a href=3D"mailto:namrataashettar@gmai=
l.com" target=3D"_blank">namrataashettar@gmail.com</a>&gt;<br>
---<br>
=C2=A0drivers/staging/vt6656/rxtx.c | 4 ----<br>
=C2=A01 file changed, 4 deletions(-)<br>
<br>
diff --git a/drivers/staging/vt6656/rxtx.<wbr>c b/drivers/staging/vt6656/rx=
tx.<wbr>c<br>
index aa59e7f..a8553e3a 100644<br>
--- a/drivers/staging/vt6656/rxtx.<wbr>c<br>
+++ b/drivers/staging/vt6656/rxtx.<wbr>c<br>
@@ -263,7 +263,6 @@ static u16 vnt_mac_hdr_pos(struct vnt_usb_send_context =
*tx_context,<br>
=C2=A0static u16 vnt_rxtx_datahead_g(struct vnt_usb_send_context *tx_contex=
t,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0struct vnt_tx_datahead_g *buf)<br>
=C2=A0{<br>
-<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 struct vnt_private *priv =3D tx_context-&gt;pri=
v;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 struct ieee80211_hdr *hdr =3D<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (struct ieee80211_hdr *)tx_context-&=
gt;skb-&gt;data;<br>
@@ -687,7 +686,6 @@ static u16 vnt_generate_tx_parameter(stru<wbr>ct vnt_us=
b_send_context *tx_context,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 struct vnt_mic_hdr **mic_hdr, u32 need_mic,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 bool need_rts)<br>
=C2=A0{<br>
-<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (tx_context-&gt;pkt_type =3D=3D PK_TYPE_11GB=
 ||<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 tx_context-&gt;pkt_type =3D=3D PK=
_TYPE_11GA) {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (need_rts) {<br>
@@ -774,14 +772,12 @@ static void vnt_fill_txkey(struct vnt_usb_send_contex=
t *tx_context,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (ieee80211_has_a=
4(hdr-&gt;frame_c<wbr>ontrol))<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 ether_addr_copy(mic_hdr-&gt;addr4<wbr>, hdr-&gt;addr4);<br>
<br>
-<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 memcpy(key_buffer, =
tx_key-&gt;key, WLAN_KEY_LEN_CCMP);<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 break;<br> =C2=A0 =
=C2=A0 =C2=A0 }<br>
-<br>
=C2=A0}<br><br>int vnt_tx_packet(struct vnt_private *priv, struct sk_buff *=
skb)<div><div><img src=3D"https://ssl.gstatic.com/ui/v1/icons/mail/images/c=
leardot.gif"></div></div><div><br>
</div><span><font color=3D"#888888">--<br>
2.7.4</font></span><br></div></div>

--001a114e632a2610d8053c91ae92--

