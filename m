X-GM-THRID: 6398525870990950400
X-Received: by 10.46.92.73 with SMTP id q70mr478817ljb.15.1489772896907;
        Fri, 17 Mar 2017 10:48:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.8.9 with SMTP id 9ls616152lji.7.gmail; Fri, 17 Mar 2017
 10:48:16 -0700 (PDT)
X-Received: by 10.46.21.79 with SMTP id 15mr2250426ljv.8.1489772896078;
        Fri, 17 Mar 2017 10:48:16 -0700 (PDT)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wm0-x244.google.com (mail-wm0-x244.google.com. [2a00:1450:400c:c09::244])
        by gmr-mx.google.com with ESMTPS id 82si232820wmg.3.2017.03.17.10.48.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 17 Mar 2017 10:48:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) client-ip=2a00:1450:400c:c09::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x244.google.com with SMTP id u132so4418000wmg.1
        for <outreachy-kernel@googlegroups.com>; Fri, 17 Mar 2017 10:48:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=8aRDhB4vfDGKUHl5I8SiJkONIRU5JxvnXBeeyVLY500=;
        b=Nll7eiRo1xMGvPXOBonWbluxvyyxgsGoTPaK5QjlAhGpOvnP5TVZDTUCs+bLeJ3WB7
         HiTiwc5J+oLeK88SAd9os5KybrxnY976h8wJNgNdGtYUtEEHB9+/6peOH8p/Rhm36QLU
         B7wsh9kWLZUTTQpEBJLv2PePCW+DhggHL1ajfZ+tSoSfT9vE2NQuvYP26dqnnkrB2EtP
         +uICgmw5/zbSKloM5pNH+Xb6a7GB7hc8NeqYdKYqO3SWREUjSunhK7zFE7Vg11i2rbb3
         CNI9/1Qt9Q6ct/iYOYmquU+1gJs1qRNs83EynkuNDuSoqXThR6/3dEHn/RL+L2poIq9u
         3eLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=8aRDhB4vfDGKUHl5I8SiJkONIRU5JxvnXBeeyVLY500=;
        b=jP3Siajj825s/wHN5W0l2R9m/stk+tjxofa9wEjJCnjpHQJQglXaTCVVlDY1Ta1dEe
         Q/vd70090+ggzPxngyhuMN8di/4kPQtIZe52QcLzv7KiMwCu4KrXQ2l7hFWoOYo+y95r
         +YJMs20o1JJhP5c42yYpV1W6hjQpsNIupsRzGt2F/rVw58MmnYuoBQnPI6eh2h6QPp05
         Y2zxehU79JeyqdYZGmUYgpnBATCUHqJme4jvQ/nYxdPT7yl4gFHlFhREg2LLBLLEO6R/
         2NfpOxD2NDqPed+9OUtKbRIMEiD9OkCUOl4GZaOgbsinTWVVSBBbJi8ijvSm1SWoK+8m
         DwEQ==
X-Gm-Message-State: AFeK/H2HKn2uenar2YpJHZsnQ4vpKlkXTtNjR4O2lBfFZ1pc/vcBbWDfjB68cdWf0eGdUA==
X-Received: by 10.28.234.71 with SMTP id i68mr4205579wmh.81.1489772895820;
        Fri, 17 Mar 2017 10:48:15 -0700 (PDT)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([2a02:2f0b:8130:11ea:d9ac:2cee:7395:ff69])
        by smtp.gmail.com with ESMTPSA id v21sm6192392wrd.58.2017.03.17.10.48.14
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 17 Mar 2017 10:48:14 -0700 (PDT)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: corbet@lwn.net,
	linux-doc@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH] Documentation: md: md-cluster.txt: Fix typos
Date: Fri, 17 Mar 2017 19:48:12 +0200
Message-Id: <20170317174812.12272-1-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3

Fix typos in md-cluster.txt file to make documentation clear.

Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
---
 Documentation/md/md-cluster.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/md/md-cluster.txt b/Documentation/md/md-cluster.txt
index 3888327..35e05d4 100644
--- a/Documentation/md/md-cluster.txt
+++ b/Documentation/md/md-cluster.txt
@@ -77,7 +77,7 @@ There are three groups of locks for managing the device:
  3.1.2 RESYNCING: informs other nodes that a resync is initiated or
    ended so that each node may suspend or resume the region.  Each
    RESYNCING message identifies a range of the devices that the
-   sending node is about to resync. This over-rides any pervious
+   sending node is about to resync. This over-rides any previous
    notification from that node: only one ranged can be resynced at a
    time per-node.
 
-- 
2.9.3


