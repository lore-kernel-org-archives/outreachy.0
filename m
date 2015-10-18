X-GM-THRID: 6206969566138990592
X-Received: by 10.180.198.139 with SMTP id jc11mr1261566wic.4.1445172719133;
        Sun, 18 Oct 2015 05:51:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.8.229 with SMTP id u5ls439865wia.5.gmail; Sun, 18 Oct 2015
 05:51:58 -0700 (PDT)
X-Received: by 10.194.118.65 with SMTP id kk1mr5755163wjb.5.1445172718746;
        Sun, 18 Oct 2015 05:51:58 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wi0-x244.google.com (mail-wi0-x244.google.com. [2a00:1450:400c:c05::244])
        by gmr-mx.google.com with ESMTPS id c7si343349wiy.3.2015.10.18.05.51.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Oct 2015 05:51:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::244 as permitted sender) client-ip=2a00:1450:400c:c05::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::244 as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by wicfg8 with SMTP id fg8so417254wic.3
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Oct 2015 05:51:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=vhASwPkscbb2oU9iPGtl3jTfcciaB9i/Fw4KerbTbbo=;
        b=CVKQ/52dMjaLM+PfafBN2jMgtG7f2MLvAHJitD5B4L4MBgjpDForeUMXwIoyLStgut
         uLU2W5WP7jfzlooIX/ieQPFmg3bstE5o+15ZdHri7r/siScoTfrOajLBT0isUkWXXRIP
         K4KUXiZSVL/5tLAUGDrJkeAhQusn1JTed9tqWBPdbWDlK/h6aUUE/dVhh3jqkf6jfq6K
         8gvYQhuncGpWqoRXeZcHSw2eBsH0WIChWokIp64P1tev1hfO7K2gB151Uc8ubeAHQ9Mn
         fnMRNLNQFB3Bk7PeIbE3zZHXog15QJYz6ghiqSMvS74TSSEqy60PKyjgjOtJKpvCL3Fx
         RgqQ==
X-Received: by 10.180.72.16 with SMTP id z16mr15200855wiu.19.1445172718596;
        Sun, 18 Oct 2015 05:51:58 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain ([141.85.227.229])
        by smtp.gmail.com with ESMTPSA id h7sm33928338wjz.7.2015.10.18.05.51.57
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 18 Oct 2015 05:51:58 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH 0/5] staging: gdm724x: fix multiple checkpatch issues
Date: Sun, 18 Oct 2015 15:51:47 +0300
Message-Id: <cover.1445172595.git.ciorneiioana@gmail.com>
X-Mailer: git-send-email 2.1.4

This patchset fixes multiple checkpatch issues.

Ioana Ciornei (4):
  staging: gdm724x: properly indent to match open paranthesis
  stating: gdm724x: remove explicit NULL comparison
  staging: gdm724x: add spaces around binary operators
  staging: gdm724x: correct kzalloc/kmalloc sizeof argument
  staging: gdm724x: remove multiple blank lines

 drivers/staging/gdm724x/gdm_lte.c   | 40 ++++++++++++++---------------
 drivers/staging/gdm724x/gdm_mux.c   | 22 +++++++---------
 drivers/staging/gdm724x/gdm_tty.c   |  6 ++---
 drivers/staging/gdm724x/gdm_usb.c   | 50 ++++++++++++++++++-------------------
 drivers/staging/gdm724x/netlink_k.c | 10 ++++----
 5 files changed, 62 insertions(+), 66 deletions(-)

-- 
2.1.4


