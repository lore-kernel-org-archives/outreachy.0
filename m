X-GM-THRID: 6211220863007588352
X-Received: by 10.28.170.203 with SMTP id t194mr1903513wme.1.1446162603557;
        Thu, 29 Oct 2015 16:50:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.13.129 with SMTP id 123ls4193wmn.21.gmail; Thu, 29 Oct 2015
 16:49:13 -0700 (PDT)
X-Received: by 10.28.173.83 with SMTP id w80mr3141wme.0.1446162553867;
        Thu, 29 Oct 2015 16:49:13 -0700 (PDT)
Return-Path: <brcnakalin@gmail.com>
Received: from mail-wm0-x235.google.com (mail-wm0-x235.google.com. [2a00:1450:400c:c09::235])
        by gmr-mx.google.com with ESMTPS id g18si1688wmd.1.2015.10.29.16.49.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Oct 2015 16:49:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of brcnakalin@gmail.com designates 2a00:1450:400c:c09::235 as permitted sender) client-ip=2a00:1450:400c:c09::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of brcnakalin@gmail.com designates 2a00:1450:400c:c09::235 as permitted sender) smtp.mailfrom=brcnakalin@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by wmll128 with SMTP id l128so297276wml.0
        for <outreachy-kernel@googlegroups.com>; Thu, 29 Oct 2015 16:49:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=TWf2MxiwPrAUpf4Cx068uVOVqZcdUM+tfEAI59lcVcM=;
        b=0Af0kemB3Ob4CQp2sJ50t3bI5ytWGZM0ogaIQFaQ3yZQrvR4ZqrKAHcyRJumvH9W3H
         QnSsUdsvbIP6VyQ9e71C3T1+sNjTPW7kKlU9bBOx1jZTJHaLM/hG/gvz3vssTxjJf3pR
         WBBXZrRUFwu+Z+y1BqHL/h11pCruAXLee4HgEFBtuydSsvSkNsnGyF5PyzG4J3FSBT+K
         Ozx9zn2j8I7BodggbSrjmFbbpFJz5FjPIISkBj/T8KKj4kXlT8qSFM6ptXCsOY4sheKC
         DF3NsLSKaQS9MOOkszixUkcAuyv8VNGPIbhtmh+rmHEpdaEQ9HkSSRzBAYwdZ3NHRLkW
         Acmw==
X-Received: by 10.28.11.205 with SMTP id 196mr9503740wml.83.1446162553743;
        Thu, 29 Oct 2015 16:49:13 -0700 (PDT)
Return-Path: <brcnakalin@gmail.com>
Received: from localhost.localdomain ([78.182.227.7])
        by smtp.gmail.com with ESMTPSA id d81sm46767wma.16.2015.10.29.16.49.12
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 29 Oct 2015 16:49:13 -0700 (PDT)
From: Burcin Akalin <brcnakalin@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Burcin Akalin <brcnakalin@gmail.com>
Subject: [PATCH 2/2] staging: nvec: Do not use multiple blank lines.
Date: Fri, 30 Oct 2015 02:49:02 +0300
Message-Id: <1446162542-1037-2-git-send-email-brcnakalin@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1446162542-1037-1-git-send-email-brcnakalin@gmail.com>
References: <1446162542-1037-1-git-send-email-brcnakalin@gmail.com>

Remove multiple blank lines. Problem found using checkpatch.pl
"CHECK: Please don't use multiple blank lines"

Signed-off-by: Burcin Akalin <brcnakalin@gmail.com>
---
 drivers/staging/nvec/nvec.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/nvec/nvec.c b/drivers/staging/nvec/nvec.c
index aab1c85..2cc0efc 100644
--- a/drivers/staging/nvec/nvec.c
+++ b/drivers/staging/nvec/nvec.c
@@ -710,7 +710,6 @@ static irqreturn_t nvec_interrupt(int irq, void *dev)
 		status & RCVD ? " RCVD" : "",
 		status & RNW ? " RNW" : "");
 
-
 	/*
 	 * TODO: A correct fix needs to be found for this.
 	 *
-- 
1.9.1


