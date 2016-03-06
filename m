X-GM-THRID: 6258949185027964928
X-Received: by 10.140.40.239 with SMTP id x102mr13180777qgx.23.1457275167190;
        Sun, 06 Mar 2016 06:39:27 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.59.211 with SMTP id b19ls691933igr.10.gmail; Sun, 06 Mar
 2016 06:39:26 -0800 (PST)
X-Received: by 10.66.231.4 with SMTP id tc4mr13575297pac.14.1457275166274;
        Sun, 06 Mar 2016 06:39:26 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pa0-x231.google.com (mail-pa0-x231.google.com. [2607:f8b0:400e:c03::231])
        by gmr-mx.google.com with ESMTPS id ui7si2470501pab.0.2016.03.06.06.39.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 06 Mar 2016 06:39:26 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) client-ip=2607:f8b0:400e:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x231.google.com with SMTP id fy10so62887903pac.1
        for <outreachy-kernel@googlegroups.com>; Sun, 06 Mar 2016 06:39:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=flztCflcDK9YwKbFsg0hOHdnWVPjmesV9nBso5Vodcs=;
        b=BHL1+Pd3IzstbB+sJ2T5Je3VVyLLoVLCWuHgbcYPDwfzNY/QnnorT9D9tAS3IYI2af
         BH2nxhJaRzgw5i8hurcbCJEt7QcSCYQZU84GpBPJh1UOookYe48TYQtfClpu4ddgxOBh
         7BGGnCe9jMLTMyvjvhbq3JWJT4SPApr37NtobS9Vlgcr5hPwdq43yhes3bMRl072CB/j
         457pmHLpsIkvJwHz4VHIzjxY/HwnrVQLJ90W8idKSORASYhG5q0Er8XcLBn8YOvLfk/T
         Yvq9sC1+AS4sm7Fr6sbNWFAIZaww1gu54CWuPZLRcNIU3rbnoSxrh2addC+yq8ApX2UQ
         SlKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=flztCflcDK9YwKbFsg0hOHdnWVPjmesV9nBso5Vodcs=;
        b=b3SwgebDb6dXPNnxBo1NlDG9Ed+XlROB4tI7Xqbi9GMgtfBWbj+beMXoIPihZUQ6DE
         SMrJSXeO8fIJhH4S7ygds5szKi2TMSxL/+FPIxnpoMELGbKYPvCC45WWR/+fTtRgZzvx
         lH9uGlNCXm5mmcqdzEIyyAHPHhD3rcTWhFSOqNR5RFVkXRAnWGUqF9iTEkK4u9Mki3wP
         kqhigxzqdh2/7WlJ158w9XogHSCtIlRx2OIpgSD6UhYjCUOjNrPBgM60gp5cBroQ3ONm
         x4r8X1O2yEyRuTfdJekX2On3+BUu+BBbCgtV4c4Kq1GlwSn1uSdP9XPpCjZESJ3f59NW
         /YkA==
X-Gm-Message-State: AD7BkJI6kued42GgKqyzI/PhWRIqNbzUifFhDFUpiVHD+OMPKzBzeYf34e5dK87UwSleQw==
X-Received: by 10.66.102.104 with SMTP id fn8mr27208640pab.129.1457275166150;
        Sun, 06 Mar 2016 06:39:26 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([106.215.181.247])
        by smtp.gmail.com with ESMTPSA id k65sm18215442pfb.30.2016.03.06.06.39.22
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sun, 06 Mar 2016 06:39:25 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Sun, 06 Mar 2016 20:09:15 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH] Staging: lustre: lnet: Use list_first_entry_or_null
Date: Sun,  6 Mar 2016 20:08:44 +0530
Message-Id: <1457275124-9604-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch replaces list_empty and list_entry with
list_first_entry_or_null.
Done using coccinelle:

@@
expression e1,e2;
statement S;
@@
- if(!list_empty(...)){
  e2=
- list_entry(e1.next,
+ list_first_entry_or_null(&e1,
  ...);
+ if(e2){
...
}

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/lustre/lnet/selftest/conrpc.c    | 7 +++----
 drivers/staging/lustre/lnet/selftest/framework.c | 7 +++----
 2 files changed, 6 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/lustre/lnet/selftest/conrpc.c b/drivers/staging/lustre/lnet/selftest/conrpc.c
index e6376a0..d84982b 100644
--- a/drivers/staging/lustre/lnet/selftest/conrpc.c
+++ b/drivers/staging/lustre/lnet/selftest/conrpc.c
@@ -123,11 +123,10 @@ lstcon_rpc_prep(lstcon_node_t *nd, int service, unsigned feats,
 
 	spin_lock(&console_session.ses_rpc_lock);
 
-	if (!list_empty(&console_session.ses_rpc_freelist)) {
-		crpc = list_entry(console_session.ses_rpc_freelist.next,
-				  lstcon_rpc_t, crp_link);
+	crpc = list_first_entry_or_null(&console_session.ses_rpc_freelist,
+					lstcon_rpc_t, crp_link);
+	if (crpc)
 		list_del_init(&crpc->crp_link);
-	}
 
 	spin_unlock(&console_session.ses_rpc_lock);
 
diff --git a/drivers/staging/lustre/lnet/selftest/framework.c b/drivers/staging/lustre/lnet/selftest/framework.c
index dbd2c61..9343970 100644
--- a/drivers/staging/lustre/lnet/selftest/framework.c
+++ b/drivers/staging/lustre/lnet/selftest/framework.c
@@ -919,11 +919,10 @@ sfw_create_test_rpc(sfw_test_unit_t *tsu, lnet_process_id_t peer,
 	spin_lock(&tsi->tsi_lock);
 
 	LASSERT(sfw_test_active(tsi));
-
-	if (!list_empty(&tsi->tsi_free_rpcs)) {
 		/* pick request from buffer */
-		rpc = list_entry(tsi->tsi_free_rpcs.next,
-				 srpc_client_rpc_t, crpc_list);
+	rpc = list_first_entry_or_null(&tsi->tsi_free_rpcs,
+				       srpc_client_rpc_t, crpc_list);
+	if (rpc) {
 		LASSERT(nblk == rpc->crpc_bulk.bk_niov);
 		list_del_init(&rpc->crpc_list);
 	}
-- 
1.9.1


