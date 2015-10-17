X-GM-THRID: 6205612297408217088
X-Received: by 10.112.147.7 with SMTP id tg7mr5135475lbb.16.1445098407183;
        Sat, 17 Oct 2015 09:13:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.80.140 with SMTP id e134ls448501lfb.42.gmail; Sat, 17 Oct
 2015 09:13:25 -0700 (PDT)
X-Received: by 10.112.142.195 with SMTP id ry3mr5229734lbb.22.1445098405479;
        Sat, 17 Oct 2015 09:13:25 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-wi0-x22e.google.com (mail-wi0-x22e.google.com. [2a00:1450:400c:c05::22e])
        by gmr-mx.google.com with ESMTPS id cm6si351970wib.1.2015.10.17.09.13.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Oct 2015 09:13:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::22e as permitted sender) client-ip=2a00:1450:400c:c05::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::22e as permitted sender) smtp.mailfrom=ksenija.stanojevic@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22e.google.com with SMTP id gb1so44577574wic.1
        for <outreachy-kernel@googlegroups.com>; Sat, 17 Oct 2015 09:13:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=XBSsqUiwSZM/CDV13qiKvzq/IBhHuMvit8sXu9fFiRM=;
        b=oP4X8WJEP7sNpp1lHY6ZwvtrNBiq0btjmAk2VmU/SlYK2X9t9+s26aKI3eAo+GjiDZ
         dPfU99VxgkQgT1fpFA/2d6OS1Q87ZQrgrdhLQmsUPOd3yGnyCAidXAJ8/qto2E2UA4od
         rLydd21q8PNO3qLeLjFD47nXrB+jp2BkX5QL1y9jm22nQhGiXtZE6XZQ1jiX0xdK598r
         KB3iOiJAWXiJ0uDvPRR4ntYuhNKFYu0QA3l13+h/yUA+kcGhV1OBtepc55IQ3+t3hQPq
         W2uz8eohj0pZYYIYmeJVquxtSL9SHcJjtFTrzoVRK9VOkL0CB+Vua4EY9telTlkUUuib
         OwuA==
X-Received: by 10.194.191.161 with SMTP id gz1mr18247064wjc.0.1445098405335;
        Sat, 17 Oct 2015 09:13:25 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by smtp.gmail.com with ESMTPSA id pb4sm29090136wjb.8.2015.10.17.09.13.24
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 17 Oct 2015 09:13:24 -0700 (PDT)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH v3 0/4] Staging: lustre: Use static inline functions instead of macros
Date: Sat, 17 Oct 2015 18:13:15 +0200
Message-Id: <cover.1445097871.git.ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1

Convert macros class_export_lock_get and class_export_lock_put into static
inline functions and also remove some unused macros.

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>

Changes in v3:
	- change commit message
	- add space in signed-off-by line
Changes in v2:
        - be more specific in commit message

Ksenija Stanojevic (4):
  Staging: lustre: include: Move function prototypes
  Staging: lustre: include: Convert macro class_export_lock_get into
    static inline function
  Staging: lustre: include: Convert macro class_export_lock_put into
    static inline function
  Staging: lustre: include : Remove unused macros

 drivers/staging/lustre/lustre/include/obd_class.h | 90 ++++++++++-------------
 1 file changed, 38 insertions(+), 52 deletions(-)

-- 
1.9.1


