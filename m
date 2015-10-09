X-GM-THRID: 6201868537095520256
X-Received: by 10.112.26.212 with SMTP id n20mr2989701lbg.2.1444418348502;
        Fri, 09 Oct 2015 12:19:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.148.143 with SMTP id w137ls295451lfd.105.gmail; Fri, 09 Oct
 2015 12:19:07 -0700 (PDT)
X-Received: by 10.112.151.9 with SMTP id um9mr2923840lbb.19.1444418347912;
        Fri, 09 Oct 2015 12:19:07 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from mail-wi0-x236.google.com (mail-wi0-x236.google.com. [2a00:1450:400c:c05::236])
        by gmr-mx.google.com with ESMTPS id c7si1347wiy.3.2015.10.09.12.19.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Oct 2015 12:19:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::236 as permitted sender) client-ip=2a00:1450:400c:c05::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::236 as permitted sender) smtp.mailfrom=cristina.moraru09@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x236.google.com with SMTP id fx3so79330776wic.0
        for <outreachy-kernel@googlegroups.com>; Fri, 09 Oct 2015 12:19:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=HQbS70zJAhyS/GriBTZJ/elsK6dVCwcyyUJvl4DCBTM=;
        b=LUNj8mLuweVLDp7/+zkp1dfmakqwP5ggMqR88Vst7xnqTDyKuT7VXTU2knNID0ZpiO
         ehm1dI3fgEIfB60a3lU9yGCwxThk8zpNFyQbdvLJuHpwiJ7ZKKnn03lQAdXvUTZ3AgaF
         hNMknZVGsrjxSw6Qs+Hms8oGf6vVDL5hJUbBQ21gIO9FeOb0E8aLJ2jb96ZV0Sis9I5q
         qwpvMsYGofPsm6NWazQJa8lREKwMQYFk/ctx/6vaHSaEDLy/7XemZuC4UXr5vJVO8nIF
         bEw7klZyD9+vJ0+8JRFsnwEQmsofWnjDdxgUQ0MAQHgg4kWAdikgXHaBzCO6ClWpb+eU
         gDgA==
X-Received: by 10.180.87.138 with SMTP id ay10mr1032215wib.12.1444418347826;
        Fri, 09 Oct 2015 12:19:07 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from localhost.localdomain ([213.233.93.180])
        by smtp.gmail.com with ESMTPSA id hk5sm3761118wjb.6.2015.10.09.12.19.06
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 09 Oct 2015 12:19:07 -0700 (PDT)
From: Cristina Moraru <cristina.moraru09@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Cristina Moraru <cristina.moraru09@gmail.com>
Subject: [PATCH 2/3] staging: octeon: Remove /** from regular comments
Date: Fri,  9 Oct 2015 22:17:57 +0300
Message-Id: <1444418279-127467-3-git-send-email-cristina.moraru09@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1444418279-127467-1-git-send-email-cristina.moraru09@gmail.com>
References: <1443984978-87338-1-git-send-email-cristina.moraru09@gmail.com>
 <1444418279-127467-1-git-send-email-cristina.moraru09@gmail.com>

Fix kernel-doc warnings 'cannot understand function prototype'
by removing /** from regular comments

Signed-off-by: Cristina Moraru <cristina.moraru09@gmail.com>
---
 drivers/staging/octeon/ethernet.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/octeon/ethernet.c b/drivers/staging/octeon/ethernet.c
index a8da250..c1b657c 100644
--- a/drivers/staging/octeon/ethernet.c
+++ b/drivers/staging/octeon/ethernet.c
@@ -86,19 +86,19 @@ int rx_napi_weight = 32;
 module_param(rx_napi_weight, int, 0444);
 MODULE_PARM_DESC(rx_napi_weight, "The NAPI WEIGHT parameter.");
 
-/**
+/*
  * cvm_oct_poll_queue - Workqueue for polling operations.
  */
 struct workqueue_struct *cvm_oct_poll_queue;
 
-/**
+/*
  * cvm_oct_poll_queue_stopping - flag to indicate polling should stop.
  *
  * Set to one right before cvm_oct_poll_queue is destroyed.
  */
 atomic_t cvm_oct_poll_queue_stopping = ATOMIC_INIT(0);
 
-/**
+/*
  * Array of every ethernet device owned by this driver indexed by
  * the ipd input port number.
  */
-- 
1.9.1


