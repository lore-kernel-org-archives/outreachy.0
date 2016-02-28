X-GM-THRID: 6256394552037343232
X-Received: by 10.129.71.85 with SMTP id u82mr10249146ywa.9.1456680370748;
        Sun, 28 Feb 2016 09:26:10 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.213.233 with SMTP id nv9ls874656obc.90.gmail; Sun, 28 Feb
 2016 09:26:10 -0800 (PST)
X-Received: by 10.182.29.129 with SMTP id k1mr9519323obh.23.1456680370459;
        Sun, 28 Feb 2016 09:26:10 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pf0-x231.google.com (mail-pf0-x231.google.com. [2607:f8b0:400e:c00::231])
        by gmr-mx.google.com with ESMTPS id y20si1050943pfa.2.2016.02.28.09.26.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 09:26:10 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::231 as permitted sender) client-ip=2607:f8b0:400e:c00::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::231 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x231.google.com with SMTP id 4so188698pfd.1
        for <outreachy-kernel@googlegroups.com>; Sun, 28 Feb 2016 09:26:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=VTEYDg2tCp0LvFErA1ZlJXirakiuWa2ddmg5wlKY+o4=;
        b=zDN5FrKsg8RSp/eyXwuN81WwqNh8DwKvLO110sNW47/BuIY/KJ6Kg1UFoZNZQAVN2m
         /vXX21hysY0RPh97InsxeICn3YttEK87e07dj5izzozLDYSUUbvszD9tSUIs4eCDNJaQ
         C+6AONG3Qw/Rg8gPkEBWrGWpBK2EgkpVDE5iQmx2PBZmR3po+sJit6HaAGzHzrOTn/5V
         0LnOcjjsmI/664FD0YmHtIRznsckx7GuorvbZZgv0tGntBcgtKyHsIvZi/Z77E9eDmUz
         wTgRFZMBsqt8270GjHYAMy9qEAy7lwnBh/wkYYbdC/Jx6sJMQydvlaF1mjfTwewsV3TO
         1FNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=VTEYDg2tCp0LvFErA1ZlJXirakiuWa2ddmg5wlKY+o4=;
        b=mp4mHtIE0isLEv0fzX/WiCkPR4jfnxPW/zUXSW1j4MuyO4CFXz2jmmblos0SJ1QSOd
         2QOoWmgwQSP7LR5zz3tQ3WQWiQnJQWeG1GTzZFXwV8TKqniRKj1gDZ9BVVlE7CEu5jEv
         8wD+nkgpo+HDcoZjyktZ+9CvE55ZxAAjkyjqxzkCxt2rQsim4ISVJVhUPId5i7eX5vBD
         2V/UvlCb1S8GDocsJhwZVA9waeIu/S0Q9xQFPdcMuwb8PMFqc/Uq7UZV+CGy4VdVN0MB
         PRWlKZPpcQvGQ2UN1NYbJM5uCRHwI1DiZxaz7fOjg/xi3vrPGPafHN0B5RTNnZABso1X
         zpMQ==
X-Gm-Message-State: AD7BkJIoECIwvsAbyVKiH4bPcuTaZwdmdy2Xu4cfCr5J4qEL0+nUYILXe+Ax+lYTEQTVBA==
X-Received: by 10.98.18.8 with SMTP id a8mr16891493pfj.41.1456680370282;
        Sun, 28 Feb 2016 09:26:10 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([106.215.134.212])
        by smtp.gmail.com with ESMTPSA id n82sm11287135pfb.53.2016.02.28.09.26.06
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sun, 28 Feb 2016 09:26:09 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Sun, 28 Feb 2016 22:56:01 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH] Staging: lustre: Remove print statement on function failure
Date: Sun, 28 Feb 2016 22:55:58 +0530
Message-Id: <1456680358-31613-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

The  memory allocation functions generates a call stack containing
all the context information on failure, so print statements can be
removed on failure of these functions. Also remove
unwanted {} around if block after removal of these statements.
Done using coccinelle:

@@
expression e;
@@

e=\(kmalloc\|kmalloc\|kmalloc_array\|alloc_netdev\|kzalloc\|
   devm_kzalloc\|devm_ioremap\)(...);
...
if(!e){
- \(DBG_8723A\|printk\|pr_err\|CERROR\|DBG_88E\)(...);
...when any
}

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/lustre/lustre/libcfs/linux/linux-crypto.c | 1 -
 drivers/staging/lustre/lustre/obdclass/llog.c             | 5 ++---
 drivers/staging/lustre/lustre/obdecho/echo_client.c       | 2 --
 3 files changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/lustre/lustre/libcfs/linux/linux-crypto.c b/drivers/staging/lustre/lustre/libcfs/linux/linux-crypto.c
index ec75801..6742270 100644
--- a/drivers/staging/lustre/lustre/libcfs/linux/linux-crypto.c
+++ b/drivers/staging/lustre/lustre/libcfs/linux/linux-crypto.c
@@ -252,7 +252,6 @@ static int cfs_crypto_test_hashes(void)
 
 	data = kmalloc(data_len, 0);
 	if (!data) {
-		CERROR("Failed to allocate mem\n");
 		return -ENOMEM;
 	}
 
diff --git a/drivers/staging/lustre/lustre/obdclass/llog.c b/drivers/staging/lustre/lustre/obdclass/llog.c
index f7ee605..d1d74ee 100644
--- a/drivers/staging/lustre/lustre/obdclass/llog.c
+++ b/drivers/staging/lustre/lustre/obdclass/llog.c
@@ -365,10 +365,9 @@ int llog_process_or_fork(const struct lu_env *env,
 	int		      rc;
 
 	lpi = kzalloc(sizeof(*lpi), GFP_NOFS);
-	if (!lpi) {
-		CERROR("cannot alloc pointer\n");
+	if (!lpi)
 		return -ENOMEM;
-	}
+
 	lpi->lpi_loghandle = loghandle;
 	lpi->lpi_cb	= cb;
 	lpi->lpi_cbdata    = data;
diff --git a/drivers/staging/lustre/lustre/obdecho/echo_client.c b/drivers/staging/lustre/lustre/obdecho/echo_client.c
index 2b13aa2..a5b6854 100644
--- a/drivers/staging/lustre/lustre/obdecho/echo_client.c
+++ b/drivers/staging/lustre/lustre/obdecho/echo_client.c
@@ -1767,8 +1767,6 @@ static int echo_client_setup(const struct lu_env *env,
 
 	ocd = kzalloc(sizeof(*ocd), GFP_NOFS);
 	if (!ocd) {
-		CERROR("Can't alloc ocd connecting to %s\n",
-		       lustre_cfg_string(lcfg, 1));
 		return -ENOMEM;
 	}
 
-- 
1.9.1


