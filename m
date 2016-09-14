X-GM-THRID: 6330315407686107136
X-Received: by 10.31.140.136 with SMTP id o130mr91748vkd.10.1473891410078;
        Wed, 14 Sep 2016 15:16:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.56.29 with SMTP id i29ls2136807otc.12.gmail; Wed, 14 Sep
 2016 15:16:49 -0700 (PDT)
X-Received: by 10.13.247.69 with SMTP id h66mr3927466ywf.46.1473891409763;
        Wed, 14 Sep 2016 15:16:49 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from mail-qk0-x242.google.com (mail-qk0-x242.google.com. [2607:f8b0:400d:c09::242])
        by gmr-mx.google.com with ESMTPS id w124si58972ywc.4.2016.09.14.15.16.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Sep 2016 15:16:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400d:c09::242 as permitted sender) client-ip=2607:f8b0:400d:c09::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400d:c09::242 as permitted sender) smtp.mailfrom=namrataashettar@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x242.google.com with SMTP id z143so2068284qka.3
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Sep 2016 15:16:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to;
        bh=urElgy32qlA+SWFN4XJ6RZZIGKXDrOehT32NHYIIUeY=;
        b=k24dyUdmHaiqrsa5c2f0D+mtpVdNEFiKuTuduQ65S3EeLjU4TMu1xPhs0holzxiRXW
         VLZPhdyEi2PUFohjyhdna7T9u6YRqaqQgEwm7d/sC0xIty0eQc2GBIFDL+1JhfsWr4XM
         fy+9PhlnDPWi36ID7RkzbdIUwf3VlZygqhA/enZZBN9JJlYUG6BbhL0WOXLusdFncJ5n
         qVhj2ePAXTXKkPdudaHUWN2Maex6CWQvD4+RQgQlfBljA2ApkIhDG3Hr+JbHlRbdKKk/
         +gZdtzM2e+NFfs9RXl7Unzu+edyBpgXM+7o7XF8RMP/r5l2lD7NKDbO4tOCsFIcUjsEV
         DULg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=urElgy32qlA+SWFN4XJ6RZZIGKXDrOehT32NHYIIUeY=;
        b=NJ5Oo4bDkJRkbhXGHN5i4hYYo0lZAPOF8uSTXcdQn6LN77+SzG1CzOBhXGy+Y9eJs0
         nQl1qS+QFBnZe77aahS3nfrwLABUNo+fAtpRY9FD+n+mHMWrwTpFuXL3YE5rw+/J29r2
         QyIYsbkl2Zb1XSji9RfHqzw/R3Pbt5rN1eJ0QGky5Pjo/1Ksc5+wJ2cwOVdlB6gRXg2p
         kZXFA1GnMibsC0KTXniey1RwTxiLCkIb0bxkbCfF03vRxTvphBVbrmvf/oqFQBiI86sy
         Ocl1/G7BWfEF8OD/64WL8Wu3cQqYzGsISXiVkBilWaUeJeKFkbIB2mcLqDyI0LZCzBKA
         DlFw==
X-Gm-Message-State: AE9vXwNDqXNRE8afowovxQ9VYJyF6LiL6fTtH8Ni2l8VzLpy6Y+KwI/z3WQw/yrlI3/84xMvntXDn4hWEY7eUg==
X-Received: by 10.233.216.194 with SMTP id u185mr6072780qkf.173.1473891409613;
 Wed, 14 Sep 2016 15:16:49 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.237.41.97 with HTTP; Wed, 14 Sep 2016 15:16:29 -0700 (PDT)
From: Namrata A Shettar <namrataashettar@gmail.com>
Date: Thu, 15 Sep 2016 03:46:29 +0530
Message-ID: <CAFrQyDGKFpOx1WE6f_3PbD8ipC6NxGuhBB-p97ruEGQ0_RHJ8w@mail.gmail.com>
Subject: [PATCH 4/6] staging: vt6656: rf: Add space around '-'
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Malcolm Priestley <tvboxspy@gmail.com>, 
	Alison Schofield <amsfield22@gmail.com>, maomao xu <albert008.xu@gmail.com>, 
	Othmar Pasteka <pasteka@kabsi.at>, Parth Sane <laerdevstudios@gmail.com>, 
	Wolfram Sang <wsa-dev@sang-engineering.com>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary=94eb2c043d72e85935053c7f1547

--94eb2c043d72e85935053c7f1547
Content-Type: text/plain; charset=UTF-8

This patch fixes checkpatch issue by adding space around '-'.
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

--94eb2c043d72e85935053c7f1547
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">This patch fixes checkpatch issue by adding space around &=
#39;-&#39;.<br>
Signed-off-by: Namrata A Shettar &lt;<a target=3D"_blank" href=3D"mailto:na=
mrataashettar@gmail.com">namrataashettar@gmail.com</a>&gt;<br>
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
ui/v1/icons/mail/images/cleardot.gif" class=3D"gmail-CToWUd"></div></div><d=
iv><br>
</div><span><font color=3D"#888888"><br>
--<br>
2.7.4</font></span></div>

--94eb2c043d72e85935053c7f1547--

