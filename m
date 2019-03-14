X-GM-THRID: 6667995620579475456
X-Received: by 2002:a24:c4d5:: with SMTP id v204mr215345itf.5.1552594624147;
        Thu, 14 Mar 2019 13:17:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a02:3b2e:: with SMTP id c46ls2267749jaa.2.gmail; Thu, 14 Mar
 2019 13:17:03 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwFA5kTeMykPcwgJfg6qqgjrBm777pqz65zpjp7XtcP7t2WQG6rjSl3qbCyADUYWGxSjaGm
X-Received: by 2002:a02:f52:: with SMTP id h79mr11440553jad.3.1552594623263;
        Thu, 14 Mar 2019 13:17:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552594623; cv=none;
        d=google.com; s=arc-20160816;
        b=gqk0pv2puFRbaxJ0owaSXzc8sn3VsS9DySUKBgwzusUhg0+Yw89z+UWWpNUpz/OZGh
         pjLzspoBarW2sAyA1Ycte2g91/boBEtfYOczrHS5bzCGHwmglJZGa1NExJeS4jISqsjK
         fHdO1VqZUlX3qE8B8G4hLzssGYiDT+LWOSGCEgW06qlLdLxiTnWDJfza7nULPR/j4bt9
         rSeZfYaNrcMPeCBhukpqTBmSKYxa+E7uVLOcelLnMyrxzk7zuYKJG45nDvd7LwG7iGEq
         jPw3UboTSFVDt/syaB47x3LZ5r/NrJ2jC+nc8qzjoZ6zmf5UBuWXpdeD60zYNvfmB45b
         kcNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=CypoUXMUQaTV3ceNAWB2CTd5gU16tCH8bDCrrH2ORBY=;
        b=Bbi0BcwIjdveY5NFter/MxQvKFSANyIjS5ZJ8emzwzzV2ndt8fKSvcQrpLsZvHJHJ5
         pzwq4aov+LgaqRneXHXtAVYFsVyeP7kfKfe6XwiYhRlDgisfMp/y8g331SHK0wokVSUY
         TedR43kpwjihmUY/ffLBPNSAnWdBrEHIWMU0m70cDnc3s3qleMw/YPxsC4/KHo3pCBB5
         QdXdiy2gAAEpql8tSQ/dhp+cuC6ObB8smuuH0xxY8SMcHf+btP57m+4hTIEzrtKoaXZd
         XU2zEx5mpcmeEQPgFTHu4DQd0kr7IbAh3txA0aYSzn0wW+CTKobjE5orM+lFyKJc7Hxf
         tC2w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eXOKPMBh;
       spf=pass (google.com: domain of brandonbonaby94@gmail.com designates 2607:f8b0:4864:20::d43 as permitted sender) smtp.mailfrom=brandonbonaby94@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <brandonbonaby94@gmail.com>
Received: from mail-io1-xd43.google.com (mail-io1-xd43.google.com. [2607:f8b0:4864:20::d43])
        by gmr-mx.google.com with ESMTPS id 65si132411itx.1.2019.03.14.13.17.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Mar 2019 13:17:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of brandonbonaby94@gmail.com designates 2607:f8b0:4864:20::d43 as permitted sender) client-ip=2607:f8b0:4864:20::d43;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eXOKPMBh;
       spf=pass (google.com: domain of brandonbonaby94@gmail.com designates 2607:f8b0:4864:20::d43 as permitted sender) smtp.mailfrom=brandonbonaby94@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-io1-xd43.google.com with SMTP id v10so6314201iom.8
        for <outreachy-kernel@googlegroups.com>; Thu, 14 Mar 2019 13:17:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=CypoUXMUQaTV3ceNAWB2CTd5gU16tCH8bDCrrH2ORBY=;
        b=eXOKPMBhkiaZE5vazH6lU3/JjiYShH3ZDzT2kZ12GtczoHtUdPPNgqHk9tAkbV935s
         PLk3bX2DlH1qDpZBUXlGQ9LbjjzkQaOmYbVPMMqmfHQv6Ih0QlQkCWf1WLj9swz2DrOj
         NR4oArFIfaQS4QB5S8VEuXsKYlJvpkPJur8dYZZ8hMj2YtIWECAo0wmILdnOOj/o23kP
         FS69c4wWleC5GcNPkUcEWmfLDs9d9PYdOLiopwWt+zgBiWgSiixC8Cvy8S4AUIPar0NV
         w4d2RRZC1HJRO5k8wmtXxGyIZ82Xj1yYgOs/r9CTyxuZBpYdDbYhUVAQzQWE5/J7Gx5j
         GY4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=CypoUXMUQaTV3ceNAWB2CTd5gU16tCH8bDCrrH2ORBY=;
        b=WuPE3tI71d4LKysphV8oQt4eB0JsaTLoqo8Y+AshajZWLtlaeGERePXHpay07kUZd8
         24y3Zvj8lkv9dg4OoZ2Vml9aYQOUQ4OJqqdWKFegSF0XAN5FuoiAE9C5yICOH1bSvOTa
         qrGeaYgKKvm/bTjiO871Q9sz8+8GykJiPT8ChByC7dvzn8TxbixWT6mlxTQkee8uk6QA
         UQfZagJSrbpFzbZW00PuUyUEihM0Z9zb5p83wYpjW5N+dfAT90ljUTRRAu/cQmlXUKUY
         djlhXRVMnfcx9jtz3mt6/QEk9H97LHAG0BpH+MBofM4fpMrnmk+kr/izfAWKqg7UZAOf
         pDLg==
