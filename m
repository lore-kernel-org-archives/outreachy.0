X-GM-THRID: 6205587481887244288
X-Received: by 10.50.114.2 with SMTP id jc2mr23555934igb.5.1444850957632;
        Wed, 14 Oct 2015 12:29:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.11.218 with SMTP id 87ls264810iol.10.gmail; Wed, 14 Oct
 2015 12:29:17 -0700 (PDT)
X-Received: by 10.50.142.103 with SMTP id rv7mr23622776igb.2.1444850957355;
        Wed, 14 Oct 2015 12:29:17 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x22f.google.com (mail-pa0-x22f.google.com. [2607:f8b0:400e:c03::22f])
        by gmr-mx.google.com with ESMTPS id ce6si476635pad.0.2015.10.14.12.29.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 12:29:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) client-ip=2607:f8b0:400e:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22f.google.com with SMTP id p3so14520031pay.1
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Oct 2015 12:29:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=+cuo5hRsZRlTXo8araVKrS/zqD6Izn+zJKVyGl9mVjs=;
        b=gvJnyVChARbK0e1EuDujFcoZM8KIR8/0aeCMgKZd/tkFUUTR+fc3m8GUKLYX3YsxrA
         qv/rOMWPrqnj7fcc3irMIVmPTOf7LIdLC/rrd/hYzamdRMh/18n1JBrpY0JaTvdCk7tw
         rpZFHzTq0QHEklxKL9FUDH9Jta0ltp/JIzzpY5AGKp/8fECnKY4YGH9fGieFeFqbhrPT
         LoZcvEjrP5qi364WhQTMBaI6hP9QdaXVik7DyRcI7DBZKwuvy01CtmVxbzZRbMSnLyR5
         s7cBk+0b5JyoXP3S8yTdrBbZhpN7gN2L1wNO/DTpDNA3C/d/ILdxXdv1xl3CYVsaU6Xu
         8O+A==
X-Received: by 10.68.57.129 with SMTP id i1mr5235902pbq.51.1444850957243;
        Wed, 14 Oct 2015 12:29:17 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id aw5sm11106380pbc.13.2015.10.14.12.29.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 14 Oct 2015 12:29:16 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH 10/12] Staging: lustre: ptlrpc: Remove unnecessary cast on void pointer
Date: Thu, 15 Oct 2015 00:58:28 +0530
Message-Id: <1444850910-11408-11-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1444850910-11408-1-git-send-email-shraddha.6596@gmail.com>
References: <1444850910-11408-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150201.561EAD0B.00B0,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

void pointers do not need to be cast to other pointer types.

The semantic patch used to find this:

@r@
expression x;
void* e;
type T;
identifier f;
@@

(
  *((T *)e)
|
  ((T *)x)[...]
|
  ((T *)x)->f
|
- (T *)
  e
)

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 drivers/staging/lustre/lustre/ptlrpc/connection.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/ptlrpc/connection.c b/drivers/staging/lustre/lustre/ptlrpc/connection.c
index ffe36e2..1ba1f5f 100644
--- a/drivers/staging/lustre/lustre/ptlrpc/connection.c
+++ b/drivers/staging/lustre/lustre/ptlrpc/connection.c
@@ -173,7 +173,7 @@ conn_keycmp(const void *key, struct hlist_node *hnode)
 	const lnet_process_id_t *conn_key;
 
 	LASSERT(key != NULL);
-	conn_key = (lnet_process_id_t *)key;
+	conn_key = key;
 	conn = hlist_entry(hnode, struct ptlrpc_connection, c_hash);
 
 	return conn_key->nid == conn->c_peer.nid &&
-- 
2.1.4


