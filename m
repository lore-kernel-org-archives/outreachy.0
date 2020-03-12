X-GM-THRID: 6803293292760924160
X-Received: by 2002:a1c:b4d4:: with SMTP id d203mr4678242wmf.85.1584015156431;
        Thu, 12 Mar 2020 05:12:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:a5c6:: with SMTP id o189ls2367379wme.2.canary-gmail;
 Thu, 12 Mar 2020 05:12:35 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtNb443L6p3r7QRXgmJGyf+m3us2TaYj0u2+wi+0Bj7eNkPxxHYDafNYmTX8bmtE/ZX4b3K
X-Received: by 2002:a1c:23d5:: with SMTP id j204mr4753787wmj.59.1584015155159;
        Thu, 12 Mar 2020 05:12:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584015155; cv=none;
        d=google.com; s=arc-20160816;
        b=ZlpXis1DRnSQ53BCEvW1uFyirHLvIkaU1oJlZGJmYnGJ9LAGyv54loXzUN8Ypxd1SG
         Q4QXvq8KF22ny12Z4Bqj4KOHtJe9yzeJI2RX4GHoYxNjtyT+/YTEtGccdS4ZYkiu89Bb
         8BOKWrxZvubU9iLoHI1t8Gwlcv/u/5+TAwqzv7OozOEhAYoMgB+0cfyWGR1ItIEmsiQ3
         slMyMtqXnx4VbEkB45V6IlDQd/8lyJOAnWrJE+JGvJQepX+EoxQxPFx3czpigWP10mJg
         8zMKzmHYuemxmgna6NXlMEKmnJgnni/geqq5PThEU4hRokvd18Mq0QviXN3yQlaa+eWU
         wCvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=mvXnzRyZGaSY0iosLEyDpWIofoZYqWvbcxtdtwwDO5c=;
        b=qx/ahf5eU96W00LFQ+kevhC5MS2/t1LIvDWzEhFLqVusTDFvBjZiyOihI0VC2SmTS0
         VNNcr8Et6UyWJBAEk7/5PttuUBYtlBFirKgBjwTwNO/IE4uxo82ekkDnCYsH79mnG40j
         94JbL3nE3Xr7jmS+6R0gasYhwSPKvg94HE9ZfJm8hceYn2fd4rGIpPkzF3osB2MfGUQx
         QTUoWTpITVzzRn6IU49iWAxwky6Z0riWpcEiaT4xYjJbQdYZCNYxZiPqxY6EbHCJ/8Ta
         9/47nGcsNoEDV4MAeCx+PVVVJhKgLbcBEpdjfwi9mjEaAM+74sKh5qn3PtL3U+QvVt08
         0w4A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b="fPj/Cs63";
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=lu@pplo.net
Return-Path: <lu@pplo.net>
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com. [2a00:1450:4864:20::341])
        by gmr-mx.google.com with ESMTPS id q9si211656wrx.0.2020.03.12.05.12.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Mar 2020 05:12:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::341 as permitted sender) client-ip=2a00:1450:4864:20::341;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b="fPj/Cs63";
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=lu@pplo.net
Received: by mail-wm1-x341.google.com with SMTP id x3so5385478wmj.1
        for <outreachy-kernel@googlegroups.com>; Thu, 12 Mar 2020 05:12:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pplo.net; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=mvXnzRyZGaSY0iosLEyDpWIofoZYqWvbcxtdtwwDO5c=;
        b=fPj/Cs63LwOR77hePHUq6JmFhL5MWNf2XwndcBW9u50w/t5VA1GvtcnC+DXNY838z7
         yWUwlFqIUH/gaAPK425B5Vgj7IhzoeKr2XfiVJWGwNmWNTqCkYMYnaOBH63ca995V7u2
         jkDhSPft9E7t8bxi/aTFK84l3qSjwb1ri1cQM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=mvXnzRyZGaSY0iosLEyDpWIofoZYqWvbcxtdtwwDO5c=;
        b=ctTCKFYHKn2JhyUW3Qb3UVh60LNbJlhGvA0JhRG8IaTLs0RZdFXaJYYNRLMzxqDVxZ
         mZRCgQe/KWw4j4k/4cALsRoOLeiLoitKVi4Jmai7jfDrbzu1VuzovZFkeEyg1yYwVwAB
         xRR3C6feXAOqqv7N7bsbATYEmOCN/QAd6qQhaDF2xMeF97Gtrl+QRtfrefvzIvjqsAhd
         6R4zT+NtTQ8ewsb2u4qGO64UgBweV1XDQM7FY1Xa2SXaldl9Ia8Yto8+LRiI5I0zaUAA
         GYPjymPARi+r3jdUVb9IENc6+X4pBATNsdzKPLxmcURiHvbOA6vsD28Uwbr+WBTBqj9h
         D/5A==
X-Gm-Message-State: ANhLgQ1Kd2BZim2Y940dKaNVFE1aVytunY5VXLq5rfc8LVhB33r/tB34
	ecHxOUeEAUxCiF1pE4oDbNTjd8cKlODCVw==
X-Received: by 2002:a1c:b4c1:: with SMTP id d184mr4632603wmf.160.1584015154491;
        Thu, 12 Mar 2020 05:12:34 -0700 (PDT)
Return-Path: <lu@pplo.net>
Received: from localhost.localdomain (85.251.42.187.dyn.user.ono.com. [85.251.42.187])
        by smtp.gmail.com with ESMTPSA id o7sm22736976wrx.60.2020.03.12.05.12.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2020 05:12:34 -0700 (PDT)
From: Lourdes Pedrajas <lu@pplo.net>
To: outreachy-kernel@googlegroups.com,
	gregkh@linuxfoundation.org,
	vireshk@kernel.org,
	johan@kernel.org,
	elder@kernel.org
Cc: Lourdes Pedrajas <lu@pplo.net>
Subject: [PATCH] staging: greybus: i2c: remove unused pointers
Date: Thu, 12 Mar 2020 13:12:22 +0100
Message-Id: <20200312121222.6609-1-lu@pplo.net>
X-Mailer: git-send-email 2.17.1

Remove unused pointers in gb_i2c_functionality() and int gb_i2c_probe()
functions.

Signed-off-by: Lourdes Pedrajas <lu@pplo.net>
Suggested-by: Johan Hovold <johan@kernel.org>
---
 drivers/staging/greybus/i2c.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/greybus/i2c.c b/drivers/staging/greybus/i2c.c
index c48fa1de89b0..de2f6516da09 100644
--- a/drivers/staging/greybus/i2c.c
+++ b/drivers/staging/greybus/i2c.c
@@ -224,7 +224,6 @@ static u32 gb_i2c_functionality(struct i2c_adapter *adap)
 
 static const struct i2c_algorithm gb_i2c_algorithm = {
 	.master_xfer	= gb_i2c_master_xfer,
-	/* .smbus_xfer	= gb_i2c_smbus_xfer, */
 	.functionality	= gb_i2c_functionality,
 };
 
@@ -267,7 +266,6 @@ static int gb_i2c_probe(struct gbphy_device *gbphy_dev,
 	adapter->owner = THIS_MODULE;
 	adapter->class = I2C_CLASS_HWMON | I2C_CLASS_SPD;
 	adapter->algo = &gb_i2c_algorithm;
-	/* adapter->algo_data = what? */
 
 	adapter->dev.parent = &gbphy_dev->dev;
 	snprintf(adapter->name, sizeof(adapter->name), "Greybus i2c adapter");
-- 
2.17.1


