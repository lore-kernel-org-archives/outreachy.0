X-GM-THRID: 6210951142862487552
X-Received: by 10.107.38.141 with SMTP id m135mr1221531iom.18.1446099752783;
        Wed, 28 Oct 2015 23:22:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.101.135 with SMTP id fg7ls61113obb.54.gmail; Wed, 28 Oct
 2015 23:22:31 -0700 (PDT)
X-Received: by 10.182.107.130 with SMTP id hc2mr300obb.39.1446099751230;
        Wed, 28 Oct 2015 23:22:31 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x22b.google.com (mail-pa0-x22b.google.com. [2607:f8b0:400e:c03::22b])
        by gmr-mx.google.com with ESMTPS id pe1si1393pac.2.2015.10.28.23.22.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Oct 2015 23:22:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) client-ip=2607:f8b0:400e:c03::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22b.google.com with SMTP id hy1so24823564pad.0
        for <outreachy-kernel@googlegroups.com>; Wed, 28 Oct 2015 23:22:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=cVbHA8NOHB2bs1FcjYIQ/OgBcW/343fEJ7IAW7k/MT4=;
        b=EDp7KKnPKnJ2e+GTuUENwiOcmyvPgcv3kBqXV2XECWWVHOnNRYg3oELtRfVyqH6jJz
         14e4htFUHEvJ9ZS7VDB4oma0wode/M+TBao/SC+R+7ZLPX9uGX5wAH1aVYgW1QKOVmPH
         JIoVKjUhK6BLVaUj0vFDBb9E4d6/bOnD14zXiKDFtKNzfak+OeO5d9tGughtOE/GT5N0
         Jw2Vv0mZKSNIdml/noFip3ADFCvrFxcwvJDzF1lpiKtZoxPdP70YcN1GznYkqCi+k1Aw
         MFA+pzZI9L5HlLJSoPQc08282y8BaYE5Kba/SsKY31HtfKlsqxuBqpR/W/VJPBBe0+uZ
         BdtA==
X-Received: by 10.66.248.106 with SMTP id yl10mr38538913pac.73.1446099750932;
        Wed, 28 Oct 2015 23:22:30 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id it10sm93833pbc.14.2015.10.28.23.22.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Oct 2015 23:22:30 -0700 (PDT)
Date: Thu, 29 Oct 2015 11:52:23 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: lustre: rpc: Remove unnecessary wrapper function
Message-ID: <20151029062222.GA36689@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Remove the function srpc_post_active_rqtbuf() and replace its only call
with the function srpc_post_active_rdma() by adding and typecasting the
appropriate parameters.

Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
---
 drivers/staging/lustre/lnet/selftest/rpc.c | 17 +++++------------
 1 file changed, 5 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/lustre/lnet/selftest/rpc.c b/drivers/staging/lustre/lnet/selftest/rpc.c
index 162f9d3..cb895c3 100644
--- a/drivers/staging/lustre/lnet/selftest/rpc.c
+++ b/drivers/staging/lustre/lnet/selftest/rpc.c
@@ -445,15 +445,6 @@ srpc_post_active_rdma(int portal, __u64 matchbits, void *buf, int len,
 }
 
 static int
-srpc_post_active_rqtbuf(lnet_process_id_t peer, int service, void *buf,
-			int len, lnet_handle_md_t *mdh, srpc_event_t *ev)
-{
-	return srpc_post_active_rdma(srpc_serv_portal(service), service,
-				     buf, len, LNET_MD_OP_PUT, peer,
-				     LNET_NID_ANY, mdh, ev);
-}
-
-static int
 srpc_post_passive_rqtbuf(int service, int local, void *buf, int len,
 			 lnet_handle_md_t *mdh, srpc_event_t *ev)
 {
@@ -798,9 +789,11 @@ srpc_send_request(srpc_client_rpc_t *rpc)
 	ev->ev_data  = rpc;
 	ev->ev_type  = SRPC_REQUEST_SENT;
 
-	rc = srpc_post_active_rqtbuf(rpc->crpc_dest, rpc->crpc_service,
-				     &rpc->crpc_reqstmsg, sizeof(srpc_msg_t),
-				     &rpc->crpc_reqstmdh, ev);
+	rc = srpc_post_active_rdma(srpc_serv_portal(rpc->crpc_service),
+				   rpc->crpc_service, &rpc->crpc_reqstmsg,
+				   sizeof(srpc_msg_t), LNET_MD_OP_PUT,
+				   (lnet_process_id_t)rpc->crpc_dest,
+				   LNET_NID_ANY, &rpc->crpc_reqstmdh, ev);
 	if (rc != 0) {
 		LASSERT(rc == -ENOMEM);
 		ev->ev_fired = 1;  /* no more event expected */
-- 
2.1.0


