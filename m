X-GM-THRID: 6201691543779147776
X-Received: by 10.182.46.196 with SMTP id x4mr1199800obm.22.1443974971015;
        Sun, 04 Oct 2015 09:09:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.29.7 with SMTP id d7ls1362185iod.13.gmail; Sun, 04 Oct
 2015 09:09:30 -0700 (PDT)
X-Received: by 10.50.176.129 with SMTP id ci1mr7056246igc.12.1443974970624;
        Sun, 04 Oct 2015 09:09:30 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x22d.google.com (mail-pa0-x22d.google.com. [2607:f8b0:400e:c03::22d])
        by gmr-mx.google.com with ESMTPS id w5si2905450pbt.1.2015.10.04.09.09.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Oct 2015 09:09:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) client-ip=2607:f8b0:400e:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by pacfv12 with SMTP id fv12so155007295pac.2
        for <outreachy-kernel@googlegroups.com>; Sun, 04 Oct 2015 09:09:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id;
        bh=g92Lc3qDgJ42e+80YUKOsfLkGJauCLg63xmvgOWh9eM=;
        b=0mQcopdJaV8UV44P7LJlLjx49gXM1jYewYw4o6533RoninpKbbR8t1MMB8BJ+qMsxE
         TwIM8vScXhsFLPb3no+YzJiN0Ur5v4kFeO4hmf5kt4rNOsXAgcKUF3TYGkBAZZ10Xfk4
         KNcWemH+GYkIdDsaNDztpoMkeKF6zsHcJGO0QystHkQY0rpudZjSqT0RzLtvixrVXEkq
         9Kt7Bv25aHqCk8iNJvu+yqKmpP5bPLvDl+ZXwuTms74hZDwQOSe/6cNwk8YK5IL9o01T
         7iePNE8dWdr2JKSTi3siTBVl5uPI31uVfabK9kvJUBbOSvab4qzNNi6QAf8+AuxxIZKp
         TyHw==
X-Received: by 10.66.228.97 with SMTP id sh1mr33663867pac.91.1443974970502;
        Sun, 04 Oct 2015 09:09:30 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id yq2sm22705483pbb.39.2015.10.04.09.09.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 04 Oct 2015 09:09:29 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH 0/4] Declare as static
Date: Sun,  4 Oct 2015 21:39:14 +0530
Message-Id: <1443974958-5994-1-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150207.56114F39.002A,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Declare as static since they are used only in a particular file.

Shraddha Barke (4):
  Staging: lustre: obdclass: llog_swab: Declare as static
  Staging: lustre: obdclass: lprocfs_status: Declare as static
  Staging: lustre: ptlrpc: pack_generic: Declare as static
  Staging: lustre: ptlrpc: sec: Declare as static

 drivers/staging/lustre/lustre/include/lprocfs_status.h    |  5 -----
 drivers/staging/lustre/lustre/include/lustre/lustre_idl.h |  4 ----
 drivers/staging/lustre/lustre/include/lustre_sec.h        |  7 -------
 drivers/staging/lustre/lustre/obdclass/llog_swab.c        |  6 ++----
 drivers/staging/lustre/lustre/obdclass/lprocfs_status.c   | 10 ++++------
 drivers/staging/lustre/lustre/ptlrpc/pack_generic.c       |  5 ++---
 drivers/staging/lustre/lustre/ptlrpc/sec.c                | 10 ++++------
 7 files changed, 12 insertions(+), 35 deletions(-)

-- 
2.1.4


