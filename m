X-GM-THRID: 5958272024576
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,2b16960f09c11e68
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.236.228.106 with SMTP id e100mr26442400yhq.21.1425314890350;
        Mon, 02 Mar 2015 08:48:10 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.164.132 with SMTP id d4ls1162952ioj.68.gmail; Mon, 02 Mar
 2015 08:48:10 -0800 (PST)
X-Received: by 10.66.219.131 with SMTP id po3mr9462017pac.16.1425314890166;
        Mon, 02 Mar 2015 08:48:10 -0800 (PST)
Return-Path: <tinajohnson.1234@gmail.com>
Received: from mail-pa0-x22d.google.com (mail-pa0-x22d.google.com. [2607:f8b0:400e:c03::22d])
        by gmr-mx.google.com with ESMTPS id m1si1621910pdc.0.2015.03.02.08.48.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Mar 2015 08:48:10 -0800 (PST)
Received-SPF: pass (google.com: domain of tinajohnson.1234@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) client-ip=2607:f8b0:400e:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of tinajohnson.1234@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) smtp.mail=tinajohnson.1234@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22d.google.com with SMTP id fb1so6421631pad.7
        for <outreachy-kernel@googlegroups.com>; Mon, 02 Mar 2015 08:48:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=HREfNdInm8JHUGJDSsYsxKE2zVWowpwpX8fBzaQz9no=;
        b=qfHmNj1wDAsVK5krEDGqW7HwBhNRQocmeu9wg+oHdtg/HW2+YXVH633DB8NXWQMwnF
         kzmuRXnWNWTHSmGCGDVuTjnI/VqxgOVftvFXIzl6dbWBPScIQZgGMtbo2SM9DyYf/4VH
         WZaYjSSCuSixG0rjCfK8Gz/Ozkfzi0QkIrDWLVDY07wA4wAkTVAMQ+dQjMHBABUANHsa
         uyWkca9Xe5Ql5sYYB2s3aFEvInGDC/q6X/nN8lL5Vn8QC1pCrzWTLAnaBf6cVSsHO1FV
         TLNvgxcF8ODmmTbzE8SqV6yqijI7+IW24TtrD8OcL9PQpeZlz5UD/E8L0dnmuQ9kbOGz
         ToXg==
X-Received: by 10.66.156.229 with SMTP id wh5mr48008531pab.119.1425314890087;
        Mon, 02 Mar 2015 08:48:10 -0800 (PST)
Return-Path: <tinajohnson.1234@gmail.com>
Received: from localhost ([117.252.23.150])
        by mx.google.com with ESMTPSA id z2sm12407484pde.94.2015.03.02.08.48.07
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Mon, 02 Mar 2015 08:48:09 -0800 (PST)
From: Tina Johnson <tinajohnson.1234@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Tina Johnson <tinajohnson.1234@gmail.com>
Subject: [PATCH v2 2/2] staging: lustre: lustre: libcfs: Replaced printk() with pr_err() and pr_cont()
Date: Mon,  2 Mar 2015 22:15:47 +0530
Message-Id: <1425314747-9532-3-git-send-email-tinajohnson.1234@gmail.com>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <1425314747-9532-1-git-send-email-tinajohnson.1234@gmail.com>
References: <1425314747-9532-1-git-send-email-tinajohnson.1234@gmail.com>

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
Changes in v2:
  - Replaced those printk statements which followed a printk
    that did not end in '\n' with pr_cont() instead of
    pr_err().

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


