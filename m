X-GM-THRID: 6257541621925019648
X-Received: by 10.107.148.84 with SMTP id w81mr1377921iod.20.1456998404148;
        Thu, 03 Mar 2016 01:46:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.98.54 with SMTP id n51ls4858885qge.4.gmail; Thu, 03 Mar
 2016 01:46:43 -0800 (PST)
X-Received: by 10.140.223.17 with SMTP id t17mr1052751qhb.18.1456998403352;
        Thu, 03 Mar 2016 01:46:43 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x230.google.com (mail-pf0-x230.google.com. [2607:f8b0:400e:c00::230])
        by gmr-mx.google.com with ESMTPS id ui7si5897106pab.0.2016.03.03.01.46.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 03 Mar 2016 01:46:43 -0800 (PST)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::230 as permitted sender) client-ip=2607:f8b0:400e:c00::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::230 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x230.google.com with SMTP id 63so12020845pfe.3
        for <outreachy-kernel@googlegroups.com>; Thu, 03 Mar 2016 01:46:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=3kc/GA7Xt42UX9duLHBQvnK2P/zsVgwBfgpqXuH0HOY=;
        b=vdyNbpcUxVbJYLmRG3s5tF2LWnT33r9f/thbJcgYkZweD2fNmh9QFpzoirFvkAamS4
         IJTvTdwhw2R4jLZ4P5i7seELQWDNSdh00MDz2S1TWDaLTbt7C9OHR61784Gjg8n7yVZq
         RVQZ6g+zetYQl4CHrUnvLgvOgQE+7KvEVTUna+UPW7+yfFNX63v110VR2FcBFuUkNk8w
         OKW+ffoErSOXj6WsdLdQcvRyj2I75HsEbhVEARhY4i52VsiYTVShU1oEKRYtOnXXhApQ
         sDO18M5e2dNCRHoIbkRfhej1M7O6xXm+SPJJObOvcLMBZhwnkVDeME2kyh5SEK4QFczV
         pNmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=3kc/GA7Xt42UX9duLHBQvnK2P/zsVgwBfgpqXuH0HOY=;
        b=lJus3gjJeu0twUp6YnSIV5Dnzl89DheawCdN8ANFr7qXX5rL2e9/QGldoeeuQ2C9eG
         COoestoiWvCrsAqqmybE5g8KQqRTi1THp5N84eA8AhZwEQX0Vj6r0ihlm7zU+yoM4mNB
         ylQAB1I1D28UXMPi6Jo3IaTyUdVEpK25i+hzt+e04IA8Xct7RBtVfB/eOVpEU+NAeO7/
         dQpX3oxb1p0qUi0nvSXVDkxLDP0y6TQOKvMlArxm461Wes1V+Wi+w0NyBmwmEFRWQkzq
         o3uT4FnaTFKdH7ZJaM0b/YO0dzT0Of82o3VNtSoO6fffwq6YsRVdCnR8m7e0MfoBHbL1
         VgRg==
X-Gm-Message-State: AD7BkJKQ36OghV76KOHwu2NnSYJRLBvVBMgKo5JJIIgR7muTU7Vz+gvIVCpVEW/Cbq6/wg==
X-Received: by 10.98.87.211 with SMTP id i80mr2268025pfj.63.1456998403156;
        Thu, 03 Mar 2016 01:46:43 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.254])
        by smtp.gmail.com with ESMTPSA id n68sm59056110pfj.46.2016.03.03.01.46.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Thu, 03 Mar 2016 01:46:42 -0800 (PST)
Date: Thu, 3 Mar 2016 07:16:45 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: lustre: api-ni: Remove int typecast of offsetof().
Message-ID: <20160303014645.GA3348@sandhya>
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


