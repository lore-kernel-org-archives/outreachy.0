X-GM-THRID: 6252531554516467712
X-Received: by 10.31.151.21 with SMTP id z21mr5578371vkd.7.1455780958072;
        Wed, 17 Feb 2016 23:35:58 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.62.46 with SMTP id v14ls93329igr.4.gmail; Wed, 17 Feb 2016
 23:35:57 -0800 (PST)
X-Received: by 10.98.42.67 with SMTP id q64mr1707568pfq.9.1455780957738;
        Wed, 17 Feb 2016 23:35:57 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pa0-x241.google.com (mail-pa0-x241.google.com. [2607:f8b0:400e:c03::241])
        by gmr-mx.google.com with ESMTPS id 12si768436pfb.1.2016.02.17.23.35.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Feb 2016 23:35:57 -0800 (PST)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) client-ip=2607:f8b0:400e:c03::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x241.google.com with SMTP id a7so687813pax.3
        for <outreachy-kernel@googlegroups.com>; Wed, 17 Feb 2016 23:35:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=04J9my5FUYsqr77Hl0SXrspcGri+AJPyK+jtVqclN00=;
        b=PFCnxvTJ1oqvUNIeMWZr0WrM/b9lSnZ/nN+4uuHSxnyl4w2Ob744TMu7iA120tOa9g
         GyS8cC3SWCv/i3vlIxacAiCcYb/g3RhuMKO779WfBEC5Op0SePONCUg/Afp4+vazXwKq
         ikVCNqsxpv07TQ2JqUgh3s0ANj5oiPCHT2wRx+R5dE4ooG5i6FmO6UYIMIHDLyotlsVz
         ieiNHW6hJCChiIR0z9hkc5WpGtgwAataREh5NXR7pvViGO08vfRlbVSRlg17MW4fEefY
         wOtFOfF/3dgs6oLMkARAKAuu4elQoDIRPPFMhycnTmNjImfRfU5Mw9MXgsKiNunzL9AT
         MNmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=04J9my5FUYsqr77Hl0SXrspcGri+AJPyK+jtVqclN00=;
        b=kBPl20SUwa1iLW1bv9fAJnYoQGM+qs7+MCvVdpJ2Ox+tUleqwh2N6Os6KdipwZiC0+
         nj0c+PGBquUnLnwywhroobpoPI2kWLw5Fin3k7ASl3h05S25JSgnExXQLSE2OqxGevZV
         0ZpY9uFVI/prz9XJq/KCCRNSEZ/6sMSFue77uT6FUnyCBznLAN0If5Y14ENGC89So3Na
         GDklDV2eHNoiheeO1Z3HO4xrxTarg2m1D0coZgMkQ+j9MyT2hliBRtfEufJ0ZjVFYuZD
         wAg/Nf/uVDef6BOvmqeWrfLIO9Q3v0xrq20zqMHrVK8WavAaWc6Ukx1ZU8Cpce6A/t+s
         nfiA==
X-Gm-Message-State: AG10YOTLip6JhTAMWwM6cK9vmiPyUiWbzd0QIFgc2K2RtH0/2yPQ6xLmGTJMgGy2an7ejA==
X-Received: by 10.66.121.10 with SMTP id lg10mr8034068pab.59.1455780957612;
        Wed, 17 Feb 2016 23:35:57 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-Mint ([103.14.62.106])
        by smtp.gmail.com with ESMTPSA id d65sm7640787pfb.74.2016.02.17.23.35.56
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 17 Feb 2016 23:35:57 -0800 (PST)
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Eva Rachel Retuya <eraretuya@gmail.com>
Subject: [PATCH 4/5] staging: iio: light: add space around '*"
Date: Thu, 18 Feb 2016 15:35:39 +0800
Message-Id: <aa13c3f675f3aac09cf285e8dcd8cbd746b8cc0e.1455730714.git.eraretuya@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1455730714.git.eraretuya@gmail.com>
References: <cover.1455730714.git.eraretuya@gmail.com>
In-Reply-To: <cover.1455730714.git.eraretuya@gmail.com>
References: <cover.1455730714.git.eraretuya@gmail.com>

Address checkpatch check pointing out the lack of space around the
operator '*'.

Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>
---
 drivers/staging/iio/light/tsl2583.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/iio/light/tsl2583.c b/drivers/staging/iio/light/tsl2583.c
index 5fc4110..e970b3f 100644
--- a/drivers/staging/iio/light/tsl2583.c
+++ b/drivers/staging/iio/light/tsl2583.c
@@ -731,7 +731,7 @@ static ssize_t taos_luxtable_store(struct device *dev,
 {
 	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 	struct tsl2583_chip *chip = iio_priv(indio_dev);
-	int value[ARRAY_SIZE(taos_device_lux)*3 + 1];
+	int value[ARRAY_SIZE(taos_device_lux) * 3 + 1];
 	int n;
 
 	get_options(buf, ARRAY_SIZE(value), value);
-- 
1.9.1


