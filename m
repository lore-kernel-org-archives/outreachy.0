X-GM-THRID: 5958272024576
X-Received: by 10.43.9.135 with SMTP id ow7mr28617416icb.29.1425319979073;
        Mon, 02 Mar 2015 10:12:59 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.30.135 with SMTP id e129ls1388430ioe.3.gmail; Mon, 02 Mar
 2015 10:12:58 -0800 (PST)
X-Received: by 10.50.176.202 with SMTP id ck10mr17800447igc.5.1425319978926;
        Mon, 02 Mar 2015 10:12:58 -0800 (PST)
Return-Path: <tinajohnson.1234@gmail.com>
Received: from mail-pa0-x233.google.com (mail-pa0-x233.google.com. [2607:f8b0:400e:c03::233])
        by gmr-mx.google.com with ESMTPS id q9si770495pds.2.2015.03.02.10.12.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Mar 2015 10:12:58 -0800 (PST)
Received-SPF: pass (google.com: domain of tinajohnson.1234@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) client-ip=2607:f8b0:400e:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of tinajohnson.1234@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) smtp.mail=tinajohnson.1234@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by padfa1 with SMTP id fa1so16195885pad.9
        for <outreachy-kernel@googlegroups.com>; Mon, 02 Mar 2015 10:12:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=QIZO78rXjhC2hu7EjNR8UY5JEI7GlVUxB6zTK16SGJI=;
        b=X2lUCcr/WHZ9tbOZdeqlRMcVdOoydUA3l2vEgZE99hPGxL7XrLnYc5DZ3WKOiSEgGF
         JqcGOG4vtQOP2BKIMuiu/9xf61Htst/4iKKN7RjeKrgjvYcfk05QmFy4SO1uuJRR2FLn
         yLqt8r6F8pj0r2hrrj+7mXQj4T07U3MFmU10ZtRWixD4TxgiNiHTQiLLWI09roHSZepJ
         YWptXQo740doUXsSm2NDjrbAFCIn+uY4us9KbJKiHncVDBtILb/YtAt+1GniJPIgf687
         22w0Q4HP+tzdRsrlgB0rlSvLQnxNK7mU+AUpUWgouKE/Cxk8HCUL1UhMm1ku6xLAlZAP
         6eXg==
X-Received: by 10.70.45.15 with SMTP id i15mr48966001pdm.51.1425319978825;
        Mon, 02 Mar 2015 10:12:58 -0800 (PST)
Return-Path: <tinajohnson.1234@gmail.com>
Received: from localhost ([117.252.20.251])
        by mx.google.com with ESMTPSA id fz7sm12563776pbd.60.2015.03.02.10.12.56
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Mon, 02 Mar 2015 10:12:57 -0800 (PST)
From: Tina Johnson <tinajohnson.1234@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Tina Johnson <tinajohnson.1234@gmail.com>
Subject: [PATCH v3 2/2] staging: lustre: lustre: libcfs: Replaced printk() with pr_err() and pr_cont()
Date: Mon,  2 Mar 2015 23:40:26 +0530
Message-Id: <1425319826-14232-3-git-send-email-tinajohnson.1234@gmail.com>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <1425319826-14232-1-git-send-email-tinajohnson.1234@gmail.com>
References: <1425319826-14232-1-git-send-email-tinajohnson.1234@gmail.com>

The following checkpatch warning was fixed:

Prefer [subsystem eg: netdev]_err([subsystem]dev

with the help of Coccinelle. pr_cont() was used to replace those printk
statements which followed a printk that did not end with a '\n'. The following
semantic patch was used to replace printk() with pr_err():

@a@
expression e;
@@

printk(e,...);

@script:python b@
e << a.e;
y;
@@

import re
match = re.match('KERN_ERR ', e);
if (match == None):
    cocci.include_match(False)

else:
    m = re.sub('KERN_ERR ', '', e)
    coccinelle.y = m;

@c@
expression a.e;
identifier b.y;
@@

- printk(e,
+ pr_err(y,
  ...);

Signed-off-by: Tina Johnson <tinajohnson.1234@gmail.com>
---
 drivers/staging/lustre/lustre/libcfs/tracefile.c |   26 ++++++++++------------
 1 file changed, 12 insertions(+), 14 deletions(-)

diff --git a/drivers/staging/lustre/lustre/libcfs/tracefile.c b/drivers/staging/lustre/lustre/libcfs/tracefile.c
index eb65b50..f8d8a2f 100644
--- a/drivers/staging/lustre/lustre/libcfs/tracefile.c
+++ b/drivers/staging/lustre/lustre/libcfs/tracefile.c
@@ -224,8 +224,7 @@ static struct cfs_trace_page *cfs_trace_get_tage(struct cfs_trace_cpu_data *tcd,
 	 */
 
 	if (len > PAGE_CACHE_SIZE) {
-		printk(KERN_ERR
-		       "cowardly refusing to write %lu bytes in a page\n", len);
+		pr_err("cowardly refusing to write %lu bytes in a page\n", len);
 		return NULL;
 	}
 
@@ -688,8 +687,8 @@ int cfs_tracefile_dump_all_pages(char *filename)
 	if (IS_ERR(filp)) {
 		rc = PTR_ERR(filp);
 		filp = NULL;
-		printk(KERN_ERR "LustreError: can't open %s for dump: rc %d\n",
-		      filename, rc);
+		pr_err("LustreError: can't open %s for dump: rc %d\n",
+			filename, rc);
 		goto out;
 	}
 
@@ -726,7 +725,7 @@ int cfs_tracefile_dump_all_pages(char *filename)
 	MMSPACE_CLOSE;
 	rc = vfs_fsync(filp, 1);
 	if (rc)
-		printk(KERN_ERR "sync returns %d\n", rc);
+		pr_err("sync returns %d\n", rc);
 close:
 	filp_close(filp, NULL);
 out:
@@ -1048,22 +1047,21 @@ static int tracefiled(void *arg)
 			int i;
 
 			printk(KERN_ALERT "Lustre: trace pages aren't empty\n");
-			printk(KERN_ERR "total cpus(%d): ",
-			       num_possible_cpus());
+			pr_err("total cpus(%d): ",
+				num_possible_cpus());
 			for (i = 0; i < num_possible_cpus(); i++)
 				if (cpu_online(i))
-					printk(KERN_ERR "%d(on) ", i);
+					pr_cont("%d(on) ", i);
 				else
-					printk(KERN_ERR "%d(off) ", i);
-			printk(KERN_ERR "\n");
+					pr_cont("%d(off) ", i);
+			pr_cont("\n");
 
 			i = 0;
 			list_for_each_entry_safe(tage, tmp, &pc.pc_pages,
 						     linkage)
-				printk(KERN_ERR "page %d belongs to cpu %d\n",
-				       ++i, tage->cpu);
-			printk(KERN_ERR "There are %d pages unwritten\n",
-			       i);
+				pr_err("page %d belongs to cpu %d\n",
+					++i, tage->cpu);
+			pr_err("There are %d pages unwritten\n", i);
 		}
 		__LASSERT(list_empty(&pc.pc_pages));
 end_loop:
-- 
1.7.10.4


