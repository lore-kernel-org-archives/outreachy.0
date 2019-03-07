X-GM-THRID: 6665747871131762688
X-Received: by 2002:a63:83c8:: with SMTP id h191mr5752417pge.63.1551991774625;
        Thu, 07 Mar 2019 12:49:34 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:8216:: with SMTP id x22ls3542725pln.3.gmail; Thu, 07
 Mar 2019 12:49:34 -0800 (PST)
X-Google-Smtp-Source: APXvYqy9cMpfHya0uNcyAbJTcsGB6vXjy7eguIRTpAJ4kfz6TDWLKbKczGg098Ff5hRwImmYHGm8
X-Received: by 2002:a17:902:6bcc:: with SMTP id m12mr4583418plt.37.1551991773977;
        Thu, 07 Mar 2019 12:49:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551991773; cv=none;
        d=google.com; s=arc-20160816;
        b=Rxt/OsV2akWpUNZZhCxZOe+xFZ/hXXvGww1kZ5dflCD6srWi/U/sOx2WVOpcZGkzHm
         PYhRL0mfbMAWd/jzAbfZpI49UtD4IhCowsjui14RUVovH8Hb7zpwmOyZI41DgsI4b5+z
         RF4dvSm54nd78dl/ViFuSG/SMv0Ud8Rla88WerBLWrlf0vKcN1W5wNhFrUNGqEB7MCUF
         FYNe9/GnjcJpBRQ9nNh7EslnQgVckS2B80BE1InNqiA2vdqNVP7OpS02OlV5gBJfHGrm
         u8k16biflMNA0kpCTKOzlHTpblIod6p6VxbiCLn1m2q4HKOx6Wcu+k6UKjZ2IQ+9woCy
         cI6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=TEKDFT1THVJriESQrb9Nh0F6l/ZRYMOjDNe+xVP10/U=;
        b=r9j6+cmFDFxOkcEV+N4TXVZ4K63PtIqwduQ3MFko6FSrWlR9wfoyX4TeNTiVzn0C8z
         Ha0C7rX6LbqvZ6zsJFymADFkoGmbD5p5mIfndmQthp6CKW19iD7BcBvydBxXW6Hwd2N1
         WImKZL1Wa4bjx2nZy+NB9Kz3x3SfXpfrv8zgNK5pQyPzBOR8DkZUHni4kNFOzenXC0ph
         W2NfhWpXT3O24JtiE2zZbn5imKgm+4NaosQQOlrOY7HOwwWBNSnYVAqH9TeGAeGoVSP0
         iaADzOff6A88RXvWKAqtWrqKatXsES4TlpHjMRqhHmVEvcfzNfrY8+c168CZJt1ZUoJD
         8lsw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ENpxR3Sp;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x243.google.com (mail-oi1-x243.google.com. [2607:f8b0:4864:20::243])
        by gmr-mx.google.com with ESMTPS id u20si510699pfj.3.2019.03.07.12.49.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 Mar 2019 12:49:33 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) client-ip=2607:f8b0:4864:20::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ENpxR3Sp;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x243.google.com with SMTP id i8so14063091oib.10
        for <outreachy-kernel@googlegroups.com>; Thu, 07 Mar 2019 12:49:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=TEKDFT1THVJriESQrb9Nh0F6l/ZRYMOjDNe+xVP10/U=;
        b=ENpxR3SpnuZC9/pyjJ99noIfn23f7E1EAizXxIlrdgdAbYji8d841EuDWhUNcHrOaG
         lh3UMND8YEWG454PQupln/DG7TkmSvmfN87ENL5r8MYoyJNbhMmpYCGUf0CCP82YlM8Y
         +rzsuhHDXYKWSBVdLXTQClUxyAiiboovyZSYQC19XMItFKbgjSJSXINP+vkvYpWVd5wa
         f1WOMbYGMYz+C6odxx5D0xIRgPihAb2oc0xmpKavNv/cAZZrNuWDpU4jB/GzzfXcIoaA
         FHuchNPbf6ekzThggB6+Ubz9IfCD1biMoo5C6P9Z+axjhWFn4l5g1hFMA4VxFbhNojvj
         F0zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=TEKDFT1THVJriESQrb9Nh0F6l/ZRYMOjDNe+xVP10/U=;
        b=T7afnztIgPHnLfT4EjrSBprit/IHzjHdN59T1d1rBhYrxyy4B8yQ6WdUri13WXij0R
         Bi7gOggRfNkHrPKn67X4lOCM7sSx/oeG3ceRuyhvjlkH30yJnoGxYx55zWJ0h+tbVW1P
         o/bvbsu1IuX048nwCyx5rRuH3lZojuFdMGHXhsHIobgHB1hq9oZ8chd31SW/wYbwfRGd
         1FFah1OsilgMPw0zMHkwDHG3tjjxDBXfBPcQXTyF7EkaglBIqHO8nb8vOIYx344EAvA4
         47fXaBHZ/yqZtTuQtr+xkoA5pRicJNM7EqFGfg/dwWeO72sxH1ZLqc4+81yZOzj+ZSVZ
         PdZQ==
