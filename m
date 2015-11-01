X-GM-THRID: 6212138738119606272
X-Received: by 10.182.236.225 with SMTP id ux1mr13735930obc.2.1446376260287;
        Sun, 01 Nov 2015 03:11:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.43.227 with SMTP id z3ls584272igl.16.canary; Sun, 01 Nov
 2015 03:10:59 -0800 (PST)
X-Received: by 10.50.18.106 with SMTP id v10mr1278924igd.11.1446376259964;
        Sun, 01 Nov 2015 03:10:59 -0800 (PST)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x22e.google.com (mail-pa0-x22e.google.com. [2607:f8b0:400e:c03::22e])
        by gmr-mx.google.com with ESMTPS id el2si1507633pbb.0.2015.11.01.03.10.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Nov 2015 03:10:59 -0800 (PST)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) client-ip=2607:f8b0:400e:c03::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22e.google.com with SMTP id fv9so123223448pac.3
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Nov 2015 03:10:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id;
        bh=o37Zwrgw5zX2J3H8sXkoeEnP4vOgQYGo7VgFaVEns8c=;
        b=vNaTtOB/SfPVyt3lYeJcqgZ8e8bXqp6I4oxiZB2C/S8lRyGdxretj6E4V52bLzVmdX
         he+aVhU6GwYNdaUQKxMYC9pBeY95TEmoP3ZrrknuUWR63XydF7mhJfQ2LPbym/3is8Oe
         jCOb7zlOIONhQMAhmQ9e0Xqx6hNU+uKXMu+CyDiqH+Q4mYdPl1eayuaqMzb3q+MMnWY/
         GAm5w02TjkwHgQH7hTRpsTqHSJFwiaEVtUckvLwVK6clMnh3IkN4VRuHipjoMXileaRE
         BDEOYo0Im+EW4XpLOHUzFb5oF7olsFKiY9QhUxHCb9HTlJgNqAR3pq1iS2oeGVtyKTbn
         Yxpw==
X-Received: by 10.68.133.136 with SMTP id pc8mr17969332pbb.35.1446376259828;
        Sun, 01 Nov 2015 03:10:59 -0800 (PST)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id jt1sm18047346pbc.83.2015.11.01.03.10.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sun, 01 Nov 2015 03:10:59 -0800 (PST)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH 0/3] Staging: lustre: Declare as static and remove unused code
Date: Sun,  1 Nov 2015 16:40:43 +0530
Message-Id: <1446376246-6959-1-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150202.5635F342.0130,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

These patches declare local functions as static and remove
unused code.

Shraddha Barke (3):
  Staging: lustre: ptlrpc: Remove unused function declarations
  Staging: lustre: obdclass: Declare local function cl_lock_mutex_try as
    static
  Staging: lustre: libcfs: Remove unused structures

 drivers/staging/lustre/include/linux/libcfs/libcfs_hash.h | 7 -------
 drivers/staging/lustre/lustre/libcfs/hash.c               | 21 ---------------------
 drivers/staging/lustre/lustre/obdclass/cl_lock.c          | 3 +--
 drivers/staging/lustre/lustre/ptlrpc/ptlrpc_internal.h    | 3 ---
 4 files changed, 1 insertions(+), 33 deletions(-)

-- 
2.1.4


