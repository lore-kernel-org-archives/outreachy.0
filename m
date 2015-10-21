X-GM-THRID: 6208213403443396608
X-Received: by 10.194.240.230 with SMTP id wd6mr2736092wjc.0.1445462322280;
        Wed, 21 Oct 2015 14:18:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.87.225 with SMTP id bb1ls209211wib.43.gmail; Wed, 21 Oct
 2015 14:18:41 -0700 (PDT)
X-Received: by 10.180.160.194 with SMTP id xm2mr5090845wib.6.1445462321833;
        Wed, 21 Oct 2015 14:18:41 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-wi0-x234.google.com (mail-wi0-x234.google.com. [2a00:1450:400c:c05::234])
        by gmr-mx.google.com with ESMTPS id w4si13804wiz.0.2015.10.21.14.18.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Oct 2015 14:18:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) client-ip=2a00:1450:400c:c05::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) smtp.mailfrom=ksenija.stanojevic@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x234.google.com with SMTP id q8so3497174wik.1
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Oct 2015 14:18:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=bZP9Sy3XSAqPOGTdven3xTLSTR6Dy/RAejk0p3MO1+k=;
        b=IFyEswaJAHtfOVUxmTLuc4on7YOuQQvLm5i4U7bHTxzlK+ZBWBt55+BouhAHlBbhIs
         /Og1TlLEybs7FA0fGtbNqe57QSGEeH93QYju9vwFDB8epg+0yf6B3vwAvCoIAq7xRC+f
         nknQ87H95ZudZToV4rZB5AQQrOS3kpj2rvxBbMlZG0ecEutU3F6F7Yl/niu52sewr43D
         7NgpLyJFmVyVKiSP3Hw9XLVsavU5eKTZS0Wg8WiktW9nj4dk6qRrpq1R/I5CmwVU7F1t
         +KOcZ4WXicJ8XeQU2uTv5HUWfRaYmbIE877E5GNNyoI2WfkyySdlhygZMfrLY8K2RjSc
         BsnA==
X-Received: by 10.194.80.197 with SMTP id t5mr12732169wjx.143.1445462321657;
        Wed, 21 Oct 2015 14:18:41 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by smtp.gmail.com with ESMTPSA id ka10sm12737092wjc.30.2015.10.21.14.18.40
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 21 Oct 2015 14:18:41 -0700 (PDT)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH 0/3] Staging: lustre: Replace macros with static inline functions
Date: Wed, 21 Oct 2015 23:18:31 +0200
Message-Id: <cover.1445462106.git.ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1

Convert macros LPROCFS_CLIMP_CHECK and LPROCFS_CLIMP_EXIT into static
inline functions

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>

Ksenija Stanojevic (3):
  Staging: lustre: Replace LPROCFS_CLIMP_CHECK with lprocfs_climp_check
  Staging: lustre: Replace LPROCFS_CLIMP_EXIT with lprocfs_climp_exit
  Staging: lustre: Remove unused macros

 .../staging/lustre/lustre/include/lprocfs_status.h | 13 ------
 drivers/staging/lustre/lustre/include/obd_class.h  | 16 +++++++
 drivers/staging/lustre/lustre/mgc/mgc_request.c    |  8 +++-
 .../lustre/lustre/obdclass/lprocfs_status.c        | 50 ++++++++++++++++------
 .../staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c    | 22 +++++++---
 5 files changed, 74 insertions(+), 35 deletions(-)

-- 
1.9.1


