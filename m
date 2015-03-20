X-GM-THRID: 9315895214080
X-Received: by 10.152.27.134 with SMTP id t6mr13355572lag.5.1426875652922;
        Fri, 20 Mar 2015 11:20:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.6.129 with SMTP id b1ls23217laa.69.gmail; Fri, 20 Mar 2015
 11:20:52 -0700 (PDT)
X-Received: by 10.112.162.135 with SMTP id ya7mr13190810lbb.14.1426875652383;
        Fri, 20 Mar 2015 11:20:52 -0700 (PDT)
Return-Path: <marianne@masu.dk>
Received: from mail-lb0-f177.google.com (mail-lb0-f177.google.com. [209.85.217.177])
        by gmr-mx.google.com with ESMTPS id wz2si443010lbb.0.2015.03.20.11.20.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Mar 2015 11:20:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of marianne@masu.dk designates 209.85.217.177 as permitted sender) client-ip=209.85.217.177;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of marianne@masu.dk designates 209.85.217.177 as permitted sender) smtp.mail=marianne@masu.dk
Received: by mail-lb0-f177.google.com with SMTP id rr9so16800355lbb.0
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Mar 2015 11:20:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=5L4g5cgK1Ku8e72nZt0CAJK6rwnxRuS6zQf1OSo3YBY=;
        b=NMkhu6lsKd7PDWg2g3UwZdP93T5kZXmIvSEliO90+RgvVv1hN2o1L3Xb8kQZGA/cF5
         C51o6H2YHNyuR3pwiX+mkkGVTU8I2mPlVcIaYy703si5QsYKt/1Ag/8smN2zjqqtWEJp
         pysKiBhRDz2drY2gg/zoAMnXgOCP6wAZYULdhMlxHEpZ6+GcBNy5Py1ChBFefHUUQG+6
         p1gCk7IZAJnqfdJkR5JYLivAqGFLjqntvAPkl/qTkWDWBXGf5wgMS7RH3hfXuWfNqVlX
         GZu9W/rtjQq+iOhDkkqGzRYNPAqJpcgY3ylyFCpMld+1MDLjqCBlKTu0xIgew5QGu16U
         e6iQ==
X-Gm-Message-State: ALoCoQnldMhUoGPddd/tKbGIvqsanOaM3FxWolfAVfgGw/arn28Mept6lkM6BYitWysFi5pOzBS3
X-Received: by 10.152.28.233 with SMTP id e9mr73974201lah.3.1426875652214;
        Fri, 20 Mar 2015 11:20:52 -0700 (PDT)
Return-Path: <marianne@masu.dk>
Received: from debianvm (x1-6-20-4e-7f-5c-75-ca.cpe.webspeed.dk. [80.162.217.84])
        by mx.google.com with ESMTPSA id j6sm1080718laf.5.2015.03.20.11.20.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Fri, 20 Mar 2015 11:20:51 -0700 (PDT)
Date: Fri, 20 Mar 2015 19:20:43 +0100
From: Marianne Moeller Knudsen <marianne@masu.dk>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: sm750fb: Move misplaced open brace to previous line
Message-ID: <20150320182043.GA2677@debianvm>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Move open brace { to same line as statement. Issue found by checkpatch.

Signed-off-by: Marianne Moeller Knudsen <marianne@masu.dk>
---
 drivers/staging/sm750fb/ddk750_chip.c |    3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
index 33add64..0392020 100644
--- a/drivers/staging/sm750fb/ddk750_chip.c
+++ b/drivers/staging/sm750fb/ddk750_chip.c
@@ -118,8 +118,7 @@ void setChipClock(unsigned int frequency)
 			return;
 #endif
 
-    if (frequency != 0)
-    {
+    if (frequency != 0) {
         /*
          * Set up PLL, a structure to hold the value to be set in clocks.
          */
-- 
1.7.10.4


