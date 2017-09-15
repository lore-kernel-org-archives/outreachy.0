X-GM-THRID: 6465879632669310976
X-Received: by 10.129.228.73 with SMTP id t9mr15112615ywl.94.1505454944427;
        Thu, 14 Sep 2017 22:55:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.37.2 with SMTP id l2ls5940518iol.33.gmail; Thu, 14 Sep
 2017 22:55:43 -0700 (PDT)
X-Received: by 10.129.102.193 with SMTP id a184mr15337891ywc.202.1505454943957;
        Thu, 14 Sep 2017 22:55:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505454943; cv=none;
        d=google.com; s=arc-20160816;
        b=ijCnAraTSUUAQ3kzIe7cdFl2GSSg4aftvM+27sFlqDHenQm0sOVq+zyLOvtUMBW2uB
         4qk1Lq9J1xCPThhufu/XtzwKREovN6fSG+OvzKg3PsbymRT+arxPqO6oLRgkCW5gkhPP
         JrE7HvPpeEffRt8lyaeIWukxl9ouCCTmQ/CJbK+afqQY2IVtaQ3iMv1aSgNhLdfgVH8e
         wHbufAs7zIsY3Jws9+kj4P6CDi2z+TAmob5YFg+Ds0mD9yjIwiuM7hAWPFil4j/JYg7J
         W08vD9dSz3XLCdT3ZTGkaMTAtzxXXwcWex8edXupNq+eNCKEuYcMOyQ8IJMEAAnavnEO
         lNlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature:arc-authentication-results;
        bh=4FxHWP+Z4cKEJiXmDeAvquGJutAXT2JmghCo81VJ3cI=;
        b=S2Jku30zFY1/6uHxbh3SZ+QqEHUCH5XXSQCp/Fo9zV7UYiuKkT1A4ED4zO9b0cj6J3
         nWoafW7m2HfHcnUQgnyZYkLDySfxtFfdTZQiW7lve6MrQzgDS1PjRKP0p7oOJYG7TYCB
         kalbZPQ7xOIUXT3CQ8osqgvAE4T5u57o+E8IP6wVBEHi05T0/rNVfW4tciIuvgP+bUPo
         FNh4+XSd++LrFMyNvX8/GU8ZRpH0VlT0hKFduvLvYtyA05+v+5D5JTI3qxHbGwfrf182
         GxcDy35/TT7ZDhTXSK/SrXfkn8ug2GAJaQZFDngGxbGufPveGWMfbfLUBHRvDDIMrk9Q
         T1Uw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Jjd4ARET;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id v25si12805pfg.11.2017.09.14.22.55.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Sep 2017 22:55:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Jjd4ARET;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id f84so776470pfj.3
        for <outreachy-kernel@googlegroups.com>; Thu, 14 Sep 2017 22:55:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=4FxHWP+Z4cKEJiXmDeAvquGJutAXT2JmghCo81VJ3cI=;
        b=Jjd4ARET28G/SLdjLpdh1TkCtGA0mOSr0TENV2z4zVFJa0hMOEr+D4yZI6qVs7SsQ2
         l9OtKGBJb2IeAQyxnAWhNNiQ6dLcDy3l+y94o3Qa+7C0opTGtFoxmZeV3VfOmt8bgkSX
         QxrAPwCrjnW7/A/+cqQhteExL8JfHYVJciZ44OP292jQLHBrSBJuuQ+cD1MxESDsoUhw
         hWpBEsGaA/CuGsHYdEX1GtLVvexN9BVAUGxInaPgcD9wKmYpM6nm5LQWxka0IhTlz8k9
         lT0W/I/jBcdH0Miz3FHyYvrcOIAP/QWwl3LKWyBbjXZxiKZsfpR6pN6BvSc8w90jXIuD
         sgNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=4FxHWP+Z4cKEJiXmDeAvquGJutAXT2JmghCo81VJ3cI=;
        b=b1qMsV7bbxbkRufl1Sa1PQnIDWKAZ6SO/VAiow6vBP8+GCPBaBibcyFVhXUB6eItjF
         k2AJd4oAIbYckeMg/F1xPyZFVvRUPJuXHFnNW+zj4f8PpudO3KZvTqQ9ck45I16wtmWD
         JUXiVG0ehm5sEIAYqsibOXoKdtSDmp4ofBJCbF3WQVEU/seO5Stsps9tGmzxwwHXPS6o
         BGOP97xZ+RNm95QUAMVWAG6IyVjGPVS+V9lg2Zz8KbMhtE32ChD6D6uyRPdX/jqQ6aEW
         tvOgMBZOaUKEUFGnerRDwupMPIe9RLy95k3Tii6FYAQhhNK3d7ZAHJhuj7/2H4pXPjzx
         h6DA==
