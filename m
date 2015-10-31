X-GM-THRID: 6211892414504763392
X-Received: by 10.28.87.15 with SMTP id l15mr838915wmb.1.1446318909439;
        Sat, 31 Oct 2015 12:15:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.9.149 with SMTP id 143ls345118wmj.7.canary; Sat, 31 Oct
 2015 12:15:09 -0700 (PDT)
X-Received: by 10.194.248.131 with SMTP id ym3mr2926602wjc.7.1446318909119;
        Sat, 31 Oct 2015 12:15:09 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-wm0-x22a.google.com (mail-wm0-x22a.google.com. [2a00:1450:400c:c09::22a])
        by gmr-mx.google.com with ESMTPS id m135si271510wmb.0.2015.10.31.12.15.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 31 Oct 2015 12:15:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2a00:1450:400c:c09::22a as permitted sender) client-ip=2a00:1450:400c:c09::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2a00:1450:400c:c09::22a as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by wmll128 with SMTP id l128so33710341wml.0
        for <outreachy-kernel@googlegroups.com>; Sat, 31 Oct 2015 12:15:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id;
        bh=M/v4IaJkH5fhqAETE0fSZyx1EcgQ77V9vjPbW6lrnjM=;
        b=1ImIIVozhuLaUoUHiwXWORcLQzFmEs32JV3vXFEAcKnIOw1fiO2lAjP3U5eDeHGt9V
         a8aaofYOZ7Cd8md46pc3Muf2cXMN9TDFsvAdkA5ZRt4jtV+FSVulb+C21yR0JB2/1vQT
         QBPSSA1p3VqpSYQFsD7Iv6j/47SbgOS9zO6YC5gNZsl2gA6e79DtfggVkFRwQ/lsC+Xr
         cZcURo0SoTQwwsOubtsoi6aMSPhW1rGUI2Eqo81CLi2NsGOS6f0bQHiRAuQ3fvX2OCjZ
         DvRpgWcYQrwNN+ibT2c8T2FcNEpOqO6pQZNrA1OZlHemQoUu/4fPHo/l/WWMm6fl5WUd
         QANQ==
X-Received: by 10.28.140.208 with SMTP id o199mr5113913wmd.58.1446318909010;
        Sat, 31 Oct 2015 12:15:09 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id q1sm13390585wje.39.2015.10.31.12.15.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sat, 31 Oct 2015 12:15:08 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH 0/2] Staging: lnet: Remove typedefs
Date: Sun,  1 Nov 2015 00:44:56 +0530
Message-Id: <1446318898-27986-1-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150207.5635133B.0051,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

These patches remove typedefs as linux kernel coding style guidelines
suggest not using typdefs for structure types

Shraddha Barke (2):
  Staging: lustre: lnet: Remove typedef srpc_server_rpc_t
  Staging: lustre: lnet: Remove typedef cfs_workitem_t

 .../staging/lustre/include/linux/libcfs/libcfs_hash.h |  4 ++--
 .../lustre/include/linux/libcfs/libcfs_workitem.h     | 12 ++++++------
 drivers/staging/lustre/lnet/selftest/brw_test.c       |  4 ++--
 drivers/staging/lustre/lnet/selftest/console.c        |  2 +-
 drivers/staging/lustre/lnet/selftest/framework.c      |  8 ++++----
 drivers/staging/lustre/lnet/selftest/rpc.c            |  6 +++---
 drivers/staging/lustre/lnet/selftest/selftest.h       | 19 ++++++++++---------
 drivers/staging/lustre/lustre/libcfs/hash.c           |  6 +++---
 drivers/staging/lustre/lustre/libcfs/workitem.c       | 10 +++++-----
 9 files changed, 36 insertions(+), 35 deletions(-)

-- 
2.1.4