X-Gm-Message-State: APjAAAVq5wjIToYCs3+es3xPMoGK6Cje+9L7DqHkLgNixHjdTIAtE2QG
	GHhaf6Ar/KoKtr2nj/wSylA=
X-Received: by 2002:aca:d746:: with SMTP id o67mr6399109oig.100.1551991773549;
        Thu, 07 Mar 2019 12:49:33 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id j131sm2209536oia.37.2019.03.07.12.49.32
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 07 Mar 2019 12:49:32 -0800 (PST)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH v3] Staging: vt6655: Remove unused function prototype and definition
Date: Thu,  7 Mar 2019 14:49:30 -0600
Message-Id: <20190307204930.8418-1-madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1

Remove an unused function, as it is never called in kernel tree.

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>

---
Changes in v3-
- Changed subject line
- Removed change log above signed-off-by

Changes in v2-
- Changed patch series to a patch
---
 drivers/staging/vt6655/mac.c | 7 -------
 drivers/staging/vt6655/mac.h | 2 --
 2 files changed, 9 deletions(-)

diff --git a/drivers/staging/vt6655/mac.c b/drivers/staging/vt6655/mac.c
index 40a8f1ce837c..2f773fdf8d64 100644
--- a/drivers/staging/vt6655/mac.c
+++ b/drivers/staging/vt6655/mac.c
@@ -57,13 +57,6 @@
  * Return Value: true if all test bits On; otherwise false
  *
  */
-bool MACbIsRegBitsOn(struct vnt_private *priv, unsigned char byRegOfs,
-		     unsigned char byTestBits)
-{
-	void __iomem *io_base = priv->PortOffset;
-
-	return (ioread8(io_base + byRegOfs) & byTestBits) == byTestBits;
-}
 
 /*
  * Description:
diff --git a/drivers/staging/vt6655/mac.h b/drivers/staging/vt6655/mac.h
index 59538ac09fc5..c7888c4e96f2 100644
--- a/drivers/staging/vt6655/mac.h
+++ b/drivers/staging/vt6655/mac.h
@@ -876,8 +876,6 @@ do {								\
 #define MACvSetRFLE_LatchBase(iobase)                                 \
 	MACvWordRegBitsOn(iobase, MAC_REG_SOFTPWRCTL, SOFTPWRCTL_RFLEOPT)
 
-bool MACbIsRegBitsOn(struct vnt_private *priv, unsigned char byRegOfs,
-		     unsigned char byTestBits);
 bool MACbIsRegBitsOff(struct vnt_private *priv, unsigned char byRegOfs,
 		      unsigned char byTestBits);
 
-- 
2.17.1


