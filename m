X-GM-THRID: 4525053181952
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,253b09dbad964a54
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.219.102 with SMTP id pn6mr2618541lbc.12.1425122723708;
        Sat, 28 Feb 2015 03:25:23 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.9.6 with SMTP id v6ls273921laa.13.gmail; Sat, 28 Feb 2015
 03:25:23 -0800 (PST)
X-Received: by 10.112.222.131 with SMTP id qm3mr2610732lbc.1.1425122723204;
        Sat, 28 Feb 2015 03:25:23 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from mail-we0-x232.google.com (mail-we0-x232.google.com. [2a00:1450:400c:c03::232])
        by gmr-mx.google.com with ESMTPS id ev8si276284wib.3.2015.02.28.03.25.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 28 Feb 2015 03:25:23 -0800 (PST)
Received-SPF: pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c03::232 as permitted sender) client-ip=2a00:1450:400c:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c03::232 as permitted sender) smtp.mail=dilekuzulmez@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wesw62 with SMTP id w62so24847575wes.9
        for <outreachy-kernel@googlegroups.com>; Sat, 28 Feb 2015 03:25:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=IsYRs7c++p0XWTa5snIeW+PJbteObmftzv3trinATm0=;
        b=ZpMldHyLru7aoonBAErwPaChiRfQi9RsMltJYZr6Eregcm4QE1qJjWFem2WPG4FeEi
         HzuvlUrxYwwSiiUcnUguIAA1OF4HXpFe1IAWMxXdsyGjRqvyZ0vwvjhf2FH/SbZ/D/8O
         /4jyZp3p62CJlvG33DsHTa74YK7KiB+ZvDMDaHB4P0s7fmKXU730XRy6DOjcJyW5Hmg7
         7u0ueY7umR9ujEaAD3fmYAcmvdHy6JStn4dSUW62kX2G40c5Ctb3C9oIJ+WFxXG1Y0ro
         zYvB2+sIwGKod1VdOnn3QLzPix5R8C+gjM9rHWpi5J5FKjFba6gNCXw4scoNuQCwkACq
         ccew==
X-Received: by 10.194.133.196 with SMTP id pe4mr13472274wjb.76.1425122723045;
        Sat, 28 Feb 2015 03:25:23 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from localhost.localdomain ([78.178.131.202])
        by mx.google.com with ESMTPSA id uc18sm6701269wib.0.2015.02.28.03.25.21
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 28 Feb 2015 03:25:22 -0800 (PST)
From: Dilek Uzulmez <dilekuzulmez@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Dilek Uzulmez <dilekuzulmez@gmail.com>
Subject: [PATCH v2 01/10] Staging: lustre: Add blank line after declarations
Date: Sat, 28 Feb 2015 13:25:06 +0200
Message-Id: <1425122715-2938-1-git-send-email-dilekuzulmez@gmail.com>
X-Mailer: git-send-email 1.9.1

The following patch fixes the checkpatch.pl warning:
WARNING: Missing a blank line after declarations

The warning was handled in ten files:
          -import.c
          -client.c
          -llog_client.c
          -lproc_ptlrpc.c
          -pack_generic.c
          -pinger.c
          -ptlrpcd.c
          -sec.c
          -sec_null.c
          -service.c

Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
---

Changes in v2:
    All put in a patch and changed commit message

 drivers/staging/lustre/lustre/ptlrpc/import.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/staging/lustre/lustre/ptlrpc/import.c b/drivers/staging/lustre/lustre/ptlrpc/import.c
index 4ceb90d..165aa82 100644
--- a/drivers/staging/lustre/lustre/ptlrpc/import.c
+++ b/drivers/staging/lustre/lustre/ptlrpc/import.c
@@ -448,6 +448,7 @@ int ptlrpc_reconnect_import(struct obd_import *imp)
 	if (atomic_read(&imp->imp_inval_count) > 0) {
 		int rc;
 		struct l_wait_info lwi = LWI_INTR(LWI_ON_SIGNAL_NOOP, NULL);
+
 		rc = l_wait_event(imp->imp_recovery_waitq,
 				  (atomic_read(&imp->imp_inval_count) == 0),
 				  &lwi);
@@ -529,6 +530,7 @@ static int import_select_connection(struct obd_import *imp)
 	   trying to reconnect on it.) */
 	if (tried_all && (imp->imp_conn_list.next == &imp_conn->oic_item)) {
 		struct adaptive_timeout *at = &imp->imp_at.iat_net_latency;
+
 		if (at_get(at) < CONNECTION_SWITCH_MAX) {
 			at_measured(at, at_get(at) + CONNECTION_SWITCH_INC);
 			if (at_get(at) > CONNECTION_SWITCH_MAX)
-- 
1.9.1


