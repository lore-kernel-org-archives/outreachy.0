X-GM-THRID: 6203360253861429248
X-Received: by 10.182.128.69 with SMTP id nm5mr7729459obb.46.1444340705997;
        Thu, 08 Oct 2015 14:45:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.132.144 with SMTP id o16ls666795ioi.38.gmail; Thu, 08 Oct
 2015 14:45:05 -0700 (PDT)
X-Received: by 10.107.148.204 with SMTP id w195mr8785246iod.15.1444340705679;
        Thu, 08 Oct 2015 14:45:05 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x235.google.com (mail-pa0-x235.google.com. [2607:f8b0:400e:c03::235])
        by gmr-mx.google.com with ESMTPS id el2si5860813pbb.0.2015.10.08.14.45.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Oct 2015 14:45:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) client-ip=2607:f8b0:400e:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x235.google.com with SMTP id ve7so6884474pab.2
        for <outreachy-kernel@googlegroups.com>; Thu, 08 Oct 2015 14:45:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=/3OWPA/oGQuULLS/XOgPt/s5rnRbrMp/fEWeEjRLP+A=;
        b=Tf6cKsGOaaMwXEGR0b5S+117P4INwCcyGYDZYb+COIVqeVVD8rqNbGHuhSbauYWU3u
         Wj78++tHjiVJj6lgmXMLN6hiEGDxChTuaHEUw1uoDJzVk0Y0a8JtTYQKIEZkKcINpZCk
         1+UrVoEiNXPBpgF/B94gepn5+EePfWSe4lNsTVIJNMqw+kPfIQLNNXFr7RtLHAi9yHIq
         gPdQH1iVOTabgaOGeAFZxj2IqhsMOdmSz6AyqGgZrTXyS2UfwUhzOgzgRGFr8o+gQNa4
         xX78R/vy76irPrWftMGwBqUO3f1g1VJQohHqTKlUfkgXNsuwQOtjdp8cMKbBE8hQUyhp
         3P3A==
X-Received: by 10.68.69.108 with SMTP id d12mr10428141pbu.137.1444340705485;
        Thu, 08 Oct 2015 14:45:05 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.203.20])
        by smtp.gmail.com with ESMTPSA id ot8sm47352372pbb.26.2015.10.08.14.45.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Thu, 08 Oct 2015 14:45:05 -0700 (PDT)
Date: Fri, 9 Oct 2015 03:15:01 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 3/3] staging: sm750fb: Remove space after opening brace
Message-ID: <8bf7833910a5b5a841a2f11bc77ff1500b69eb0c.1444340091.git.amitoj1606@gmail.com>
References: <cover.1444340091.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1444340091.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove space after opening brace '{'. Problem found using
checkpatch.pl
CHECK: Blank lines aren't necessary after an open brace '{'

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
Changes in v2:
        -Updated kernel tree to remove error

 drivers/staging/sm750fb/ddk750_chip.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
index deee227..a15bcd1 100644
--- a/drivers/staging/sm750fb/ddk750_chip.c
+++ b/drivers/staging/sm750fb/ddk750_chip.c
@@ -238,7 +238,6 @@ unsigned int ddk750_getVMSize(void)
 
 int ddk750_initHw(initchip_param_t *pInitParam)
 {
-
 	unsigned int ulReg;
 
 	if (pInitParam->powerMode != 0)
-- 
1.9.1


