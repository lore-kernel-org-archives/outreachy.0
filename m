X-GM-THRID: 6256394552037343232
X-Received: by 10.31.15.11 with SMTP id 11mr10027529vkp.3.1456688701074;
        Sun, 28 Feb 2016 11:45:01 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.85.113 with SMTP id m104ls367729qgd.24.gmail; Sun, 28 Feb
 2016 11:45:00 -0800 (PST)
X-Received: by 10.13.215.140 with SMTP id z134mr10542547ywd.7.1456688700671;
        Sun, 28 Feb 2016 11:45:00 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id ui7si3190998pab.0.2016.02.28.11.45.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 11:45:00 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id y7so7457036paa.0
        for <outreachy-kernel@googlegroups.com>; Sun, 28 Feb 2016 11:45:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=7Zh5jGHq/llHW9wwb6A1XG1JS5D3A78OfUpN0lusWs8=;
        b=w2j0o9ZNYxhuRQKUc8N1cbJ53nEdI1jX5/yzonlm/abVA6/u+qHbNVi4+eHssOdnAr
         fil6zKhW+Nc0FsY3tupAquHRMp9cWivm1NaTUse+i94vt4ESeIka8OTqooit5bGdpPvI
         4ppRQXmLNEtiDEdquhP2oc/zoRZXPuFcUQV54oEKRdGJIOlBbl6cbHOotvv9Fvd4Hfo7
         sJh1n21tw9DRJBaWBUcg/aXV7Z6ubLg5ldnKnFjLlsUq8yrNznnU4nJRVWVuB0ATB764
         krNMbeEwHImzZ9Bf8ioevPLzfnu1Zmf5xx+d7Npvdj7S5sxxBCYf8Wil0s6jnptQVBy0
         vEhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=7Zh5jGHq/llHW9wwb6A1XG1JS5D3A78OfUpN0lusWs8=;
        b=S1CTSA8qFgQYUKta6bR4ZAdwCFZkXHTrHFGzgs8M8iCTPJjgZO4OztmS9BD79REQvh
         B2LRN5eu99uBNKSj6bfy3KWM3T6fb8FcKyDjGDSmEIGihXOo4Jg3iWJDK0XRKE8FuJhP
         uEjpsI1hrzVXDgpPHjaTTsXWO+lg2RIZp3DXl1FDEHm1yL+5VO8WnzgwfYZxO9OEV8Lp
         4Kbc+/yXHOw40sgDd1oFLHYcBnJOu99IRbEgsNEYQ9+ZRsgN5EqnttHoDbkmra5334p8
         kU/XAV42syoYm5TEJT8lzAz7UBSASle7aquO/1qSM7Lt+Xd8kzgeYWShbYh9P7mSrTai
         T7BQ==
X-Gm-Message-State: AD7BkJKCrDYxSC18If2c6q0eQnP/ptBAr3zxXVNZEgORB9OdKEvyaNug/UD3i/xedYIOGQ==
X-Received: by 10.66.220.162 with SMTP id px2mr17422798pac.15.1456688700454;
        Sun, 28 Feb 2016 11:45:00 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([106.215.134.212])
        by smtp.gmail.com with ESMTPSA id l62sm32834800pfj.7.2016.02.28.11.44.56
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sun, 28 Feb 2016 11:44:59 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Mon, 29 Feb 2016 01:14:50 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH v2] Staging: lustre: Remove print statement on function failure
Date: Mon, 29 Feb 2016 01:14:33 +0530
Message-Id: <1456688673-9254-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

The  memory allocation functions generates a call stack containing
all the context information on failure, so print statements can be
removed on failure of these functions. Also remove
unwanted {} around if block after removal of these statements.
Done using coccinelle:

@@
expression e,e1,e2;
identifier x;
@@
e=\(kmalloc\|kmalloc_array\|kzalloc\|
   devm_kzalloc\)(...);
...when!=e=e1
if(!e)
-{
- \(printk\|DBG_8723A\|pr_err\|CERROR\|DBG_88E\)(...);
(
goto x;
|
return e2;
|
return;
)
-}

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
Changes in v2:
* Improve the semantic patch and use special case in this case as there
  are only two stataments in if condition.

 drivers/staging/lustre/lustre/libcfs/linux/linux-crypto.c | 4 +---
 drivers/staging/lustre/lustre/obdclass/llog.c             | 4 +---
 drivers/staging/lustre/lustre/obdecho/echo_client.c       | 5 +----
 3 files changed, 3 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/lustre/lustre/libcfs/linux/linux-crypto.c b/drivers/staging/lustre/lustre/libcfs/linux/linux-crypto.c
index ec75801..1d2f70f 100644
--- a/drivers/staging/lustre/lustre/libcfs/linux/linux-crypto.c
+++ b/drivers/staging/lustre/lustre/libcfs/linux/linux-crypto.c
@@ -251,10 +251,8 @@ static int cfs_crypto_test_hashes(void)
 	unsigned int	    data_len = 1 * 128 * 1024;
 
 	data = kmalloc(data_len, 0);
-	if (!data) {
-		CERROR("Failed to allocate mem\n");
+	if (!data)
 		return -ENOMEM;
-	}
 
 	for (j = 0; j < data_len; j++)
 		data[j] = j & 0xff;
diff --git a/drivers/staging/lustre/lustre/obdclass/llog.c b/drivers/staging/lustre/lustre/obdclass/llog.c
index f7ee605..992573e 100644
--- a/drivers/staging/lustre/lustre/obdclass/llog.c
+++ b/drivers/staging/lustre/lustre/obdclass/llog.c
@@ -365,10 +365,8 @@ int llog_process_or_fork(const struct lu_env *env,
 	int		      rc;
 
 	lpi = kzalloc(sizeof(*lpi), GFP_NOFS);
-	if (!lpi) {
-		CERROR("cannot alloc pointer\n");
+	if (!lpi)
 		return -ENOMEM;
-	}
 	lpi->lpi_loghandle = loghandle;
 	lpi->lpi_cb	= cb;
 	lpi->lpi_cbdata    = data;
diff --git a/drivers/staging/lustre/lustre/obdecho/echo_client.c b/drivers/staging/lustre/lustre/obdecho/echo_client.c
index 2b13aa2..1d4b3a9 100644
--- a/drivers/staging/lustre/lustre/obdecho/echo_client.c
+++ b/drivers/staging/lustre/lustre/obdecho/echo_client.c
@@ -1766,11 +1766,8 @@ static int echo_client_setup(const struct lu_env *env,
 	ec->ec_unique = 0;
 
 	ocd = kzalloc(sizeof(*ocd), GFP_NOFS);
-	if (!ocd) {
-		CERROR("Can't alloc ocd connecting to %s\n",
-		       lustre_cfg_string(lcfg, 1));
+	if (!ocd)
 		return -ENOMEM;
-	}
 
 	ocd->ocd_connect_flags = OBD_CONNECT_VERSION | OBD_CONNECT_REQPORTAL |
 				 OBD_CONNECT_BRW_SIZE |
-- 
1.9.1