X-Gm-Message-State: AHPjjUgL58PhQF/cUQ4ZoI9Ot+aYLdve9j0STnyHwdpEHKeTwwn6RptZ
	1DINR6ViQ0dl2w==
X-Google-Smtp-Source: ADKCNb608yU3h+b14jgCYdaOqqilpcQOcFMKc5UogM+S0BS963JSu6g1n/dRPElMGkPfzNY4PYG5KQ==
X-Received: by 10.98.155.87 with SMTP id r84mr23397141pfd.66.1505454943685;
        Thu, 14 Sep 2017 22:55:43 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([171.78.243.118])
        by smtp.gmail.com with ESMTPSA id r3sm366233pgf.48.2017.09.14.22.55.42
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 14 Sep 2017 22:55:43 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH 6/8] staging: lustre: ldlm: fix lines over 80 characters
Date: Fri, 15 Sep 2017 11:25:06 +0530
Message-Id: <0b01f13ee6c95e182fbfeba3ec3198ef13a63b60.1505454643.git.aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1505454643.git.aastha.gupta4104@gmail.com>
References: <cover.1505454643.git.aastha.gupta4104@gmail.com>
In-Reply-To: <cover.1505454643.git.aastha.gupta4104@gmail.com>
References: <cover.1505454643.git.aastha.gupta4104@gmail.com>

This patch fixes checkpatch.pl warning:
WARNING: line over 80 characters

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
 drivers/staging/lustre/lustre/ldlm/ldlm_pool.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_pool.c b/drivers/staging/lustre/lustre/ldlm/ldlm_pool.c
index d77bf0b..24b0b7d 100644
--- a/drivers/staging/lustre/lustre/ldlm/ldlm_pool.c
+++ b/drivers/staging/lustre/lustre/ldlm/ldlm_pool.c
@@ -386,7 +386,8 @@ static int ldlm_pool_recalc(struct ldlm_pool *pl)
 			      pl->pl_recalc_period;
 	if (recalc_interval_sec <= 0) {
 		/* DEBUG: should be re-removed after LU-4536 is fixed */
-		CDEBUG(D_DLMTRACE, "%s: Negative interval(%ld), too short period(%ld)\n",
+		CDEBUG(D_DLMTRACE,
+		       "%s: Negative interval(%ld), too short period(%ld)\n",
 		       pl->pl_name, (long)recalc_interval_sec,
 		       (long)pl->pl_recalc_period);
 
@@ -415,7 +416,8 @@ static int ldlm_pool_shrink(struct ldlm_pool *pl, int nr, gfp_t gfp_mask)
 			lprocfs_counter_add(pl->pl_stats,
 					    LDLM_POOL_SHRINK_FREED_STAT,
 					    cancel);
-			CDEBUG(D_DLMTRACE, "%s: request to shrink %d locks, shrunk %d\n",
+			CDEBUG(D_DLMTRACE,
+			       "%s: request to shrink %d locks, shrunk %d\n",
 			       pl->pl_name, nr, cancel);
 		}
 	}
-- 
2.7.4


