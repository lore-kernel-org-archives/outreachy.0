X-GM-THRID: 6961305062270304256
X-Received: by 2002:a05:651c:39d:: with SMTP id e29mr28695961ljp.97.1620805138854;
        Wed, 12 May 2021 00:38:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6512:6c2:: with SMTP id u2ls49615lff.3.gmail; Wed, 12
 May 2021 00:38:57 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJw+ZbV2a3Juui0/sZhCYji/vaEezHy/UyLQkDhQqPkRm1MO/rv7PobB90Hr8dCOaN2e9Ndy
X-Received: by 2002:ac2:5979:: with SMTP id h25mr23809211lfp.297.1620805137079;
        Wed, 12 May 2021 00:38:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620805137; cv=none;
        d=google.com; s=arc-20160816;
        b=qCMUhWA+jhw03UJnV7kZRNDJEFfD+x6ztDthmAmEINn2dhZgkSDFV/ohME18pr5ur+
         b08WAYNd/mydxyYfZDiwBqP9DVl7l4fA5oa8i1ioXob+Ov5QtnyX2AtJjYfytKS8375p
         UPoylwXQa5a+0kKDXLryyAzGX5sBo+Z5qINvTjS3sIeqXA+QjjR5PsXkMm+AxVvTBrcU
         GWnnVZ3AWagLkEI6luAFCtwM2HWiYeb8rkj9xYKZVfSYx6HbF7F23f/Et8UBUJYgC+Xd
         oVSM8BnRAIbkvrR5PrOEnO9TrXL/dN0qoesJByetZ0QIyd9xqLikQQzyfz93sK9XVMTo
         1R/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=N9lhNSkhlyUhXIO2O+gz6kztxq/n6XYJjAIx1T19amQ=;
        b=G+k4jrIocyWar7rErV/fRUEzThkngmGTTRY7qWfpamzul5rs9AY9AdWWDc/xnOoQdu
         TBTqi0tPQTxQ2PON38jNiMoLZLmF7TDR9J4HQXQ8jOPWXZ72ewmS6n3ArwU7oXLIJ41k
         n6AtAX6Y5L+nUZ5syEN/aTcSqzizRdyc6ERAkvL3bPHhNIRSFkmReWw2g2Qm6U0mm6xr
         UcfVRMsRP0IPKAf6sgrB8W8MJb6oU74Nw9hh54Bg7wVY+fcSGtsswVxwX36niGSQdw7l
         Iz0Gz4v7hLfYojomgMF2NEhpEJLQrsPbAtppomS0+2P0wWmKpguIgdJSZpof5edtY685
         XexA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NCVUjbwJ;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62a as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com. [2a00:1450:4864:20::62a])
        by gmr-mx.google.com with ESMTPS id z25si801406lfu.6.2021.05.12.00.38.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 May 2021 00:38:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62a as permitted sender) client-ip=2a00:1450:4864:20::62a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NCVUjbwJ;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62a as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ej1-x62a.google.com with SMTP id f24so33532810ejc.6
        for <outreachy-kernel@googlegroups.com>; Wed, 12 May 2021 00:38:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=N9lhNSkhlyUhXIO2O+gz6kztxq/n6XYJjAIx1T19amQ=;
        b=NCVUjbwJyi4J8KMUagQgUhYcUdm/bOEs57Z4W8zkTyVfrMs81FmSAoTxTqCedjKOse
         cglM0y0DP2muX3kEQzaZAYs98P5m7EslPZPYgFbnnfLnpKx8AYSvEXu9yxj0U3yA1wqI
         biPBYqP2gD6g6OhfMiwpPQWBbe69T8GawEJU++3Mpu0YlYPsVP/7tkhb88HAPlFyvwwy
         N2QhQx1BNP/e7IGjUpT3ZGcdnq2ecU1ipnHepX1BwabKagSSYabYNq0uLJAnbOfWv4Et
         JdwFr1G0/GH73uZQ0GosBDDO9SuJpSaCgnicVXgyrROX9DFKkrb0WMzXazK3Z8v4lNva
         jP/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=N9lhNSkhlyUhXIO2O+gz6kztxq/n6XYJjAIx1T19amQ=;
        b=MhHDmFpTQahjRpe6/2DX0CShDviWHVFrQmIxA9dmVH54M3QhHNxrwVdXGZ3MYSzzWE
         U6sgeSCGYdj2Cc2UyVkBtJAS3VqWvZi+03Itk0LYmPYyTp2rzPrr4BsqkHHlra5EMkv+
         WeM0bhbFD9s/P0TJrm9+FrBrZo+PK0/UJ/2vYc3Wum+iPsk2Ml+Cr8n6xbfrRZ5QW7Mo
         8m8jSviLjYBNh0IfmkNjcQokCT+terjZR29ONAAY7BMOdyVXR8QgDu7pINsQiF4Wl6vT
         sKl5TkL4+Ui+3Q78sbe1x2F5KjJ2n+pcekqNErVAe5i6LxRS8GmZSHbMv9H63AD/sgDV
         d4Jw==
