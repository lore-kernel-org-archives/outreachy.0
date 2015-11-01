X-GM-THRID: 6211892414504763392
X-Received: by 10.68.253.6 with SMTP id zw6mr13409648pbc.8.1446360710742;
        Sat, 31 Oct 2015 23:51:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.149.147 with SMTP id x141ls991523iod.3.gmail; Sat, 31 Oct
 2015 23:51:50 -0700 (PDT)
X-Received: by 10.50.114.2 with SMTP id jc2mr5749643igb.5.1446360710328;
        Sat, 31 Oct 2015 23:51:50 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x22b.google.com (mail-pa0-x22b.google.com. [2607:f8b0:400e:c03::22b])
        by gmr-mx.google.com with ESMTPS id pe1si1445450pac.2.2015.10.31.23.51.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 31 Oct 2015 23:51:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) client-ip=2607:f8b0:400e:c03::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22b.google.com with SMTP id hy1so108836618pad.0
        for <outreachy-kernel@googlegroups.com>; Sat, 31 Oct 2015 23:51:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id;
        bh=7fUeBaH/2PN1o89qhZN6IxIR9idl16u5pORZuNAZBIs=;
        b=sqEd1YckuicFNB1f1L2nwRyT+rGPq7WwlY6BWgUIhvsHtiAFogXbotc0ut6NTVAyGQ
         zcHBhOvlwppS0Ac/sxj6B6oo3yCeuOk0y6hkNrR6VmQS/zYmV60vecCC6qOY6zZum3L2
         kxVOB0SzRNxJc/djBgXgS07N4xd5TGuQoWP+5ngYOM5NHna1UBkxBpeqAOVotIbAnE6f
         h8xlzMPnW/dNgXN6hGghJ9QGmXnK53xfiwuZ3i/z+TlPRmIFUcIy/rgmLQREoQc9dSd/
         fb8HbEnyLHllGDleZGnBFk8ggzX1kSkLg5ZtPL/HQ0EKmkPaJIKiQkNoY7C/k4bdER+0
         ViVQ==
X-Received: by 10.66.199.69 with SMTP id ji5mr18985861pac.10.1446360710210;
        Sat, 31 Oct 2015 23:51:50 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id rc5sm16997350pbc.95.2015.10.31.23.51.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sat, 31 Oct 2015 23:51:49 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH v2 0/2] Staging: lnet: Remove typedefs
Date: Sun,  1 Nov 2015 12:21:36 +0530
Message-Id: <1446360698-9942-1-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150202.5635B685.0028,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

These patches remove typedefs as linux kernel coding style guidelines
suggest not using typdefs for structure types 

Changes in v2-
 Fix alignment.

Shraddha Barke (2):
  Staging: lustre: lnet: Remove typedef srpc_server_rpc_t
  Staging: lustre: lnet: Remove typedef cfs_workitem_t

 .../staging/lustre/include/linux/libcfs/libcfs_hash.h  |  4 ++--
 .../lustre/include/linux/libcfs/libcfs_workitem.h      | 12 ++++++------
 drivers/staging/lustre/lnet/selftest/brw_test.c        |  4 ++--
 drivers/staging/lustre/lnet/selftest/console.c         |  2 +-
 drivers/staging/lustre/lnet/selftest/framework.c       |  8 ++++----
 drivers/staging/lustre/lnet/selftest/rpc.c             |  6 +++---
 drivers/staging/lustre/lnet/selftest/selftest.h        | 18 +++++++++---------
 drivers/staging/lustre/lustre/libcfs/hash.c            |  6 +++---
 drivers/staging/lustre/lustre/libcfs/workitem.c        | 10 +++++-----
 9 files changed, 35 insertions(+), 35 deletions(-)

-- 
2.1.4


