X-GM-THRID: 6330315440417406976
X-Received: by 10.98.130.206 with SMTP id w197mr3947002pfd.13.1473891418296;
        Wed, 14 Sep 2016 15:16:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.32.17 with SMTP id n17ls1014136ota.40.gmail; Wed, 14 Sep
 2016 15:16:57 -0700 (PDT)
X-Received: by 10.237.40.5 with SMTP id r5mr3983772qtd.20.1473891417935;
        Wed, 14 Sep 2016 15:16:57 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from mail-qk0-x243.google.com (mail-qk0-x243.google.com. [2607:f8b0:400d:c09::243])
        by gmr-mx.google.com with ESMTPS id d206si53980ywh.3.2016.09.14.15.16.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Sep 2016 15:16:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400d:c09::243 as permitted sender) client-ip=2607:f8b0:400d:c09::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400d:c09::243 as permitted sender) smtp.mailfrom=namrataashettar@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x243.google.com with SMTP id b204so2069357qkc.1
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Sep 2016 15:16:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to;
        bh=bJnLZk98W5xV7w8X9AwzbHSe2EYrNa1RJac8koygaEo=;
        b=S9eCshfWGQI4UtG57dyHdlXNqqHWPoW0jrPeHvcKxs1Zu6JZ4I11AIZ5yOXFqxs6nY
         xPaBqiOWSx/vS+FBK4Pg3dDLjTWQvL5ckfdU6jQTlf98xBSiiRIfC8lFJiduVwubjkUk
         orZVH58PpzO5dSjFWtbKHQlvA47qCZwwW7DqLV/3qxkPyHU6kTHGbgxNDA+UM6jk3TWA
         JmuPTYu7fIE82tXppMbKN0CyCqRA1mN3AXdiRPiGmXtGim6dC2EwRRwzkCT/PJKoDgaO
         K6WCAlI3MUFwm8EbkMJSLEHPIuWz3VZbqm/hYXEkaTZgBWEEE+YYBeVXNeNBI7ZntORG
         z6Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=bJnLZk98W5xV7w8X9AwzbHSe2EYrNa1RJac8koygaEo=;
        b=c7A73SnLal3IBZOwcJ1hUQbHKDck+KCZxlFHHkr+dlB8ziNdIUwEHHdCK0WjY6QK9h
         lGIT6cYjGI9vyZWZhpUas2MST444EKH6oZY5Nk8VKHI8FUxNJpXGC4+Nr9G8ZE08GQZJ
         uO92er+2bafE5kLlO+LZ1Jmo6EhOwkF3gaAycMiQ65NQQG0gGam+VMCj3GvnsOQhMNye
         ZT6gxD18gKXDL7O33SlxjNPTLd/9mVQGg4zbhnm9VQ/CfjDUugUFvC0Q1xhSexyoFsrw
         sVuT0aIi+XBm3qCtYWZ/cZbwUUzWFxQod9oWByfWiQku84ImulCy3yQgq+T86Xu/7Xdd
         D1jw==
X-Gm-Message-State: AE9vXwMwEB/TePT8N00B0t2Shoicrzh62stGERp5UH5ycY1rJA6qjOOc1LZdWfUbeDXoL6frBNZ9DRzhx+yOJw==
X-Received: by 10.55.8.7 with SMTP id 7mr6430017qki.284.1473891417720; Wed, 14
 Sep 2016 15:16:57 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.237.41.97 with HTTP; Wed, 14 Sep 2016 15:16:37 -0700 (PDT)
From: Namrata A Shettar <namrataashettar@gmail.com>
Date: Thu, 15 Sep 2016 03:46:37 +0530
Message-ID: <CAFrQyDGAP0UTFhwaidjYrcbijgtoP7jFWRxa2GZiouZ4dnzWcw@mail.gmail.com>
Subject: [PATCH 6/6] staging: vt6656: rxtx: Fix multiple assignments
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Malcolm Priestley <tvboxspy@gmail.com>, 
	Alison Schofield <amsfield22@gmail.com>, maomao xu <albert008.xu@gmail.com>, 
	Othmar Pasteka <pasteka@kabsi.at>, Parth Sane <laerdevstudios@gmail.com>, 
	Wolfram Sang <wsa-dev@sang-engineering.com>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary=001a114c8aa8640c62053c7f1686

--001a114c8aa8640c62053c7f1686
Content-Type: text/plain; charset=UTF-8

This patch fixes checkpatch issue of multiple assignments.

Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
---
 drivers/staging/vt6656/rxtx.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/vt6656/rxtx.c b/drivers/staging/vt6656/rxtx.c
index a8553e3a..647220d 100644
--- a/drivers/staging/vt6656/rxtx.c
+++ b/drivers/staging/vt6656/rxtx.c
@@ -166,8 +166,9 @@ static __le16 vnt_get_rtscts_rsvtime_le(struct
vnt_private *priv,
        } else if (rsv_type == 2) {
                rts_time = vnt_get_frame_time(priv->preamble_type, pkt_type,
                        20, priv->top_ofdm_basic_rate);
-               cts_time = ack_time = vnt_get_frame_time(priv->pream
ble_type,
+               cts_time = vnt_get_frame_time(priv->preamble_type,
                        pkt_type, 14, priv->top_ofdm_basic_rate);
+               ack_time = cts_time;
        } else if (rsv_type == 3) {
                cts_time = vnt_get_frame_time(priv->preamble_type, pkt_type,
                        14, priv->top_cck_basic_rate);

--
2.7.4

--001a114c8aa8640c62053c7f1686
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">This patch fixes checkpatch issue of multiple assignments.=
<br>
<br>
Signed-off-by: Namrata A Shettar &lt;<a target=3D"_blank" href=3D"mailto:na=
mrataashettar@gmail.com">namrataashettar@gmail.com</a>&gt;<br>
---<br>
=C2=A0drivers/staging/vt6656/rxtx.c | 3 ++-<br>
=C2=A01 file changed, 2 insertions(+), 1 deletion(-)<br>
<br>
diff --git a/drivers/staging/vt6656/rxtx.<wbr>c b/drivers/staging/vt6656/rx=
tx.<wbr>c<br>
index a8553e3a..647220d 100644<br>
--- a/drivers/staging/vt6656/rxtx.<wbr>c<br>
+++ b/drivers/staging/vt6656/rxtx.<wbr>c<br>
@@ -166,8 +166,9 @@ static __le16 vnt_get_rtscts_rsvtime_le(stru<wbr>ct vnt=
_private *priv,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 } else if (rsv_type =3D=3D 2) {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 rts_time =3D vnt_ge=
t_frame_time(priv-&gt;pream<wbr>ble_type, pkt_type,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 20, priv-&gt;top_ofdm_basic_rate);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0cts_time =3D ack_ti=
me =3D vnt_get_frame_time(priv-&gt;pream<wbr>ble_type,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0cts_time =3D vnt_ge=
t_frame_time(priv-&gt;pream<wbr>ble_type,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 pkt_type, 14, priv-&gt;top_ofdm_basic_rate);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ack_time =3D cts_ti=
me;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 } else if (rsv_type =3D=3D 3) {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 cts_time =3D vnt_ge=
t_frame_time(priv-&gt;pream<wbr>ble_type, pkt_type,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 14, priv-&gt;top_cck_basic_rate);<div><div><img src=3D"https://s=
sl.gstatic.com/ui/v1/icons/mail/images/cleardot.gif" class=3D"gmail-CToWUd"=
></div></div><div><br>
</div><span><font color=3D"#888888">--<br>
2.7.4</font></span></div>

--001a114c8aa8640c62053c7f1686--

