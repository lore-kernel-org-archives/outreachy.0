X-GM-THRID: 6210837635007512576
X-Received: by 10.28.11.65 with SMTP id 62mr2885wml.6.1446073332542;
        Wed, 28 Oct 2015 16:02:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.151.149 with SMTP id z143ls13969lfd.104.gmail; Wed, 28 Oct
 2015 16:02:12 -0700 (PDT)
X-Received: by 10.112.164.1 with SMTP id ym1mr6018401lbb.6.1446073331972;
        Wed, 28 Oct 2015 16:02:11 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wi0-x242.google.com (mail-wi0-x242.google.com. [2a00:1450:400c:c05::242])
        by gmr-mx.google.com with ESMTPS id t2si10308wme.1.2015.10.28.16.02.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Oct 2015 16:02:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::242 as permitted sender) client-ip=2a00:1450:400c:c05::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::242 as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x242.google.com with SMTP id uv6so4915959wic.2
        for <outreachy-kernel@googlegroups.com>; Wed, 28 Oct 2015 16:02:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=q1IQ+43gl5K4bYR96vW+3PWxPjHwuT3+DMR/B0GeI/g=;
        b=MYEs8ttUNqlIFomS37TbVEcZtAcoT7TeZFXRss6M9Dltp2WP1VwQnaW7tExsl2bCIg
         qU/08lNnX1g9CVOYHY6y/QaGcJxvHqYODLElelPbsAVir6ocG+6tVFkHHdTE3w7l1uvU
         BjbAaJ0+4fk+lFo1CRMsFN/I35Z9LFRMzTolkOlP7ksPCr3pXxEp5tvuqwNAeCEWjB55
         qwdoqYe+UIz2jaGKPh3XatIqs9V+3vx6tSUxy0z/LT95ii60tTk8mviL2YnIE2XYv6L0
         7j5dSWFuczF8SspJid1MhKqWJN9wQNzRRr8/Eygb13zvkrqTUrXisQkrKHw3bUdVOEc2
         EQVQ==
X-Received: by 10.194.122.42 with SMTP id lp10mr42072074wjb.51.1446073331892;
        Wed, 28 Oct 2015 16:02:11 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain (p3.eregie.pub.ro. [141.85.0.103])
        by smtp.gmail.com with ESMTPSA id 199sm6138472wml.22.2015.10.28.16.02.11
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 28 Oct 2015 16:02:11 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH 6/8] staging: iio: accel: remove unwanted blank lines
Date: Thu, 29 Oct 2015 01:01:53 +0200
Message-Id: <616f1ba33f444aff42e2aaa43d4d9f2d1ce020b7.1446073162.git.ciorneiioana@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1446073162.git.ciorneiioana@gmail.com>
References: <cover.1446073162.git.ciorneiioana@gmail.com>
In-Reply-To: <cover.1446073162.git.ciorneiioana@gmail.com>
References: <cover.1446073162.git.ciorneiioana@gmail.com>

This patch removes unwanted blank lines in order to follow
the linux coding style.

Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
---
 drivers/staging/iio/accel/sca3000_core.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/iio/accel/sca3000_core.c b/drivers/staging/iio/accel/sca3000_core.c
index 961d310..dbe0a64 100644
--- a/drivers/staging/iio/accel/sca3000_core.c
+++ b/drivers/staging/iio/accel/sca3000_core.c
@@ -168,7 +168,6 @@ static int sca3000_write_ctrl_reg(struct sca3000_state *st,
 				  u8 sel,
 				  uint8_t val)
 {
-
 	int ret;
 
 	ret = sca3000_reg_lock_on(st);
@@ -374,7 +373,6 @@ error_ret:
 	return ret;
 }
 
-
 /*
  * Not even vaguely standard attributes so defined here rather than
  * in the relevant IIO core headers
-- 
2.1.4


