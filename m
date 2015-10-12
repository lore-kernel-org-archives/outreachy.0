X-GM-THRID: 6204781093577555968
X-Received: by 10.140.195.2 with SMTP id q2mr24487381qha.5.1444663175865;
        Mon, 12 Oct 2015 08:19:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.79.135 with SMTP id j7ls1153308igx.17.gmail; Mon, 12 Oct
 2015 08:19:35 -0700 (PDT)
X-Received: by 10.50.142.103 with SMTP id rv7mr13050415igb.2.1444663175302;
        Mon, 12 Oct 2015 08:19:35 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x22d.google.com (mail-pa0-x22d.google.com. [2607:f8b0:400e:c03::22d])
        by gmr-mx.google.com with ESMTPS id wl2si1445894pab.1.2015.10.12.08.19.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Oct 2015 08:19:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) client-ip=2607:f8b0:400e:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22d.google.com with SMTP id ex6so2428485pac.3
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Oct 2015 08:19:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id;
        bh=Zg5Xyk9sJViDcGcG2BFXOy9Vt6xu8rtidpEWc9pucR0=;
        b=z9COZ1xqqHmedZPtx5t+Bn9cl/blaq2YuBuZifNgU06AoZOQ7rgBNBhKp8g7VhSNQx
         s5prtAh4zKguxBvWOv4y825TargBU5jvebueM4d4zex2FmZO6YXxFFivo6gRgjEdc2Rw
         bMDvsbsbZNxgTVUCdvWm+f01VI/9IvEazP96RIWcaQwuTlGpS5zwgcyVz7fK97w8iCK5
         ypNAOZPvH8J6QJBedVEM9Wpy4paMp2D67ndhCTkkp54hl0KZdSRmHhn2zSkGVFOnePbf
         IT7DcKmLb2k6kI+7YQiFKqDyMZ/ODAcR4BqmXUQ0o1DipGxe8XlglQ6GoxaApK4MPpof
         Ax2Q==
X-Received: by 10.66.55.41 with SMTP id o9mr35252773pap.44.1444663175109;
        Mon, 12 Oct 2015 08:19:35 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id qy7sm11175141pab.37.2015.10.12.08.19.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 12 Oct 2015 08:19:34 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH 0/3] Remove NULL check before kfree
Date: Mon, 12 Oct 2015 20:49:17 +0530
Message-Id: <1444663160-26795-1-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150207.561BCF85.00E2,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

These patches remove null check before kfree using the Coccinelle script-

// <smpl>
@@ expression E; @@
- if (E != NULL) { kfree(E); }
+ kfree(E);
@@ expression E; @@
- if (E != NULL) { kfree(E); E = NULL; }
+ kfree(E);
+ E = NULL;
// </smpl>smpl>


Shraddha Barke (3):
  Staging: lustre: osc: Remove null check before kfree
  Staging: wilc1000: wilc_wfi_cfgoperations: Remove NULL check before
    kfree
  Staging: wilc1000: linux_wlan: Remove NULL check before kfree

 drivers/staging/lustre/lustre/osc/osc_request.c   |  4 +-
 drivers/staging/wilc1000/linux_wlan.c             |  6 +-
 drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 78 ++++++++---------------
 3 files changed, 28 insertions(+), 60 deletions(-)

-- 
2.1.4


