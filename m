X-GM-THRID: 6399911887326150656
X-Received: by 10.129.82.133 with SMTP id g127mr16455086ywb.161.1490095617294;
        Tue, 21 Mar 2017 04:26:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.133.9 with SMTP id h9ls4408539iod.49.gmail; Tue, 21 Mar
 2017 04:26:56 -0700 (PDT)
X-Received: by 10.99.111.11 with SMTP id k11mr18739216pgc.38.1490095616498;
        Tue, 21 Mar 2017 04:26:56 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id g82si3226578pfb.5.2017.03.21.04.26.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Mar 2017 04:26:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id 81so16665662pgh.3
        for <outreachy-kernel@googlegroups.com>; Tue, 21 Mar 2017 04:26:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=eL2MxB9Yc0ltTbaPPkixCZckzfCs5Jtln5VrQD4RkHk=;
        b=dmxw3tddtyM1zDdnGGCIHyIHjJ2MTA6HoXm4wmLYT5ZAtyAU4nsiXn+ODRcQooXc+2
         iH/Bke25gt6iaG2WCUnDfJFgklt6YKRPSRzoXKx+qybeI6xWZ6WJbl1mPAhwqnnPYCWN
         yuXRNPOGbtMBL551Lh1+fkmF0EZdOVTHS3Lqha2RRbcvP1ajlTYTCY1OnMvWJow9LR+8
         jCNFwtERNPa5cfm6IseI1TASg3Qfxlc0PNoPxPBnJ2hKrrfJCWtmumhxrSNiHbhkIXwI
         DaqLHlPHYtxuOaLYrKt6lRJPwldUz3tQ956OSE8tnjfvtcRUxTYTuvTtptrq3YV/iylX
         VwMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=eL2MxB9Yc0ltTbaPPkixCZckzfCs5Jtln5VrQD4RkHk=;
        b=C5TrmShjupntjqozslEOhrpVtZQv/mAYXa9o5YJ1aekhZnWJxxpfLcK0GPjnrKLJ8r
         dYiuIrJDLOenoQmqy4za30vwMMtxrvA7wUe+LAHHJf/k0iO02OgqAoSx29duGvZ47piz
         Onnhbd9h40vjO7SJ5Vw7Im9vsP0JuzFACa65ifsc3mIeFnG7OAmSz9302yp2DBI/Li6Q
         CC3AuqwMigJuSenbmf6W01+En9tSQrRcm0p+bVTin4TrtsS/Ya5CNsUJMe8bGDAgQV7a
         nsBzRqguIHCcIT9pKW3MvR8RL8eX8VySjvwr5Yyi924GYCQPZpkWsicMVuijuMl/znJk
         57BA==
X-Gm-Message-State: AFeK/H1bYbLB5Z6XjAi9aBZ1TTUsJ44DItH12KsvbUZfLkDP8YdgR6/NGP1zGCZsZltNEA==
X-Received: by 10.99.49.13 with SMTP id x13mr34390241pgx.128.1490095616331;
        Tue, 21 Mar 2017 04:26:56 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id q4sm20948357pgc.63.2017.03.21.04.26.54
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 21 Mar 2017 04:26:55 -0700 (PDT)
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: w.d.hubbs@gmail.com
Cc: linux-fbdev@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	teddy.wang@siliconmotion.com,
	sudipm.mukherjee@gmail.com,
	gregkh@linuxfoundation.org,
	speakup@linux-speakup.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	Arushi Singhal <arushisinghal19971997@gmail.com>
Subject: [PATCH 2/2] staging: sm750fb: Remove typedefs from enum
Date: Tue, 21 Mar 2017 16:56:39 +0530
Message-Id: <20170321112639.32495-3-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170321112639.32495-1-arushisinghal19971997@gmail.com>
References: <20170321112639.32495-1-arushisinghal19971997@gmail.com>

This patch removes typedefs from enum and renames them as
per kernel coding standards.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 drivers/staging/sm750fb/ddk750_mode.h | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_mode.h b/drivers/staging/sm750fb/ddk750_mode.h
index 9dc4d6c5a779..d5eae36d85cb 100644
--- a/drivers/staging/sm750fb/ddk750_mode.h
+++ b/drivers/staging/sm750fb/ddk750_mode.h
@@ -3,11 +3,10 @@
 
 #include "ddk750_chip.h"
 
-typedef enum _spolarity_t {
+enum spolarity {
 	POS = 0, /* positive */
 	NEG, /* negative */
-}
-spolarity_t;
+};
 
 struct mode_parameter {
 	/* Horizontal timing. */
@@ -15,14 +14,14 @@ struct mode_parameter {
 	unsigned long horizontal_display_end;
 	unsigned long horizontal_sync_start;
 	unsigned long horizontal_sync_width;
-	spolarity_t horizontal_sync_polarity;
+	enum spolarity horizontal_sync_polarity;
 
 	/* Vertical timing. */
 	unsigned long vertical_total;
 	unsigned long vertical_display_end;
 	unsigned long vertical_sync_start;
 	unsigned long vertical_sync_height;
-	spolarity_t vertical_sync_polarity;
+	enum spolarity vertical_sync_polarity;
 
 	/* Refresh timing. */
 	unsigned long pixel_clock;
@@ -30,7 +29,7 @@ struct mode_parameter {
 	unsigned long vertical_frequency;
 
 	/* Clock Phase. This clock phase only applies to Panel. */
-	spolarity_t clock_phase_polarity;
+	enum spolarity clock_phase_polarity;
 };
 
 int ddk750_setModeTiming(struct mode_parameter *parm, clock_type_t clock);
-- 
2.11.0


