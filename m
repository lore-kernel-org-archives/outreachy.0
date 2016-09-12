X-GM-THRID: 6329478247155236864
X-Received: by 10.157.11.233 with SMTP id 96mr5363177oth.42.1473696494535;
        Mon, 12 Sep 2016 09:08:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.47.193 with SMTP id b1ls11420805otd.19.gmail; Mon, 12 Sep
 2016 09:08:14 -0700 (PDT)
X-Received: by 10.200.56.244 with SMTP id g49mr16573794qtc.12.1473696493695;
        Mon, 12 Sep 2016 09:08:13 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from mail-qt0-x242.google.com (mail-qt0-x242.google.com. [2607:f8b0:400d:c0d::242])
        by gmr-mx.google.com with ESMTPS id l185si1051682ywb.5.2016.09.12.09.08.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Sep 2016 09:08:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400d:c0d::242 as permitted sender) client-ip=2607:f8b0:400d:c0d::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400d:c0d::242 as permitted sender) smtp.mailfrom=namrataashettar@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qt0-x242.google.com with SMTP id p47so353745qtc.0
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Sep 2016 09:08:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to;
        bh=us72kVbH5lFh7S9cbPwi+SItdTf7ta+7wo4EX9TTwoI=;
        b=jBm/MhrSjRhb1Y87epgbSoXRnyNe65UmHq3SYw5qKLfa1zxIPQqs0WAs8utWMdkE9a
         gspaIkBvdYPpIYY4lYL0YxrWaCoxal2Y2cb7ynNctOdSQNMcIBLFnDgbfLsTQuVMIVwD
         aGB20hQkzZSNxEP4gkKZSOUoaxXjGGiNScfK7xgxOuic/1vhUy2zym1pj+bChWIWfoqB
         f316eQFFK60XAJw75Crs36trEeI0S0DsXYHME9kRXnESaNLJC8wmcmLV5a/c/3nkMk8b
         vbfbJLnlOD2gAsQUMUwrzUCfhMr42G7Ock7H6S+6ML/f+Tj3wJuIEnEcShaZP5gt2ZlO
         bvGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=us72kVbH5lFh7S9cbPwi+SItdTf7ta+7wo4EX9TTwoI=;
        b=Npgk6U3FErMXfhEExsJZA22Jtr0spggAxhE9v0YBEnnEruY870gGQvgiFzVJma2Zd8
         JQqIHbQWHSoXc79gqwWESR1x+rVIxYHTFG3vGD3lxUzn57E7UkfxXPW31n160iJDv3ds
         aeHq4QYrSmULIdjJuQOipuEN8CJb/N5Yws+Q6s28BJWCruMy/bya56AZkjftctdmuZLc
         OVdZ+JJMouIPT+KesqmxbjhcYomaiNmuNaSmVORbOHWYn1X8ShwD5i6oV7H1+vdX7YuB
         eUXb+u1WmSp2LhjuXK1xIHy9G+akfHnIrTsEfmnEHHWe6cq6a0XxNGVR3qLG0MOK5k9n
         M4JQ==
X-Gm-Message-State: AE9vXwOF4u7U1t+XNfqHsoqBgVYjwyjx/mCi2Tsi3nj/7UAgZl/UGLQhQP7J8tPGPjcGf/6rhDkdfHUA3Wht7A==
X-Received: by 10.200.51.54 with SMTP id t51mr20698201qta.110.1473696478399;
 Mon, 12 Sep 2016 09:07:58 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.237.41.97 with HTTP; Mon, 12 Sep 2016 09:07:38 -0700 (PDT)
From: Namrata A Shettar <namrataashettar@gmail.com>
Date: Mon, 12 Sep 2016 21:37:38 +0530
Message-ID: <CAFrQyDEvVL_XEL3DtCn9npXa8H+Jxaixv7nVEzY2Sx8ROCD+RA@mail.gmail.com>
Subject: [PATCH] staging: comedi: comedidev: Fixes CamelCase issue
To: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=001a113779fe1a528c053c51b3e1

--001a113779fe1a528c053c51b3e1
Content-Type: text/plain; charset=UTF-8

This patch fixes the checkpatch.pl issue:
-Avoid CamelCase

Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
---
 drivers/staging/comedi/comedidev.h | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/comedi/comedidev.h
