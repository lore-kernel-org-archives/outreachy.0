X-GM-THRID: 6207016662523183104
X-Received: by 10.68.131.193 with SMTP id oo1mr21901874pbb.6.1445183882460;
        Sun, 18 Oct 2015 08:58:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.133.90 with SMTP id h87ls619330iod.11.gmail; Sun, 18 Oct
 2015 08:58:02 -0700 (PDT)
X-Received: by 10.50.79.201 with SMTP id l9mr13425973igx.13.1445183882212;
        Sun, 18 Oct 2015 08:58:02 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x22d.google.com (mail-pa0-x22d.google.com. [2607:f8b0:400e:c03::22d])
        by gmr-mx.google.com with ESMTPS id vy6si2868448pbc.1.2015.10.18.08.58.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Oct 2015 08:58:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) client-ip=2607:f8b0:400e:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by pacfv9 with SMTP id fv9so68931297pac.3
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Oct 2015 08:58:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=1ktzeVtWVPkfAa1NhVTNJAsunsgHk3YWwl/qgsOP1ws=;
        b=tIt2Xtp+AkQrknOv/v8MabonYIv9pqTchb1wsNTKIKKWNb2uFiVEv18YiIPdNv/mx0
         sfq8nGxtkFfh41Iyk5lWsW1yEfwszAlkCmJ1Nimnn59Z4CrkFKEb7z3byvp/939lwzKv
         lD46eDBa5QeLQWz4FMIMjdUi3mg5O5InN/xZokuOfhNVrnz2W9JLXwf/S1IOQxPpzfkS
         9T8eh8M+MiChYVmLcSnub5K5gWwtTH6uq7ckoMQzo1c2gNRu+20CR+QPwG+y958klBrj
         feVTq2VdOy2fv10TUeWlggdunz37wPElcVdv+qjJ/DnPbULAMqaXIGs+1NoYTAxHvGPZ
         tG2Q==
X-Received: by 10.68.92.194 with SMTP id co2mr29310734pbb.147.1445183882066;
        Sun, 18 Oct 2015 08:58:02 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.177.180])
        by smtp.gmail.com with ESMTPSA id c3sm14832150pbu.24.2015.10.18.08.58.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sun, 18 Oct 2015 08:58:01 -0700 (PDT)
Date: Sun, 18 Oct 2015 21:27:57 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/3] staging: sm750fb: Replace uint32_t with u32
Message-ID: <c1175b2c398ddbe5a1f25eb517665f69ff7a13f8.1445183495.git.amitoj1606@gmail.com>
References: <cover.1445183494.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1445183494.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Replace uint32_t with u32 consistent with Linux kernel coding
practice.
Problem found using checkpatch.pl 

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/sm750fb/ddk750_power.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_power.c b/drivers/staging/sm750fb/ddk750_power.c
index 198ff81..667e4f8 100644
--- a/drivers/staging/sm750fb/ddk750_power.c
+++ b/drivers/staging/sm750fb/ddk750_power.c
@@ -108,7 +108,7 @@ void setCurrentGate(unsigned int gate)
  */
 void enable2DEngine(unsigned int enable)
 {
-	uint32_t gate;
+	u32 gate;
 
 	gate = PEEK32(CURRENT_GATE);
 	if (enable) {
@@ -124,7 +124,7 @@ void enable2DEngine(unsigned int enable)
 
 void enableDMA(unsigned int enable)
 {
-	uint32_t gate;
+	u32 gate;
 
 	/* Enable DMA Gate */
 	gate = PEEK32(CURRENT_GATE);
@@ -141,7 +141,7 @@ void enableDMA(unsigned int enable)
  */
 void enableGPIO(unsigned int enable)
 {
-	uint32_t gate;
+	u32 gate;
 
 	/* Enable GPIO Gate */
 	gate = PEEK32(CURRENT_GATE);
@@ -158,7 +158,7 @@ void enableGPIO(unsigned int enable)
  */
 void enableI2C(unsigned int enable)
 {
-	uint32_t gate;
+	u32 gate;
 
 	/* Enable I2C Gate */
 	gate = PEEK32(CURRENT_GATE);
-- 
1.9.1


