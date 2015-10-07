X-GM-THRID: 6201947249365221376
X-Received: by 10.180.160.146 with SMTP id xk18mr757584wib.3.1444248394012;
        Wed, 07 Oct 2015 13:06:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.96.163 with SMTP id dt3ls1408845wib.42.canary; Wed, 07 Oct
 2015 13:06:33 -0700 (PDT)
X-Received: by 10.194.156.193 with SMTP id wg1mr610699wjb.3.1444248393523;
        Wed, 07 Oct 2015 13:06:33 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-wi0-x22c.google.com (mail-wi0-x22c.google.com. [2a00:1450:400c:c05::22c])
        by gmr-mx.google.com with ESMTPS id w4si192250wiz.0.2015.10.07.13.06.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Oct 2015 13:06:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2a00:1450:400c:c05::22c as permitted sender) client-ip=2a00:1450:400c:c05::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2a00:1450:400c:c05::22c as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22c.google.com with SMTP id fx3so44090119wic.0
        for <outreachy-kernel@googlegroups.com>; Wed, 07 Oct 2015 13:06:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=aEe+Z1LlovJASbN4LbW0LtiQBN38fS2OhGPxnXHIgtY=;
        b=xdCUUp+tsMkduj8oA+q6Ml1D5aBSvhHxN7NfDXZFqGhVNukKq48u8OKt3k1BAtVjp9
         aXfqSFB1bZGwv19bDsKlOYFZTeXTajOul7zXWs5du5/qvjQB/5duZdU/MsxTRSaorEK8
         tuu6Zb5W25GOow1qQMtDWRX+oHNQqwQIOgxxcJi45QVNubIV11miVNvOaT2V1NDiBC/9
         ewO5bjRbMV1+7jNR18ssiceqSTnoFz5/IGh4/H+1JQdjq39kbCwOs0Dd7vJ2JCGOFhCd
         +P5YWzZpbYZVudNCet7CBOD5AJImtcu87KAxvbkj/HD+s6zIARg3TrtctFEDQethsY2m
         eCrg==
X-Received: by 10.194.112.104 with SMTP id ip8mr3776685wjb.85.1444248393439;
        Wed, 07 Oct 2015 13:06:33 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id fv13sm4016186wic.7.2015.10.07.13.06.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 07 Oct 2015 13:06:32 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH 4/5] Staging: lustre: ptlrpc: service: Declare local functions as static
Date: Thu,  8 Oct 2015 01:36:07 +0530
Message-Id: <1444248368-29504-5-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1444248368-29504-1-git-send-email-shraddha.6596@gmail.com>
References: <1444248368-29504-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150207.56157B48.000B,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Declare ptlrpc_server_drop_request and ptlrpc_stop_all_threads
as static since they are used only in this particular file.Also
remove the corresponding declaration from header files.

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 drivers/staging/lustre/lustre/include/lustre_net.h | 2 --
 drivers/staging/lustre/lustre/ptlrpc/service.c     | 5 ++---
 2 files changed, 2 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/lustre/lustre/include/lustre_net.h b/drivers/staging/lustre/lustre/include/lustre_net.h
index b88c971..93a039d 100644
--- a/drivers/staging/lustre/lustre/include/lustre_net.h
+++ b/drivers/staging/lustre/lustre/include/lustre_net.h
@@ -2502,12 +2502,10 @@ struct ptlrpc_service *ptlrpc_register_service(
 				struct ptlrpc_service_conf *conf,
 				struct kset *parent,
 				struct dentry *debugfs_entry);
-void ptlrpc_stop_all_threads(struct ptlrpc_service *svc);
 
 int ptlrpc_start_threads(struct ptlrpc_service *svc);
 int ptlrpc_unregister_service(struct ptlrpc_service *service);
 int liblustre_check_services(void *arg);
-void ptlrpc_server_drop_request(struct ptlrpc_request *req);
 
 int ptlrpc_hr_init(void);
 void ptlrpc_hr_fini(void);
diff --git a/drivers/staging/lustre/lustre/ptlrpc/service.c b/drivers/staging/lustre/lustre/ptlrpc/service.c
index 44fde0b..0131361 100644
--- a/drivers/staging/lustre/lustre/ptlrpc/service.c
+++ b/drivers/staging/lustre/lustre/ptlrpc/service.c
@@ -715,7 +715,7 @@ static void ptlrpc_server_free_request(struct ptlrpc_request *req)
  * drop a reference count of the request. if it reaches 0, we either
  * put it into history list, or free it immediately.
  */
-void ptlrpc_server_drop_request(struct ptlrpc_request *req)
+static void ptlrpc_server_drop_request(struct ptlrpc_request *req)
 {
 	struct ptlrpc_request_buffer_desc *rqbd = req->rq_rqbd;
 	struct ptlrpc_service_part *svcpt = rqbd->rqbd_svcpt;
@@ -2327,7 +2327,7 @@ static void ptlrpc_svcpt_stop_threads(struct ptlrpc_service_part *svcpt)
 /**
  * Stops all threads of a particular service \a svc
  */
-void ptlrpc_stop_all_threads(struct ptlrpc_service *svc)
+static void ptlrpc_stop_all_threads(struct ptlrpc_service *svc)
 {
 	struct ptlrpc_service_part *svcpt;
 	int i;
@@ -2337,7 +2337,6 @@ void ptlrpc_stop_all_threads(struct ptlrpc_service *svc)
 			ptlrpc_svcpt_stop_threads(svcpt);
 	}
 }
-EXPORT_SYMBOL(ptlrpc_stop_all_threads);
 
 int ptlrpc_start_threads(struct ptlrpc_service *svc)
 {
-- 
2.1.4


