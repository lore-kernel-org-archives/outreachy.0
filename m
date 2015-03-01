X-GM-THRID: 5512019050496
X-Received: by 10.236.223.166 with SMTP id v36mr22199670yhp.45.1425233850225;
        Sun, 01 Mar 2015 10:17:30 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.18.102 with SMTP id 93ls1494971qge.54.gmail; Sun, 01 Mar
 2015 10:17:30 -0800 (PST)
X-Received: by 10.236.7.37 with SMTP id 25mr22913281yho.18.1425233850056;
        Sun, 01 Mar 2015 10:17:30 -0800 (PST)
Return-Path: <tinajohnson.1234@gmail.com>
Received: from mail-pa0-x22f.google.com (mail-pa0-x22f.google.com. [2607:f8b0:400e:c03::22f])
        by gmr-mx.google.com with ESMTPS id hs7si1230993pad.1.2015.03.01.10.17.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Mar 2015 10:17:30 -0800 (PST)
Received-SPF: pass (google.com: domain of tinajohnson.1234@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) client-ip=2607:f8b0:400e:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of tinajohnson.1234@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) smtp.mail=tinajohnson.1234@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pabrd3 with SMTP id rd3so37134097pab.1
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Mar 2015 10:17:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=MHuHPDpWmiArAwAwOpmKwGtQlczPQW3w2oYFTfOn7YI=;
        b=sEeR8soVIyHtYA1cLMRRfqw1T6jFlAGnE39/g5KrNby2qmIBoyo4DwE65rywPTXJw8
         Ul19vdUr51IrfsioLe32ZH8XgxL1BBt3HD3dFucIRA10MhOYgqbnzK+6Ts3QlkhFePhr
         IJO7JeOwSrPmjPD2t1CFmbO3jmeZVoo8nZ6qA2Gfme9fI2+peIihjq002n6i8kEQfkEx
         w8BDuaXW2M4IDCRDSuKigXEmM34wCakSnBPFrwIVlVJVY4uIKRHClzx2KLj9z8CjR/Yd
         ppALslQV0milXrnUePyOtGRtERS3wGJdIkABd2/Bai1I4mpUhVIJF9W0Z3JnLfy3VFtz
         dddw==
X-Received: by 10.68.189.105 with SMTP id gh9mr40043675pbc.142.1425233849943;
        Sun, 01 Mar 2015 10:17:29 -0800 (PST)
Return-Path: <tinajohnson.1234@gmail.com>
Received: from localhost ([111.92.71.90])
        by mx.google.com with ESMTPSA id n8sm9695941pdm.45.2015.03.01.10.17.28
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sun, 01 Mar 2015 10:17:29 -0800 (PST)
From: Tina Johnson <tinajohnson.1234@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Tina Johnson <tinajohnson.1234@gmail.com>
Subject: [PATCH 2/2] staging: lustre: lustre: libcfs: Replaced printk() with pr_err()
Date: Sun,  1 Mar 2015 23:45:07 +0530
Message-Id: <1425233707-9585-3-git-send-email-tinajohnson.1234@gmail.com>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <1425233707-9585-1-git-send-email-tinajohnson.1234@gmail.com>
References: <1425233707-9585-1-git-send-email-tinajohnson.1234@gmail.com>

The following checkpatch warning was fixed:

Prefer [subsystem eg: netdev]_err([subsystem]dev

with the help of Coccinelle. The following semantic patch was used:

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
 drivers/staging/lustre/lustre/libcfs/tracefile.c |   19 +++++++++----------
 1 file changed, 9 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/lustre/lustre/libcfs/tracefile.c b/drivers/staging/lustre/lustre/libcfs/tracefile.c
index eb65b50..0f617d5 100644
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
 
@@ -688,7 +687,7 @@ int cfs_tracefile_dump_all_pages(char *filename)
 	if (IS_ERR(filp)) {
 		rc = PTR_ERR(filp);
 		filp = NULL;
-		printk(KERN_ERR "LustreError: can't open %s for dump: rc %d\n",
+		pr_err("LustreError: can't open %s for dump: rc %d\n",
 		      filename, rc);
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
@@ -1048,21 +1047,21 @@ static int tracefiled(void *arg)
 			int i;
 
 			printk(KERN_ALERT "Lustre: trace pages aren't empty\n");
-			printk(KERN_ERR "total cpus(%d): ",
+			pr_err("total cpus(%d): ",
 			       num_possible_cpus());
 			for (i = 0; i < num_possible_cpus(); i++)
 				if (cpu_online(i))
-					printk(KERN_ERR "%d(on) ", i);
+					pr_err("%d(on) ", i);
 				else
-					printk(KERN_ERR "%d(off) ", i);
-			printk(KERN_ERR "\n");
+					pr_err("%d(off) ", i);
+			pr_err("\n");
 
 			i = 0;
 			list_for_each_entry_safe(tage, tmp, &pc.pc_pages,
 						     linkage)
-				printk(KERN_ERR "page %d belongs to cpu %d\n",
+				pr_err("page %d belongs to cpu %d\n",
 				       ++i, tage->cpu);
-			printk(KERN_ERR "There are %d pages unwritten\n",
+			pr_err("There are %d pages unwritten\n",
 			       i);
 		}
 		__LASSERT(list_empty(&pc.pc_pages));
-- 
1.7.10.4


