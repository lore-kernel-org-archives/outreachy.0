X-GM-THRID: 6201691543779147776
X-Received: by 10.68.239.226 with SMTP id vv2mr12494019pbc.13.1443943833856;
        Sun, 04 Oct 2015 00:30:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.3.169 with SMTP id e41ls1349750ioi.8.gmail; Sun, 04 Oct
 2015 00:30:33 -0700 (PDT)
X-Received: by 10.50.142.103 with SMTP id rv7mr5655132igb.2.1443943833609;
        Sun, 04 Oct 2015 00:30:33 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x233.google.com (mail-pa0-x233.google.com. [2607:f8b0:400e:c03::233])
        by gmr-mx.google.com with ESMTPS id w5si2716686pbt.1.2015.10.04.00.30.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Oct 2015 00:30:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) client-ip=2607:f8b0:400e:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x233.google.com with SMTP id lk4so144767280pab.3
        for <outreachy-kernel@googlegroups.com>; Sun, 04 Oct 2015 00:30:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id;
        bh=488GNOpur2zpL1bZoCER0NpF8U2eHIyjW6I+Nt73Ce4=;
        b=ifoauTPICb2C+gdNfbopo6PZ1KzCp5hD6TaxvbAonqBKmBCTVcM8/jH4zy42XYp1Hm
         wNpX1HlNO6pHiS0r3ylM+r+0QBZ+zP6nrzdoCIvw9g86nTqxZsH8n96jo3vyd+OfQjdq
         vdbX4lHE11jBvzzyt6Tod2mks8ejB49fCxDVSKSkRsSZ72ubPE8Dvyy1lzhNcv2SJd1m
         nhfh3PbqqaabYwiRVIQoN9QotzwYQp51KwNeMeGP3B6U1F0EEjUP2E/5bkWqvehJJB+s
         dQkigkAABlfJ6+8czc531LursrwHYs6XaGdGLzUYOCZcBUjCLN4NEJCvKpNGm1rTBeO7
         su3w==
X-Received: by 10.66.146.4 with SMTP id sy4mr31344240pab.79.1443943833438;
        Sun, 04 Oct 2015 00:30:33 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id uq1sm4087085pbc.82.2015.10.04.00.30.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 04 Oct 2015 00:30:32 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH 0/8] Declare as static
Date: Sun,  4 Oct 2015 13:00:08 +0530
Message-Id: <1443943816-21546-1-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150209.5610D598.000E,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

These patches declare the functions and structures which are not
used anywhere else as static.

Shraddha Barke (8):
  Staging: lustre: ptlrpc: nrs: Declare as static
  Staging: lustre: ptlrpc: events: Declare as static
  Staging: lustre: ptlrpc: pinger: Declare as static
  Staging: lustre: ptlrpc: layout: Declare as static
  Staging: lustre: ptlrpc: niobuf: Declare as static
  Staging: lustre: obdclass: genops: Declare as static
  Staging: lustre: obdclass: class_obd: Declare as static
  Staging: lustre: obdclass: obd_mount: Declare as static

 .../staging/lustre/lustre/include/lustre_disk.h    |  5 -----
 drivers/staging/lustre/lustre/include/lustre_net.h |  7 ------
 .../staging/lustre/lustre/include/lustre_param.h   |  3 ---
 .../lustre/lustre/include/lustre_req_layout.h      |  4 ----
 drivers/staging/lustre/lustre/include/obd_class.h  |  3 ---
 drivers/staging/lustre/lustre/obdclass/class_obd.c |  2 +-
 drivers/staging/lustre/lustre/obdclass/genops.c    |  5 ++---
 drivers/staging/lustre/lustre/obdclass/obd_mount.c | 25 +++++++++++-----------
 drivers/staging/lustre/lustre/ptlrpc/events.c      |  2 +-
 drivers/staging/lustre/lustre/ptlrpc/layout.c      | 10 ++++-----
 drivers/staging/lustre/lustre/ptlrpc/niobuf.c      |  3 +--
 drivers/staging/lustre/lustre/ptlrpc/nrs.c         |  3 +--
 drivers/staging/lustre/lustre/ptlrpc/pinger.c      |  4 ++--
 13 files changed, 24 insertions(+), 52 deletions(-)

-- 
2.1.4


