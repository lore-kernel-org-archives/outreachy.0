X-GM-THRID: 7650196586496
X-Received: by 10.182.176.35 with SMTP id cf3mr36133520obc.8.1426073714316;
        Wed, 11 Mar 2015 04:35:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.68.103 with SMTP id v7ls241288obt.57.gmail; Wed, 11 Mar
 2015 04:35:14 -0700 (PDT)
X-Received: by 10.182.29.102 with SMTP id j6mr34898509obh.46.1426073714116;
        Wed, 11 Mar 2015 04:35:14 -0700 (PDT)
Return-Path: <somyaanand214@gmail.com>
Received: from mail-pa0-x230.google.com (mail-pa0-x230.google.com. [2607:f8b0:400e:c03::230])
        by gmr-mx.google.com with ESMTPS id ri9si665089pdb.1.2015.03.11.04.35.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Mar 2015 04:35:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) client-ip=2607:f8b0:400e:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) smtp.mail=somyaanand214@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x230.google.com with SMTP id li10so10817523pab.2
        for <outreachy-kernel@googlegroups.com>; Wed, 11 Mar 2015 04:35:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=e97Qhsle2Bc7m6uxYliflT81S8w/T7oq6+IXS6XgkfM=;
        b=fKRfXZ+rb9EQ3za4OTEQtRZ/qt9VAy2tWWUn5LHVRtck7n7BY67nML/AM1+VysF2Tg
         SDJgTbcXIcZY47x/T2EItQwoO8EOrSJZ5GmY3QQbQBTlGuRctFmpYvCs30BuGkT5Wjh5
         d0WPkAnKeEGEXHbKEZ3K3ULmZvoo6Hac8l3HvmBSiYTr6ajHCbCBp5+SjZxB/25/IBHr
         lo3hvfA3oPNO5mIsWPKA9LW0sqlEyK0U62xc5qltqnDwmKZ415wgul0lfWU5FfiAw9my
         fkNRxgGLktjAPtriO7D9VpTfou2lI1uGt9Q1cylk9kIVbXXOoaCDWQZemX7ZPO5Av5PF
         qkQQ==
X-Received: by 10.70.56.34 with SMTP id x2mr76578917pdp.127.1426073713602;
        Wed, 11 Mar 2015 04:35:13 -0700 (PDT)
Return-Path: <somyaanand214@gmail.com>
Received: from localhost.localdomain ([182.66.43.101])
        by mx.google.com with ESMTPSA id kd9sm5815097pab.0.2015.03.11.04.34.33
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 11 Mar 2015 04:35:12 -0700 (PDT)
From: Somya Anand <somyaanand214@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Somya Anand <somyaanand214@gmail.com>
Subject: [PATCH v2 3/5] Staging: dgap: Use setup_timer to combine initialization
Date: Wed, 11 Mar 2015 17:02:14 +0530
Message-Id: <1426073536-22122-3-git-send-email-somyaanand214@gmail.com>
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

 drivers/staging/dgap/dgap.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/dgap/dgap.c b/drivers/staging/dgap/dgap.c
index d4d98a7..120a8c1 100644
--- a/drivers/staging/dgap/dgap.c
+++ b/drivers/staging/dgap/dgap.c
@@ -7041,8 +7041,7 @@ static int dgap_start(void)
 
 	/* Start the poller */
 	spin_lock_irqsave(&dgap_poll_lock, flags);
-	init_timer(&dgap_poll_timer);
-	dgap_poll_timer.function = dgap_poll_handler;
+	setup_timer(&dgap_poll_timer, dgap_poll_handler, 0);
 	dgap_poll_timer.data = 0;
 	dgap_poll_time = jiffies + dgap_jiffies_from_ms(dgap_poll_tick);
 	dgap_poll_timer.expires = dgap_poll_time;
-- 
1.9.1


