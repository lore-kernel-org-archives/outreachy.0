X-GM-THRID: 6212095586717401088
X-Received: by 10.107.12.88 with SMTP id w85mr14627475ioi.32.1446366213377;
        Sun, 01 Nov 2015 01:23:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.108.230 with SMTP id j93ls2032500qgf.69.gmail; Sun, 01 Nov
 2015 01:23:32 -0700 (PDT)
X-Received: by 10.140.246.213 with SMTP id r204mr13712167qhc.2.1446366212629;
        Sun, 01 Nov 2015 01:23:32 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x233.google.com (mail-pa0-x233.google.com. [2607:f8b0:400e:c03::233])
        by gmr-mx.google.com with ESMTPS id iz5si1287045pbc.2.2015.11.01.01.23.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Nov 2015 01:23:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) client-ip=2607:f8b0:400e:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by padhy1 with SMTP id hy1so110059886pad.0
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Nov 2015 01:23:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=wKGjvNWjmtJziKpIcGMAEVCpAk+WQpuiuqz+4+E6iLY=;
        b=bA1lmFZ5kk1ixS4A2MAz5tXG43GtxVzERzzUvEtI3qEDrWCQbRQjhHoSq1zVHi59gv
         TPc6K4W9IPzhHVczB5uQtGGDHYYS7Qo4ratmSBJX+Oa+Ojky+eaus8DBiF9FusRYE+Dq
         mgRg97FYNlUkhaEtV2wA36j+YY8/Q6/1/Lo65r/r4UgHdXtolGIgLAOCP55ieBjsajOC
         JxbNOEuoH7n1bc0PKgVfcUPje4ePEvC6nKJ06jbyhOpTOV1o4zl4loHXrBspqdLOE0Kk
         3yadwTGUB9/wEQLUvY+6B0/CrjCdRaljOrqB0a+YF0Gr5ZDDJtr/qdKYCCKuIgZ64obP
         ZnDQ==
X-Received: by 10.69.1.65 with SMTP id be1mr19220522pbd.153.1446366212440;
        Sun, 01 Nov 2015 01:23:32 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.108.132])
        by smtp.gmail.com with ESMTPSA id ub4sm17478154pac.29.2015.11.01.01.23.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sun, 01 Nov 2015 01:23:32 -0700 (PDT)
Date: Sun, 1 Nov 2015 13:53:26 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/5] staging: rdma: hfi1: Drop wrapper functions
Message-ID: <cover.1446366036.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patchet removes wrapper functions that can be replaced by a
single line of code.

Amitoj Kaur Chawla (5):
  staging: rdma: hfi1: Remove hfi1_nomsix() wrapper function
  staging: rdma: hfi1: Remove set_sbus_fast_mode() wrapper function
  staging: rdma: hfi1: chip: Remove wrapper function
  staging: rdma: hfi1: chip: Remove wrapper functions
  staging: rdma: hfi1: sdma: Remove wrapper functions

 drivers/staging/rdma/hfi1/chip.c     | 40 +++++++++++-------------------------
 drivers/staging/rdma/hfi1/chip.h     |  1 -
 drivers/staging/rdma/hfi1/firmware.c | 15 ++++++--------
 drivers/staging/rdma/hfi1/hfi.h      |  1 -
 drivers/staging/rdma/hfi1/pcie.c     | 11 ++--------
 drivers/staging/rdma/hfi1/sdma.c     | 40 +++++++++++++-----------------------
 6 files changed, 34 insertions(+), 74 deletions(-)

-- 
1.9.1


