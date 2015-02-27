X-GM-THRID: 4958820761600
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,724f5d660a20654f,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.194.95.67 with SMTP id di3mr932989wjb.0.1425078906345;
        Fri, 27 Feb 2015 15:15:06 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.90.43 with SMTP id bt11ls202924wib.37.canary; Fri, 27 Feb
 2015 15:15:06 -0800 (PST)
X-Received: by 10.194.142.174 with SMTP id rx14mr2406224wjb.4.1425078906080;
        Fri, 27 Feb 2015 15:15:06 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from mail-we0-x22d.google.com (mail-we0-x22d.google.com. [2a00:1450:400c:c03::22d])
        by gmr-mx.google.com with ESMTPS id o3si203886wib.2.2015.02.27.15.15.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 15:15:06 -0800 (PST)
Received-SPF: pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c03::22d as permitted sender) client-ip=2a00:1450:400c:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c03::22d as permitted sender) smtp.mail=dilekuzulmez@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x22d.google.com with SMTP id m14so23161692wev.8
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 15:15:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=8FnT/AlC0GDqFxuPi24yJ/Fn5TydLPjJ2L93g2/EaLs=;
        b=g3rtMusSMAm1BPmFtqwNAwDBMA1KLyc6h0305iXHoBbq4b58Z3Psabn3dCjDgxSCNe
         SYh9uWnbgd1S6P7/fTXsdKHZz4GgL5J4JThYIKLN+g/jdgTXF9AXvuPD8KF5llNoExvh
         6JDNbpdW6QrUdMoIDVRXRBGpNvoByrbowf9dcllO/oQJNkpSvsytuRE/ulKIBME36zGZ
         ChZFe0Zgg0j6Kv31ZrdjMkdUPMpLl3gLqOsgKlzoMpirg2aGQL4neaaiXfPjnFC5BTSv
         NP4WDiDFK6fycn074JSsL4jzdz5EeAyWZnlT4RXqWBTz67hYfVJYR0lqjUAnvI/Rs97X
         u9DQ==
X-Received: by 10.194.63.172 with SMTP id h12mr32290886wjs.48.1425078905996;
        Fri, 27 Feb 2015 15:15:05 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from localhost.localdomain ([78.178.131.202])
        by mx.google.com with ESMTPSA id 17sm6124985wjt.45.2015.02.27.15.15.04
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 27 Feb 2015 15:15:05 -0800 (PST)
From: Dilek Uzulmez <dilekuzulmez@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Dilek Uzulmez <dilekuzulmez@gmail.com>
Subject: [PATCH] Staging: lustre: Adding spaces around '='
Date: Sat, 28 Feb 2015 01:14:59 +0200
Message-Id: <1425078899-3052-1-git-send-email-dilekuzulmez@gmail.com>
X-Mailer: git-send-email 1.9.1

Fix checkpatch.pl error:
ERROR: spaces required around that ':' (ctx:VxW)

Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
---
 drivers/staging/lustre/lnet/selftest/console.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/lustre/lnet/selftest/console.c b/drivers/staging/lustre/lnet/selftest/console.c
index 1e0afc2..44dc237 100644
--- a/drivers/staging/lustre/lnet/selftest/console.c
+++ b/drivers/staging/lustre/lnet/selftest/console.c
@@ -527,7 +527,7 @@ lstcon_group_add(char *name)
 	lstcon_group_t *grp;
 	int	     rc;
 
-	rc = (lstcon_group_find(name, &grp) == 0)? -EEXIST: 0;
+	rc = (lstcon_group_find(name, &grp) == 0)? -EEXIST : 0;
 	if (rc != 0) {
 		/* find a group with same name */
 		lstcon_group_put(grp);
@@ -816,7 +816,7 @@ lstcon_group_info(char *name, lstcon_ndlist_ent_t *gents_p,
 		LST_NODE_STATE_COUNTER(ndl->ndl_node, gentp);
 
 	rc = copy_to_user(gents_p, gentp,
-			      sizeof(lstcon_ndlist_ent_t)) ? -EFAULT: 0;
+			      sizeof(lstcon_ndlist_ent_t)) ? -EFAULT : 0;
 
 	LIBCFS_FREE(gentp, sizeof(lstcon_ndlist_ent_t));
 
@@ -847,7 +847,7 @@ lstcon_batch_add(char *name)
 	int	       i;
 	int	       rc;
 
-	rc = (lstcon_batch_find(name, &bat) == 0)? -EEXIST: 0;
+	rc = (lstcon_batch_find(name, &bat) == 0)? -EEXIST : 0;
 	if (rc != 0) {
 		CDEBUG(D_NET, "Batch %s already exists\n", name);
 		return rc;
@@ -911,7 +911,7 @@ lstcon_batch_list(int index, int len, char *name_up)
 	list_for_each_entry(bat, &console_session.ses_bat_list, bat_link) {
 		if (index-- == 0) {
 			return copy_to_user(name_up, bat->bat_name, len) ?
-			       -EFAULT: 0;
+			       -EFAULT : 0;
 		}
 	}
 
@@ -956,7 +956,7 @@ lstcon_batch_info(char *name, lstcon_test_batch_ent_t *ent_up, int server,
 				  &test->tes_dst_grp->grp_ndl_list;
 
 	if (dents_up != NULL) {
-		rc = lstcon_nodes_getent((server ? srvlst: clilst),
+		rc = lstcon_nodes_getent((server ? srvlst : clilst),
 					 index_p, ndent_p, dents_up);
 		return rc;
 	}
@@ -1683,7 +1683,7 @@ int
 lstcon_session_match(lst_sid_t sid)
 {
 	return (console_session.ses_id.ses_nid   == sid.ses_nid &&
-		console_session.ses_id.ses_stamp == sid.ses_stamp) ?  1: 0;
+		console_session.ses_id.ses_stamp == sid.ses_stamp) ?  1 : 0;
 }
 
 static void
-- 
1.9.1