X-Gm-Message-State: AOAM533JsK+bqEnMkaXGUUeppdkl4ItX+iEd7Z2OVH8u1djgBb+/c9WU
	6a1B+x/mVZqSocAaAe/gTijUn1MbIhY=
X-Received: by 2002:a17:906:268c:: with SMTP id t12mr5761291ejc.441.1620805136528;
        Wed, 12 May 2021 00:38:56 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from linux.local (host-79-52-107-152.retail.telecomitalia.it. [79.52.107.152])
        by smtp.gmail.com with ESMTPSA id g16sm5691854ejw.42.2021.05.12.00.38.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 May 2021 00:38:55 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-staging@lists.linux.dev (open list:STAGING SUBSYSTEM),
	linux-kernel@vger.kernel.org (open list)
Cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Subject: [Outreachy kernel] [PATCH] staging: rtl8723bs: hal: Remove set but unused variable
Date: Wed, 12 May 2021 09:38:52 +0200
Message-Id: <20210512073852.14085-1-fmdefrancesco@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Removed "delta_IQK" and its occurrences in comments
and code because the variable is set but not used.
Issue detected by GCC.

Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
---
 drivers/staging/rtl8723bs/hal/HalPhyRf.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/HalPhyRf.c b/drivers/staging/rtl8723bs/hal/HalPhyRf.c
index b8e385fdda89..365e1195b5e5 100644
--- a/drivers/staging/rtl8723bs/hal/HalPhyRf.c
+++ b/drivers/staging/rtl8723bs/hal/HalPhyRf.c
@@ -76,7 +76,7 @@ void ODM_TXPowerTrackingCallback_ThermalMeter(struct adapter *Adapter)
 	struct hal_com_data *pHalData = GET_HAL_DATA(Adapter);
 	struct dm_odm_t *pDM_Odm = &pHalData->odmpriv;
 
-	u8 ThermalValue = 0, delta, delta_LCK, delta_IQK, p = 0, i = 0;
+	u8 ThermalValue = 0, delta, delta_LCK, p = 0, i = 0;
 	u8 ThermalValue_AVG_count = 0;
 	u32 ThermalValue_AVG = 0;
 
@@ -137,7 +137,7 @@ void ODM_TXPowerTrackingCallback_ThermalMeter(struct adapter *Adapter)
 		ThermalValue = (u8)(ThermalValue_AVG / ThermalValue_AVG_count);
 	}
 
-	/* 4 5. Calculate delta, delta_LCK, delta_IQK. */
+	/* 4 5. Calculate delta, delta_LCK */
 	/* delta" here is used to determine whether thermal value changes or not. */
 	delta =
 		(ThermalValue > pDM_Odm->RFCalibrateInfo.ThermalValue) ?
@@ -147,10 +147,6 @@ void ODM_TXPowerTrackingCallback_ThermalMeter(struct adapter *Adapter)
 		(ThermalValue > pDM_Odm->RFCalibrateInfo.ThermalValue_LCK) ?
 		(ThermalValue - pDM_Odm->RFCalibrateInfo.ThermalValue_LCK) :
 		(pDM_Odm->RFCalibrateInfo.ThermalValue_LCK - ThermalValue);
-	delta_IQK =
-		(ThermalValue > pDM_Odm->RFCalibrateInfo.ThermalValue_IQK) ?
-		(ThermalValue - pDM_Odm->RFCalibrateInfo.ThermalValue_IQK) :
-		(pDM_Odm->RFCalibrateInfo.ThermalValue_IQK - ThermalValue);
 
 	/* 4 6. If necessary, do LCK. */
 	/*  Delta temperature is equal to or larger than 20 centigrade. */
-- 
2.31.1


