X-GM-THRID: 6212612362539630592
X-Received: by 10.107.128.158 with SMTP id k30mr20325921ioi.33.1446486561661;
        Mon, 02 Nov 2015 09:49:21 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.109.138 with SMTP id l10ls2247023qgf.36.gmail; Mon, 02 Nov
 2015 09:49:21 -0800 (PST)
X-Received: by 10.31.174.146 with SMTP id x140mr19746842vke.3.1446486561176;
        Mon, 02 Nov 2015 09:49:21 -0800 (PST)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x233.google.com (mail-pa0-x233.google.com. [2607:f8b0:400e:c03::233])
        by gmr-mx.google.com with ESMTPS id iz5si1876679pbc.2.2015.11.02.09.49.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Nov 2015 09:49:21 -0800 (PST)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) client-ip=2607:f8b0:400e:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x233.google.com with SMTP id fv9so161334790pac.3
        for <outreachy-kernel@googlegroups.com>; Mon, 02 Nov 2015 09:49:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=/ebROKeJWCrBBBzFDSD6gALvh59u7G2NgRdM7qx5/T8=;
        b=pzGFljb69Yth4CW0MaLSWt1+P+LkwZQ7p9IDQcS9N97IqW/xPbkQVG+eNskzNPv74T
         5rbtjj5cArKPEkfF8blB3n4Thko+sVjbvuZPbkXCYkZI27sbneaBGZIuFOTnjppXZ5Na
         7hGLXRUQRx0UTj1eXQJiqEm0uwBvWSU82BVpwmnwu3X0zZoCXOB+wXhsqgNzqzHShua0
         42KPh+pkjvVSLihScV68bsbRgLPo5wjJffc8/QTskMl+8tJQpMrK2rXWAwauyX1eYwFO
         l18GC+W7mTWwBrViO1m04ODXuLb0FMm7juQ5Nmm8R6R7qc+UYHYpFp/O3NC0pDoODcFp
         2YTg==
X-Received: by 10.66.218.230 with SMTP id pj6mr28717856pac.104.1446486561034;
        Mon, 02 Nov 2015 09:49:21 -0800 (PST)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id lo9sm25231037pab.19.2015.11.02.09.49.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Nov 2015 09:49:20 -0800 (PST)
Date: Mon, 2 Nov 2015 23:19:13 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/3] Staging: lustre: linux-cpu: Remove wrapper function
Message-ID: <2c06109171f227dca39fb1dfbf4fcc55a1f4f7ec.1446486397.git.shivanib134@gmail.com>
References: <cover.1446486397.git.shivanib134@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1446486397.git.shivanib134@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Remove the function cfs_cpu_core_siblings() and replace its calls with
the function it wrapped.

Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
---
 drivers/staging/lustre/lustre/libcfs/linux/linux-cpu.c | 8 +-------
 1 file changed, 1 insertion(+), 7 deletions(-)

diff --git a/drivers/staging/lustre/lustre/libcfs/linux/linux-cpu.c b/drivers/staging/lustre/lustre/libcfs/linux/linux-cpu.c
index 2097364..bd7a9ef 100644
--- a/drivers/staging/lustre/lustre/libcfs/linux/linux-cpu.c
+++ b/drivers/staging/lustre/lustre/libcfs/linux/linux-cpu.c
@@ -78,12 +78,6 @@ struct cfs_cpt_data {
 
 static struct cfs_cpt_data	cpt_data;
 
-static void cfs_cpu_core_siblings(int cpu, cpumask_t *mask)
-{
-	/* return cpumask of cores in the same socket */
-	cpumask_copy(mask, topology_core_cpumask(cpu));
-}
-
 /* return cpumask of HTs in the same core */
 static void cfs_cpu_ht_siblings(int cpu, cpumask_t *mask)
 {
@@ -643,7 +637,7 @@ cfs_cpt_choose_ncpus(struct cfs_cpt_table *cptab, int cpt,
 		cpu = cpumask_first(node);
 
 		/* get cpumask for cores in the same socket */
-		cfs_cpu_core_siblings(cpu, socket);
+		cpumask_copy(socket, topology_core_cpumask(cpu));
 		cpumask_and(socket, socket, node);
 
 		LASSERT(!cpumask_empty(socket));
-- 
2.1.0


