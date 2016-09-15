X-GM-THRID: 6330658449775394816
X-Received: by 10.36.89.85 with SMTP id p82mr3749480itb.0.1473971281390;
        Thu, 15 Sep 2016 13:28:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.105.148 with SMTP id e142ls679829itc.17.canary; Thu, 15 Sep
 2016 13:28:01 -0700 (PDT)
X-Received: by 10.107.183.215 with SMTP id h206mr3490382iof.6.1473971281042;
        Thu, 15 Sep 2016 13:28:01 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from mail-qt0-x241.google.com (mail-qt0-x241.google.com. [2607:f8b0:400d:c0d::241])
        by gmr-mx.google.com with ESMTPS id w124si588029ywc.4.2016.09.15.13.28.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 13:28:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400d:c0d::241 as permitted sender) client-ip=2607:f8b0:400d:c0d::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400d:c0d::241 as permitted sender) smtp.mailfrom=namrataashettar@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qt0-x241.google.com with SMTP id e5so1997023qtb.1
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Sep 2016 13:28:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to;
        bh=cIm99vXSPt1zqKi8lviO4OF+eyBDcUW5wVK9u/AZ9kM=;
        b=ygYWtApV5TmviHJDjAVScKshaitQK92PvFOnNx6WiLwh30M1cHxfH6rwyQtctpEC9O
         NMAxKVSh3FlH7jt3UcBIDnjpnZ2+4COw8LO6sR7o+71YjhYVhOqwW4ddMTd9Uj79lho7
         pvENEhd8tONSQGsSgwADoo+rGbRazoUq8xG51Su7aOweSQ7r23lRR2zr+ZrWab6dnlgn
         lUsK068DsrPET7y/z8jZKqwzp50N1GC1e5pK4YrHbbGPf9AchxqMQCqYJXezUJED2VcY
         sg16C+0Z/ySP/O2QrbZENXPmLQDaEXWHG9zEQYBOQTXpgenY/cSY/vrIJz9rlFX9uYH0
         YL5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=cIm99vXSPt1zqKi8lviO4OF+eyBDcUW5wVK9u/AZ9kM=;
        b=A9mQhCexk7uhWIKjaurPJcmN/wi958nmUSWrkWlPbt7M8y1cp25/nYXniAkWLJG7uc
         WmyvEOLD/41maSh6MBB+CgGqm6biZ/qT6IgTVqt0HLDC3TtEBY038axH3/8AJb9Me2+Y
         DZ3OQYlN5ljR+lrZtJbDqt4tdELYJEVeoecJ7/hQTs/v3fBNvl9PQN5/mRNZcaoUTWfU
         e7Nap58wN/GJG1+8wFeL29e/0z6xD+8mw9pC7YSZnJyilK1VUTtgyrg6gkUfSAlRCtDt
         /1R49qivYk0W1YERA6RzLtD7QtwBRDclpaXRZ+3kw426bAr/ELK2MWBtMzyYKk7vkE3m
         wpGA==
X-Gm-Message-State: AE9vXwMe66YHRZXgINGr0dWVxYZNPMZFr5k5uiSSvfCsmHmyw9xT9AV/1qkKzSGWNTKDyyJKmHcnF21tZyF78Q==
X-Received: by 10.200.56.72 with SMTP id r8mr11506669qtb.120.1473971280865;
 Thu, 15 Sep 2016 13:28:00 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.237.41.97 with HTTP; Thu, 15 Sep 2016 13:27:40 -0700 (PDT)
From: Namrata A Shettar <namrataashettar@gmail.com>
Date: Fri, 16 Sep 2016 01:57:40 +0530
Message-ID: <CAFrQyDHt5tV=k+FB1MUZ36NuujUq8nMF6t5tnKFr-g-83+tiqw@mail.gmail.com>
Subject: [PATCH v2 6/6] staging: vt6656: rxtx: Break up multiple assignments
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Malcolm Priestley <tvboxspy@gmail.com>, 
	Alison Schofield <amsfield22@gmail.com>, maomao xu <albert008.xu@gmail.com>, 
	Othmar Pasteka <pasteka@kabsi.at>, Parth Sane <laerdevstudios@gmail.com>, 
	Wolfram Sang <wsa-dev@sang-engineering.com>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary=001a1135c0109af257053c91ae0f

--001a1135c0109af257053c91ae0f
Content-Type: text/plain; charset=UTF-8

Multiple assignments on same line broken down to fix checkpatch issue.

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

--001a1135c0109af257053c91ae0f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Multiple assignments on same line broken down to=
 fix checkpatch issue.<br><br>Signed-off-by: Namrata A Shettar &lt;<a href=
=3D"mailto:namrataashettar@gmail.com" target=3D"_blank">namrataashettar@gma=
il.com</a>&gt;<br>
---<br></div></div><div><div><br><div>
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
sl.gstatic.com/ui/v1/icons/mail/images/cleardot.gif"></div></div><div><br>
</div><span><font color=3D"#888888">--<br>
2.7.4</font></span><br></div></div></div></div>

--001a1135c0109af257053c91ae0f--

