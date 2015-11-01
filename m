X-GM-THRID: 6212095586717401088
X-Received: by 10.68.216.39 with SMTP id on7mr13913674pbc.12.1446374527290;
        Sun, 01 Nov 2015 02:42:07 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.3.69 with SMTP id a5ls540848iga.4.gmail; Sun, 01 Nov 2015
 02:42:07 -0800 (PST)
X-Received: by 10.107.9.36 with SMTP id j36mr15160924ioi.2.1446374527044;
        Sun, 01 Nov 2015 02:42:07 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x22c.google.com (mail-pa0-x22c.google.com. [2607:f8b0:400e:c03::22c])
        by gmr-mx.google.com with ESMTPS id el2si1500498pbb.0.2015.11.01.02.42.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Nov 2015 02:42:07 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) client-ip=2607:f8b0:400e:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by pasz6 with SMTP id z6so117884374pas.2
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Nov 2015 02:42:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=YPrTdvO+muP5WuEoBts8ZlIGu82UC/9pUaqrml91Pjc=;
        b=MU9scKTHkKcW4A/qAQI2dW/28aVILIkFxktkPfzRt1/JS4G5Rd0yTZ254cI42MiKF3
         RuhluWg3BdMVGTWPC2bLR9sQrs7q3/orOc4sCn28CBu8TaCKEy6MyNGUo8aIEyC6qqzs
         ZS3390PhLxI0CcNjnd6/6RV1amtO4Nf26sYsBkXmyVPWSpOUnvz8DvWDF6BXGTtjS8tr
         QxLyxO+pBmezdBTcBCS9v8tlJwglDf/wtPkYjry7Vv8fBY46ZP1ad1uKJ/vuRbP3weIr
         8ZGRfpLUY+PE7TNzMB+Np6jO4lXqkZRQNy32Oa/lPH8741QFr15nRrHdLwv4XIm8YadJ
         E0Cg==
X-Received: by 10.66.102.97 with SMTP id fn1mr19593782pab.77.1446374526896;
        Sun, 01 Nov 2015 02:42:06 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.108.132])
        by smtp.gmail.com with ESMTPSA id yp9sm18065180pab.1.2015.11.01.02.42.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sun, 01 Nov 2015 02:42:06 -0800 (PST)
Date: Sun, 1 Nov 2015 16:12:03 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 0/3] staging: rdma: hfi1: Drop wrapper functions
Message-ID: <cover.1446373894.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patchset removes wrapper functions to clean up code.

Changes in v2:
        -Removed two patches in the series
Changes in v3:
        -Improve commit message in second patch

Amitoj Kaur Chawla (3):
  staging: rdma: hfi1: Remove hfi1_nomsix() wrapper function
  staging: rdma: hfi1: sdma: Remove wrapper functions
  staging: rdma: hfi1: chip: Remove wrapper function

 drivers/staging/rdma/hfi1/chip.c | 10 ++--------
 drivers/staging/rdma/hfi1/hfi.h  |  1 -
 drivers/staging/rdma/hfi1/pcie.c |  8 --------
 drivers/staging/rdma/hfi1/sdma.c | 40 ++++++++++++++--------------------------
 4 files changed, 16 insertions(+), 43 deletions(-)

-- 
1.9.1


