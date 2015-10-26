X-GM-THRID: 6208213403443396608
X-Received: by 10.107.12.88 with SMTP id w85mr14380635ioi.32.1445871857135;
        Mon, 26 Oct 2015 08:04:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.89.116 with SMTP id u107ls3781957qgd.54.gmail; Mon, 26 Oct
 2015 08:04:16 -0700 (PDT)
X-Received: by 10.31.3.23 with SMTP id 23mr30047928vkd.13.1445871856481;
        Mon, 26 Oct 2015 08:04:16 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-pa0-x234.google.com (mail-pa0-x234.google.com. [2607:f8b0:400e:c03::234])
        by gmr-mx.google.com with ESMTPS id fa8si3572197pab.1.2015.10.26.08.04.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2015 08:04:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) client-ip=2607:f8b0:400e:c03::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) smtp.mailfrom=ksenija.stanojevic@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x234.google.com with SMTP id fv9so199570779pac.3
        for <outreachy-kernel@googlegroups.com>; Mon, 26 Oct 2015 08:04:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=Q0/2FupF7qSt2jb1R2WDTr4je2qRkVgnbPMfTC9pd3U=;
        b=crFfkGg8d2oD4AXQAU1s5RYA7Ze9WYdB/xVje2AzrfxogZ1thApQhQIjZzeJ+q8a5H
         eTnWc+LGyaS6CZoNu9hf7ttXh77ET0SFkjrxAr8nttvzRJNKDsihMsjiawDoKZ8o2g4l
         ESX7erx0FMxQzjnw3BDwRFvFldZUnAG8z0o4KIKzVUM3xezhJ5xDKFcrITA9NrvoG1p4
         jDXqyTkxQcKDmyqCwcJW7HUz0ff1aCDKp80DOSC5fUFYVJw09nOxyxWtXZmv8a4zdqL4
         4j1lrujjUtGPUpRBlzfOdrq7aComRu8KMrKP20ywE+rTwSx+Own7wSZZD/KF4K2XCdTv
         3tZA==
X-Received: by 10.68.202.170 with SMTP id kj10mr4080770pbc.104.1445871856298;
        Mon, 26 Oct 2015 08:04:16 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (ip68-108-246-21.sb.sd.cox.net. [68.108.246.21])
        by smtp.gmail.com with ESMTPSA id t9sm34516959pbs.17.2015.10.26.08.04.15
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 26 Oct 2015 08:04:15 -0700 (PDT)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH v2 0/2] Staging: lustre: Replace macros with static inline functions
Date: Mon, 26 Oct 2015 08:04:07 -0700
Message-Id: <cover.1445871650.git.ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1

Convert macros LPROCFS_CLIMP_CHECK and LPROCFS_CLIMP_EXIT into static
inline functions

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>

Ksenija Stanojevic (2):
  Staging: lustre: Replace LPROCFS_CLIMP_CHECK with lprocfs_climp_check
  Staging: lustre: Replace LPROCFS_CLIMP_EXIT with up_read

 .../staging/lustre/lustre/include/lprocfs_status.h | 13 ------
 drivers/staging/lustre/lustre/include/obd_class.h  | 10 +++++
 drivers/staging/lustre/lustre/mgc/mgc_request.c    |  8 +++-
 .../lustre/lustre/obdclass/lprocfs_status.c        | 50 ++++++++++++++++------
 .../staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c    | 22 +++++++---
 5 files changed, 68 insertions(+), 35 deletions(-)

-- 
1.9.1


