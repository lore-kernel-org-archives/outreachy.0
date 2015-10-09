X-GM-THRID: 6203671464357396480
X-Received: by 10.66.252.6 with SMTP id zo6mr11303244pac.29.1444404820071;
        Fri, 09 Oct 2015 08:33:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.18.83 with SMTP id 77ls1378192qge.74.gmail; Fri, 09 Oct
 2015 08:33:39 -0700 (PDT)
X-Received: by 10.13.212.203 with SMTP id w194mr11681039ywd.44.1444404819415;
        Fri, 09 Oct 2015 08:33:39 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x22e.google.com (mail-pa0-x22e.google.com. [2607:f8b0:400e:c03::22e])
        by gmr-mx.google.com with ESMTPS id zg1si181713pbb.2.2015.10.09.08.33.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Oct 2015 08:33:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) client-ip=2607:f8b0:400e:c03::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22e.google.com with SMTP id ex6so89987497pac.0
        for <outreachy-kernel@googlegroups.com>; Fri, 09 Oct 2015 08:33:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id;
        bh=y7X1lCHLl4v+yAVXrejiMeckp+sot5Mvp5JFRnZ8tTc=;
        b=L86NqNbkEFNgf3AODK1VpxLdesww+438fTDyVXVf9Ygyn4nSwPzDlzTM83y6ykBJ2m
         VoA/V+sVRNvvXer6TAgY0gOaT+vAA5od0K7peKRqABZkDlP3Vd6AjhJ/bGhuIcryyrEe
         8S3GAGXqVI/5ffnGHxV37yrf2B7JnoN3W2q9kwN60vvWzV3kyxkOVzzmiPA1sG3+msrH
         u+0kI3hdEst6XMV2vt6VYyTUc9kzvTRFOJN6yV6UNkkmKY+1wXJWMGD6fkVMLeDdnVtH
         RsTjlKUM81VOdfnjoJH1AqBr66IicIB4RrfBlGq1+erzrymNofDlMiQOriccpOahmoKu
         lZxA==
X-Received: by 10.68.216.193 with SMTP id os1mr15817849pbc.110.1444404819281;
        Fri, 09 Oct 2015 08:33:39 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id yg2sm3072675pbb.79.2015.10.09.08.33.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 09 Oct 2015 08:33:38 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH 0/4] Use kcalloc instead of kzalloc
Date: Fri,  9 Oct 2015 21:03:25 +0530
Message-Id: <1444404809-22880-1-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A15020A.5617DE52.0047,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

These patches use kcalloc instead of kzalloc to allocate array.

Shraddha Barke (4):
  Staging: rdma: hfi1: Use kcalloc instead of kzalloc to allocate array
  Staging: rdma: ipath: Use kcalloc instead of kzalloc to allocate array
  Staging: unisys: Use kcalloc instead of kzalloc to allocate array
  Staging: rtl8192e: Use kcalloc instead of kzalloc to allocate array

 drivers/staging/rdma/hfi1/diag.c                |  5 ++---
 drivers/staging/rdma/hfi1/init.c                | 14 ++++++++------
 drivers/staging/rdma/hfi1/user_sdma.c           |  4 ++--
 drivers/staging/rdma/ipath/ipath_init_chip.c    |  2 +-
 drivers/staging/rdma/ipath/ipath_qp.c           |  2 +-
 drivers/staging/rdma/ipath/ipath_verbs.c        |  2 +-
 drivers/staging/rtl8192e/rtllib_module.c        |  5 ++---
 drivers/staging/unisys/visornic/visornic_main.c |  4 ++--
 8 files changed, 19 insertions(+), 19 deletions(-)

-- 
2.1.4


