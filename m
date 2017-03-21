X-GM-THRID: 6399968600794333184
X-Received: by 10.129.34.10 with SMTP id i10mr18237503ywi.58.1490108830447;
        Tue, 21 Mar 2017 08:07:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.73.132 with SMTP id g4ls8737959otf.39.gmail; Tue, 21 Mar
 2017 08:07:10 -0700 (PDT)
X-Received: by 10.13.238.134 with SMTP id x128mr18756275ywe.59.1490108829973;
        Tue, 21 Mar 2017 08:07:09 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id 190si2036971pfv.3.2017.03.21.08.07.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Mar 2017 08:07:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id w20so698271pgc.1
        for <outreachy-kernel@googlegroups.com>; Tue, 21 Mar 2017 08:07:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=zGN/U9wHdbgJ+aFD33fa5AVzhBnyyh2OgI14Rlfxy4Y=;
        b=tyTy4qAXGbKRIrAsoCeRcCoRQEZBpeTfEfcaafMc8foIXbUsFIiBF2up7KMGUJP3y7
         KCbw5cEKGh009FDxdXVCqR5Rkw7Uqr+rDszrts+6f2tlmbQKNTedGxcbRzZdchtCkqTx
         zS057/gkpWZd2euhgjQd1eWFPKHGh2rZwCoIocHe3CspoGo5SgJkffhJZ9ICOYhZ74SO
         my9ZFQ8iiwqZJPmIHr4sgQdXRO43BNHFQCcbLKHeARjMF07ORm1JciFSqYUDBe20dSGZ
         yS4dzVB7cTL55as1oWwVh2UmDK0rUhkUSUhVwxRHtO90wlNdU1EcuE7HutwaVntH5k6M
         fGpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=zGN/U9wHdbgJ+aFD33fa5AVzhBnyyh2OgI14Rlfxy4Y=;
        b=FVynCOY5mIztUnjZGuZdd8fOczL5OtCK03K6p11JAeaxgSaotFdNwj1uGqLeBIHQXo
         In6vsCExFWUuoNcPlNS49Ky8nrdWcgsRBCa5kobFZZ0Yin2zKn5D9Qxr0STdE+NuHjEp
         D9aDGwTtzyS6hBwpN0mpZRBF41aFQmRqniNsSCRiCq494jaC8H0NPpvz4I0LNlbPAMmA
         wKVXTMV2b0zSkXHup4E8My7TcbyeLHBo3V8xddAHnkyJbTIm4u42T22AWLNJqsNJWBnk
         DBysw66dIWi9sXCz6uQTZiwgJsGJYzvXmjaHy97NN1yI4A7jK4+B4iiuH4DBsYHp3MA6
         AWlA==
X-Gm-Message-State: AFeK/H0hET/jk7zRo8y6Ci8dw1LSWPytCt3EGWfq8SIIUbyOBrFVkUoMSKethvOBUKsBYA==
X-Received: by 10.99.163.72 with SMTP id v8mr27271334pgn.115.1490108829729;
        Tue, 21 Mar 2017 08:07:09 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id g29sm40318152pfg.37.2017.03.21.08.07.07
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 21 Mar 2017 08:07:08 -0700 (PDT)
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: linux-fbdev@vger.kernel.org
Cc: outreachy-kernel@googlegroups.com,
	Michael.Hennerich@analog.com,
	teddy.wang@siliconmotion.com,
	gregkh@linuxfoundation.org,
	speakup@linux-speakup.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	sudipm.mukherjee@gmail.com,
	linux-iio@vger.kernel.org,
	Arushi Singhal <arushisinghal19971997@gmail.com>
Subject: [PATCH v2 2/2] staging: sm750fb: Remove typedef from "typedef enum _spolarity_t"
Date: Tue, 21 Mar 2017 20:36:38 +0530
Message-Id: <20170321150638.9175-3-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170321150638.9175-1-arushisinghal19971997@gmail.com>
References: <20170321150638.9175-1-arushisinghal19971997@gmail.com>

This patch removes typedefs from enum and renames it from "typedef enum
_spolarity_t" to "enum spolarity" as per kernel coding standards."

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
changes in v2
 -change the subject and commit message of PATCH.

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


