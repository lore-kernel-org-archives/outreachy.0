X-GM-THRID: 6212181078592978944
X-Received: by 10.112.149.7 with SMTP id tw7mr3407141lbb.10.1446386119667;
        Sun, 01 Nov 2015 05:55:19 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.9.149 with SMTP id 143ls440054wmj.7.canary; Sun, 01 Nov
 2015 05:55:19 -0800 (PST)
X-Received: by 10.194.2.146 with SMTP id 18mr3485368wju.0.1446386119276;
        Sun, 01 Nov 2015 05:55:19 -0800 (PST)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wm0-x232.google.com (mail-wm0-x232.google.com. [2a00:1450:400c:c09::232])
        by gmr-mx.google.com with ESMTPS id s134si336594wmb.3.2015.11.01.05.55.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Nov 2015 05:55:19 -0800 (PST)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c09::232 as permitted sender) client-ip=2a00:1450:400c:c09::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c09::232 as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wm0-x232.google.com with SMTP id f134so41678981wmf.0
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Nov 2015 05:55:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=hNviarXfZ68EIAfEfL/5X5XObakbH3Ql4YOItFaY6nE=;
        b=nmtF/EFTGsVymCgfqkc6UFor29cDf+CFHGgajQhl2SCkgu13U4wt9CSiLejiY0y2A3
         Qu7r8geTGn8cQjg9vE+hnwMWpAfCHyRNqu1LPYrlxQP7+cS80WmbvylbcCHwaz1Voww7
         uYBaC9H3HqQ3wB3k+jjWheN3mIjapmVRLNegeSBmMYUYR1fIRF5JnKm8uVasCYWqThlM
         xNmKOhpwo9QQ+wAJYGNcTuxrJkSx8tzVKN99IZWXGqvZxcvckSGNcLRtBn0Y+uXzDH4P
         q3OH2VvzJ1g3f7VxivurSHalFQQ/SWEh8uoj8fzI8fyHAPfE3Sn9vReGcMmNORQqqUo5
         pw0A==
X-Received: by 10.28.144.10 with SMTP id s10mr8492410wmd.23.1446386119192;
        Sun, 01 Nov 2015 05:55:19 -0800 (PST)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain ([141.85.114.141])
        by smtp.gmail.com with ESMTPSA id u126sm12968830wmd.3.2015.11.01.05.55.18
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 01 Nov 2015 05:55:18 -0800 (PST)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: arve@android.com,
	riandrews@android.com,
	Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH 0/5] staging: android: fix multiple checkpatch issues
Date: Sun,  1 Nov 2015 15:55:06 +0200
Message-Id: <cover.1446385932.git.ciorneiioana@gmail.com>
X-Mailer: git-send-email 2.1.4

This patchset fixes multiple checkpatch.pl issues.

Ioana Ciornei (5):
  staging: android: replace explicit NULL comparison
  staging: android: replace uint32_t with u32
  staging: android: properly align function arguments
  staging: android: remove multiple blank lines
  staging: android: add comment to spinlock_t definition

 drivers/staging/android/ion/compat_ion.c  |  6 +++---
 drivers/staging/android/lowmemorykiller.c |  6 +++---
 drivers/staging/android/sync.c            | 22 +++++++++++-----------
 drivers/staging/android/timed_gpio.c      | 13 ++++++-------
 4 files changed, 23 insertions(+), 24 deletions(-)

-- 
2.1.4


