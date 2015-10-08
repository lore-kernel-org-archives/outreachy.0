X-GM-THRID: 6203392298463526912
X-Received: by 10.194.109.233 with SMTP id hv9mr1877671wjb.1.1444339821791;
        Thu, 08 Oct 2015 14:30:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.169.198 with SMTP id s189ls221406lfe.87.gmail; Thu, 08 Oct
 2015 14:30:20 -0700 (PDT)
X-Received: by 10.112.136.99 with SMTP id pz3mr1880545lbb.11.1444339820889;
        Thu, 08 Oct 2015 14:30:20 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wi0-x232.google.com (mail-wi0-x232.google.com. [2a00:1450:400c:c05::232])
        by gmr-mx.google.com with ESMTPS id c7si388247wiy.3.2015.10.08.14.30.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Oct 2015 14:30:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::232 as permitted sender) client-ip=2a00:1450:400c:c05::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::232 as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x232.google.com with SMTP id fx3so42672994wic.0
        for <outreachy-kernel@googlegroups.com>; Thu, 08 Oct 2015 14:30:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=moqY2hFSUJo1klYPq4m3fdu+9BQk3i3z4em00SXmXrY=;
        b=llnx/RAKq2MAq9IhYFqoOrvyrSvUWUM+uChkPNJgdfXLwzeCjVOJk2ErIsTPzSnx98
         hsntsx3BFKJHsvPblwaMix/B0VdvXoR6sV8++SuPrQH1THDHc0RC6Gs1RjyQy8QU6FC6
         swp8FUDzxzSxgQjMiplGgl29UqlkL0xUIX2kEXANeln2gumvTVoU2yTDmKP0NGik1Jkp
         H3mTQ+3qEH/sbJaV3HANC0/eb2rGfINnnUdX+VV/AnE74PVXw8CJa9XrFwqOu/THrJER
         tGNsvWaUQJ9hPyuVhKeJ63J1UAA61xeaVorZyc8yzsvzjZdggg0IEDMkv1kKQDslNkxm
         JbOA==
X-Received: by 10.180.11.165 with SMTP id r5mr6676622wib.43.1444339820770;
        Thu, 08 Oct 2015 14:30:20 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain (p3.eregie.pub.ro. [141.85.0.103])
        by smtp.gmail.com with ESMTPSA id kb9sm48604641wjb.49.2015.10.08.14.30.19
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 08 Oct 2015 14:30:20 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH] staging: lustre: lent: add missing __user __user annotation
Date: Fri,  9 Oct 2015 00:30:13 +0300
Message-Id: <1444339813-12063-1-git-send-email-ciorneiioana@gmail.com>
X-Mailer: git-send-email 2.1.4

Add missing __user annotation when using copy_{to/from}_user() to indicate that is
a pointer from userspace and that it should not be derefenced.
Also, remove sparse warnings such as:

drivers/staging/lustre/lnet/selftest/console.c:1474:26: warning: incorrect type in argument 1 (different address spaces)
  1 drivers/staging/lustre/lnet/selftest/console.c:1474:26:    expected void [noderef] <asn:1>*to
  2 drivers/staging/lustre/lnet/selftest/console.c:1474:26:    got struct sfw_counters_t [usertype] *[assigned] sfwk_stat

Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
---
 drivers/staging/lustre/lnet/selftest/console.c | 44 +++++++++++++-------------
 1 file changed, 22 insertions(+), 22 deletions(-)

