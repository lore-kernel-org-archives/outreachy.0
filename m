X-GM-THRID: 1021192437760
X-Received: by 10.180.87.166 with SMTP id az6mr350799wib.1.1424438649832;
        Fri, 20 Feb 2015 05:24:09 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.20.67 with SMTP id l3ls276481lae.93.gmail; Fri, 20 Feb
 2015 05:24:08 -0800 (PST)
X-Received: by 10.152.28.137 with SMTP id b9mr1276477lah.8.1424438648293;
        Fri, 20 Feb 2015 05:24:08 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from mail-wg0-x230.google.com (mail-wg0-x230.google.com. [2a00:1450:400c:c00::230])
        by gmr-mx.google.com with ESMTPS id ta1si105391wic.1.2015.02.20.05.24.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Feb 2015 05:24:08 -0800 (PST)
Received-SPF: pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c00::230 as permitted sender) client-ip=2a00:1450:400c:c00::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c00::230 as permitted sender) smtp.mail=aysemelikeyurtoglu@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-f48.google.com with SMTP id l18so13104160wgh.7
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Feb 2015 05:24:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=WiJOl7fV1pwJxtQwgDckqGE2kpxoxjxrecoyBEylCAk=;
        b=cYKLVNJqVSW5/6aTfm0X2YA2dLHuM72nGwyIDLammGGIxofbFtTbgLxdha3rhKxsrl
         QOBs0nwGlug6w9HFE8NjeYqWXJadJrJiNcxpOyUiuIwjQ+TO8pssWPpa3TB2RMVYH/e+
         4Wx9Nq5kxUK6GBjlh61WfeXVjaZJyCebLy2ixiPLHjQ8fn+fx/3Mxnwm1lX6fR6mSemu
         f20DDA41LIto4Quv/X5xh5PAlbL1CDQQYTZw5uXPBz7B/CmSXuPirR7j4sMwALkdKpFR
         t4n/33bn1LjY1m1svTEcHw7D85MGYPrv+l24lfsyJ1sFbFbcFwMlXAtVpfBBb7rFbUei
         uAMA==
X-Received: by 10.181.27.168 with SMTP id jh8mr19618172wid.56.1424438648132;
        Fri, 20 Feb 2015 05:24:08 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from localhost.localdomain ([81.214.238.226])
        by mx.google.com with ESMTPSA id pp10sm42069110wjc.31.2015.02.20.05.24.05
        (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 20 Feb 2015 05:24:07 -0800 (PST)
From: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
Subject: [PATCH v2 1/2] Staging: lustre: lnet: klnds: o2iblnd: Remove intialization of static to 0
Date: Fri, 20 Feb 2015 15:23:18 +0200
Message-Id: <1424438599-6899-1-git-send-email-aysemelikeyurtoglu@gmail.com>
X-Mailer: git-send-email 1.8.3.2

ERROR: do not initialise statics to 0 or NULL
checkpatch.pl error in o2iblnd_modparams.c
initial value unassigned static variables are automatically set to zero.
so it is unnecessary to assign the initial value to zero

Signed-off-by: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
---

v2:clarification has been added

 .../lustre/lnet/klnds/o2iblnd/o2iblnd_modparams.c        | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd_modparams.c b/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd_modparams.c
index 8b4a8e9..8036d8b 100644
--- a/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd_modparams.c
+++ b/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd_modparams.c
@@ -44,7 +44,7 @@ static int service = 987;
 module_param(service, int, 0444);
 MODULE_PARM_DESC(service, "service number (within RDMA_PS_TCP)");
 
-static int cksum = 0;
+static int cksum;
 module_param(cksum, int, 0644);
 MODULE_PARM_DESC(cksum, "set non-zero to enable message (not RDMA) checksums");
 
@@ -72,11 +72,11 @@ static int peer_credits = 8;
 module_param(peer_credits, int, 0444);
 MODULE_PARM_DESC(peer_credits, "# concurrent sends to 1 peer");
 
-static int peer_credits_hiw = 0;
+static int peer_credits_hiw;
 module_param(peer_credits_hiw, int, 0444);
 MODULE_PARM_DESC(peer_credits_hiw, "when eagerly to return credits");
 
-static int peer_buffer_credits = 0;
+static int peer_buffer_credits;
 module_param(peer_buffer_credits, int, 0444);
 MODULE_PARM_DESC(peer_buffer_credits, "# per-peer router buffer credits");
 
@@ -100,15 +100,15 @@ static int keepalive = 100;
 module_param(keepalive, int, 0644);
 MODULE_PARM_DESC(keepalive, "Idle time in seconds before sending a keepalive");
 
-static int ib_mtu = 0;
+static int ib_mtu;
 module_param(ib_mtu, int, 0444);
 MODULE_PARM_DESC(ib_mtu, "IB MTU 256/512/1024/2048/4096");
 
-static int concurrent_sends = 0;
+static int concurrent_sends;
 module_param(concurrent_sends, int, 0444);
 MODULE_PARM_DESC(concurrent_sends, "send work-queue sizing");
 
-static int map_on_demand = 0;
+static int map_on_demand;
 module_param(map_on_demand, int, 0444);
 MODULE_PARM_DESC(map_on_demand, "map on demand");
 
@@ -136,12 +136,12 @@ MODULE_PARM_DESC(pmr_pool_size, "size of MR cache pmr pool on each CPT");
  * 1: enable failover if necessary
  * 2: force to failover (for debug)
  */
-static int dev_failover = 0;
+static int dev_failover;
 module_param(dev_failover, int, 0444);
 MODULE_PARM_DESC(dev_failover, "HCA failover for bonding (0 off, 1 on, other values reserved)");
 
 
-static int require_privileged_port = 0;
+static int require_privileged_port;
 module_param(require_privileged_port, int, 0644);
 MODULE_PARM_DESC(require_privileged_port, "require privileged port when accepting connection");
 
-- 
1.8.3.2


