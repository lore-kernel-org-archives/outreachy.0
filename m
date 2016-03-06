X-GM-THRID: 6257541621925019648
X-Received: by 10.140.87.55 with SMTP id q52mr13311334qgd.11.1457274868553;
        Sun, 06 Mar 2016 06:34:28 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.29.98 with SMTP id a89ls1035228qga.11.gmail; Sun, 06 Mar
 2016 06:34:27 -0800 (PST)
X-Received: by 10.13.225.8 with SMTP id k8mr12998805ywe.37.1457274867950;
        Sun, 06 Mar 2016 06:34:27 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pa0-x244.google.com (mail-pa0-x244.google.com. [2607:f8b0:400e:c03::244])
        by gmr-mx.google.com with ESMTPS id ff2si2570115pad.2.2016.03.06.06.34.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 06 Mar 2016 06:34:27 -0800 (PST)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) client-ip=2607:f8b0:400e:c03::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x244.google.com with SMTP id fl4so6113200pad.2
        for <outreachy-kernel@googlegroups.com>; Sun, 06 Mar 2016 06:34:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=3rjXjjVAK1hSFv2CkhpUqxbOV2OtfatVXKeMj6i7wb0=;
        b=Sp0wRAFLVJj5NcwG4N6NfOUFWQK0/j3WNjIL043ifYhKRv6zYGp73VtFSaaoiBbn2h
         t/uLXD2W6Bc6Nqphl0nzOQWALYsjy4DIuoj6AFrUjl6mi7PVw/QcW+lNGa0fsn9jHUwe
         VeA4+tecElD+xUojgHQSWLxSYDuPVpCTTYe1YAzR7fV5AmONrDYrv+JGscHeMGNxBUGk
         7JFYywwuDxgXiYC6Rhbb07NKW31iOh2tFakdI3AC23HQS50ewsi4hruyk/0ZvnJmeOps
         J9W3DFNlmx+Uub8N9qJWhkpOk9EOuMkx86ahsRGIhRxk1vdazPApLldTul4FhqJaPA3T
         Xw5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=3rjXjjVAK1hSFv2CkhpUqxbOV2OtfatVXKeMj6i7wb0=;
        b=TxEVDgOhyFtUGGUV9v+hRTH7bQhrf8LJfnjvHP79/MXWCKbEjSwiI0oPMm9G2bcDSY
         /a/508BGivmITEMBgqw5eiYEiamjpEM4B4fKdbRDqtuwMmKWgbULXS9tVBNkT5uUgUD6
         Yhbxxc+4ttKl+/rpRFsRVCmGT5KE9k4HPiIa7+JbX+V/JwI7qNLHHxgRNA73IpNNBlB/
         4wwCxu9rvtXrBXjrceH5uIvrdZFb3yV6yMel/nAN7IYmT/WEMqf6sGtTYQRC4w6r6ocT
         RKMgfVup1VCaPSXUlV66yb9lrEAJMe065TrzmnRMUNV5//T6ycBKjdg6MnNazQpAElDA
         sLew==
X-Gm-Message-State: AD7BkJLd+q12VZ3MLRFDPcZKiO7h2tsB04IBT6B8dXXq9ufoTQLKce1xHvDY2jOTqTFy/g==
X-Received: by 10.66.141.110 with SMTP id rn14mr19514749pab.104.1457274867741;
        Sun, 06 Mar 2016 06:34:27 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.154])
        by smtp.gmail.com with ESMTPSA id v7sm18142418pfa.80.2016.03.06.06.34.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sun, 06 Mar 2016 06:34:27 -0800 (PST)
Date: Sun, 6 Mar 2016 12:04:44 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] Staging: lustre: api-ni: Remove int typecast of
 offsetof().
Message-ID: <20160306063444.GA29852@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Remove int typecast of offsetof().

As per below coccinelle rule:
@@
type T;
expression E;
@@

- (int)(offsetof(T,E))
+ offsetof(T,E)

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
changes in v2
*Fix compilation warnings.

 drivers/staging/lustre/lnet/lnet/api-ni.c | 64 +++++++++++++++----------------
 1 file changed, 32 insertions(+), 32 deletions(-)

diff --git a/drivers/staging/lustre/lnet/lnet/api-ni.c b/drivers/staging/lustre/lnet/lnet/api-ni.c
index 99cdf9e..19d56d3 100644
--- a/drivers/staging/lustre/lnet/lnet/api-ni.c
+++ b/drivers/staging/lustre/lnet/lnet/api-ni.c
@@ -195,77 +195,77 @@ static void lnet_assert_wire_constants(void)
 
 	/* Checks for struct ptl_handle_wire_t */
 	CLASSERT((int)sizeof(lnet_handle_wire_t) == 16);
-	CLASSERT((int)offsetof(lnet_handle_wire_t, wh_interface_cookie) == 0);
+	CLASSERT(offsetof(lnet_handle_wire_t, wh_interface_cookie) == 0);
 	CLASSERT((int)sizeof(((lnet_handle_wire_t *)0)->wh_interface_cookie) == 8);
