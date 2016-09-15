X-GM-THRID: 6330669960642166784
X-Received: by 10.157.34.165 with SMTP id y34mr8126921ota.28.1473973961434;
        Thu, 15 Sep 2016 14:12:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.17.93 with SMTP id z90ls1549530ioi.6.gmail; Thu, 15 Sep
 2016 14:12:38 -0700 (PDT)
X-Received: by 10.66.246.197 with SMTP id xy5mr8014556pac.47.1473973958751;
        Thu, 15 Sep 2016 14:12:38 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from mail-qk0-x243.google.com (mail-qk0-x243.google.com. [2607:f8b0:400d:c09::243])
        by gmr-mx.google.com with ESMTPS id l185si402344ywb.5.2016.09.15.14.12.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 14:12:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400d:c09::243 as permitted sender) client-ip=2607:f8b0:400d:c09::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400d:c09::243 as permitted sender) smtp.mailfrom=namrataashettar@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x243.google.com with SMTP id b204so4215173qkc.1
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Sep 2016 14:12:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to;
        bh=BpglwuHvPYYCR/pHYXzgdtz6lnFVF3dtJN30cQA5gk4=;
        b=K706f8I5qt5ok2K7cnFvPCuLkMq2FTaePkRR+F5j930eaC+1nZhVSOBKQvKTU4rqca
         k2F535Q/X70S+bC+WjJTV9M4ZfoqN7kTUcC4MsMczjIgo8N5WBX5/9xJ2WSvGQAnzKB/
         MXqjhvq4ndz+Tj3Quo3s1GPMh6ka9thLFzKWWCMLEkNkU2KUVVm2GRabfO/cqYdOiJkO
         JFu8g480N/EWkvNTXHz2EtNY2eTk5+lHEmcaLrbL64mDZocqqSzXMFVIt+Zd9Vs6xN2W
         a6k9LGw3IKyVV3eOai8ndVMCxQabFnhyNWyqBnDqEfjra1hlZd52TID7YHKJxzvjXXO6
         EowA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=BpglwuHvPYYCR/pHYXzgdtz6lnFVF3dtJN30cQA5gk4=;
        b=L46G8PSs/m6hXEGlB8ryKoEk/V4KHhETXGWtHpCoNQDMTP0z3XFoYB0xBUQORmdTHt
         BxOkp3ESAb1djhhXFDqvNsJ9YyGLEX9L6HnNSrCWSVuxKu9hRa+HydZ3KWv9wGJJIO/r
         mzN97CMjaPjknDho5DSzfrXBapoL5lY0ofKuan/Q7HdPXfWU35QsaAD4rZyTejdqse+o
         Z8Tis9+lqqt1TCc7t8L/Z/Wsk5T6CKXfpTOAHwGmXHbYjkMEXTAG80uaweZsIrM2uy9l
         dAZ3UQOAwHGZRDbCqtBU51oU7daoeNyMhY49Wck910unyVIDyUKrVN0j1QRDu7BXgldY
         BqZA==
X-Gm-Message-State: AE9vXwMXl2TT0qqGsmDxtqMEZZHvVqWVu8i2PSTAp2sKtQgBrl0Lic00P/UXr64cDLDFnVbZigBXNrrordAl1w==
X-Received: by 10.55.168.69 with SMTP id r66mr11805793qke.155.1473973958424;
 Thu, 15 Sep 2016 14:12:38 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.237.41.97 with HTTP; Thu, 15 Sep 2016 14:12:18 -0700 (PDT)
From: Namrata A Shettar <namrataashettar@gmail.com>
Date: Fri, 16 Sep 2016 02:42:18 +0530
Message-ID: <CAFrQyDFEhVcu48ROi4Nq1DNMMzLVu80ON3O2eZ5Bk4F7qrr_HA@mail.gmail.com>
Subject: [PATCH] staging: xgifb: Replace explicit NULL comparison
To: outreachy-kernel <outreachy-kernel@googlegroups.com>, 
	Arnaud Patard <arnaud.patard@rtp-net.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Clifton Barnes <clifton.a.barnes@gmail.com>, Geliang Tang <geliangtang@163.com>, 
	Ben Marsh <bmarsh94@gmail.com>, Janani Ravichandran <janani.rvchndrn@gmail.com>, 
	Benoit Hiller <benoit.hiller@gmail.com>
Content-Type: multipart/alternative; boundary=94eb2c065742333da7053c924e5f

--94eb2c065742333da7053c924e5f
Content-Type: text/plain; charset=UTF-8

Replace explicit NULL comparison  with equivalent expression to resolve
checkpatch issue.
- x != NULL => x

Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
---
 drivers/staging/xgifb/XGI_main_26.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/xgifb/XGI_main_26.c
b/drivers/staging/xgifb/XGI_main_26.c
index d56ef14..23a3bd7 100644
--- a/drivers/staging/xgifb/XGI_main_26.c
+++ b/drivers/staging/xgifb/XGI_main_26.c
@@ -2085,7 +2085,7 @@ static int __init xgifb_init(void)
 {
        char *option = NULL;

-       if (forcecrt2type != NULL)
+       if (forcecrt2type)
                XGIfb_search_crt2type(forcecrt2type);
        if (fb_get_options("xgifb", &option))
                return -ENODEV;

--94eb2c065742333da7053c924e5f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Replace explicit NULL comparison=C2=A0 with equivalen=
t expression to resolve checkpatch issue.<br></div>- x !=3D NULL =3D&gt; x<=
br><div><br>Signed-off-by: Namrata A Shettar &lt;<a href=3D"mailto:namrataa=
shettar@gmail.com">namrataashettar@gmail.com</a>&gt;<br>
---<br>
=C2=A0drivers/staging/xgifb/XGI_<wbr>main_26.c | 2 +-<br>
=C2=A01 file changed, 1 insertion(+), 1 deletion(-)<br>
<br>
diff --git a/drivers/staging/xgifb/XGI_<wbr>main_26.c b/drivers/staging/xgi=
fb/XGI_<wbr>main_26.c<br>
index d56ef14..23a3bd7 100644<br>
--- a/drivers/staging/xgifb/XGI_<wbr>main_26.c<br>
+++ b/drivers/staging/xgifb/XGI_<wbr>main_26.c<br>
@@ -2085,7 +2085,7 @@ static int __init xgifb_init(void)<br>
=C2=A0{<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 char *option =3D NULL;<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0if (forcecrt2type !=3D NULL)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0if (forcecrt2type)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 XGIfb_search_crt2ty=
pe(<wbr>forcecrt2type);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (fb_get_options(&quot;xgifb&quot;, &amp;opti=
on))<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return -ENODEV;</di=
v></div>

--94eb2c065742333da7053c924e5f--

