X-GM-THRID: 4799843008512
X-Received: by 10.152.45.7 with SMTP id i7mr2337712lam.9.1425069797396;
        Fri, 27 Feb 2015 12:43:17 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.36.199 with SMTP id s7ls183569laj.57.gmail; Fri, 27 Feb
 2015 12:43:16 -0800 (PST)
X-Received: by 10.112.146.65 with SMTP id ta1mr2340851lbb.19.1425069796887;
        Fri, 27 Feb 2015 12:43:16 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from mail-wg0-x229.google.com (mail-wg0-x229.google.com. [2a00:1450:400c:c00::229])
        by gmr-mx.google.com with ESMTPS id l8si227397wia.0.2015.02.27.12.43.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 12:43:16 -0800 (PST)
Received-SPF: pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c00::229 as permitted sender) client-ip=2a00:1450:400c:c00::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c00::229 as permitted sender) smtp.mail=aysemelikeyurtoglu@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x229.google.com with SMTP id l18so22649119wgh.7
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 12:43:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=ZYsyaMVRt4VDScFJQ6xvcq9UtPNcFJQZzYJWQkIbB4E=;
        b=CYlfEPU/sREAQ/1eUl2tPrRq5GL2FX307v0dUeoTRDFa011Bbw+a9fAXzl5a/f5svU
         8369u9vXaL0SHl5ElMSh5f2Zh5b5LmrydGeklSaHrxeIkh8QQy12VGOoRdUMZOe2NeA+
         a/Vn1v4I/+nYinGektWhCOA7lmxbMWv9h5gce1vgoFwC3Eejtdo2zVbrmNaybGxY9Vyp
         ImbTwLoSSEHDHIwumov6XmM9X3xYbVcNNomExh1hwnw3uHhv45v6s1A9H2EqMiHZh98v
         oUXLjnoTQ2hcXV3yhNW3b71a9KlAjF2EIoxP1509RyXw66bWWvOhf1TmNSlqfVjpS7/g
         17Wg==
X-Received: by 10.194.134.68 with SMTP id pi4mr31924836wjb.101.1425069796796;
        Fri, 27 Feb 2015 12:43:16 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from localhost.localdomain ([151.250.87.133])
        by mx.google.com with ESMTPSA id fo15sm4330473wic.19.2015.02.27.12.43.15
        (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 27 Feb 2015 12:43:15 -0800 (PST)
From: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
Subject: [PATCH  0/3]
Date: Fri, 27 Feb 2015 22:42:08 +0200
Message-Id: <1425069731-30165-1-git-send-email-aysemelikeyurtoglu@gmail.com>
X-Mailer: git-send-email 1.8.3.2

This patchset delete space and adds const.

Melike Yurtoglu (3):
  Staging: lustre: Added const
  Staging: lustre: Removed space prohibited
  Staging: lustre: Deleted space prohibited between function name and
    open parenthesis

 drivers/staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

-- 
1.8.3.2