-	CLASSERT((int)offsetof(lnet_handle_wire_t, wh_object_cookie) == 8);
+	CLASSERT(offsetof(lnet_handle_wire_t, wh_object_cookie) == 8);
 	CLASSERT((int)sizeof(((lnet_handle_wire_t *)0)->wh_object_cookie) == 8);
 
 	/* Checks for struct lnet_magicversion_t */
 	CLASSERT((int)sizeof(lnet_magicversion_t) == 8);
-	CLASSERT((int)offsetof(lnet_magicversion_t, magic) == 0);
+	CLASSERT(offsetof(lnet_magicversion_t, magic) == 0);
 	CLASSERT((int)sizeof(((lnet_magicversion_t *)0)->magic) == 4);
-	CLASSERT((int)offsetof(lnet_magicversion_t, version_major) == 4);
+	CLASSERT(offsetof(lnet_magicversion_t, version_major) == 4);
 	CLASSERT((int)sizeof(((lnet_magicversion_t *)0)->version_major) == 2);
-	CLASSERT((int)offsetof(lnet_magicversion_t, version_minor) == 6);
+	CLASSERT(offsetof(lnet_magicversion_t, version_minor) == 6);
 	CLASSERT((int)sizeof(((lnet_magicversion_t *)0)->version_minor) == 2);
 
 	/* Checks for struct lnet_hdr_t */
 	CLASSERT((int)sizeof(lnet_hdr_t) == 72);
-	CLASSERT((int)offsetof(lnet_hdr_t, dest_nid) == 0);
+	CLASSERT(offsetof(lnet_hdr_t, dest_nid) == 0);
 	CLASSERT((int)sizeof(((lnet_hdr_t *)0)->dest_nid) == 8);
-	CLASSERT((int)offsetof(lnet_hdr_t, src_nid) == 8);
+	CLASSERT(offsetof(lnet_hdr_t, src_nid) == 8);
 	CLASSERT((int)sizeof(((lnet_hdr_t *)0)->src_nid) == 8);
-	CLASSERT((int)offsetof(lnet_hdr_t, dest_pid) == 16);
+	CLASSERT(offsetof(lnet_hdr_t, dest_pid) == 16);
 	CLASSERT((int)sizeof(((lnet_hdr_t *)0)->dest_pid) == 4);
-	CLASSERT((int)offsetof(lnet_hdr_t, src_pid) == 20);
+	CLASSERT(offsetof(lnet_hdr_t, src_pid) == 20);
 	CLASSERT((int)sizeof(((lnet_hdr_t *)0)->src_pid) == 4);
-	CLASSERT((int)offsetof(lnet_hdr_t, type) == 24);
+	CLASSERT(offsetof(lnet_hdr_t, type) == 24);
 	CLASSERT((int)sizeof(((lnet_hdr_t *)0)->type) == 4);
-	CLASSERT((int)offsetof(lnet_hdr_t, payload_length) == 28);
+	CLASSERT(offsetof(lnet_hdr_t, payload_length) == 28);
 	CLASSERT((int)sizeof(((lnet_hdr_t *)0)->payload_length) == 4);
-	CLASSERT((int)offsetof(lnet_hdr_t, msg) == 32);
+	CLASSERT(offsetof(lnet_hdr_t, msg) == 32);
 	CLASSERT((int)sizeof(((lnet_hdr_t *)0)->msg) == 40);
 
 	/* Ack */
-	CLASSERT((int)offsetof(lnet_hdr_t, msg.ack.dst_wmd) == 32);
+	CLASSERT(offsetof(lnet_hdr_t, msg.ack.dst_wmd) == 32);
 	CLASSERT((int)sizeof(((lnet_hdr_t *)0)->msg.ack.dst_wmd) == 16);
-	CLASSERT((int)offsetof(lnet_hdr_t, msg.ack.match_bits) == 48);
+	CLASSERT(offsetof(lnet_hdr_t, msg.ack.match_bits) == 48);
 	CLASSERT((int)sizeof(((lnet_hdr_t *)0)->msg.ack.match_bits) == 8);
-	CLASSERT((int)offsetof(lnet_hdr_t, msg.ack.mlength) == 56);
+	CLASSERT(offsetof(lnet_hdr_t, msg.ack.mlength) == 56);
 	CLASSERT((int)sizeof(((lnet_hdr_t *)0)->msg.ack.mlength) == 4);
 
 	/* Put */
-	CLASSERT((int)offsetof(lnet_hdr_t, msg.put.ack_wmd) == 32);
+	CLASSERT(offsetof(lnet_hdr_t, msg.put.ack_wmd) == 32);
 	CLASSERT((int)sizeof(((lnet_hdr_t *)0)->msg.put.ack_wmd) == 16);
-	CLASSERT((int)offsetof(lnet_hdr_t, msg.put.match_bits) == 48);
+	CLASSERT(offsetof(lnet_hdr_t, msg.put.match_bits) == 48);
 	CLASSERT((int)sizeof(((lnet_hdr_t *)0)->msg.put.match_bits) == 8);
