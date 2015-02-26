X-GM-THRID: 3635562938368
X-Received: by 10.112.146.65 with SMTP id ta1mr1144270lbb.19.1424943911355;
        Thu, 26 Feb 2015 01:45:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.8.169 with SMTP id s9ls13911laa.8.gmail; Thu, 26 Feb 2015
 01:45:10 -0800 (PST)
X-Received: by 10.112.25.7 with SMTP id y7mr1119228lbf.21.1424943910872;
        Thu, 26 Feb 2015 01:45:10 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wi0-x22f.google.com (mail-wi0-x22f.google.com. [2a00:1450:400c:c05::22f])
        by gmr-mx.google.com with ESMTPS id ev8si1308996wib.3.2015.02.26.01.45.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 01:45:10 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) client-ip=2a00:1450:400c:c05::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22f.google.com with SMTP id r20so39602186wiv.2
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Feb 2015 01:45:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=6s1W/LqaaQKaZEwmqZlUnFKglWqk+KRnYe3OZNXSV7o=;
        b=kcML0tNoE8qegIxKwPlmt7MwxAJ2gKWLPKqDSY8r19O4Iqacrt46BdLljlALBYX5fz
         p4hyl5psVNfR6fzyPst59sUqXck9e0lugTUq+PQv2GWrnSt/SZrG2z3L76j9lZ1SlfO3
         Rpzum0d6GoyaAysN4yt4waUEGmpniU2/nKqYaIbtMoxx6NDMB86x5Ykx5oEVmpWwvwfw
         EBXVY5ZzzM0geiV2/mugnglsWGUBdOqSs2sk8oISmlPk5QFOqtrZLE2SZeR4V1tti3+4
         +lA3H+X2n4piA39dUFqQAGa8+/PyHl5qWjqFcczSq43s5jBsnIyzuyKnQBKXtJtZ8f8E
         NTAA==
X-Received: by 10.180.91.79 with SMTP id cc15mr49585892wib.52.1424943910791;
        Thu, 26 Feb 2015 01:45:10 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([196.205.191.167])
        by mx.google.com with ESMTPSA id dn7sm17678367wid.12.2015.02.26.01.45.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 26 Feb 2015 01:45:10 -0800 (PST)
Date: Thu, 26 Feb 2015 11:45:03 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 21/24] staging: lustre: libcfs: rewrite the right hand side
 of an assignment
Message-ID: <00b4e522cc086938c4435af71a7ed48550679a3e.1424942340.git.mahfouz.saif.elyazal@gmail.com>
References: <cover.1424942337.git.mahfouz.saif.elyazal@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1424942337.git.mahfouz.saif.elyazal@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch rewrites the right hand side of an assignment for
expressions of the form:
a = (a <op> b);
to be:
a <op>= b;
where <op> = << | >>.

This issue was detected and resolved using the following
coccinelle script:

@@
identifier i;
expression e;
@@

-i = (i >> e);
+i >>= e;

@@
identifier i;
expression e;
@@

-i = (i << e);
+i <<= e;

Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
---
 drivers/staging/lustre/lustre/libcfs/debug.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/libcfs/debug.c b/drivers/staging/lustre/lustre/libcfs/debug.c
index 76c62e8..5435236 100644
--- a/drivers/staging/lustre/lustre/libcfs/debug.c
+++ b/drivers/staging/lustre/lustre/libcfs/debug.c
@@ -410,7 +410,7 @@ int libcfs_debug_init(unsigned long bufsize)
 		max = TCD_MAX_PAGES;
 	} else {
 		max = (max / num_possible_cpus());
-		max = max << (20 - PAGE_CACHE_SHIFT);
+		max <<= (20 - PAGE_CACHE_SHIFT);
 	}
 	rc = cfs_tracefile_init(max);
 
-- 
1.9.3


-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

