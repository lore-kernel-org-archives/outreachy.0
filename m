X-GM-THRID: 5348584849408
X-Received: by 10.66.66.1 with SMTP id b1mr20451235pat.8.1425200809362;
        Sun, 01 Mar 2015 01:06:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.163.208 with SMTP id m199ls1011060ioe.59.gmail; Sun, 01
 Mar 2015 01:06:49 -0800 (PST)
X-Received: by 10.66.229.36 with SMTP id sn4mr21955474pac.32.1425200809179;
        Sun, 01 Mar 2015 01:06:49 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from mail-pa0-x22a.google.com (mail-pa0-x22a.google.com. [2607:f8b0:400e:c03::22a])
        by gmr-mx.google.com with ESMTPS id m1si1118845pdc.0.2015.03.01.01.06.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Mar 2015 01:06:49 -0800 (PST)
Received-SPF: pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) client-ip=2607:f8b0:400e:c03::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) smtp.mail=navyasri.tech@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by paceu11 with SMTP id eu11so34867892pac.7
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Mar 2015 01:06:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=+ULM8tV9D8Qy0CfqxHtkE1+IuGFbK4xPr/2GnKBYmqY=;
        b=hbZFiuM+1u4vddt40aWR9s//ww9ORezkAzhW/mGcn7xvRU2d81e0tyLQQLa+VdcLLx
         SLJw4LKO0Zn9PBAvEkF0HH25vh8pZEez6r5rAaW6Uz3kq2idmovaILwS3SqEqx0Oa9U8
         E3uGCHsUPPg0ZKtvsQwuQa30JypiAFYnoLynRlXYX/dlC9oob28zzzGkVa0/W0mYq5WY
         aNyy0THCsciOozQl5c2hVp1NGD9GT45joCqohygXZK5wgxVdqTKLneSr3g4NupM0u3dE
         fc82p6MqmooG2bcIL/sG0MuTu8AzmP/ttmicoBlH4247b/Aa/rXlJMjxC7BabrobwoFJ
         3y6Q==
X-Received: by 10.66.154.162 with SMTP id vp2mr37288362pab.73.1425200809050;
        Sun, 01 Mar 2015 01:06:49 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from nizamkari ([111.93.6.70])
        by mx.google.com with ESMTPSA id y7sm8615005pdp.92.2015.03.01.01.06.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sun, 01 Mar 2015 01:06:48 -0800 (PST)
Date: Sun, 1 Mar 2015 14:38:02 +0530
From: Navya Sri Nizamkari <navyasri.tech@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/4] staging: lustre: Remove unnecessary braces.
Message-ID: <2c2bcdaacfd8142bbfc6f88c3efba38a4b1151e2.1425200447.git.navyasri.tech@gmail.com>
References: <cover.1425200447.git.navyasri.tech@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1425200447.git.navyasri.tech@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch fixes the following checkpatch.pl warning:

WARNING: braces {} are not necessary for any arm of
this statement.

Signed-off-by: Navya Sri Nizamkari <navyasri.tech@gmail.com>
---
 drivers/staging/lustre/lustre/llite/llite_lib.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/lustre/lustre/llite/llite_lib.c b/drivers/staging/lustre/lustre/llite/llite_lib.c
index 44d41dd..e0e77cc 100644
--- a/drivers/staging/lustre/lustre/llite/llite_lib.c
+++ b/drivers/staging/lustre/lustre/llite/llite_lib.c
@@ -87,11 +87,10 @@ static struct ll_sb_info *ll_init_sbi(void)
 
 	si_meminfo(&si);
 	pages = si.totalram - si.totalhigh;
-	if (pages >> (20 - PAGE_CACHE_SHIFT) < 512) {
+	if (pages >> (20 - PAGE_CACHE_SHIFT) < 512)
 		lru_page_max = pages / 2;
-	} else {
+	else
 		lru_page_max = (pages / 4) * 3;
-	}
 
 	/* initialize lru data */
 	atomic_set(&sbi->ll_cache.ccc_users, 0);
-- 
1.9.1


