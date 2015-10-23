X-GM-THRID: 6208923075910565888
X-Received: by 10.28.138.83 with SMTP id m80mr124666wmd.7.1445627556131;
        Fri, 23 Oct 2015 12:12:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.20.226 with SMTP id 95ls87042lfu.10.gmail; Fri, 23 Oct 2015
 12:12:35 -0700 (PDT)
X-Received: by 10.112.173.170 with SMTP id bl10mr5323610lbc.7.1445627555371;
        Fri, 23 Oct 2015 12:12:35 -0700 (PDT)
Return-Path: <brcnakalin@gmail.com>
Received: from mail-wi0-x234.google.com (mail-wi0-x234.google.com. [2a00:1450:400c:c05::234])
        by gmr-mx.google.com with ESMTPS id cm6si336998wib.1.2015.10.23.12.12.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 23 Oct 2015 12:12:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of brcnakalin@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) client-ip=2a00:1450:400c:c05::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of brcnakalin@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) smtp.mailfrom=brcnakalin@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by wicll6 with SMTP id ll6so44201318wic.1
        for <outreachy-kernel@googlegroups.com>; Fri, 23 Oct 2015 12:12:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=sSHO296mMYIfPqjUKbazOR6htTPW51jZH8NVjdG1Im0=;
        b=LnaMeoXohKPPiz3YNwq1l9hrXEj6qX8iVOzHOfAziXAMnEicn7B7Vyzmh5PZ7PzEAm
         zgLZVTuXs7EMUExnZtCRlGvHQ+T1h/foPVTQ5ZeQ+s4o06Dj07t29kmMBJEQQxDsOvW4
         ZDVrKqFHABdNcOvXr80yvhb80pxoZwD/uhFYQOrVMG8tsRi9BLMy5t34pa70RWRWww0N
         4sPkvXKovlDmnwqxGWHXPt5Ki0le/L4xOqIf7aaxBMbk/R0otFluG4Kh/Av0lblpWYTA
         C8sFtL4oXsLLTLfokCJp5iKRVyZSkKyA3hfZP+RH7E9XmKF6EzQorkv9CrtinPC6q3F0
         3B7w==
X-Received: by 10.180.91.198 with SMTP id cg6mr6371252wib.78.1445627555220;
        Fri, 23 Oct 2015 12:12:35 -0700 (PDT)
Return-Path: <brcnakalin@gmail.com>
Received: from localhost.localdomain ([95.13.215.164])
        by smtp.gmail.com with ESMTPSA id iw8sm24119061wjb.5.2015.10.23.12.12.33
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 23 Oct 2015 12:12:34 -0700 (PDT)
From: Burcin Akalin <brcnakalin@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Burcin Akalin <brcnakalin@gmail.com>
Subject: [PATCH] staging: speakup: Remove multiple assignments
Date: Fri, 23 Oct 2015 22:12:14 +0300
Message-Id: <1445627534-17056-1-git-send-email-brcnakalin@gmail.com>
X-Mailer: git-send-email 1.9.1

Remove multiple assignments by factorizing them.Problem found using
checkpatch.pl
CHECK: multiple assignments should be avoided

Signed-off-by: Burcin Akalin <brcnakalin@gmail.com>
---
 drivers/staging/speakup/buffers.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/speakup/buffers.c b/drivers/staging/speakup/buffers.c
index d4d4598..8565c23 100644
--- a/drivers/staging/speakup/buffers.c
+++ b/drivers/staging/speakup/buffers.c
@@ -101,6 +101,7 @@ EXPORT_SYMBOL_GPL(synth_buffer_peek);
 
 void synth_buffer_clear(void)
 {
-	buff_in = buff_out = synth_buffer;
+	buff_in = synth_buffer;
+	buff_out = synth_buffer;
 }
 EXPORT_SYMBOL_GPL(synth_buffer_clear);
-- 
1.9.1


