X-GM-THRID: 6330315423850954752
X-Received: by 10.66.148.129 with SMTP id ts1mr3759263pab.13.1473891414567;
        Wed, 14 Sep 2016 15:16:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.48.1 with SMTP id w1ls722040iow.4.gmail; Wed, 14 Sep 2016
 15:16:54 -0700 (PDT)
X-Received: by 10.98.91.7 with SMTP id p7mr3972268pfb.6.1473891414139;
        Wed, 14 Sep 2016 15:16:54 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from mail-qt0-x242.google.com (mail-qt0-x242.google.com. [2607:f8b0:400d:c0d::242])
        by gmr-mx.google.com with ESMTPS id w124si59072ywc.4.2016.09.14.15.16.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Sep 2016 15:16:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400d:c0d::242 as permitted sender) client-ip=2607:f8b0:400d:c0d::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400d:c0d::242 as permitted sender) smtp.mailfrom=namrataashettar@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qt0-x242.google.com with SMTP id 11so998398qtc.3
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Sep 2016 15:16:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to;
        bh=skuN/aiOx4h4qMTR0CJLqbRijPMfQJv0rZr1wQb3UIU=;
        b=iH5faYkRgT1qXlZCF+35vZHANco3ph8JdO9vQFLS+WsmaX8Qwy05Cn4AXn/QZsq2yi
         UKhhMhmcZhEGJ+J7rUVfHhE+F3/RXyw47ZrMr2Hu2OMA6f7fJ51mgBfS7SYHK2DxoLRt
         IVt9e+YmYQQoFGQbWvqH0mZaux5R5Dsv3CGUboidbu19ohFmnHxzbO8puvB5eP1njzkC
         4cTh+zZplc55D/0ojeUbiShi7qo/dQ3vpbMFwNQkVQ1bcipk6RHjitOFyDkdV5P7h8uo
         gZeyxlAHwRwclu4HsLXhbYWkErczO+RToGnQIQ9bng1HR65EcS+83qrfDw2TxXhM/Nhj
         Z3fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=skuN/aiOx4h4qMTR0CJLqbRijPMfQJv0rZr1wQb3UIU=;
        b=iJrASZUb5948YZf3HPhNjJ3kUdCLbNbTU8oi6CZwDwUFJBqzCb4olRaPKqX8FE3XxU
         4s5fzlA+YvSXABjW+8I3yTOuOlguk1QVlXsaxLzanKMLDSUD2MtcvlhGFdKq7Prj8pVQ
         pUK8nzl3sUbJ63cJRylavD5oy1UHYCSpERevQZStqixm+Zt3NszRrTjX3d9UrHHRWIrH
         SR16yvjZvzGjnNmkY3ID+d1jsPI1/Upu+k3glcLR7tsDehW8qxFDTNEcw4tIfC5olqLs
         6Av/TPt+mASpvysp9wqMiELnHx1jQWez/mpb9IzKjQbtjSPQQcCk6pKemrDSFK4sSSdu
         O2pQ==
X-Gm-Message-State: AE9vXwPD50OOrjBPG1ExJnws5r6it086pPsNjUrS7dhamVtedWuqHeEVfTeUMZOB0p8KjKL6aduFq8z71uoGaw==
X-Received: by 10.200.44.75 with SMTP id e11mr6174780qta.9.1473891413899; Wed,
 14 Sep 2016 15:16:53 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.237.41.97 with HTTP; Wed, 14 Sep 2016 15:16:33 -0700 (PDT)
From: Namrata A Shettar <namrataashettar@gmail.com>
Date: Thu, 15 Sep 2016 03:46:33 +0530
Message-ID: <CAFrQyDGHJz60G3pbffKPO35ndEnoGyiBKWg6eekk9DuvUbA6Lw@mail.gmail.com>
Subject: [PATCH 5/6] staging: vt6656: rxtx: Remove unneccessary blank lines
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Malcolm Priestley <tvboxspy@gmail.com>, 
	Alison Schofield <amsfield22@gmail.com>, maomao xu <albert008.xu@gmail.com>, 
	Othmar Pasteka <pasteka@kabsi.at>, Parth Sane <laerdevstudios@gmail.com>, 
	Wolfram Sang <wsa-dev@sang-engineering.com>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary=001a1143184629c360053c7f167e

--001a1143184629c360053c7f167e
Content-Type: text/plain; charset=UTF-8

This patch fixes checkpatch issue, removing unneccessary blank lines.

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

--001a1143184629c360053c7f167e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">This patch fixes checkpatch issue, removing unneccessary b=
lank lines.<br>
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
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 break;<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 }<br>
-<br>
=C2=A0}<br><br>int vnt_tx_packet(struct vnt_private *priv, struct sk_buff *=
skb)<div><div><img src=3D"https://ssl.gstatic.com/ui/v1/icons/mail/images/c=
leardot.gif" class=3D"gmail-CToWUd"></div></div><div><br>
</div><span><font color=3D"#888888">--<br>
2.7.4</font></span><br></div>

--001a1143184629c360053c7f167e--

