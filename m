X-GM-THRID: 6212612362539630592
X-Received: by 10.182.120.129 with SMTP id lc1mr19638570obb.30.1446486602426;
        Mon, 02 Nov 2015 09:50:02 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.134.104 with SMTP id pj8ls886898igb.32.gmail; Mon, 02 Nov
 2015 09:50:02 -0800 (PST)
X-Received: by 10.107.162.2 with SMTP id l2mr20694185ioe.26.1446486602050;
        Mon, 02 Nov 2015 09:50:02 -0800 (PST)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x231.google.com (mail-pa0-x231.google.com. [2607:f8b0:400e:c03::231])
        by gmr-mx.google.com with ESMTPS id iz5si1875281pbc.2.2015.11.02.09.50.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Nov 2015 09:50:02 -0800 (PST)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) client-ip=2607:f8b0:400e:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x231.google.com with SMTP id fh17so30674229pab.0
        for <outreachy-kernel@googlegroups.com>; Mon, 02 Nov 2015 09:50:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=WBShtHc9zU5hCQeOC6wQlGIGAW2zv8W7ju7d99zVdx4=;
        b=wwlEFAKy2zofaMMHEyj80HOnP/tGjnOtuXnV1tE8x+EcMSgGtNQUrXkK9VyQc6vFxl
         D9xGfgzPhjfPvgxE/x1cKSG1PT5hPmi5/ycKLNPP4dHGquO6Io1B0nD3c0uxmhILMt/M
         qRGsJH7B4syRoDRXoC/iFN8fL8sg79S9bRHW/0xymOB5r79YyKh8IhEe0oPkw1Ga80Md
         WK191Hbvzuke386V8IpuBb8gl2GFmWDonJvlQgpQvZZtg9I9beXFZVcF4O3ngiRa72q2
         qwGnCVX53zJ8Pr2nzir9pBdJraOPGC9LZB7GwuGMNwr7EohNN+2wdddqjyKvXQaY9jQo
         7gag==
X-Received: by 10.66.102.74 with SMTP id fm10mr28450068pab.140.1446486601955;
        Mon, 02 Nov 2015 09:50:01 -0800 (PST)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id fe8sm25244948pab.40.2015.11.02.09.49.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Nov 2015 09:50:01 -0800 (PST)
Date: Mon, 2 Nov 2015 23:19:55 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 3/3] Staging: lustre: linux-cpu: Remove unnecessary wrapper
 function
Message-ID: <cd753fa065ee2f65edd67f6f434ca409216245bc.1446486397.git.shivanib134@gmail.com>
References: <cover.1446486397.git.shivanib134@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1446486397.git.shivanib134@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Remove the function cfs_node_to_cpumask() and replace all its calls with
the function it wrapped.

Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
---
 drivers/staging/lustre/lustre/libcfs/linux/linux-cpu.c | 11 +++--------
 1 file changed, 3 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/lustre/lustre/libcfs/linux/linux-cpu.c b/drivers/staging/lustre/lustre/libcfs/linux/linux-cpu.c
index df6c049..58a4034 100644
--- a/drivers/staging/lustre/lustre/libcfs/linux/linux-cpu.c
+++ b/drivers/staging/lustre/lustre/libcfs/linux/linux-cpu.c
@@ -78,11 +78,6 @@ struct cfs_cpt_data {
 
 static struct cfs_cpt_data	cpt_data;
 
-static void cfs_node_to_cpumask(int node, cpumask_t *mask)
-{
-	cpumask_copy(mask, cpumask_of_node(node));
-}
-
 void
 cfs_cpt_table_free(struct cfs_cpt_table *cptab)
 {
@@ -414,7 +409,7 @@ cfs_cpt_set_node(struct cfs_cpt_table *cptab, int cpt, int node)
 	mutex_lock(&cpt_data.cpt_mutex);
 
 	mask = cpt_data.cpt_cpumask;
-	cfs_node_to_cpumask(node, mask);
+	cpumask_copy(mask, cpumask_of_node(node));
 
 	rc = cfs_cpt_set_cpumask(cptab, cpt, mask);
 
@@ -438,7 +433,7 @@ cfs_cpt_unset_node(struct cfs_cpt_table *cptab, int cpt, int node)
 	mutex_lock(&cpt_data.cpt_mutex);
 
 	mask = cpt_data.cpt_cpumask;
-	cfs_node_to_cpumask(node, mask);
+	cpumask_copy(mask, cpumask_of_node(node));
 
 	cfs_cpt_unset_cpumask(cptab, cpt, mask);
 
@@ -757,7 +752,7 @@ cfs_cpt_table_create(int ncpt)
 	}
 
 	for_each_online_node(i) {
-		cfs_node_to_cpumask(i, mask);
+		cpumask_copy(mask, cpumask_of_node(i));
 
 		while (!cpumask_empty(mask)) {
 			struct cfs_cpu_partition *part;
-- 
2.1.0


