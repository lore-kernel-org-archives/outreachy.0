X-GM-THRID: 6330315407686107136
X-Received: by 10.36.225.200 with SMTP id n191mr3750318ith.12.1473971265498;
        Thu, 15 Sep 2016 13:27:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.3.1 with SMTP id 1ls1822462otv.45.gmail; Thu, 15 Sep 2016
 13:27:45 -0700 (PDT)
X-Received: by 10.200.54.118 with SMTP id n51mr7862363qtb.29.1473971265202;
        Thu, 15 Sep 2016 13:27:45 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from mail-qt0-x242.google.com (mail-qt0-x242.google.com. [2607:f8b0:400d:c0d::242])
        by gmr-mx.google.com with ESMTPS id y77si501538ywd.7.2016.09.15.13.27.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 13:27:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400d:c0d::242 as permitted sender) client-ip=2607:f8b0:400d:c0d::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400d:c0d::242 as permitted sender) smtp.mailfrom=namrataashettar@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qt0-x242.google.com with SMTP id 38so2006222qte.2
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Sep 2016 13:27:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to;
        bh=YgfjxVjL18x+e7Uij9sxaCofqH3ITxCmyWVGtW8Ompo=;
        b=n84sGQm2RVnR16jH8WcWb6AeldjF12qrhW0tw8ghDn0K9VfXU+tdIy/QT7CGmIMthD
         RO8yWd2ghqadY1en+8FzWW1nKcksIJm2Pfptudd6AqhUu2CLNXVlFIpFXJ0lUc2a50oE
         scFPZmAzRJfCZ6UD0RWWIeTDFT2HXBPJX3f3DY9nHXkikS+GEDGZDKpOpgSKAY3bZCN3
         XXwEEaXcY9TrgdbkYxPjwZyuIiAimAT1jCmVkISsjHD11YSgIkEyW0D2E278XHufAysR
         3ZQJofbIASDgLmn0dbUkKuCJDB7BA/sE1uNgvD1KlKE2dt4v2Zpx/D5DcsFv2Ng7cMF+
         XMfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=YgfjxVjL18x+e7Uij9sxaCofqH3ITxCmyWVGtW8Ompo=;
        b=T1rnhEAlUg2m0jB9I+N27LtGxWokh0bfQTMXmB8py6ZcbqIYjLV1ZXoGTfD6wPmfT+
         NwYv3ws6kPaOWKOPXyX79Bty8DAKn7m3c6/Mq0K9GHA0pezLouf1OEdtF39kM/hdKRwn
         FSa1QDW1y9r6fgGoXEpiCDWcKlMg5rNGi22WHT5mvydpfZg3uI6QCUbCQpw8TQBmfPSX
         bpoLsCBFm//A8d7rWIjPWp3GT1EYEr66ejZxSTN+V7KnfUbYLJpe817yk+4Z4HouUtC+
         AUSdRcM9wZoDVSbKlSA0JkP4P9faBKtjMoFteZ+eGSrGrM/ObIjaB+kvNt/5MoGxTceL
         Ffog==
X-Gm-Message-State: AE9vXwMCeLjxo1Z2iq0jVHJRYe+B2JSkT4u25NA4WaGF8kfg963jQfw2QJAxtX4yu/KjXxlVDafDmbuoPZGbhg==
X-Received: by 10.200.54.106 with SMTP id n39mr4973657qtb.50.1473971265024;
 Thu, 15 Sep 2016 13:27:45 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.237.41.97 with HTTP; Thu, 15 Sep 2016 13:27:24 -0700 (PDT)
From: Namrata A Shettar <namrataashettar@gmail.com>
Date: Fri, 16 Sep 2016 01:57:24 +0530
Message-ID: <CAFrQyDEq42Hj9-TX+KsQpKgXQqfrAie==Wuqh=qKn=jgiHeO3g@mail.gmail.com>
Subject: [PATCH v2 4/6] staging: vt6656: rf: Add space around '-'
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Malcolm Priestley <tvboxspy@gmail.com>, 
	Alison Schofield <amsfield22@gmail.com>, maomao xu <albert008.xu@gmail.com>, 
	Othmar Pasteka <pasteka@kabsi.at>, Parth Sane <laerdevstudios@gmail.com>, 
	Wolfram Sang <wsa-dev@sang-engineering.com>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary=001a1135a0e0a94137053c91adec

--001a1135a0e0a94137053c91adec
Content-Type: text/plain; charset=UTF-8

Add space around '-' to resolve checkpatch issue.

Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
---
 drivers/staging/vt6656/rf.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/vt6656/rf.c b/drivers/staging/vt6656/rf.c
index 79a3108..c709428 100644
--- a/drivers/staging/vt6656/rf.c
+++ b/drivers/staging/vt6656/rf.c
@@ -643,9 +643,9 @@ int vnt_rf_setpower(struct vnt_private *priv, u32 rate,
u32 channel)
        case RATE_48M:
        case RATE_54M:
                if (channel > CB_MAX_CHANNEL_24G)
-                       power = priv->ofdm_a_pwr_tbl[channel-15];
+                       power = priv->ofdm_a_pwr_tbl[channel - 15];
                else
-                       power = priv->ofdm_pwr_tbl[channel-1];
+                       power = priv->ofdm_pwr_tbl[channel - 1];
                break;
        }


--
2.7.4

--001a1135a0e0a94137053c91adec
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Add space around &#39;-&#39; to resolve checkpatch issue.<=
br><br>Signed-off-by: Namrata A Shettar &lt;<a href=3D"mailto:namrataashett=
ar@gmail.com" target=3D"_blank">namrataashettar@gmail.com</a>&gt;<br>
---<br>
=C2=A0drivers/staging/vt6656/rf.c | 4 ++--<br>
=C2=A01 file changed, 2 insertions(+), 2 deletions(-)<br>
<br>
diff --git a/drivers/staging/vt6656/rf.c b/drivers/staging/vt6656/rf.c<br>
index 79a3108..c709428 100644<br>
--- a/drivers/staging/vt6656/rf.c<br>
+++ b/drivers/staging/vt6656/rf.c<br>
@@ -643,9 +643,9 @@ int vnt_rf_setpower(struct vnt_private *priv, u32 rate,=
 u32 channel)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 case RATE_48M:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 case RATE_54M:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (channel &gt; CB=
_MAX_CHANNEL_24G)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0power =3D priv-&gt;ofdm_a_pwr_tbl[channel-1<wbr>5];<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0power =3D priv-&gt;ofdm_a_pwr_tbl[channel - 15];<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 else<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0power =3D priv-&gt;ofdm_pwr_tbl[channel-1];<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0power =3D priv-&gt;ofdm_pwr_tbl[channel - 1];<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 break;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<div><div><img src=3D"https://ssl.gstatic.com/=
ui/v1/icons/mail/images/cleardot.gif"></div></div><div><br>
</div><span><font color=3D"#888888"><br>
--<br>
2.7.4</font></span><br></div>

--001a1135a0e0a94137053c91adec--

