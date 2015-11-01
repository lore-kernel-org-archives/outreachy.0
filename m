X-GM-THRID: 6212181078592978944
X-Received: by 10.28.133.3 with SMTP id h3mr1401698wmd.0.1446388713509;
        Sun, 01 Nov 2015 06:38:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.205.207 with SMTP id d198ls366241lfg.82.gmail; Sun, 01 Nov
 2015 06:38:32 -0800 (PST)
X-Received: by 10.112.134.129 with SMTP id pk1mr3425463lbb.24.1446388712708;
        Sun, 01 Nov 2015 06:38:32 -0800 (PST)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wi0-x231.google.com (mail-wi0-x231.google.com. [2a00:1450:400c:c05::231])
        by gmr-mx.google.com with ESMTPS id l1si372621wmb.3.2015.11.01.06.38.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Nov 2015 06:38:32 -0800 (PST)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::231 as permitted sender) client-ip=2a00:1450:400c:c05::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::231 as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x231.google.com with SMTP id p11so37007429wij.0
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Nov 2015 06:38:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=YlhICWFYYW/33sLapy5xzbkCDhXOjOMZRi+nPAL2yrw=;
        b=JGEK+upDczcG7fqgei/BivBR1KCj5FphgGgwCSgEIkCofQE6/RQlR6kierzGkTDgaz
         APT3B0j2329lUgqAWT9uZkitlzoAVsjQZuZJJCqx/rlllpsCQtpmb+9oLRMbNQCYbC5J
         GwL+/k6gqCQI33ugrnUyq+73ClJP7U7CVJNX6VKx5+WI+e44ZaS0zhs1vFz6ZmzlZWCB
         JSucdbKkwqJfz730DphWtRw6BddZW4hhq5bYRIKdLLsygvmAN+UYeiOrQJeWYgtjPmrN
         H+qpS0In2UA4Siaz0gzYNRoQOJsl6qP1Yb3PTaZKwpJEx7poZZXDrCZedo6bPs2s/hc1
         iQnQ==
X-Received: by 10.194.77.79 with SMTP id q15mr22003384wjw.102.1446388712599;
        Sun, 01 Nov 2015 06:38:32 -0800 (PST)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain ([141.85.114.141])
        by smtp.gmail.com with ESMTPSA id 199sm13077625wml.22.2015.11.01.06.38.31
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 01 Nov 2015 06:38:32 -0800 (PST)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: arve@android.com,
	riandrews@android.com,
	Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH v2 0/5] staging: android: fix multiple checkpatch issues
Date: Sun,  1 Nov 2015 16:38:19 +0200
Message-Id: <cover.1446388483.git.ciorneiioana@gmail.com>
X-Mailer: git-send-email 2.1.4

This patchset fixes multiple checkpatch.pl issues.

Changes in v2:
    - fix typos in the commit description of the patch 3/5

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


