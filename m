X-GM-THRID: 6201947249365221376
X-Received: by 10.66.121.135 with SMTP id lk7mr17545489pab.31.1444003369038;
        Sun, 04 Oct 2015 17:02:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.111.137 with SMTP id ii9ls1062044obb.7.gmail; Sun, 04 Oct
 2015 17:02:48 -0700 (PDT)
X-Received: by 10.182.153.169 with SMTP id vh9mr24411368obb.18.1444003368728;
        Sun, 04 Oct 2015 17:02:48 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x22d.google.com (mail-pa0-x22d.google.com. [2607:f8b0:400e:c03::22d])
        by gmr-mx.google.com with ESMTPS id uv4si3540120pac.0.2015.10.04.17.02.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Oct 2015 17:02:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) client-ip=2607:f8b0:400e:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22d.google.com with SMTP id hy16so17782618pad.1
        for <outreachy-kernel@googlegroups.com>; Sun, 04 Oct 2015 17:02:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id;
        bh=OZyK+VItXRM/US7X4hz/kjF/06irgLEemeIB/2LfPeY=;
        b=YcwpcOpTO1F/ZjrklZ8dXCUShP5Uk6ED/b/PVRlNA0Dg0bXypzFLU3QMvPwpiYwQjz
         kPIyOiMoQ0CzHWzDKOy6x64Fja4u6LU5mifU9lavXfNUIRjS4OyPpf89ucTlNfWJsS2S
         OoP0AAjN7bnJvGBj/Q551qp5CLAdltb1nfqqZ2xxHI8/xw4rgPs24+CUSuz+qkRG1nqS
         M8+BjsxccPtaDIRCq7zglAPjTdx8FSqseKSjnFs3YRkbdMACbj07z4XNo9zSk2k12xY9
         ezHaSyYJOPFS6Z8e6vr/h4i5s3reyhMywsxbss7gE2nHI4qS/cIYsh9NReQZLhN4hpDP
         2/lQ==
X-Received: by 10.68.178.131 with SMTP id cy3mr35395302pbc.52.1444003368603;
        Sun, 04 Oct 2015 17:02:48 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id py6sm23884348pbb.62.2015.10.04.17.02.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 04 Oct 2015 17:02:47 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH v2 0/4] Declare local functions as static 
Date: Mon,  5 Oct 2015 05:32:35 +0530
Message-Id: <1444003359-6619-1-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150204.5611BE27.0037,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Declare functions as static since they are used only in a particular file. 

Changes in v2-
 Made commit log and subject clearer.

Shraddha Barke (4):
  Staging: lustre: obdclass: llog_swab: Declare local functions as
    static
  Staging: lustre: obdclass: lprocfs_status: Declare typedefs as static
  Staging: lustre: ptlrpc: pack_generic: Declare local functions as
    static
  Staging: lustre: ptlrcpc: sec: Declare local functions as static

 drivers/staging/lustre/lustre/include/lprocfs_status.h    |  5 -----
 drivers/staging/lustre/lustre/include/lustre/lustre_idl.h |  5 -----
 drivers/staging/lustre/lustre/include/lustre_sec.h        |  7 -------
 drivers/staging/lustre/lustre/obdclass/llog_swab.c        |  6 ++----
 drivers/staging/lustre/lustre/obdclass/lprocfs_status.c   | 11 +++++------
 drivers/staging/lustre/lustre/ptlrpc/pack_generic.c       |  5 ++---
 drivers/staging/lustre/lustre/ptlrpc/sec.c                | 10 ++++------
 7 files changed, 13 insertions(+), 36 deletions(-)

-- 
2.1.4


