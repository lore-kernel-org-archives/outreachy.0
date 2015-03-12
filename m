X-GM-THRID: 7783898415104
X-Received: by 10.66.224.42 with SMTP id qz10mr41485457pac.0.1426134419028;
        Wed, 11 Mar 2015 21:26:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.122.97 with SMTP id lr1ls1860911igb.0.canary; Wed, 11 Mar
 2015 21:26:58 -0700 (PDT)
X-Received: by 10.66.136.175 with SMTP id qb15mr29834581pab.11.1426134418735;
        Wed, 11 Mar 2015 21:26:58 -0700 (PDT)
Return-Path: <iskaranth@gmail.com>
Received: from mail-pd0-x22f.google.com (mail-pd0-x22f.google.com. [2607:f8b0:400e:c02::22f])
        by gmr-mx.google.com with ESMTPS id ri9si1108005pdb.1.2015.03.11.21.26.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Mar 2015 21:26:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of iskaranth@gmail.com designates 2607:f8b0:400e:c02::22f as permitted sender) client-ip=2607:f8b0:400e:c02::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of iskaranth@gmail.com designates 2607:f8b0:400e:c02::22f as permitted sender) smtp.mail=iskaranth@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pdjz10 with SMTP id z10so16725298pdj.11
        for <outreachy-kernel@googlegroups.com>; Wed, 11 Mar 2015 21:26:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id;
        bh=aIaHrDkTqQO6RT/pSaB7OTHyQtZJZWChMZyT8pB3ml4=;
        b=WAhKKfyAZSkjXHdsnaUZjDHJRPXgcHbhDvtdvWJkknqkbqx/drKS1jE3bcszPjVp50
         pvgd1VQaF2PWbJZzwu7+3D1CMEZ3EBDVB4hEbuXItxQE6+FdKb1uFzC9KQpP6IEYuxm8
         P8pAje8XFBBjugikCLE0OHmGy8AavrlT83LUV9e998QaWn5T/QwjXIJoXs052mwodpNz
         S2aVRbsHlQJ1dzl0gRIJDWNnDYF9hYogk5AmLYats/KJTGgIuLzhOdQUuPngOMZey3A3
         VwP/ZjStwl+sDkCM7sJgoriyawd3IYE8bxL6cQMj1leTiKjpSflV9lXMV94s4gVND36c
         YzTQ==
X-Received: by 10.70.118.197 with SMTP id ko5mr3866740pdb.137.1426134418602;
        Wed, 11 Mar 2015 21:26:58 -0700 (PDT)
Return-Path: <iskaranth@gmail.com>
Received: from localhost.localdomain ([222.117.133.143])
        by mx.google.com with ESMTPSA id ny9sm8476191pdb.37.2015.03.11.21.26.56
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 11 Mar 2015 21:26:57 -0700 (PDT)
From: Supriya Karanth <iskaranth@gmail.com>
To: iskaranth@gmail.com,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 0/4] staging: remove explicit intialization of static ints
Date: Thu, 12 Mar 2015 13:26:17 +0900
Message-Id: <cover.1426129493.git.iskaranth@gmail.com>
X-Mailer: git-send-email 2.1.0

static integer variables are initialized to 0 by the compiler
and it's not necessary to explicitly intialize them

This patchset removes the explicit intialization.

This issue was found by checkpatch.pl :
ERROR: do not initialise statics to 0 or NULL

These changes were made using coccinelle script:
@@
type T;
identifier var;
@@
static T var
- =0
;

Supriya Karanth (4):
  staging: i2o: remove intialization of static ints
  staging: rtl8188eu: remove intialization of static ints
  staging: rtl8723au: remove intialization of static ints
  staging: sm750fb: remove intialization of static ints

 drivers/staging/i2o/i2o_block.c               | 2 +-
 drivers/staging/i2o/i2o_config.c              | 2 +-
 drivers/staging/i2o/iop.c                     | 2 +-
 drivers/staging/rtl8188eu/os_dep/os_intfs.c   | 2 +-
 drivers/staging/rtl8723au/core/rtw_security.c | 2 +-
 drivers/staging/rtl8723au/os_dep/os_intfs.c   | 2 +-
 drivers/staging/sm750fb/sm750.c               | 6 +++---
 7 files changed, 9 insertions(+), 9 deletions(-)

-- 
2.1.0


