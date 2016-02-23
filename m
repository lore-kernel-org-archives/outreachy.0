X-GM-THRID: 6253655179876368384
X-Received: by 10.28.47.211 with SMTP id v202mr2175849wmv.3.1456261148354;
        Tue, 23 Feb 2016 12:59:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.157.205 with SMTP id g196ls465190lfe.25.gmail; Tue, 23 Feb
 2016 12:59:07 -0800 (PST)
X-Received: by 10.112.173.6 with SMTP id bg6mr1785489lbc.0.1456261147641;
        Tue, 23 Feb 2016 12:59:07 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from mail-wm0-x231.google.com (mail-wm0-x231.google.com. [2a00:1450:400c:c09::231])
        by gmr-mx.google.com with ESMTPS id 141si5303wmy.2.2016.02.23.12.59.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Feb 2016 12:59:07 -0800 (PST)
Received-SPF: pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::231 as permitted sender) client-ip=2a00:1450:400c:c09::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::231 as permitted sender) smtp.mailfrom=nevola@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x231.google.com with SMTP id g62so242091120wme.1
        for <outreachy-kernel@googlegroups.com>; Tue, 23 Feb 2016 12:59:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=CnL/5tNlxKBrs6/N8atAm8W1ktkNgNsIXL6+6h+g9n8=;
        b=PAaYxvVtkIL/c2K8txqFXZQDMNnO9pUnAd83taNzfFMErz+/dn8QUzq3rhduerbfO4
         POw8meFEwutXwj/jPvcWOR/qZcVArplomIFkz0p8wTZlEx/WUh1EQlf5WixxoI0EW1yK
         f3dzg0asJe1+y8R4FgZFwRFlWB1cRFeftcVAi/IqcFFHDAjYo+/Jf5w2QtLj+heCj2u0
         N0IjN4VqZmxF/TpuPCVUAJ2iFVV/Sl9F2UmF+cbMJhZznpYfhpxfcZpbVz0lsNbsAr3Q
         WuMLY1QLcOsopxoMz//ItauDogc1zvpHQEkHDS0B9t3faQtV/hS5h5PuvgDlHDaBdDCj
         5Y+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=CnL/5tNlxKBrs6/N8atAm8W1ktkNgNsIXL6+6h+g9n8=;
        b=TC04VYw31NZmyXyjVC1lRXZMGBr3qnDuiLcJXpeOucnVcDqeSd1jnSsU12wi9+Fr7C
         E9Xu1tYCpU5ke5BXypraR5OonCCzQYkv/STzRUBqibj/brYz3rdI6AcjeUJ4XaH97tPt
         jprTzwB96dPgQK2sKAulqC4JtjHF4kQqxUp8YYAjcqh5477NozDnTUqauHIEhQ9S5LJB
         xVHUHIuWEmsoqBEHMqiFexwZ88NKDWLC/7t6SbTs96p3XFH9HfIeCjhy+4/N56UfHp/q
         91eTQ+4w5gdC34MOCUGCww3rilaKIfTY+qxzBozl0zfzUrrt7cm1Ia/S9S0wcZV8z1VM
         lPUQ==
X-Gm-Message-State: AG10YORcDQugPggyYuzdDbECTTwjHMi0NBOz4tade1strP0n8UXY1Wlqkxa6ZlFEc94aMw==
X-Received: by 10.28.57.131 with SMTP id g125mr19335292wma.17.1456261147489;
        Tue, 23 Feb 2016 12:59:07 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from sonyv (13.Red-2-136-25.dynamicIP.rima-tde.net. [2.136.25.13])
        by smtp.gmail.com with ESMTPSA id ko2sm31468639wjc.9.2016.02.23.12.59.06
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 23 Feb 2016 12:59:06 -0800 (PST)
Date: Tue, 23 Feb 2016 21:59:04 +0100
From: Laura Garcia Liebana <nevola@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: devel@linuxdriverproject.org, marvin24@gmx.de, jak@debian.org
Subject: [PATCH v2] staging: nvec: Avoid the use of BUG_ON
Message-ID: <20160223205858.GA2532@sonyv>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Prevent a kernel panic by avoiding the use of the BUG_ON macro.
Checkpatch detected this issue.

Signed-off-by: Laura Garcia Liebana <nevola@gmail.com>
---
Changes in v2:
	- According to Marc Dietrich, module creator, the WARN_ON macro is not needed as such cases shouldn't happen and they were introduced for debugging purposes.

 drivers/staging/nvec/nvec.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/nvec/nvec.c b/drivers/staging/nvec/nvec.c
index c335ae2..f6a1dbb 100644
--- a/drivers/staging/nvec/nvec.c
+++ b/drivers/staging/nvec/nvec.c
@@ -641,11 +641,9 @@ static irqreturn_t nvec_interrupt(int irq, void *dev)
 			nvec_msg_free(nvec, nvec->rx);
 			nvec->state = 3;
 			nvec_tx_set(nvec);
-			BUG_ON(nvec->tx->size < 1);
 			to_send = nvec->tx->data[0];
 			nvec->tx->pos = 1;
 		} else if (status == (I2C_SL_IRQ)) {
-			BUG_ON(nvec->rx == NULL);
 			nvec->rx->data[1] = received;
 			nvec->rx->pos = 2;
 			nvec->state = 4;
-- 
2.7.0


