X-GM-THRID: 6258964255021727744
X-Received: by 10.182.29.129 with SMTP id k1mr13072746obh.23.1457278676617;
        Sun, 06 Mar 2016 07:37:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.80.139 with SMTP id c11ls1291054qgd.84.gmail; Sun, 06 Mar
 2016 07:37:56 -0800 (PST)
X-Received: by 10.129.85.68 with SMTP id j65mr14198665ywb.57.1457278676151;
        Sun, 06 Mar 2016 07:37:56 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pf0-x230.google.com (mail-pf0-x230.google.com. [2607:f8b0:400e:c00::230])
        by gmr-mx.google.com with ESMTPS id r75si2467937pfr.0.2016.03.06.07.37.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 06 Mar 2016 07:37:56 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::230 as permitted sender) client-ip=2607:f8b0:400e:c00::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::230 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x230.google.com with SMTP id 63so64419310pfe.3
        for <outreachy-kernel@googlegroups.com>; Sun, 06 Mar 2016 07:37:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=1Stk7quhuVami5VxL+isSG2ci1+58lA4WZ44BwkNRpE=;
        b=SoVtOxwyB9jXnXzCboMZU+PQoOBNeJW2+GrNu1TR3psZieMdRb0fUhHWy4ghIICpEq
         Z36AKz0pMXcvJQlblOMSooRJsidN0DaYQVjKIvYm/Eu94zUTR2+OUKHvnEL4dgZbg6Fl
         UldCSwmuqmnmL+jFyQbqSDmrzX3Ul374ocZM3wbKI713q6Dl+W6Km35nv0jcLyQlV4h4
         KfWImAMEvRXfurOz2pBhZU5X5JSc+8u6dCUOrpouXtgE5hxGpVjZSmdhdz7odc1WUn5G
         1mISqfIQR1bMAQqHGw9mJUTcMmtIIyBtSmTEO6avq2HaCHV62rEnTgLD5ASn4sq0j9HG
         Z0cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=1Stk7quhuVami5VxL+isSG2ci1+58lA4WZ44BwkNRpE=;
        b=JdS7njqq9Acp47mNz9CJZ0hPlUYi1WtA8Uv8baWUjCvUAoJ+J9HU7HlZA+swaH1AQm
         8rhHdxllQ3W8ZGpj2+kxfemd+pRiNKySS3QdnulSl3vFAQ8sgMj2e6tg0llp4i9Otf55
         OpSYzt4jRjl0g33atR5kAbjxJZsyc50zOnAQm41DyE1snvid1ezdg38oTcH/Mict+Fu+
         T7SrRfy03zZzqSc58ki4sFaX5E5lamn9UNYKxe2sJcVg8KDIhBuJo20zxrT3On8rCZ0Y
         kxZ3bEm7P1MpDuUV3XVqcK2H7lGLecwofOVkAGgKyNilU4/eKZMTVkJrgB7icA9dHHWM
         Wp9A==
X-Gm-Message-State: AD7BkJLEAX5YUI8DmIuUlw9JY+AUTaAZMJu2vI2vrumgbX/wEEB5nK5FBd5kcAMMqxyjUQ==
X-Received: by 10.98.86.77 with SMTP id k74mr10677617pfb.28.1457278676000;
        Sun, 06 Mar 2016 07:37:56 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([106.215.181.247])
        by smtp.gmail.com with ESMTPSA id a25sm18415134pfj.40.2016.03.06.07.37.52
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sun, 06 Mar 2016 07:37:55 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Sun, 06 Mar 2016 21:07:42 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH] Staging: lustre: lnet: selftest: Use list_first_entry
Date: Sun,  6 Mar 2016 21:07:35 +0530
Message-Id: <1457278655-16379-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch replaces list_entry with list_first_entry as it makes the
code more clear.
Done using coccinelle:

@@
expression e;
@@
(
- list_entry(e->next,
+ list_first_entry(e,
  ...)
|
- list_entry(e->prev,
+ list_last_entry(e,
  ...)
)

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/lustre/lnet/selftest/rpc.c   | 4 ++--
 drivers/staging/lustre/lnet/selftest/timer.c | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/lustre/lnet/selftest/rpc.c b/drivers/staging/lustre/lnet/selftest/rpc.c
index 129fa02..842ee0b 100644
--- a/drivers/staging/lustre/lnet/selftest/rpc.c
+++ b/drivers/staging/lustre/lnet/selftest/rpc.c
@@ -212,8 +212,8 @@ srpc_service_fini(struct srpc_service *svc)
 				break;
 
 			while (!list_empty(q)) {
-				buf = list_entry(q->next, struct srpc_buffer,
-						 buf_list);
+				buf = list_first_entry(q, struct srpc_buffer,
+						       buf_list);
 				list_del(&buf->buf_list);
 				LIBCFS_FREE(buf, sizeof(*buf));
 			}
diff --git a/drivers/staging/lustre/lnet/selftest/timer.c b/drivers/staging/lustre/lnet/selftest/timer.c
index f9f37ba..acfa226 100644
--- a/drivers/staging/lustre/lnet/selftest/timer.c
+++ b/drivers/staging/lustre/lnet/selftest/timer.c
@@ -128,7 +128,7 @@ stt_expire_list(struct list_head *slot, time64_t now)
 	struct stt_timer *timer;
 
 	while (!list_empty(slot)) {
-		timer = list_entry(slot->next, struct stt_timer, stt_list);
+		timer = list_first_entry(slot, struct stt_timer, stt_list);
 
 		if (timer->stt_expires > now)
 			break;
-- 
1.9.1


