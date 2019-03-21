X-GM-THRID: 6670735710407884800
X-Received: by 2002:a9d:7d09:: with SMTP id v9mr541254otn.6.1553151689117;
        Thu, 21 Mar 2019 00:01:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:4143:: with SMTP id o64ls135866oia.8.gmail; Thu, 21 Mar
 2019 00:01:28 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzzwKwLidB0z8R3nMJXbkP5v0ZPGMLZ2DeJku/39iHtVlKlSVI2s63gks9RBD+6GmY6RQGg
X-Received: by 2002:aca:4b4a:: with SMTP id y71mr666730oia.43.1553151688342;
        Thu, 21 Mar 2019 00:01:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553151688; cv=none;
        d=google.com; s=arc-20160816;
        b=xzIhUpof5klSF4KjcVLTE3CWdGyvCBWJcoYBOXURUTJrlZFpICVFjApVe85lyJTe+b
         6dzNMW8CfjYRwjMCEm6JOutdI5uBb9vUQDsRpiutX0LlaSu9878gMuWt7NkUi2ts72YV
         oDvAucvmBV6F9hxqOPugJh+ev3Dv9nIxI0mAhWfFGYPJG4Iky3DWUSA6JhWaGfDcl7NH
         RlfQcSQuJFvkPp0CaoEP76UGdFZjG0Z+yMinrQbvcs9/jydhDdxTrMa+zrBxqjLjh9kw
         u8FF4w3IHjst2Yoz8PiAo+yyseXFyimxZU3l+GG60sY75BmxI/lI6ajb6zljPaFuwzsa
         wW/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=de5n3FWedsxCSvehYf77bJsFmSdHw/hfnJUauXaWwwM=;
        b=oLMcsz6+dChUFgXyudSlR9eI/su8pKjtNeoZxzp0zGioYW679w7/+w7bWryUzrcr2a
         dFFzmT3+G2xTkadJE/xDxKpfNr5NUpmhQR4IcX1lqXRChcQDuDa/J+6TfBOJUhtsZrno
         AXT0pXGJzAajfpdGo89jvGDnmrgUG7xN/QMF89V5tHNCSh7h2W5ihUp9u4cgOVZ3YNeS
         +YSFER3JjlYHI56tuuHYbgl5Jd1ZY2+/8A3cjU7PKp3PacvbUq654stSqNGh022ccBPz
         qAhHQBuTzMMGSD6iB8WZogNRCcAz3zhS2LFkcMvm5eyNP82s31IqrNLC1YODWlWdPh0I
         TihA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CMUZOjKp;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id p8si219995oig.5.2019.03.21.00.01.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 00:01:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CMUZOjKp;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id a3so3675097pff.11
        for <outreachy-kernel@googlegroups.com>; Thu, 21 Mar 2019 00:01:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=de5n3FWedsxCSvehYf77bJsFmSdHw/hfnJUauXaWwwM=;
        b=CMUZOjKpTvw6TFj12AqV5gH+1my6uFqM8X8IE7cqF1fnQoObUJmLEK+S0XA9znaW1y
         Rk3NAn6K+yQ6TMPSoETsX6BFq7oMAhP9MrqHfZ+U8pNzu+9eaLsmTmjQOjXXenoaL51e
         GWTemYCUkg0cJdk8J3LXZ4G88tJPDHAmx/4k4oIRDuV3MPBeh2zQzbPkjeayzpfAmVXn
         CkoF114Zzu/o01jU3biPkivZ0/zDtbcmc3iC8ipKBCrFVpzuKPLgGFu2S1JBLERbHi8M
         SYqLVfZgzbSatWd3rAijmer47oiiRe2zCZEhQ75LEM7ZEe/2syOCisevnC8ZqvY5U4X4
         2Ctw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=de5n3FWedsxCSvehYf77bJsFmSdHw/hfnJUauXaWwwM=;
        b=Cz1o6hQK7WPJ0pK8OMkyJCwfIeQj0geeX0+SfEF8hAWPmk4UzTrXpjef9uG52lym3+
         0M4VLKpzaMeSi2ewo/SEPazvFLA+dox2fcCFfxduNLD8q8dj1Pn0Nrv5u60zrmQdQzn4
         CWXRSFYmhYiOz/ZfQ7mZRnyz0lhOOnwIZbVDEumgmlW/pirhsBQexAQNaif4GxZjJMtB
         YtunxsSQX1vmCJwoAvLbtCNWOpVjpQfSFHVozDytvtlzgPIJ8zCk66izZttYPE7lPOR9
         Gg+44ww5jYTxcvtUxf+VUHTBiAliQSEQQ1NZ9B45ScNHQ4mkkP703hvO8rDlcEWKtiBi
         R9EQ==
X-Gm-Message-State: APjAAAX6P9n6fAqYZZEG/RW1Kh3RXDCu+X9qe4P3RaBI0Nm9QZs7a6Du
	GgVSApHS/5m1ntJpEUCjnuUj6zwOtQI=
X-Received: by 2002:a17:902:6aca:: with SMTP id i10mr1985798plt.43.1553151687634;
        Thu, 21 Mar 2019 00:01:27 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from sanjana-Inspiron-5570.domain.name ([219.91.183.81])
        by smtp.googlemail.com with ESMTPSA id k10sm10124551pgj.11.2019.03.21.00.01.25
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 00:01:26 -0700 (PDT)
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: greybus: usb.c: Remove unnecessary local variables.
Date: Thu, 21 Mar 2019 12:31:14 +0530
Message-Id: <20190321070114.7272-1-sanjana99reddy99@gmail.com>
X-Mailer: git-send-email 2.17.1

The two lines could be compressed into one statement.
Challenge suggested by Coccinelle using ret.cocci.

Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
---
 drivers/staging/greybus/usb.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/greybus/usb.c b/drivers/staging/greybus/usb.c
index 1c246c73a085..3aac637c3a50 100644
--- a/drivers/staging/greybus/usb.c
+++ b/drivers/staging/greybus/usb.c
@@ -48,11 +48,9 @@ static inline struct usb_hcd *gb_usb_device_to_hcd(struct gb_usb_device *dev)
 static void hcd_stop(struct usb_hcd *hcd)
 {
 	struct gb_usb_device *dev = to_gb_usb_device(hcd);
-	int ret;
 
-	ret = gb_operation_sync(dev->connection, GB_USB_TYPE_HCD_STOP,
-				NULL, 0, NULL, 0);
-	if (ret)
+	if (gb_operation_sync(dev->connection, GB_USB_TYPE_HCD_STOP,
+			      NULL, 0, NULL, 0))
 		dev_err(&dev->gbphy_dev->dev, "HCD stop failed '%d'\n", ret);
 }
 
-- 
2.17.1


