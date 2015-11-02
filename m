X-GM-THRID: 6212612362539630592
X-Received: by 10.129.53.14 with SMTP id c14mr19063205ywa.16.1446486581609;
        Mon, 02 Nov 2015 09:49:41 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.6.20 with SMTP id w20ls882714igw.35.gmail; Mon, 02 Nov 2015
 09:49:41 -0800 (PST)
X-Received: by 10.66.102.106 with SMTP id fn10mr19888167pab.5.1446486581322;
        Mon, 02 Nov 2015 09:49:41 -0800 (PST)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x233.google.com (mail-pa0-x233.google.com. [2607:f8b0:400e:c03::233])
        by gmr-mx.google.com with ESMTPS id iz5si1876679pbc.2.2015.11.02.09.49.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Nov 2015 09:49:41 -0800 (PST)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) client-ip=2607:f8b0:400e:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x233.google.com with SMTP id fv9so161334790pac.3
        for <outreachy-kernel@googlegroups.com>; Mon, 02 Nov 2015 09:49:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=hpWDMSuPR1CVR7xQEGR8/4dcS8vMqoXw6kMNQxEokt4=;
        b=gBsGx8oCAUg7c5jt/lZe8prYogSpa0AZs1N1fcRAeNvH6pgyNE8gD12SoSNmTXqTc1
         uuyS+mSK1RPqvCn7GNUALjDi0z5uZh8B7DTFu8EjBqhURjDrq53xMFoS20wIYjzHSny/
         rWmxkuKqn56ljEMhYm+lh5ayqok4KbqsfZCwMp1/KIMlzu0lB5asGV1MkA2nAuLWYIGu
         889du43M/pEd9QRe8nuG1RLWwKd681gP4zFsXYZNpIPn1AgJnN+b3+1vmPLbw9HRt+DD
         x/3p+CDLNfQaVllzCj1+MFF96CIzfXZdY6ZOAMGsZPJVDpyL8nK2/zN8RhMQsvUpjSEg
         EmPw==
X-Received: by 10.66.236.37 with SMTP id ur5mr28860509pac.66.1446486581187;
        Mon, 02 Nov 2015 09:49:41 -0800 (PST)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id zi1sm25194635pbc.10.2015.11.02.09.49.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Nov 2015 09:49:40 -0800 (PST)
Date: Mon, 2 Nov 2015 23:19:34 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/3] Staging: lustre: linux-cpu: Drop wrapper function
Message-ID: <eb0cf8f6e9b9fa9bdb64c34fb81f8b2ffccc49b5.1446486397.git.shivanib134@gmail.com>
References: <cover.1446486397.git.shivanib134@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1446486397.git.shivanib134@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Remove the function cfs_cpu_ht_siblings() and replace all its calls with
the function it wrapped.

Siigned-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
---
 drivers/staging/lustre/lustre/libcfs/linux/linux-cpu.c | 11 +++--------
 1 file changed, 3 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/lustre/lustre/libcfs/linux/linux-cpu.c b/drivers/staging/lustre/lustre/libcfs/linux/linux-cpu.c
index bd7a9ef..df6c049 100644
--- a/drivers/staging/lustre/lustre/libcfs/linux/linux-cpu.c
+++ b/drivers/staging/lustre/lustre/libcfs/linux/linux-cpu.c
@@ -78,12 +78,6 @@ struct cfs_cpt_data {
 
 static struct cfs_cpt_data	cpt_data;
 
-/* return cpumask of HTs in the same core */
-static void cfs_cpu_ht_siblings(int cpu, cpumask_t *mask)
-{
-	cpumask_copy(mask, topology_sibling_cpumask(cpu));
-}
-
 static void cfs_node_to_cpumask(int node, cpumask_t *mask)
 {
 	cpumask_copy(mask, cpumask_of_node(node));
@@ -646,7 +640,7 @@ cfs_cpt_choose_ncpus(struct cfs_cpt_table *cptab, int cpt,
 			int     i;
 
 			/* get cpumask for hts in the same core */
-			cfs_cpu_ht_siblings(cpu, core);
+			cpumask_copy(core, topology_sibling_cpumask(cpu));
 			cpumask_and(core, core, node);
 
 			LASSERT(!cpumask_empty(core));
@@ -962,7 +956,8 @@ cfs_cpu_notify(struct notifier_block *self, unsigned long action, void *hcpu)
 
 		mutex_lock(&cpt_data.cpt_mutex);
 		/* if all HTs in a core are offline, it may break affinity */
-		cfs_cpu_ht_siblings(cpu, cpt_data.cpt_cpumask);
+		cpumask_copy(cpt_data.cpt_cpumask,
+			     topology_sibling_cpumask(cpu));
 		warn = cpumask_any_and(cpt_data.cpt_cpumask,
 				       cpu_online_mask) >= nr_cpu_ids;
 		mutex_unlock(&cpt_data.cpt_mutex);
-- 
2.1.0


