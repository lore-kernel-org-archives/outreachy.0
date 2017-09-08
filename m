X-GM-THRID: 6463333308428189696
X-Received: by 10.101.73.7 with SMTP id p7mr1494338pgs.80.1504865039704;
        Fri, 08 Sep 2017 03:03:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.114.14 with SMTP id n14ls2936477ioc.12.gmail; Fri, 08 Sep
 2017 03:03:58 -0700 (PDT)
X-Received: by 10.129.108.130 with SMTP id h124mr1458927ywc.211.1504865038917;
        Fri, 08 Sep 2017 03:03:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504865038; cv=none;
        d=google.com; s=arc-20160816;
        b=rSVde6xDgu8Togbg607GTqHtSHcPDw2pdI+e1jB3Uyo/94QKST0aZduQ+cQ5aKCZ6X
         Ld805lRrKQNrl6rgBDQJsBKmjFreoRlo8UcYh/TZEh67CgaWi3hel/jjQe1lcZhZcU5o
         zlbMlxTu1XXrWHWy1kczyqRRDHQEr//yxkACAuOis7Ami0UrfZFUOL8N38C7HXwvAf5Z
         kasGlXHdDEEjGKxq3MJb2s/saZVicNLZ1inJooY0a6oYE/XSpjqBxTFbXn198AY1QPOd
         S0ALbJQEcYbEJKcl8Yo26T1VBQ5LvZ9UPW12DHvRUSL4gaGXaPNbyFEExvRvK4EBKScX
         xcSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=xlfbFDlMx1QGRbpH1EXE/kRyJPbHVCkZBmR+iaqXtyQ=;
        b=tKC9O+6nEBo5CTXgewZbAdIrYuu5M/qEv2j2pqUgMghSPid8f/Tm2Cn6CInHcVgekN
         6WaejnYFK1a9HSh4XcUKp2XcIWT8HqZbvh+gX08NQ/Sf29reqp93s8y2Zr+XwM/hYHz+
         V9wA2W2DQdviFgAjbS7Ej/VCpcj5CVcOKfxVq7vh0nHM41nCFArhGkVHj5l86/DtPXdR
         Z9/bZMSJP+rfhYXz5mHT/NEJez9FyO2HiaBx+MO1PI9Rr5WGIs/I7LnQAhX8srIhMrzU
         8HZLc5KJPJXmsixeT+erfAlwVvpByMslUx6gGmMQBot/FO3YgmByvGRavioY6apT8v+/
         7myQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ncCMhZjV;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <harshasharmaiitr@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id o12si191476pfg.19.2017.09.08.03.03.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 08 Sep 2017 03:03:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ncCMhZjV;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id q68so1119092pgq.2
        for <outreachy-kernel@googlegroups.com>; Fri, 08 Sep 2017 03:03:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=xlfbFDlMx1QGRbpH1EXE/kRyJPbHVCkZBmR+iaqXtyQ=;
        b=ncCMhZjVEOtNFBS9B64XR3PksAKI0cylqXGmtRG+RruhCGNcnbkWObGEG5os5c1SOX
         96CXJwrWF5PnsPoLWNNzO1XD//cruFilEqF3uZijgETp6+tB9D6jJZktHZdj/HcSZxXg
         0ZaBFUUCIpkwTGUtiFH94qPmZ2oAEwBCzPu5YfOf3Aid7Z/CFrJwUudXQzdHlSfRjctH
         3dLLdbgJ68TpQc1WngPJ8luHkkv3z2FMalutf8h65GQIJAT8dr/yT3yI6IlVv3zVM6t/
         SjMhgn9Wr8nhnXpE+JFes3R7PB24PdfS/hy/c3cYSHJ0UOrcCYpGaEEkHxoGztnVYrTO
         lB4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=xlfbFDlMx1QGRbpH1EXE/kRyJPbHVCkZBmR+iaqXtyQ=;
        b=ATfS+FHCNLrn1B8Fy92CYBYllR1lgXMT1UyskCi96vBXPXGZde+m2lzimyPXx9ItMU
         e1uwvypEN72ANhA6vU0W8Aix3IHvg++5RfQ67g1s7kaQpTlT//r8lAkqSKRAGUffDrYS
         8HRdaV70R2dNtx/zhMzUlNEA+nTnYz0zhjY519lfb71MqmjJEEI8y/jqBawp4UMISd+G
         owUFBdjRlpDnMNQezYiivwqq+ocd4ilz7uwEvCECA8EQnJr69BKWai9XRbwSxDZGWOBz
         dRY4lpk1xsYcx0WsFj6215a12sMjTVOxHwGTF8kMbySWbJQI/uztOQKJlH/ksSk8Oh+x
         8GKg==
X-Gm-Message-State: AHPjjUjMc99CO/yPnPaouig2H1TzTN/quWkjSI8GpWnsvyso3Gp/kk+4
	IEbh9ijIypwsGNev
X-Google-Smtp-Source: ADKCNb44ZL5htd5IAAgYA1yBZL+iAc2Ex4mzp4GcDdJQciW84Y+v0KtDvpCbUZlvCNk++1Oxd3+A9g==
X-Received: by 10.84.133.6 with SMTP id 6mr2761035plf.61.1504865038690;
        Fri, 08 Sep 2017 03:03:58 -0700 (PDT)
Return-Path: <harshasharmaiitr@gmail.com>
Received: from harryPotter.iitr.ernet.in ([103.37.201.122])
        by smtp.gmail.com with ESMTPSA id 6sm2543265pgf.13.2017.09.08.03.03.56
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 08 Sep 2017 03:03:58 -0700 (PDT)
From: Harsha Sharma <harshasharmaiitr@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Harsha Sharma <harshasharmaiitr@gmail.com>
Subject: [PATCH v5] staging: pi433: Fixes minor typo errors
Date: Fri,  8 Sep 2017 15:31:57 +0530
Message-Id: <1504864917-17198-1-git-send-email-harshasharmaiitr@gmail.com>
X-Mailer: git-send-email 1.9.1

Fixes checkpatch warning -- "occured" and "succesfully" are misspelled

Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
---
Changes in v5:
 -Correct the format of the subject.
 -Signed-off properly with correct author name in .gitconfig
 drivers/staging/pi433/pi433_if.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/pi433/pi433_if.c b/drivers/staging/pi433/pi433_if.c
index 6b9b7df..6a10478 100644
--- a/drivers/staging/pi433/pi433_if.c
+++ b/drivers/staging/pi433/pi433_if.c
@@ -473,7 +473,7 @@ struct pi433_instance {
 	}
 
 
-	/* rx done, wait was interrupted or error occured */
+	/* rx done, wait was interrupted or error occurred */
 abort:
 	dev->interrupt_rx_allowed = true;
 	SET_CHECKED(rf69_set_mode(dev->spi, standby));
@@ -1033,7 +1033,7 @@ static int setup_GPIOs(struct pi433_device *device)
 		if (retval)
 			return retval;
 
-		dev_dbg(&device->spi->dev, "%s succesfully configured", name);
+		dev_dbg(&device->spi->dev, "%s successfully configured", name);
 	}
 
 	return 0;
-- 
1.9.1