-	CLASSERT((int)offsetof(lnet_hdr_t, msg.put.hdr_data) == 56);
+	CLASSERT(offsetof(lnet_hdr_t, msg.put.hdr_data) == 56);
 	CLASSERT((int)sizeof(((lnet_hdr_t *)0)->msg.put.hdr_data) == 8);
-	CLASSERT((int)offsetof(lnet_hdr_t, msg.put.ptl_index) == 64);
+	CLASSERT(offsetof(lnet_hdr_t, msg.put.ptl_index) == 64);
 	CLASSERT((int)sizeof(((lnet_hdr_t *)0)->msg.put.ptl_index) == 4);
-	CLASSERT((int)offsetof(lnet_hdr_t, msg.put.offset) == 68);
+	CLASSERT(offsetof(lnet_hdr_t, msg.put.offset) == 68);
 	CLASSERT((int)sizeof(((lnet_hdr_t *)0)->msg.put.offset) == 4);
 
 	/* Get */
-	CLASSERT((int)offsetof(lnet_hdr_t, msg.get.return_wmd) == 32);
+	CLASSERT(offsetof(lnet_hdr_t, msg.get.return_wmd) == 32);
 	CLASSERT((int)sizeof(((lnet_hdr_t *)0)->msg.get.return_wmd) == 16);
-	CLASSERT((int)offsetof(lnet_hdr_t, msg.get.match_bits) == 48);
+	CLASSERT(offsetof(lnet_hdr_t, msg.get.match_bits) == 48);
 	CLASSERT((int)sizeof(((lnet_hdr_t *)0)->msg.get.match_bits) == 8);
-	CLASSERT((int)offsetof(lnet_hdr_t, msg.get.ptl_index) == 56);
+	CLASSERT(offsetof(lnet_hdr_t, msg.get.ptl_index) == 56);
 	CLASSERT((int)sizeof(((lnet_hdr_t *)0)->msg.get.ptl_index) == 4);
-	CLASSERT((int)offsetof(lnet_hdr_t, msg.get.src_offset) == 60);
+	CLASSERT(offsetof(lnet_hdr_t, msg.get.src_offset) == 60);
 	CLASSERT((int)sizeof(((lnet_hdr_t *)0)->msg.get.src_offset) == 4);
-	CLASSERT((int)offsetof(lnet_hdr_t, msg.get.sink_length) == 64);
+	CLASSERT(offsetof(lnet_hdr_t, msg.get.sink_length) == 64);
 	CLASSERT((int)sizeof(((lnet_hdr_t *)0)->msg.get.sink_length) == 4);
 
 	/* Reply */
-	CLASSERT((int)offsetof(lnet_hdr_t, msg.reply.dst_wmd) == 32);
+	CLASSERT(offsetof(lnet_hdr_t, msg.reply.dst_wmd) == 32);
 	CLASSERT((int)sizeof(((lnet_hdr_t *)0)->msg.reply.dst_wmd) == 16);
 
 	/* Hello */
-	CLASSERT((int)offsetof(lnet_hdr_t, msg.hello.incarnation) == 32);
+	CLASSERT(offsetof(lnet_hdr_t, msg.hello.incarnation) == 32);
 	CLASSERT((int)sizeof(((lnet_hdr_t *)0)->msg.hello.incarnation) == 8);
-	CLASSERT((int)offsetof(lnet_hdr_t, msg.hello.type) == 40);
+	CLASSERT(offsetof(lnet_hdr_t, msg.hello.type) == 40);
 	CLASSERT((int)sizeof(((lnet_hdr_t *)0)->msg.hello.type) == 4);
 }
 
@@ -2266,8 +2266,8 @@ static int lnet_ping(lnet_process_id_t id, int timeout_ms,
 	}
 
 	if (nob < offsetof(lnet_ping_info_t, pi_ni[0])) {
-		CERROR("%s: Short reply %d(%d min)\n", libcfs_id2str(id),
-		       nob, (int)offsetof(lnet_ping_info_t, pi_ni[0]));
+		CERROR("%s: Short reply %d(%ld min)\n", libcfs_id2str(id),
+		       nob, offsetof(lnet_ping_info_t, pi_ni[0]));
 		goto out_1;
 	}
 
@@ -2275,8 +2275,8 @@ static int lnet_ping(lnet_process_id_t id, int timeout_ms,
 		n_ids = info->pi_nnis;
 
 	if (nob < offsetof(lnet_ping_info_t, pi_ni[n_ids])) {
-		CERROR("%s: Short reply %d(%d expected)\n", libcfs_id2str(id),
-		       nob, (int)offsetof(lnet_ping_info_t, pi_ni[n_ids]));
+		CERROR("%s: Short reply %d(%ld expected)\n", libcfs_id2str(id),
+		       nob, offsetof(lnet_ping_info_t, pi_ni[n_ids]));
 		goto out_1;
 	}
 
-- 
1.8.3.4


