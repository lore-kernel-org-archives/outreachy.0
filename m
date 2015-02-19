X-GM-THRID: 1021192437760
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,e6439309dff147de,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.45.7 with SMTP id i7mr869585lam.9.1424383660982;
        Thu, 19 Feb 2015 14:07:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.5.199 with SMTP id u7ls221548lau.63.gmail; Thu, 19 Feb
 2015 14:07:40 -0800 (PST)
X-Received: by 10.152.6.232 with SMTP id e8mr879491laa.2.1424383660554;
        Thu, 19 Feb 2015 14:07:40 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from mail-wg0-x233.google.com (mail-wg0-x233.google.com. [2a00:1450:400c:c00::233])
        by gmr-mx.google.com with ESMTPS id o3si4251054wib.2.2015.02.19.14.07.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Feb 2015 14:07:40 -0800 (PST)
Received-SPF: pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c00::233 as permitted sender) client-ip=2a00:1450:400c:c00::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c00::233 as permitted sender) smtp.mail=aysemelikeyurtoglu@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x233.google.com with SMTP id y19so9852023wgg.10
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Feb 2015 14:07:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=tFpxaw8MejSQ8rIZnyAdujdlM6vfd/cOSe/TlsQ5xT8=;
        b=pr0PoyB+a5u0YcN5q1RARBRYsM3qri7+AvstDLX21+O7YdGyYLDFTTU5y3q4k0Mc1C
         mwS+CQE4LZbReQpdUvl2bKdfXzBagl8t0QGM3/OW9WYI+ZknIvI1pAjV9fsxGwOaqcfL
         eIC0jNzg+nRFMVhC9ZtPPuYvn3mS+6WsZHixhBOzTwsyoxQZlMPyapng0npd/JUKlzJz
         EdSScd+CsZFY45/unVNOD9NECSJW5ZnsI3ojGeFQvfEq/qRETfGi5BOoT3tZ0ue9sm6A
         DmVtWwr2GbEwduwUYTfbeNV1XziQEog0551Wmycg0sosix4iuY94kaFG/LrQ+beg930s
         /LlA==
X-Received: by 10.180.93.226 with SMTP id cx2mr126692wib.63.1424383660438;
        Thu, 19 Feb 2015 14:07:40 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from localhost.localdomain ([81.214.238.226])
        by mx.google.com with ESMTPSA id y14sm26106071wjr.39.2015.02.19.14.07.37
        (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 19 Feb 2015 14:07:39 -0800 (PST)
From: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
Subject: [PATCH 1/2] Staging: lustre: lnet: klnds: o2iblnd: Remove intialization of static to 0
Date: Fri, 20 Feb 2015 00:06:51 +0200
Message-Id: <1424383611-27755-1-git-send-email-aysemelikeyurtoglu@gmail.com>
X-Mailer: git-send-email 1.8.3.2

ERROR: do not initialise statics to 0 or NULL
checkpatch.pl error in o2iblnd_modparams.c

Signed-off-by: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
---
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