X-Gm-Message-State: APjAAAVcewNKPEV0/cpJcUZcfAcduXQsFmHyh6P92mAxLmKt/kekr6l8
	Q5lRvvPHeAhqhHypYmu65sM8TJPXudJR
X-Received: by 2002:a5d:9554:: with SMTP id a20mr26773504ios.29.1552594622848;
        Thu, 14 Mar 2019 13:17:02 -0700 (PDT)
Return-Path: <brandonbonaby94@gmail.com>
Received: from branx011-Vostro-430 ([2607:fea8:29a0:ff5:6d23:9f8:4c46:2f5f])
        by smtp.gmail.com with ESMTPSA id e5sm1903519ite.33.2019.03.14.13.17.02
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 14 Mar 2019 13:17:02 -0700 (PDT)
From: Branden Bonaby <brandonbonaby94@gmail.com>
To: gregkh@linuxfoundation.org
Cc: Branden Bonaby <brandonbonaby94@gmail.com>,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: wlan-ng: line over 80 character limit
Date: Thu, 14 Mar 2019 16:16:51 -0400
Message-Id: <20190314201651.28111-1-brandonbonaby94@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190313214825.7089-1-brandonbonaby94@gmail.com>
References: <20190313214825.7089-1-brandonbonaby94@gmail.com>

Align macros and function to prevent them from going over
the 80 character a line limit for readability. There should
not be tabspace between #define and the name.
WARNING: line over 80 characters

Signed-off-by: Branden Bonaby <brandonbonaby94@gmail.com>
---
Changes in v2:
	changed tab space to just one space between #define,
	the name and the parameters so the line does not go
	over the 80 character a line limit.

 drivers/staging/wlan-ng/hfa384x.h | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/wlan-ng/hfa384x.h b/drivers/staging/wlan-ng/hfa384x.h
index 992ebaa1071f..2dc560c9c68d 100644
--- a/drivers/staging/wlan-ng/hfa384x.h
+++ b/drivers/staging/wlan-ng/hfa384x.h
@@ -517,13 +517,13 @@ struct hfa384x_tx_frame {
 	HFA384x_TXSTATUS_DISCON | HFA384x_TXSTATUS_AGEDERR | \
 	HFA384x_TXSTATUS_RETRYERR))
 
-#define	HFA384x_TX_SET(v, m, s)		((((u16)(v)) << ((u16)(s))) & ((u16)(m)))
+#define HFA384x_TX_SET(v, m, s) ((((u16)(v)) << ((u16)(s))) & ((u16)(m)))
 
-#define	HFA384x_TX_MACPORT_SET(v)	HFA384x_TX_SET(v, HFA384x_TX_MACPORT, 8)
-#define	HFA384x_TX_STRUCTYPE_SET(v)	HFA384x_TX_SET(v, \
+#define HFA384x_TX_MACPORT_SET(v) HFA384x_TX_SET(v, HFA384x_TX_MACPORT, 8)
+#define HFA384x_TX_STRUCTYPE_SET(v) HFA384x_TX_SET(v, \
 						HFA384x_TX_STRUCTYPE, 3)
-#define	HFA384x_TX_TXEX_SET(v)		HFA384x_TX_SET(v, HFA384x_TX_TXEX, 2)
-#define	HFA384x_TX_TXOK_SET(v)		HFA384x_TX_SET(v, HFA384x_TX_TXOK, 1)
+#define HFA384x_TX_TXEX_SET(v) HFA384x_TX_SET(v, HFA384x_TX_TXEX, 2)
+#define HFA384x_TX_TXOK_SET(v) HFA384x_TX_SET(v, HFA384x_TX_TXOK, 1)
 /*--------------------------------------------------------------------
  * Communication Frames: Receive Frames
  *--------------------------------------------------------------------
@@ -1369,8 +1369,8 @@ struct hfa384x {
 void hfa384x_create(struct hfa384x *hw, struct usb_device *usb);
 void hfa384x_destroy(struct hfa384x *hw);
 
-int
-hfa384x_corereset(struct hfa384x *hw, int holdtime, int settletime, int genesis);
+int hfa384x_corereset(struct hfa384x *hw, int holdtime, int settletime,
+		       int genesis);
 int hfa384x_drvr_disable(struct hfa384x *hw, u16 macport);
 int hfa384x_drvr_enable(struct hfa384x *hw, u16 macport);
 int hfa384x_drvr_flashdl_enable(struct hfa384x *hw);
-- 
2.17.1


