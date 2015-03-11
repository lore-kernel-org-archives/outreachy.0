X-GM-THRID: 7650196586496
X-Received: by 10.236.53.10 with SMTP id f10mr36478957yhc.17.1426073730195;
        Wed, 11 Mar 2015 04:35:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.60.168 with SMTP id i8ls237243obr.20.gmail; Wed, 11 Mar
 2015 04:35:30 -0700 (PDT)
X-Received: by 10.182.66.8 with SMTP id b8mr28678730obt.23.1426073730004;
        Wed, 11 Mar 2015 04:35:30 -0700 (PDT)
Return-Path: <somyaanand214@gmail.com>
Received: from mail-pa0-x22f.google.com (mail-pa0-x22f.google.com. [2607:f8b0:400e:c03::22f])
        by gmr-mx.google.com with ESMTPS id ri9si665327pdb.1.2015.03.11.04.35.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Mar 2015 04:35:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) client-ip=2607:f8b0:400e:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) smtp.mail=somyaanand214@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pablj1 with SMTP id lj1so10741983pab.8
        for <outreachy-kernel@googlegroups.com>; Wed, 11 Mar 2015 04:35:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=tSehBYlbD1YXU8x07q+ifoFztAE2qpEk+TAcTYxuWQo=;
        b=c5gK46w94llx2cNnCJPs7kCakOxi+lmEAAEI1+6FXV1Ybr0BP/cNrorFa737lwBRiq
         1USctDxFUYZgyrPh4zFuLq49U9iRGaQgHejjjn+hkZaTXMo+nhJ+NKOUjWamV5h3GTYT
         Rvoh9i/gZAcvwrnJhKGq9Go7IINGrgEnSiGyGmj22N2KY+cjVvksnbSxugBtziufzwzg
         X7f5+XJ3ieUEDZMcMi97vhp+VdyQGPhdikLAhrLktSqzz2qM94uWzwcP14HMm308WiSO
         IwZ3WTtAcoP5alai2h8oX/5ho8ajg8br37nbaEZ22PwDPbcvlKux42SGS7VkkuvctmfU
         1OoA==
X-Received: by 10.70.128.67 with SMTP id nm3mr65624387pdb.42.1426073729014;
        Wed, 11 Mar 2015 04:35:29 -0700 (PDT)
Return-Path: <somyaanand214@gmail.com>
Received: from localhost.localdomain ([182.66.43.101])
        by mx.google.com with ESMTPSA id kd9sm5815097pab.0.2015.03.11.04.35.15
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 11 Mar 2015 04:35:28 -0700 (PDT)
From: Somya Anand <somyaanand214@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Somya Anand <somyaanand214@gmail.com>
Subject: [PATCH v2 4/5] Staging: lustre: Use setup_timer to combine initialization
Date: Wed, 11 Mar 2015 17:02:15 +0530
Message-Id: <1426073536-22122-4-git-send-email-somyaanand214@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1426073536-22122-1-git-send-email-somyaanand214@gmail.com>
References: <1426073536-22122-1-git-send-email-somyaanand214@gmail.com>

The function setup_timer combines the initialization of a timer with the
initialization of the timer's function and data fields.

So, this patch combines the multiline code for timer initialization using the function
setup_timer. This issue is identified via coccinelle script.

@@
expression E1, E2, E3;
type T;
@@
- init_timer(&E1);
...
(
- E1.function = E2;
...
- E1.data = (T)E3;
+ setup_timer(&E1, E2, (T)E3);
|
- E1.data = (T)E3;
...
- E1.function = E2;
+ setup_timer(&E1, E2, (T)E3);
|
- E1.function = E2;
+ setup_timer(&E1, E2, 0);
)

Signed-off-by: Somya Anand <somyaanand214@gmail.com>
---
Changes since v1:
 * Change the coccinelle script by replacing NULL with 0.
 * Reword the commit message.
 
 drivers/staging/lustre/lustre/llite/super25.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/lustre/lustre/llite/super25.c b/drivers/staging/lustre/lustre/llite/super25.c
index 7c1e02a..a494f62 100644
--- a/drivers/staging/lustre/lustre/llite/super25.c
+++ b/drivers/staging/lustre/lustre/llite/super25.c
@@ -152,9 +152,7 @@ static int __init init_lustre_lite(void)
 
 	do_gettimeofday(&tv);
 	cfs_srand(tv.tv_sec ^ seed[0], tv.tv_usec ^ seed[1]);
-
-	init_timer(&ll_capa_timer);
-	ll_capa_timer.function = ll_capa_timer_callback;
+	setup_timer(&ll_capa_timer, ll_capa_timer_callback, 0);
 	rc = ll_capa_thread_start();
 	if (rc != 0)
 		goto out_proc;
-- 
1.9.1


