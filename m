X-GM-THRID: 6393296356207755264
X-Received: by 10.99.170.76 with SMTP id x12mr1447650pgo.93.1488555317732;
        Fri, 03 Mar 2017 07:35:17 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.11.222 with SMTP id 91ls2921843iol.41.gmail; Fri, 03 Mar
 2017 07:35:16 -0800 (PST)
X-Received: by 10.98.218.86 with SMTP id w22mr340068pfl.15.1488555316720;
        Fri, 03 Mar 2017 07:35:16 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id 2si101595pfz.1.2017.03.03.07.35.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Mar 2017 07:35:16 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id s67so12979870pgb.1
        for <outreachy-kernel@googlegroups.com>; Fri, 03 Mar 2017 07:35:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=feLdoT9+GRFcuAOIsttSFieXZYtW/Q/sGNCp6ZtV1Hs=;
        b=UNkxnsHuI5c5xCRh1E3PQwStCMgyTvOu3kE2MxfOdrNjZB+uxnmuHF4pWkMNlXqWJd
         k83vnwhjz6UQJ1Ueyj1fRgrs+j+Xlguwf9lhwEgcQVi/DaJM++sa3oex2dPhKsbcHFwQ
         szq8dtypFmzJb9zmb3fs0YiYfg1q78cjLB1V7dmPptaI4fIvuNcP9pEu8XBbMHv886/c
         BbbLjRVVpATUzRpIwZrC2DVh17tngOMdqMz/Znd0P/yVmJyPjzdHsGv3kLiPye3c9p59
         hMNpfEqZz3ZprhkL4JO7MVg7PzHmqsAQLcrvS3ZSrs1FbHDgzL82NCUZFJSvX0uwshw/
         /mZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=feLdoT9+GRFcuAOIsttSFieXZYtW/Q/sGNCp6ZtV1Hs=;
        b=dn+WE092SUUKjGAxmkw77BrvZ89Id34+T942s7x/P18LK7kUH4CvBG9dPYx6ST912p
         3Hv02G2wVj03HaSO4eLD9bVZnvRLflI7XrdSpU50AWcnv2UkZK5TK3PefVH+EllVEOZI
         PXq7gPOmSia3z2oFiykq4lABGhuQXoCAAy3XTmjGBok7UYY2l1ZkvjeYWoetYZ1r4PGT
         8dhhXjaOUdqv0JYf9r5zqNLgr98HWwfRwZs9E0TwnuxI+9AIM2vsmqb7/SVmPo2a3uxo
         46dSsE9cnVyMcnHSk5bB75eEiHOO4G2oI9hAtkjD5DuLk+nKp20BlL5WMlRRzrQsqR8r
         TExQ==
X-Gm-Message-State: AMke39lnley01fA3hpjEn1JdSUJTB9SMLwoliwcPiUBD8+r1/NdrcVIoYGKXdf5v9dKdlA==
X-Received: by 10.98.87.27 with SMTP id l27mr4179649pfb.169.1488555316482;
        Fri, 03 Mar 2017 07:35:16 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id s20sm24195088pfg.11.2017.03.03.07.35.14
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 03 Mar 2017 07:35:15 -0800 (PST)
From: simran singhal <singhalsimran0@gmail.com>
To: gregkh@linuxfoundation.org
Cc: david.kershner@unisys.com,
	sparmaintainer@unisys.com,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	Larry.Finger@lwfinger.net,
	florian.c.schilhabel@googlemail.com,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v2 3/3] staging: unisys: Replace "the the " with "the"
Date: Fri,  3 Mar 2017 21:05:00 +0530
Message-Id: <1488555300-9140-4-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1488555300-9140-1-git-send-email-singhalsimran0@gmail.com>
References: <1488555300-9140-1-git-send-email-singhalsimran0@gmail.com>

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


