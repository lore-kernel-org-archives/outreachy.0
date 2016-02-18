X-GM-THRID: 6252584121027002368
X-Received: by 10.13.223.140 with SMTP id i134mr6055344ywe.11.1455793205399;
        Thu, 18 Feb 2016 03:00:05 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.224.229 with SMTP id rf5ls2450969obc.22.gmail; Thu, 18 Feb
 2016 03:00:05 -0800 (PST)
X-Received: by 10.182.236.34 with SMTP id ur2mr6176664obc.10.1455793205069;
        Thu, 18 Feb 2016 03:00:05 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id 12si892740pfb.1.2016.02.18.03.00.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Feb 2016 03:00:05 -0800 (PST)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id y7so1868276paa.0
        for <outreachy-kernel@googlegroups.com>; Thu, 18 Feb 2016 03:00:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=5dtv0i9XrtUDLmuKDNtBdearJ1ApYNoo7Oy1DDHCM9s=;
        b=dWTHV2vi8/vkblCajF5zupJ1Ux0glIAJ0ygpoyfcleRBoIYwDwrCCb0YOGXBYLURne
         CGGcDLcgf+I8iD0yc1GvUnY6jkq/EVgEMfGcVcnOYOHXQ9OsXejhID/iqG9U4slBfjqX
         tXrmYTHyEV8YQzTXXPeaQJP5qyB6bi4Au46Tma2wPT7xqXhJfef/lXLYo9g1UT14pcVL
         2nVOAXaNbgkOSGaEEKQoUwai6sjLdMR7vBNR3TC9UYBvWishBuhhrFuoPhD0LiqkqQ5w
         XfhX5B0b9FtGKCZzYpD7NdHqQpzhuPVDL/U5byr5w/V7fpssytF4NyDMVtjIGWA2ZcJP
         ZfKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=5dtv0i9XrtUDLmuKDNtBdearJ1ApYNoo7Oy1DDHCM9s=;
        b=mbAPjKJTLvj5wJkewNpREbaT2LdJftHngPZLpUapHojce0w5bU3QLjChi0bmkmVHIE
         jYas+ATYaighfXbCE1IDmKs5zsdLSTtCWFemeneM3Za21nbkE4P5xj/KsTOY11HWy8kZ
         jRLupydPDsMNGMSD6VeDSZpH8vF7d44T8nZTV7fZmZeTn0iFVa+W6+tCwkiFPTd3OOKc
         JzBGYZ5H4Wil4cTsuBkP2QSRoVkJPUgg47ehVIp5BbA72zvn22B1Mejm97HT7EwpZrW8
         rDwPSjz+7KDzFxP9jwKs+7JqrDaFSx/JwcTMzWY2KzYpAlSAYQu49cB4CnTeIMywl4Mg
         FDdA==
X-Gm-Message-State: AG10YOSfapp5xDAbeccIaL4G6C0rHiG1TsWQcwU9ROEw1hlCwRnTefYR1oIqB3k2+gXvNQ==
X-Received: by 10.66.222.199 with SMTP id qo7mr9120524pac.38.1455793204955;
        Thu, 18 Feb 2016 03:00:04 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-Mint ([103.14.62.106])
        by smtp.gmail.com with ESMTPSA id cq4sm9317865pad.28.2016.02.18.03.00.04
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 18 Feb 2016 03:00:04 -0800 (PST)
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Eva Rachel Retuya <eraretuya@gmail.com>
Subject: [PATCH 7/7] staging: iio: resolver: fix comparison to NULL
Date: Thu, 18 Feb 2016 18:59:39 +0800
Message-Id: <1455793179-2674-8-git-send-email-eraretuya@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1455793179-2674-1-git-send-email-eraretuya@gmail.com>
References: <1455793179-2674-1-git-send-email-eraretuya@gmail.com>

Remove comparison of spi->dev.platform_data to NULL by replacing it with
'!spi->dev.platform_data' as checkpatch suggested:

CHECK: Comparison to NULL could be written "!spi->dev.platform_data"

Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>
---
 drivers/staging/iio/resolver/ad2s1210.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/iio/resolver/ad2s1210.c b/drivers/staging/iio/resolver/ad2s1210.c
index 477df95..6b99263 100644
--- a/drivers/staging/iio/resolver/ad2s1210.c
+++ b/drivers/staging/iio/resolver/ad2s1210.c
@@ -675,7 +675,7 @@ static int ad2s1210_probe(struct spi_device *spi)
 	struct ad2s1210_state *st;
 	int ret;
 
-	if (spi->dev.platform_data == NULL)
+	if (!spi->dev.platform_data)
 		return -EINVAL;
 
 	indio_dev = devm_iio_device_alloc(&spi->dev, sizeof(*st));
-- 
1.9.1


