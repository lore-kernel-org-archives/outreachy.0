X-GM-THRID: 10181885820928
X-Received: by 10.50.254.65 with SMTP id ag1mr5633974igd.7.1427564660479;
        Sat, 28 Mar 2015 10:44:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.32.7 with SMTP id e7ls552354igi.27.gmail; Sat, 28 Mar 2015
 10:44:20 -0700 (PDT)
X-Received: by 10.66.161.36 with SMTP id xp4mr28499643pab.36.1427564660109;
        Sat, 28 Mar 2015 10:44:20 -0700 (PDT)
Return-Path: <darshanapadmadas@gmail.com>
Received: from mail-pd0-x22c.google.com (mail-pd0-x22c.google.com. [2607:f8b0:400e:c02::22c])
        by gmr-mx.google.com with ESMTPS id iw3si593752pbd.1.2015.03.28.10.44.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 28 Mar 2015 10:44:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of darshanapadmadas@gmail.com designates 2607:f8b0:400e:c02::22c as permitted sender) client-ip=2607:f8b0:400e:c02::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of darshanapadmadas@gmail.com designates 2607:f8b0:400e:c02::22c as permitted sender) smtp.mail=darshanapadmadas@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pdcp1 with SMTP id p1so37610891pdc.3
        for <outreachy-kernel@googlegroups.com>; Sat, 28 Mar 2015 10:44:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:content-type
         :content-transfer-encoding;
        bh=JtD/io4ccGDMq/K6cOb5ec6wgXHWogiq+tMWzxmJoAU=;
        b=WVkcdVTgUlw0aeF1IFTwaYdJd3pi7gT+zs2jp4QYkk6nTgTKuu0ivSxtM9GqD3ooRV
         gKmnHA0Af1PhgNPgkuN2C+2sL2fQ1Ubp2xt8B4pYFK+AmRAHsPSY2fUHlRMuuRctcJKu
         MD6Vfocb30vJ6TOmC7xLiYs3zy7efF1unkhj+wRVr9tDEVlIyiFjBTTt67l2AgE+2Cl7
         VqzU6bHmzfndXmVok21J25Qy7I/KVJ9hO74dp5fmyY7xiBDadQQaze8DVufWmfKMxq1E
         qszap0SLpU5BQK20wRgphyZMlXy2KBpH4lc+oHRFlpP4kn0J5gTImLNJvCIWeYFokrha
         dP5w==
X-Received: by 10.66.193.226 with SMTP id hr2mr45647655pac.47.1427564660004;
        Sat, 28 Mar 2015 10:44:20 -0700 (PDT)
Return-Path: <darshanapadmadas@gmail.com>
Received: from localhost ([101.63.212.243])
        by mx.google.com with ESMTPSA id dr5sm5624764pdb.48.2015.03.28.10.44.16
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sat, 28 Mar 2015 10:44:18 -0700 (PDT)
From: Darshana Padmadas <darshanapadmadas@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Darshana Padmadas <darshanapadmadas@gmail.com>
Subject: [PATCH 0/6] Add headers and mark functions static
Date: Sat, 28 Mar 2015 23:13:51 +0530
Message-Id: <1427564637-10305-1-git-send-email-darshanapadmadas@gmail.com>
X-Mailer: git-send-email 1.9.1
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

This patch set fixes sparse warnings of the following type:
warning: symbol * was not declared. Should it be static?

Header files were included for functions that have existing
prototypes. Functions that were internal to a file have 
been marked static.

Darshana Padmadas (6):
  Staging: lustre: Make obd_proc_version_seq_show static
  Staging: lustre: Add header that declares function
    lprocfs_lmv_init_vars
  Staging: lustre: Include header for functions defined in lov_object.c
  Staging: lustre: Include header file that declares
    lprocfs_mdc_init_vars
  Staging: lustre: Mark internal functions as static
  Staging: lustre: Mark internal functions static in llog_cat.c

 drivers/staging/lustre/lustre/lmv/lproc_lmv.c               | 1 +
 drivers/staging/lustre/lustre/lov/lov_object.c              | 1 +
 drivers/staging/lustre/lustre/mdc/lproc_mdc.c               | 1 +
 drivers/staging/lustre/lustre/mgc/mgc_request.c             | 6 +++---
 drivers/staging/lustre/lustre/obdclass/linux/linux-module.c | 2 +-
 drivers/staging/lustre/lustre/obdclass/llog_cat.c           | 4 ++--
 6 files changed, 9 insertions(+), 6 deletions(-)

-- 
1.9.1