diff --git a/drivers/staging/lustre/lnet/selftest/console.c b/drivers/staging/lustre/lnet/selftest/console.c
index 024aaee..7ba9022 100644
--- a/drivers/staging/lustre/lnet/selftest/console.c
+++ b/drivers/staging/lustre/lnet/selftest/console.c
@@ -384,9 +384,9 @@ lstcon_sesrpc_readent(int transop, srpc_msg_t *msg,
 	case LST_TRANS_SESQRY:
 		rep = &msg->msg_body.dbg_reply;
 
-		if (copy_to_user(&ent_up->rpe_priv[0],
+		if (copy_to_user((void __user *)&ent_up->rpe_priv[0],
 				     &rep->dbg_timeout, sizeof(int)) ||
-		    copy_to_user(&ent_up->rpe_payload[0],
+		    copy_to_user((void __user *)&ent_up->rpe_payload[0],
 				     &rep->dbg_name, LST_NAME_SIZE))
 			return -EFAULT;
 
@@ -418,7 +418,7 @@ lstcon_group_nodes_add(lstcon_group_t *grp,
 	}
 
 	for (i = 0 ; i < count; i++) {
-		if (copy_from_user(&id, &ids_up[i], sizeof(id))) {
+		if (copy_from_user(&id, (void __user *)&ids_up[i], sizeof(id))) {
 			rc = -EFAULT;
 			break;
 		}
@@ -487,7 +487,7 @@ lstcon_group_nodes_remove(lstcon_group_t *grp,
 	}
 
 	for (i = 0; i < count; i++) {
-		if (copy_from_user(&id, &ids_up[i], sizeof(id))) {
+		if (copy_from_user(&id, (void __user *)&ids_up[i], sizeof(id))) {
 			rc = -EFAULT;
 			goto error;
 		}
@@ -731,7 +731,7 @@ lstcon_group_list(int index, int len, char *name_up)
 
 	list_for_each_entry(grp, &console_session.ses_grp_list, grp_link) {
 		if (index-- == 0) {
-			return copy_to_user(name_up, grp->grp_name, len) ?
+			return copy_to_user((void __user *)name_up, grp->grp_name, len) ?
 			       -EFAULT : 0;
 		}
 	}
@@ -761,9 +761,9 @@ lstcon_nodes_getent(struct list_head *head, int *index_p,
 			break;
 
 		nd = ndl->ndl_node;
-		if (copy_to_user(&dents_up[count].nde_id,
+		if (copy_to_user((void __user *)&dents_up[count].nde_id,
 				     &nd->nd_id, sizeof(nd->nd_id)) ||
-		    copy_to_user(&dents_up[count].nde_state,
+		    copy_to_user((void __user *)&dents_up[count].nde_state,
 				     &nd->nd_state, sizeof(nd->nd_state)))
 			return -EFAULT;
 
@@ -815,7 +815,7 @@ lstcon_group_info(char *name, lstcon_ndlist_ent_t *gents_p,
 	list_for_each_entry(ndl, &grp->grp_ndl_list, ndl_link)
 		LST_NODE_STATE_COUNTER(ndl->ndl_node, gentp);
 
-	rc = copy_to_user(gents_p, gentp,
+	rc = copy_to_user((void __user *)gents_p, gentp,
 			      sizeof(lstcon_ndlist_ent_t)) ? -EFAULT : 0;
 
 	LIBCFS_FREE(gentp, sizeof(lstcon_ndlist_ent_t));
@@ -910,7 +910,7 @@ lstcon_batch_list(int index, int len, char *name_up)
 
 	list_for_each_entry(bat, &console_session.ses_bat_list, bat_link) {
 		if (index-- == 0) {
-			return copy_to_user(name_up, bat->bat_name, len) ?
+			return copy_to_user((void __user *)name_up, bat->bat_name, len) ?
 			       -EFAULT : 0;
 		}
 	}
@@ -983,7 +983,7 @@ lstcon_batch_info(char *name, lstcon_test_batch_ent_t *ent_up, int server,
 	list_for_each_entry(ndl, srvlst, ndl_link)
 		LST_NODE_STATE_COUNTER(ndl->ndl_node, &entp->tbe_srv_nle);
 
-	rc = copy_to_user(ent_up, entp,
+	rc = copy_to_user((void __user *)ent_up, entp,
 			      sizeof(lstcon_test_batch_ent_t)) ? -EFAULT : 0;
 
 	LIBCFS_FREE(entp, sizeof(lstcon_test_batch_ent_t));
@@ -1386,7 +1386,7 @@ lstcon_tsbrpc_readent(int transop, srpc_msg_t *msg,
 		 transop == LST_TRANS_TSBSRVQRY);
 
 	/* positive errno, framework error code */
-	if (copy_to_user(&ent_up->rpe_priv[0],
+	if (copy_to_user((void __user *)&ent_up->rpe_priv[0],
 			     &rep->bar_active, sizeof(rep->bar_active)))
 		return -EFAULT;
 
@@ -1471,9 +1471,9 @@ lstcon_statrpc_readent(int transop, srpc_msg_t *msg,
 	srpc_stat = (srpc_counters_t *)((char *)sfwk_stat + sizeof(*sfwk_stat));
 	lnet_stat = (lnet_counters_t *)((char *)srpc_stat + sizeof(*srpc_stat));
 
-	if (copy_to_user(sfwk_stat, &rep->str_fw, sizeof(*sfwk_stat)) ||
-	    copy_to_user(srpc_stat, &rep->str_rpc, sizeof(*srpc_stat)) ||
-	    copy_to_user(lnet_stat, &rep->str_lnet, sizeof(*lnet_stat)))
+	if (copy_to_user((void __user *)sfwk_stat, &rep->str_fw, sizeof(*sfwk_stat)) ||
+	    copy_to_user((void __user *)srpc_stat, &rep->str_rpc, sizeof(*srpc_stat)) ||
+	    copy_to_user((void __user *)lnet_stat, &rep->str_lnet, sizeof(*lnet_stat)))
 		return -EFAULT;
 
 	return 0;
@@ -1541,7 +1541,7 @@ lstcon_nodes_stat(int count, lnet_process_id_t *ids_up,
 	}
 
 	for (i = 0 ; i < count; i++) {
-		if (copy_from_user(&id, &ids_up[i], sizeof(id))) {
+		if (copy_from_user(&id, (void __user *)&ids_up[i], sizeof(id))) {
 			rc = -EFAULT;
 			break;
 		}
@@ -1653,7 +1653,7 @@ lstcon_nodes_debug(int timeout,
 	}
 
 	for (i = 0; i < count; i++) {
-		if (copy_from_user(&id, &ids_up[i], sizeof(id))) {
+		if (copy_from_user((void *)&id, (void __user *)&ids_up[i], sizeof(id))) {
 			rc = -EFAULT;
 			break;
 		}
@@ -1756,7 +1756,7 @@ lstcon_session_new(char *name, int key, unsigned feats,
 		return rc;
 	}
 
-	if (copy_to_user(sid_up, &console_session.ses_id,
+	if (copy_to_user((void __user *)sid_up, &console_session.ses_id,
 			     sizeof(lst_sid_t)) == 0)
 		return rc;
 
@@ -1783,14 +1783,14 @@ lstcon_session_info(lst_sid_t *sid_up, int *key_up, unsigned *featp,
 	list_for_each_entry(ndl, &console_session.ses_ndl_list, ndl_link)
 		LST_NODE_STATE_COUNTER(ndl->ndl_node, entp);
 
-	if (copy_to_user(sid_up, &console_session.ses_id,
+	if (copy_to_user((void __user *)sid_up, &console_session.ses_id,
 			     sizeof(lst_sid_t)) ||
-	    copy_to_user(key_up, &console_session.ses_key,
+	    copy_to_user((void __user *)key_up, &console_session.ses_key,
 			     sizeof(*key_up)) ||
-	    copy_to_user(featp, &console_session.ses_features,
+	    copy_to_user((void __user *)featp, &console_session.ses_features,
 			     sizeof(*featp)) ||
-	    copy_to_user(ndinfo_up, entp, sizeof(*entp)) ||
-	    copy_to_user(name_up, console_session.ses_name, len))
+	    copy_to_user((void __user *)ndinfo_up, entp, sizeof(*entp)) ||
+	    copy_to_user((void __user *)name_up, console_session.ses_name, len))
 		rc = -EFAULT;
 
 	LIBCFS_FREE(entp, sizeof(*entp));
-- 
2.1.4