b/drivers/staging/comedi/comedidev.h
index dcb6376..9d941b1 100644
--- a/drivers/staging/comedi/comedidev.h
+++ b/drivers/staging/comedi/comedidev.h
@@ -582,7 +582,7 @@ int comedi_check_chanlist(struct comedi_subdevice *s,

 #define RANGE(a, b)            {(a) * 1e6, (b) * 1e6, 0}
 #define RANGE_ext(a, b)                {(a) * 1e6, (b) * 1e6, RF_EXTERNAL}
-#define RANGE_mA(a, b)         {(a) * 1e6, (b) * 1e6, UNIT_mA}
+#define RANGE_ma(a, b)         {(a) * 1e6, (b) * 1e6, UNIT_ma}
 #define RANGE_unitless(a, b)   {(a) * 1e6, (b) * 1e6, 0}
 #define BIP_RANGE(a)           {-(a) * 1e6, (a) * 1e6, 0}
 #define UNI_RANGE(a)           {0, (a) * 1e6, 0}
@@ -593,9 +593,9 @@ extern const struct comedi_lrange range_bipolar2_5;
 extern const struct comedi_lrange range_unipolar10;
 extern const struct comedi_lrange range_unipolar5;
 extern const struct comedi_lrange range_unipolar2_5;
-extern const struct comedi_lrange range_0_20mA;
-extern const struct comedi_lrange range_4_20mA;
-extern const struct comedi_lrange range_0_32mA;
+extern const struct comedi_lrange range_0_20ma;
+extern const struct comedi_lrange range_4_20ma;
+extern const struct comedi_lrange range_0_32ma;
 extern const struct comedi_lrange range_unknown;

 #define range_digital          range_unipolar5
--
2.7.4

--001a113779fe1a528c053c51b3e1
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">This patch fixes the <a target=3D"_blank" href=3D"http://c=
heckpatch.pl" rel=3D"noreferrer">checkpatch.pl</a> issue:<br>
-Avoid CamelCase<br>
<br>
Signed-off-by: Namrata A Shettar &lt;<a target=3D"_blank" href=3D"mailto:na=
mrataashettar@gmail.com">namrataashettar@gmail.com</a>&gt;<br>
---<br>
=C2=A0drivers/staging/comedi/comedi<wbr>dev.h | 8 ++++----<br>
=C2=A01 file changed, 4 insertions(+), 4 deletions(-)<br>
<br>
diff --git a/drivers/staging/comedi/comed<wbr>idev.h b/drivers/staging/come=
di/comed<wbr>idev.h<br>
index dcb6376..9d941b1 100644<br>
--- a/drivers/staging/comedi/comed<wbr>idev.h<br>
+++ b/drivers/staging/comedi/comed<wbr>idev.h<br>
@@ -582,7 +582,7 @@ int comedi_check_chanlist(struct comedi_subdevice *s,<b=
r>
<br>
=C2=A0#define RANGE(a, b)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 {(a) * 1=
e6, (b) * 1e6, 0}<br>
=C2=A0#define RANGE_ext(a, b)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 {(a) * 1e6, (b) * 1e6, RF_EXTERNAL}<br>
-#define RANGE_mA(a, b)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0{(a) * 1e6, (b) * =
1e6, UNIT_mA}<br>
+#define RANGE_ma(a, b)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0{(a) * 1e6, (b) * =
1e6, UNIT_ma}<br>
=C2=A0#define RANGE_unitless(a, b)=C2=A0 =C2=A0{(a) * 1e6, (b) * 1e6, 0}<br=
>
=C2=A0#define BIP_RANGE(a)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0{-(a) * =
1e6, (a) * 1e6, 0}<br>
=C2=A0#define UNI_RANGE(a)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0{0, (a) =
* 1e6, 0}<br>
@@ -593,9 +593,9 @@ extern const struct comedi_lrange range_bipolar2_5;<br>
=C2=A0extern const struct comedi_lrange range_unipolar10;<br>
=C2=A0extern const struct comedi_lrange range_unipolar5;<br>
=C2=A0extern const struct comedi_lrange range_unipolar2_5;<br>
-extern const struct comedi_lrange range_0_20mA;<br>
-extern const struct comedi_lrange range_4_20mA;<br>
-extern const struct comedi_lrange range_0_32mA;<br>
+extern const struct comedi_lrange range_0_20ma;<br>
+extern const struct comedi_lrange range_4_20ma;<br>
+extern const struct comedi_lrange range_0_32ma;<br>
=C2=A0extern const struct comedi_lrange range_unknown;<br>
<br>
=C2=A0#define range_digital=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 range_unipola=
r5<br>
--<br>
2.7.4</div>

--001a113779fe1a528c053c51b3e1--

