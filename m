X-GM-THRID: 6211061169360207872
X-Received: by 10.182.18.66 with SMTP id u2mr1296090obd.1.1446125369502;
        Thu, 29 Oct 2015 06:29:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.128.9 with SMTP id b9ls279923iod.95.gmail; Thu, 29 Oct
 2015 06:29:29 -0700 (PDT)
X-Received: by 10.50.79.201 with SMTP id l9mr6977764igx.13.1446125369033;
        Thu, 29 Oct 2015 06:29:29 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x230.google.com (mail-pa0-x230.google.com. [2607:f8b0:400e:c03::230])
        by gmr-mx.google.com with ESMTPS id sm2si174313pab.0.2015.10.29.06.29.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Oct 2015 06:29:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) client-ip=2607:f8b0:400e:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x230.google.com with SMTP id z6so41286215pas.2
        for <outreachy-kernel@googlegroups.com>; Thu, 29 Oct 2015 06:29:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=SeXER1z6hS7ZS4II3Zy46UnpgFggbGXxeO2Cpv9xdPE=;
        b=ivR7tkZyS8D36SpWFPzPLKWQ+tz6pLG3Ucptj8N0en9JOLW0Am8XTcxF4Ogcu7RF13
         ULEkuA3+yvz9XK8xc2ndBk061crKyh6UrEFwZ5LYi5rHHJGmOwjGmD/9p0fVmlrVdjSW
         RKm376Xu3+YY8B5FH2uVbn3KqgiE1KFFSlgPG5uTm6F69O4rz9gCcasw9J7CjAoANR1m
         wDDTjxUiHwjS3+wY7Y1qxZ4RNwZDAeyUla9w5j/y36I40RJJTlDSdTb3+rQJvvUoQynH
         Ydu7HFVvpPl0/3/0e7xHzUFLYf1EXfmT3bIM4RECMU2sz9NHmcaF4bG+gPHLKIUiLErM
         veFg==
X-Received: by 10.66.123.72 with SMTP id ly8mr1966776pab.92.1446125368883;
        Thu, 29 Oct 2015 06:29:28 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id zi1sm2534592pbc.10.2015.10.29.06.29.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Oct 2015 06:29:28 -0700 (PDT)
Date: Thu, 29 Oct 2015 18:59:14 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] Staging: lustre: rpc: Drop unnecessary wrapper function
Message-ID: <20151029132914.GA48018@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Remove the function srpc_post_active_rqtbuf() and replace its only call
with the function srpc_post_active_rdma() by adding appropriate parameters.

Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
---
Changes in v2:
	-Remove an unnecessary typecast and fix commit message
	accordingly

 drivers/staging/lustre/lnet/selftest/rpc.c | 17 +++++------------
 1 file changed, 5 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/lustre/lnet/selftest/rpc.c b/drivers/staging/lustre/lnet/selftest/rpc.c
index 162f9d3..1efc754 100644
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
+	 rc = srpc_post_active_rdma(srpc_serv_portal(rpc->crpc_service),
+				    rpc->crpc_service, &rpc->crpc_reqstmsg,
+				    sizeof(srpc_msg_t), LNET_MD_OP_PUT,
+				    rpc->crpc_dest, LNET_NID_ANY,
+				    &rpc->crpc_reqstmdh, ev);
 	if (rc != 0) {
 		LASSERT(rc == -ENOMEM);
 		ev->ev_fired = 1;  /* no more event expected */
-- 
2.1.0


