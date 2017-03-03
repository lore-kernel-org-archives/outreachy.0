X-GM-THRID: 6393296356207755264
X-Received: by 10.157.61.37 with SMTP id a34mr1315284otc.128.1488555698094;
        Fri, 03 Mar 2017 07:41:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.47.2 with SMTP id j2ls757741itj.3.gmail; Fri, 03 Mar 2017
 07:41:37 -0800 (PST)
X-Received: by 10.99.158.9 with SMTP id s9mr1284462pgd.128.1488555697538;
        Fri, 03 Mar 2017 07:41:37 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id u12si107838pfd.3.2017.03.03.07.41.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Mar 2017 07:41:37 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id 67so5814563pfg.2
        for <outreachy-kernel@googlegroups.com>; Fri, 03 Mar 2017 07:41:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=feLdoT9+GRFcuAOIsttSFieXZYtW/Q/sGNCp6ZtV1Hs=;
        b=GzPIFNVIrtp3Z39OLJSwKDmW55bEJqon6RCtBtiji3XcvD7c2l4n20jb4A2s4W9qC4
         a25AXnUXdwjZXdyAvNMYJjhnGxHvufp/VE7CTperBIcxtW2QGFHYlXvBHqWAHoHZDUCG
         AhjCc0+f4y1+Ja/upBRU49pShL/pnjrsPJVrj6IhXX/dTbHOqldbLohpRVy7megIC/c+
         0virla21YoXdz0tRvp+qQZCxgAUqVZcaQxdz6fM/GlpFW9MNR176jI/cbU379HPlfKOs
         0xrRbe4kFVGljn9SLEN5ycHR03KcllbGDfXqRZWshEGZm79OpS+Z7eu7w6r2XdfdTFBm
         nomA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=feLdoT9+GRFcuAOIsttSFieXZYtW/Q/sGNCp6ZtV1Hs=;
        b=PSkJ+GXeAU0BFHCvq8GEUkDOdaPaPb5YTIDjAb0QDheClBrJUTLlMxArEWrGWPneai
         zov9HEmT4dRGiPBSkOdTvOjkpzA72cyw35oecBM3UxXvhmVTrnQKQ3LXqDpS+8mAANVX
         qPN6KpqB4kr49rjFgDmRJ+vOORnViV1PJjOh6vFslKuC608QA9+Yt0VgiwsV+K7wgo7R
         yQv4EQ6fAzs+cyHXL8WaLMRH/aqrc/K3GhS5j/q0zV5volDrF3/EACiye27v4BE7j/6M
         oK8s3xQfJwAy/LywbRbnD6YrgP88CdA7L6SZ1FFnSED14ubMH+XUXWoAnSsCwHjRqnqY
         jtvQ==
X-Gm-Message-State: AMke39nVl8NKG8ymy22jXo8JUeZnRf2KtRGMpi2LT5eT5/1cvrMTfXyfc1z3Gy7QoE+eXQ==
X-Received: by 10.98.138.67 with SMTP id y64mr4205986pfd.122.1488555697021;
        Fri, 03 Mar 2017 07:41:37 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id b83sm24222234pfe.12.2017.03.03.07.41.35
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 03 Mar 2017 07:41:36 -0800 (PST)
From: simran singhal <singhalsimran0@gmail.com>
To: gregkh@linuxfoundation.org
Cc: david.kershner@unisys.com,
	sparmaintainer@unisys.com,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	Larry.Finger@lwfinger.net,
	florian.c.schilhabel@googlemail.com,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v1 3/3] staging: unisys: Replace "the the " with "the"
Date: Fri,  3 Mar 2017 21:11:19 +0530
Message-Id: <1488555679-17028-4-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1488555679-17028-1-git-send-email-singhalsimran0@gmail.com>
References: <1488555679-17028-1-git-send-email-singhalsimran0@gmail.com>

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


