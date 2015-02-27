X-GM-THRID: 4892850651136
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,c5f6424c8243bdc3,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.83.168 with SMTP id r8mr765549wiy.6.1425071413649;
        Fri, 27 Feb 2015 13:10:13 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.14.105 with SMTP id o9ls202773wic.38.gmail; Fri, 27 Feb
 2015 13:10:13 -0800 (PST)
X-Received: by 10.194.142.174 with SMTP id rx14mr2355552wjb.4.1425071413447;
        Fri, 27 Feb 2015 13:10:13 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from mail-we0-x235.google.com (mail-we0-x235.google.com. [2a00:1450:400c:c03::235])
        by gmr-mx.google.com with ESMTPS id ta1si194175wic.1.2015.02.27.13.10.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 13:10:13 -0800 (PST)
Received-SPF: pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c03::235 as permitted sender) client-ip=2a00:1450:400c:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c03::235 as permitted sender) smtp.mail=haticeerturk27@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wesq59 with SMTP id q59so22783061wes.1
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 13:10:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=XXLAAFhPwscKlq2ALSaiB57IauMZf04wQzyafNjnVdY=;
        b=NnHfaU49MhSQcAZlCcTtXSdaXBpnKCW1I3DMALRDl8zSn26E81Jlcd7ncbIKahD+UI
         TqhcPYJTydlwxqpcJ3HrKS5HmmXseawZSqRaqpMSJZ9hPjY/H0IXcJkcvl5tp91zTI8Z
         5BsOVDHW4gjiTWYlI2HYbd5CVqHUO4MJdU1iodcibzY89wGQt7Byjo4jx/HutUBrgW1Y
         NSWkodbVCBAyxU2+AqiHtEi6oMgW2Z3mFgmnha9bsqVXyE6m3HuibwyDCAmmbLujkj7c
         vXiHd+avGpSd5pjMk6rtgV0A0eS6JjJsZidkl7KZYDOWnoehkTw9k8YUB0LcV7vKYBHS
         6/Ig==
X-Received: by 10.180.87.169 with SMTP id az9mr10516079wib.72.1425071413353;
        Fri, 27 Feb 2015 13:10:13 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from localhost.localdomain ([78.189.63.210])
        by mx.google.com with ESMTPSA id g1sm4613865wjy.24.2015.02.27.13.10.12
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 27 Feb 2015 13:10:12 -0800 (PST)
From: =?UTF-8?q?Hatice=20ERT=C3=9CRK?= <haticeerturk27@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Hatice ERTURK <haticeerturk27@gmail.com>
Subject: [PATCH] Staging: lustre: lnet: selftest: Trailing statements
Date: Fri, 27 Feb 2015 23:10:06 +0200
Message-Id: <1425071406-18079-1-git-send-email-haticeerturk27@gmail.com>
X-Mailer: git-send-email 1.9.1

Trailing statements should be on next line.
This Error found with checkpatch.pl

Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
---
 drivers/staging/lustre/lnet/selftest/rpc.c | 27 ++++++++++++++++++---------
 1 file changed, 18 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/lustre/lnet/selftest/rpc.c b/drivers/staging/lustre/lnet/selftest/rpc.c
index 10a7027..080788a 100644
--- a/drivers/staging/lustre/lnet/selftest/rpc.c
+++ b/drivers/staging/lustre/lnet/selftest/rpc.c
@@ -111,7 +111,8 @@ srpc_free_bulk(srpc_bulk_t *bk)
 
 	for (i = 0; i < bk->bk_niov; i++) {
 		pg = bk->bk_iovs[i].kiov_page;
-		if (pg == NULL) break;
+		if (pg == NULL)
+			break;
 
 		__free_page(pg);
 	}
@@ -842,7 +843,8 @@ srpc_prepare_bulk(srpc_client_rpc_t *rpc)
 
 	LASSERT(bk->bk_niov <= LNET_MAX_IOV);
 
-	if (bk->bk_niov == 0) return 0; /* nothing to do */
+	if (bk->bk_niov == 0)
+		return 0; /* nothing to do */
 
 	opt = bk->bk_sink ? LNET_MD_OP_PUT : LNET_MD_OP_GET;
 	opt |= LNET_MD_KIOV;
@@ -1092,7 +1094,8 @@ srpc_add_client_rpc_timer(srpc_client_rpc_t *rpc)
 {
 	stt_timer_t *timer = &rpc->crpc_timer;
 
-	if (rpc->crpc_timeout == 0) return;
+	if (rpc->crpc_timeout == 0)
+		return;
 
 	INIT_LIST_HEAD(&timer->stt_list);
 	timer->stt_data    = rpc;
@@ -1207,7 +1210,8 @@ srpc_send_rpc(swi_workitem_t *wi)
 		}
 
 		rc = srpc_prepare_bulk(rpc);
-		if (rc != 0) break;
+		if (rc != 0)
+			break;
 
 		wi->swi_state = SWI_STATE_REQUEST_SUBMITTED;
 		rc = srpc_send_request(rpc);
@@ -1217,20 +1221,24 @@ srpc_send_rpc(swi_workitem_t *wi)
 		/* CAVEAT EMPTOR: rqtev, rpyev, and bulkev may come in any
 		 * order; however, they're processed in a strict order:
 		 * rqt, rpy, and bulk. */
-		if (!rpc->crpc_reqstev.ev_fired) break;
+		if (!rpc->crpc_reqstev.ev_fired)
+			break;
 
 		rc = rpc->crpc_reqstev.ev_status;
-		if (rc != 0) break;
+		if (rc != 0)
+			break;
 
 		wi->swi_state = SWI_STATE_REQUEST_SENT;
 		/* perhaps more events, fall thru */
 	case SWI_STATE_REQUEST_SENT: {
 		srpc_msg_type_t type = srpc_service2reply(rpc->crpc_service);
 
-		if (!rpc->crpc_replyev.ev_fired) break;
+		if (!rpc->crpc_replyev.ev_fired)
+			break;
 
 		rc = rpc->crpc_replyev.ev_status;
-		if (rc != 0) break;
+		if (rc != 0)
+			break;
 
 		srpc_unpack_msg_hdr(reply);
 		if (reply->msg_type != type ||
@@ -1254,7 +1262,8 @@ srpc_send_rpc(swi_workitem_t *wi)
 		wi->swi_state = SWI_STATE_REPLY_RECEIVED;
 	}
 	case SWI_STATE_REPLY_RECEIVED:
-		if (do_bulk && !rpc->crpc_bulkev.ev_fired) break;
+		if (do_bulk && !rpc->crpc_bulkev.ev_fired)
+			break;
 
 		rc = do_bulk ? rpc->crpc_bulkev.ev_status : 0;
 
-- 
1.9.1


