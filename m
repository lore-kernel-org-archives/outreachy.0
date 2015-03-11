X-GM-THRID: 7650196586496
X-Received: by 10.43.64.143 with SMTP id xi15mr30660644icb.0.1426068427683;
        Wed, 11 Mar 2015 03:07:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.109.166 with SMTP id l35ls522864qgf.8.gmail; Wed, 11 Mar
 2015 03:07:07 -0700 (PDT)
X-Received: by 10.140.146.5 with SMTP id 5mr26893399qhs.4.1426068427535;
        Wed, 11 Mar 2015 03:07:07 -0700 (PDT)
Return-Path: <somyaanand214@gmail.com>
Received: from mail-pd0-x234.google.com (mail-pd0-x234.google.com. [2607:f8b0:400e:c02::234])
        by gmr-mx.google.com with ESMTPS id pc4si634139pac.0.2015.03.11.03.07.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Mar 2015 03:07:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c02::234 as permitted sender) client-ip=2607:f8b0:400e:c02::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c02::234 as permitted sender) smtp.mail=somyaanand214@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pdev10 with SMTP id v10so10107396pde.0
        for <outreachy-kernel@googlegroups.com>; Wed, 11 Mar 2015 03:07:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=qtam4B5PlrNYDLDMRnfg5LaeFE0xm3/zpZopJ0KC9WI=;
        b=s4ELnp7i5zj9QocrUYC/PCGlq3PqTJkkWaQWel1UuVv4XYfmXjm5kxLWYCtANcgtw7
         HSM+jM6I++ZdkgcHDIZr7lUscL1kQovZh+0pdUC6BChs4B1t0Dd6tRzGxm8nml5nG3c/
         xjo5UXs6h9z4KOPmw8S/lIWWIxPYMBrsw3auHpnFtSqu7tvaU+IyObTet7IvuHlQ5kgd
         /LPlV5S+nb0aOo3LR6n8IQZZtW4CX2UJUe0TcdVmg4V66FJXULu7jEE44vYMqK/ReYCc
         oATVJ7qaSURUKp8lAqYUI2kqS0dUGX/1WEkrC7Re8dyjqmdDLKqshHUe5fLf2rKcXlCq
         BEnQ==
X-Received: by 10.66.65.195 with SMTP id z3mr76686506pas.10.1426068427316;
        Wed, 11 Mar 2015 03:07:07 -0700 (PDT)
Return-Path: <somyaanand214@gmail.com>
Received: from localhost.localdomain ([27.62.203.100])
        by mx.google.com with ESMTPSA id qa3sm5297711pab.16.2015.03.11.03.06.49
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 11 Mar 2015 03:07:06 -0700 (PDT)
From: Somya Anand <somyaanand214@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Somya Anand <somyaanand214@gmail.com>
Subject: [PATCH 3/5] Staging: dgap: Use setup_timer to combine initialization
Date: Wed, 11 Mar 2015 15:34:50 +0530
Message-Id: <1426068292-20348-3-git-send-email-somyaanand214@gmail.com>
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
 drivers/staging/dgap/dgap.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/dgap/dgap.c b/drivers/staging/dgap/dgap.c
index d4d98a7..43163a0 100644
--- a/drivers/staging/dgap/dgap.c
+++ b/drivers/staging/dgap/dgap.c
@@ -7041,8 +7041,7 @@ static int dgap_start(void)
 
 	/* Start the poller */
 	spin_lock_irqsave(&dgap_poll_lock, flags);
-	init_timer(&dgap_poll_timer);
-	dgap_poll_timer.function = dgap_poll_handler;
+	setup_timer(&dgap_poll_timer, dgap_poll_handler, NULL);
 	dgap_poll_timer.data = 0;
 	dgap_poll_time = jiffies + dgap_jiffies_from_ms(dgap_poll_tick);
 	dgap_poll_timer.expires = dgap_poll_time;
-- 
1.9.1


