X-GM-THRID: 6207016662523183104
X-Received: by 10.13.226.8 with SMTP id l8mr22197420ywe.49.1445184018378;
        Sun, 18 Oct 2015 09:00:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.20.214 with SMTP id 80ls2125122qgj.64.gmail; Sun, 18 Oct
 2015 09:00:17 -0700 (PDT)
X-Received: by 10.129.154.137 with SMTP id r131mr22044903ywg.0.1445184017796;
        Sun, 18 Oct 2015 09:00:17 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x236.google.com (mail-pa0-x236.google.com. [2607:f8b0:400e:c03::236])
        by gmr-mx.google.com with ESMTPS id el2si2924351pbb.0.2015.10.18.09.00.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Oct 2015 09:00:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) client-ip=2607:f8b0:400e:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x236.google.com with SMTP id hk11so4486656pad.1
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Oct 2015 09:00:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=6TTbVUiB+sH0ZhAzo8UmGwKyQ/iZkylvAKInd8vGDwQ=;
        b=JOo7kM+Us488jF/vvKnRrny1mfgvaSfoDuZxgApixmogy5hAi1sgdceQo4FOUfxzl4
         SCgMFGbSYdKafwWhVpb+JTJPNuIOJnJw3JCFPPDHJjh9XLi995Ztwj4tp9SRloHk4VJK
         smdYhg/xALJefEfSdiBuWnGPSU6pZMEU/EEuKsVrqQjGzIGJdYvVcuxEolcMAmxNzOjq
         Sc1L7UwYrZlaCAg4rISjmZVx10MGhWWGHCyI1iyzYoeZT1Ms/5UCvnxyfxu7HSMgGmj0
         ddgeydtqsj/axyHjAOxIKOJyMRVim1BlmEaaPhMHgObildyH8zbv/otliXPotlbRa178
         YxUA==
X-Received: by 10.69.1.67 with SMTP id be3mr29467664pbd.78.1445184017623;
        Sun, 18 Oct 2015 09:00:17 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.177.180])
        by smtp.gmail.com with ESMTPSA id qd5sm31573753pbc.73.2015.10.18.09.00.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sun, 18 Oct 2015 09:00:17 -0700 (PDT)
Date: Sun, 18 Oct 2015 21:30:13 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/3] staging: sm750fb: Remove volatile modifier
Message-ID: <916e1321dc223d94f8793f4d402ab8922adfe3f3.1445183495.git.amitoj1606@gmail.com>
References: <cover.1445183494.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1445183494.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

'volatile' is not needed for regular variable. Problem found using checkpatch.pl
WARNING: Use of volatile is usually wrong: see Documentation/volatile-considered -harmful.txt

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/sm750fb/sm750.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/sm750fb/sm750.h b/drivers/staging/sm750fb/sm750.h
index 52fe945..68eef34 100644
--- a/drivers/staging/sm750fb/sm750.h
+++ b/drivers/staging/sm750fb/sm750.h
@@ -15,9 +15,9 @@ extern int smi_indent;
 
 struct lynx_accel {
 	/* base virtual address of DPR registers */
-	volatile unsigned char __iomem *dprBase;
+	unsigned char __iomem *dprBase;
 	/* base virtual address of de data port */
-	volatile unsigned char __iomem *dpPortBase;
+	unsigned char __iomem *dpPortBase;
 
 	/* function fointers */
 	void (*de_init)(struct lynx_accel *);
@@ -79,7 +79,7 @@ struct lynx_cursor {
 	char __iomem *vstart;
 	int offset;
 	/* mmio addr of hw cursor */
-	volatile char __iomem *mmio;
+	char __iomem *mmio;
 	/* the lynx_share of this adaptor */
 	struct lynx_share *share;
 	/* proc_routines */
-- 
1.9.1


