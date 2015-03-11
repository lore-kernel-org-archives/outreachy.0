X-GM-THRID: 7650196586496
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,d5f5fa2ef5938719
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.53.9.103 with SMTP id dr7mr11774956vdd.5.1426068435524;
        Wed, 11 Mar 2015 03:07:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.131.199 with SMTP id oo7ls223126obb.46.gmail; Wed, 11 Mar
 2015 03:07:15 -0700 (PDT)
X-Received: by 10.182.186.74 with SMTP id fi10mr34697887obc.1.1426068435350;
        Wed, 11 Mar 2015 03:07:15 -0700 (PDT)
Return-Path: <somyaanand214@gmail.com>
Received: from mail-pa0-x229.google.com (mail-pa0-x229.google.com. [2607:f8b0:400e:c03::229])
        by gmr-mx.google.com with ESMTPS id gu4si628344pac.1.2015.03.11.03.07.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Mar 2015 03:07:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) client-ip=2607:f8b0:400e:c03::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) smtp.mail=somyaanand214@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x229.google.com with SMTP id lj1so10186714pab.8
        for <outreachy-kernel@googlegroups.com>; Wed, 11 Mar 2015 03:07:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=TQFuEDCK3tq0tL5Dl6rdXGNWXkLeaa0medmRjIcRuzY=;
        b=gukDhD5WqjXYJ6mjELEq+KsiMtxTm2kM9n+Vfh5zo96kLmbqXhi1Q1hKvZQGViHtrV
         1WVNCvwxpmWSHn5Xl5MhnddaCtyX7sA2n9q/Yk1AgMMg+gQ5zi14/LRic/jqqZtOoNWG
         IsQqEBopc2fVM7TctOgpviZGKQqXqSkLzYQVtsMS88oncjbJrgDrpsk6otbNMUFxRdRF
         QSUblflgbOC844vqeIcsfwA/jUGyzep29sm1meXKDwECEq1GjRXIsyIj0+5K3x7PQ5L9
         BphYlCFRPa86ewttoOenjB6lcFquFkR4taSQJ+Q3kmS5qRZsYHqGBmcbQKs1y6k055XY
         qQ9A==
X-Received: by 10.66.249.68 with SMTP id ys4mr76665236pac.82.1426068435100;
        Wed, 11 Mar 2015 03:07:15 -0700 (PDT)
Return-Path: <somyaanand214@gmail.com>
Received: from localhost.localdomain ([27.62.203.100])
        by mx.google.com with ESMTPSA id qa3sm5297711pab.16.2015.03.11.03.07.08
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 11 Mar 2015 03:07:14 -0700 (PDT)
From: Somya Anand <somyaanand214@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Somya Anand <somyaanand214@gmail.com>
Subject: [PATCH 4/5] Staging: lustre: Use setup_timer to combine initialization
Date: Wed, 11 Mar 2015 15:34:51 +0530
Message-Id: <1426068292-20348-4-git-send-email-somyaanand214@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1426068292-20348-1-git-send-email-somyaanand214@gmail.com>
References: <1426068292-20348-1-git-send-email-somyaanand214@gmail.com>

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
+ setup_timer(&E1, E2, NULL);
)

Signed-off-by: Somya Anand <somyaanand214@gmail.com>
---
 drivers/staging/lustre/lustre/llite/super25.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/lustre/lustre/llite/super25.c b/drivers/staging/lustre/lustre/llite/super25.c
index 7c1e02a..29713a6 100644
--- a/drivers/staging/lustre/lustre/llite/super25.c
+++ b/drivers/staging/lustre/lustre/llite/super25.c
@@ -152,9 +152,7 @@ static int __init init_lustre_lite(void)
 
 	do_gettimeofday(&tv);
 	cfs_srand(tv.tv_sec ^ seed[0], tv.tv_usec ^ seed[1]);
-
-	init_timer(&ll_capa_timer);
-	ll_capa_timer.function = ll_capa_timer_callback;
+	setup_timer(&ll_capa_timer, ll_capa_timer_callback, NULL);
 	rc = ll_capa_thread_start();
 	if (rc != 0)
 		goto out_proc;
-- 
1.9.1


