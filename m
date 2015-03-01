X-GM-THRID: 5348584849408
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,c3a920c892222546
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.182.18.102 with SMTP id v6mr22384700obd.11.1425200873704;
        Sun, 01 Mar 2015 01:07:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.46.99 with SMTP id j90ls1213350qga.53.gmail; Sun, 01 Mar
 2015 01:07:53 -0800 (PST)
X-Received: by 10.236.40.112 with SMTP id e76mr23676834yhb.5.1425200873564;
        Sun, 01 Mar 2015 01:07:53 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from mail-pa0-x236.google.com (mail-pa0-x236.google.com. [2607:f8b0:400e:c03::236])
        by gmr-mx.google.com with ESMTPS id bo1si1107160pbc.0.2015.03.01.01.07.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Mar 2015 01:07:53 -0800 (PST)
Received-SPF: pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) client-ip=2607:f8b0:400e:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) smtp.mail=navyasri.tech@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x236.google.com with SMTP id lf10so34882251pab.6
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Mar 2015 01:07:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=hOEmi6g61tVz7QTYFnLt6M5joLfFaGX/qaFELY8XhMs=;
        b=PVloykWSIRlTL9zlj0nswmxZ6QimiCHy2AzeLxhhYop2YJwWQpmaOyQ9poUnk8DSqe
         LxqkVdlORVhWPerGLjlAjMlO/lALgEOG11UUqccWjqIEkUKIySAUJ2/ylArx2955DqP6
         kpJGhmui4ms7Oz5aOccfqb00TWABRDZ7lxV04A3EYrT9p//zrese4xSgLplhTlnnXLcA
         vJqDi/w2LguLV0E/r/gjOsRtP7bdY9R/dz1M6v0ocBjInUPRy6VQXISRMc/K+uY97W6H
         y9pm9rtd3ey27gCbMnIRXW4ycr9qcfRn0oDyhNrjP556CbJN3RYZsPQVGwR+dD+MHhN6
         pN+Q==
X-Received: by 10.68.239.4 with SMTP id vo4mr38124511pbc.14.1425200873438;
        Sun, 01 Mar 2015 01:07:53 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from nizamkari ([111.93.6.70])
        by mx.google.com with ESMTPSA id wq9sm8609142pbc.85.2015.03.01.01.07.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sun, 01 Mar 2015 01:07:53 -0800 (PST)
Date: Sun, 1 Mar 2015 14:39:06 +0530
From: Navya Sri Nizamkari <navyasri.tech@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 4/4] staging: lustre: Remove space in function call.
Message-ID: <1e8a2aff09384ca5c6eb4889611edbef19a6086b.1425200447.git.navyasri.tech@gmail.com>
References: <cover.1425200447.git.navyasri.tech@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1425200447.git.navyasri.tech@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch fixes the following checkpatch.pl warning:

WARNING: space prohibited between function name and open parenthesis '('

Signed-off-by: Navya Sri Nizamkari <navyasri.tech@gmail.com>
---
 drivers/staging/lustre/lustre/llite/llite_lib.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/llite/llite_lib.c b/drivers/staging/lustre/lustre/llite/llite_lib.c
index 727327d..57e02a3 100644
--- a/drivers/staging/lustre/lustre/llite/llite_lib.c
+++ b/drivers/staging/lustre/lustre/llite/llite_lib.c
@@ -1605,7 +1605,7 @@ void ll_update_inode(struct inode *inode, struct lustre_md *md)
 	struct lov_stripe_md *lsm = md->lsm;
 	struct ll_sb_info *sbi = ll_i2sbi(inode);
 
-	LASSERT ((lsm != NULL) == ((body->valid & OBD_MD_FLEASIZE) != 0));
+	LASSERT((lsm != NULL) == ((body->valid & OBD_MD_FLEASIZE) != 0));
 	if (lsm != NULL) {
 		if (!lli->lli_has_smd &&
 		    !(sbi->ll_flags & LL_SBI_LAYOUT_LOCK))
-- 
1.9.1


