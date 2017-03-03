X-GM-THRID: 6393296356207755264
X-Received: by 10.129.86.138 with SMTP id k132mr1455385ywb.23.1488556763827;
        Fri, 03 Mar 2017 07:59:23 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.122.2 with SMTP id a2ls794732itc.15.canary-gmail; Fri, 03
 Mar 2017 07:59:23 -0800 (PST)
X-Received: by 10.107.174.72 with SMTP id x69mr1337759ioe.50.1488556763228;
        Fri, 03 Mar 2017 07:59:23 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id r66si102286pfb.7.2017.03.03.07.59.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Mar 2017 07:59:23 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id 67so5850268pfg.2
        for <outreachy-kernel@googlegroups.com>; Fri, 03 Mar 2017 07:59:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=feLdoT9+GRFcuAOIsttSFieXZYtW/Q/sGNCp6ZtV1Hs=;
        b=ek1mOVBWeKn8cM5FSOZl3PvCjrZgH8pCJHfex2B6WT8OPKdhQCjbtODFBeE6vkpu/V
         1MdBUBD6wg1JeQKz+wk8nKf7QbK/X8DU9BTfFEPUKJy7upvcQH9VuBnjvyEkPNECI3ng
         0yEJgupFd4MHo7MPXj/OwY1M97q0AGLjsItO2srDaG+ZqhGmnr3AP3lUa2A80JfXp8XH
         xeUxPaLfyMPRIfoZhmWZ1cD0/wqe/sYG99DNApSN2R95Gui8141aEKcF6Wbt60qC+UnD
         VfRk98Oay6lrZTG0CEym/nBFmdvg9R8n1TpmMGN9BLNJUAUberJZfaJWfEmVxZVGg6WD
         zQ7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=feLdoT9+GRFcuAOIsttSFieXZYtW/Q/sGNCp6ZtV1Hs=;
        b=bHTK6b9h+cYAyf+pnoVmvcLiCknigScQVOJxaqxZRWmdrU24i2Q4Z+1yMBj/5neAtN
         5H5CRLvtHazNvebAqDrsZdUsJA85PPlgCIDEmWytOnF+euo210DUEPePBx1DrtKBqaFP
         ryBulO1efNxnHBPSsbms/G9fqnmAqK0bvGSXAJWqiqoDdnaQMjfMSZsgTMY+z/NKoXxi
         RwWJEvKLtOWUw4s3QT4gqUVDV9umTu7r1CgBlU9xJL9VDToX+L8Ms3a87jfW440WDr9q
         IVodX6Iw7OxWQK+M7BoyC7jPa3x296O8iMrDtxEtF5IIf9VKsmsuJYk3rYl8Lrig5gBl
         UH3Q==
X-Gm-Message-State: AMke39mrPzWIgQj5ejlp4yeelGdeMKnJngx+Nt5iF8wXH00gUcQB9hTtwTD6ZF5Fh4t0DQ==
X-Received: by 10.84.196.164 with SMTP id l33mr5444882pld.0.1488556762999;
        Fri, 03 Mar 2017 07:59:22 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id i15sm24294904pfj.0.2017.03.03.07.59.21
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 03 Mar 2017 07:59:22 -0800 (PST)
From: simran singhal <singhalsimran0@gmail.com>
To: gregkh@linuxfoundation.org
Cc: david.kershner@unisys.com,
	sparmaintainer@unisys.com,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	Larry.Finger@lwfinger.net,
	florian.c.schilhabel@googlemail.com,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v3 3/3] staging: unisys: Replace "the the " with "the"
Date: Fri,  3 Mar 2017 21:29:06 +0530
Message-Id: <1488556746-599-4-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1488556746-599-1-git-send-email-singhalsimran0@gmail.com>
References: <1488556746-599-1-git-send-email-singhalsimran0@gmail.com>

This patch replace "the the " with "the". The replacement couldn't be
automated because sometimes the first "the" was meant to be another
word.

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 drivers/staging/unisys/visorbus/visorbus_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/unisys/visorbus/visorbus_main.c b/drivers/staging/unisys/visorbus/visorbus_main.c
index 1d54190..e7b04b6 100644
--- a/drivers/staging/unisys/visorbus/visorbus_main.c
+++ b/drivers/staging/unisys/visorbus/visorbus_main.c
@@ -778,7 +778,7 @@ write_vbus_dev_info(struct visorchannel *chan,
 /*
  * fix_vbus_dev_info() - for a child device just created on a client bus, fill
  *                       in information about the driver that is controlling
- *                       this device into the the appropriate slot within the
+ *                       this device into the appropriate slot within the
  *                       vbus channel of the bus instance
  * @visordev: struct visor_device for the desired device
  */
-- 
2.7.4


