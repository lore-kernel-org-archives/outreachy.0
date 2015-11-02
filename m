X-GM-THRID: 6212594982457442304
X-Received: by 10.182.65.67 with SMTP id v3mr19815779obs.38.1446482488431;
        Mon, 02 Nov 2015 08:41:28 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.167.132 with SMTP id q126ls1143960ioe.98.gmail; Mon, 02
 Nov 2015 08:41:27 -0800 (PST)
X-Received: by 10.107.9.196 with SMTP id 65mr20561037ioj.11.1446482487915;
        Mon, 02 Nov 2015 08:41:27 -0800 (PST)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x236.google.com (mail-pa0-x236.google.com. [2607:f8b0:400e:c03::236])
        by gmr-mx.google.com with ESMTPS id pe1si2112718pac.2.2015.11.02.08.41.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Nov 2015 08:41:27 -0800 (PST)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) client-ip=2607:f8b0:400e:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x236.google.com with SMTP id fv9so159775932pac.3
        for <outreachy-kernel@googlegroups.com>; Mon, 02 Nov 2015 08:41:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=G0Xz20ehT5KBwm8c04f8nyYyvZWObxeObwhTC6kX3GQ=;
        b=hZEBSHZfcBIF6CkvrmvOqk3BczGLCce2cWVM1zN4M7qk+go5U0NWdMNKC8370MWyGN
         noV5Bzj+pKpcERJl+UmMqT6POp3DKShCVd6X8cdVl/E+d3oJoo7WOb8jXcbnWjtSC+gZ
         rWYi29XM+eEvHjzsW2zL3LlX7PDUPR1b3CARMJfQ4+Xu270i3VQmYto2nKMo6vfdL9H0
         JOuUOkWg26sk4ZxuN696EVZyYC4rrCzBx4ubGYeixs55NxhoHoDazVTBMr7Agewipx1Q
         +UVsyGHgVkSQhkQ4lx2mPGfOBvEgIsojcoube879APOGQ+NSz7QS2XyCAhBcJFt3OyYc
         KxTA==
X-Received: by 10.66.235.39 with SMTP id uj7mr27931408pac.34.1446482487802;
        Mon, 02 Nov 2015 08:41:27 -0800 (PST)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id yh3sm24874125pbb.82.2015.11.02.08.41.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Nov 2015 08:41:26 -0800 (PST)
Date: Mon, 2 Nov 2015 22:11:19 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: lustre: linux-cpu: Remove unnecessary wrapper
 functions
Message-ID: <20151102164119.GA32817@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Remove the functions cfs_cpu_core_siblings(), cfs_cpu_ht_siblings(),
cfs_node_to_cpumask() and replace their calls with the functions they
wrapped.

Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
---
 .../staging/lustre/lustre/libcfs/linux/linux-cpu.c | 30 +++++-----------------
 1 file changed, 7 insertions(+), 23 deletions(-)

diff --git a/drivers/staging/lustre/lustre/libcfs/linux/linux-cpu.c b/drivers/staging/lustre/lustre/libcfs/linux/linux-cpu.c
index 2097364..31719af 100644
--- a/drivers/staging/lustre/lustre/libcfs/linux/linux-cpu.c
+++ b/drivers/staging/lustre/lustre/libcfs/linux/linux-cpu.c
@@ -78,23 +78,6 @@ struct cfs_cpt_data {
 
 static struct cfs_cpt_data	cpt_data;
 
-static void cfs_cpu_core_siblings(int cpu, cpumask_t *mask)
-{
-	/* return cpumask of cores in the same socket */
-	cpumask_copy(mask, topology_core_cpumask(cpu));
-}
-
-/* return cpumask of HTs in the same core */
-static void cfs_cpu_ht_siblings(int cpu, cpumask_t *mask)
-{
-	cpumask_copy(mask, topology_sibling_cpumask(cpu));
-}
-
-static void cfs_node_to_cpumask(int node, cpumask_t *mask)
-{
-	cpumask_copy(mask, cpumask_of_node(node));
-}
-
 void
 cfs_cpt_table_free(struct cfs_cpt_table *cptab)
 {
@@ -426,7 +409,7 @@ cfs_cpt_set_node(struct cfs_cpt_table *cptab, int cpt, int node)
 	mutex_lock(&cpt_data.cpt_mutex);
 
 	mask = cpt_data.cpt_cpumask;
-	cfs_node_to_cpumask(node, mask);
+	cpumask_copy(mask, cpumask_of_node(node));
 
 	rc = cfs_cpt_set_cpumask(cptab, cpt, mask);
 
@@ -450,7 +433,7 @@ cfs_cpt_unset_node(struct cfs_cpt_table *cptab, int cpt, int node)
 	mutex_lock(&cpt_data.cpt_mutex);
 
 	mask = cpt_data.cpt_cpumask;
-	cfs_node_to_cpumask(node, mask);
+	cpumask_copy(mask, cpumask_of_node(node));
 
 	cfs_cpt_unset_cpumask(cptab, cpt, mask);
 
@@ -643,7 +626,7 @@ cfs_cpt_choose_ncpus(struct cfs_cpt_table *cptab, int cpt,
 		cpu = cpumask_first(node);
 
 		/* get cpumask for cores in the same socket */
-		cfs_cpu_core_siblings(cpu, socket);
+		cpumask_copy(socket, topology_core_cpumask(cpu));
 		cpumask_and(socket, socket, node);
 
 		LASSERT(!cpumask_empty(socket));
@@ -652,7 +635,7 @@ cfs_cpt_choose_ncpus(struct cfs_cpt_table *cptab, int cpt,
 			int     i;
 
 			/* get cpumask for hts in the same core */
-			cfs_cpu_ht_siblings(cpu, core);
+			cpumask_copy(socket, topology_sibling_cpumask(cpu));
 			cpumask_and(core, core, node);
 
 			LASSERT(!cpumask_empty(core));
@@ -769,7 +752,7 @@ cfs_cpt_table_create(int ncpt)
 	}
 
 	for_each_online_node(i) {
-		cfs_node_to_cpumask(i, mask);
+		cpumask_copy(mask, cpumask_of_node(i));
 
 		while (!cpumask_empty(mask)) {
 			struct cfs_cpu_partition *part;
@@ -968,7 +951,8 @@ cfs_cpu_notify(struct notifier_block *self, unsigned long action, void *hcpu)
 
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


