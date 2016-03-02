X-GM-THRID: 6257541621925019648
X-Received: by 10.140.194.149 with SMTP id p143mr22861070qha.17.1456947443038;
        Wed, 02 Mar 2016 11:37:23 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.17.215 with SMTP id 84ls1867850ior.97.gmail; Wed, 02 Mar
 2016 11:37:22 -0800 (PST)
X-Received: by 10.107.162.2 with SMTP id l2mr5977002ioe.14.1456947442577;
        Wed, 02 Mar 2016 11:37:22 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pa0-x241.google.com (mail-pa0-x241.google.com. [2607:f8b0:400e:c03::241])
        by gmr-mx.google.com with ESMTPS id ff2si5928439pad.2.2016.03.02.11.37.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 02 Mar 2016 11:37:22 -0800 (PST)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) client-ip=2607:f8b0:400e:c03::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x241.google.com with SMTP id y7so12738163paa.0
        for <outreachy-kernel@googlegroups.com>; Wed, 02 Mar 2016 11:37:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=Gp7+S/9+3Lh5rcH+IqgMwD+JKfqL0IiFtrib2PkPtRM=;
        b=jQ55mJ3eo82uD5sOyYtcMFNLhcGWMeP8ofQGAZQPPb6hAWjULVylj8wnBX3f3Gqwti
         /LAyas5qtE3qEC0+klvYzJ2jlBXwGdlqdAsisg50X3PoV32aA1j2sZ5wZPb0DCi64PUT
         XFmele+AAX1htVLM5U4OmGosyctg2E7oYbitbaYU6fdwgDCc6S/2zZSSeLE/9S4D7cau
         KHCZYXebe8uZwKl9IPp43rTYTiIixhXVdTUF7V9ETQSxDtbByUTWHs8MDhty69tcx1Ao
         xhbYUsel2hw5t0sTIpOW9fQZ8mz5PYeJr91KkMOpixO0WwE4AXGFMAzn/1SL8H6CzxMy
         nBzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Gp7+S/9+3Lh5rcH+IqgMwD+JKfqL0IiFtrib2PkPtRM=;
        b=mQ32kaVpOD4ex89O2sojY9ubCg7Wb24OulyYlx/9stZYLOLVtAtjoqGRIJQymlomhy
         djV/dJPgsh2sUPY3axH6nt10GssI1dBhkVo170CxpmYgLnZmb6INh2rtTZWI3zmdOGQG
         S/u1zoUmAedkoio4RZhiZODbnlhqbS2pTjBPXWGn6qn2SsNBiRWo30D0VIZn6Bjibiad
         ZS2qzQ99bYvbdhCR/cz/wei0zkPhmVDQ0Nq3ENNPw3s7HyP17Dc2Ro84iLNZeqW9Egiv
         zpNCoew4yA2+NlbIrSN7sqOekUzBXCw+mHqairTxZIOxXuxiDwJtzO3P1XwkyrE157kx
         c8iQ==
X-Gm-Message-State: AD7BkJIQ0pzQ8RKLrv5pDULivCV72SIcL0G27HYLgbV5oWZy0ZVXH7yui6iUcs0VuwfEGQ==
X-Received: by 10.67.12.175 with SMTP id er15mr40860241pad.70.1456947442386;
        Wed, 02 Mar 2016 11:37:22 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.125])
        by smtp.gmail.com with ESMTPSA id q8sm54768163pfa.70.2016.03.02.11.37.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Wed, 02 Mar 2016 11:37:21 -0800 (PST)
Date: Wed, 2 Mar 2016 17:07:09 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: lustre: api-ni: Remove int typecast of offsetof().
Message-ID: <20160302113709.GA3444@sandhya>
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
 drivers/staging/lustre/lnet/lnet/api-ni.c | 60 +++++++++++++++----------------
 1 file changed, 30 insertions(+), 30 deletions(-)

diff --git a/drivers/staging/lustre/lnet/lnet/api-ni.c b/drivers/staging/lustre/lnet/lnet/api-ni.c
index 1571601..7e9b16f 100644
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
 
@@ -2265,7 +2265,7 @@ static int lnet_ping(lnet_process_id_t id, int timeout_ms,
 
 	if (nob < offsetof(lnet_ping_info_t, pi_ni[0])) {
 		CERROR("%s: Short reply %d(%d min)\n", libcfs_id2str(id),
-		       nob, (int)offsetof(lnet_ping_info_t, pi_ni[0]));
+		       nob, offsetof(lnet_ping_info_t, pi_ni[0]));
 		goto out_1;
 	}
 
@@ -2274,7 +2274,7 @@ static int lnet_ping(lnet_process_id_t id, int timeout_ms,
 
 	if (nob < offsetof(lnet_ping_info_t, pi_ni[n_ids])) {
 		CERROR("%s: Short reply %d(%d expected)\n", libcfs_id2str(id),
-		       nob, (int)offsetof(lnet_ping_info_t, pi_ni[n_ids]));
+		       nob, offsetof(lnet_ping_info_t, pi_ni[n_ids]));
 		goto out_1;
 	}
 
-- 
1.8.3.4


