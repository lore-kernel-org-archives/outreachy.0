X-GM-THRID: 6204428634570096640
X-Received: by 10.180.210.212 with SMTP id mw20mr1890296wic.3.1444581112365;
        Sun, 11 Oct 2015 09:31:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.40.133 with SMTP id o127ls425434lfo.38.gmail; Sun, 11 Oct
 2015 09:31:49 -0700 (PDT)
X-Received: by 10.112.162.33 with SMTP id xx1mr1570643lbb.6.1444581109658;
        Sun, 11 Oct 2015 09:31:49 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-wi0-x22c.google.com (mail-wi0-x22c.google.com. [2a00:1450:400c:c05::22c])
        by gmr-mx.google.com with ESMTPS id ch7si321025wib.2.2015.10.11.09.31.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 11 Oct 2015 09:31:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2a00:1450:400c:c05::22c as permitted sender) client-ip=2a00:1450:400c:c05::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2a00:1450:400c:c05::22c as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22c.google.com with SMTP id lk2so124137682wic.1
        for <outreachy-kernel@googlegroups.com>; Sun, 11 Oct 2015 09:31:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id;
        bh=CcMP5LdTkjhvp77JBh6SVneBdR5cb0iyStm1qSMNGBE=;
        b=ffViRB3x/mVUlKSLocnRNZqgKa12W7exRnS5wDfMAqyd5gZfjGgmMQOU9r9fcm/qQQ
         OYarFsdT+Ibg/Rolu6pKOu5l1LVqMQFz+cu6aOEjtjXHw15HsH3nShMJK6o0ahgMFnf4
         xg4PJ9FqZJLDnoT4hmQGxxW5DLQTm51WQJRJ7s+X8esSqhwyTvrHy436gVCQYuK0XDfX
         XTNyeRnQtXXrzog1e1jja74L7FK6ryEoVXp58I4Gi7roKATlV1a3OpPPG9T7hiRvvpTf
         0EDNNt5ye+yLMoH3QC9bXnyYOucGHO1eBbxyWpQDwXxrMX0TMd1oA/xh9dDV/YWVYZ2v
         muCw==
X-Received: by 10.194.84.42 with SMTP id v10mr28794320wjy.1.1444581109531;
        Sun, 11 Oct 2015 09:31:49 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id r4sm7358532wia.19.2015.10.11.09.31.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 11 Oct 2015 09:31:48 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH 0/2] Use kmemdup
Date: Sun, 11 Oct 2015 22:01:35 +0530
Message-Id: <1444581097-19417-1-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4

Replace kmalloc and memcpy with kmemdup

Shraddha Barke (2):
  Staging: wilc1000: host_interface: Use kmemdup instead of kmalloc and
    memcpy
  Staging: wilc1000: wilc_msgqueue: Use kmemdup instead of kmalloc and
    memcpy

 drivers/staging/wilc1000/host_interface.c | 14 ++++++--------
 drivers/staging/wilc1000/wilc_msgqueue.c  |  4 ++--
 2 files changed, 8 insertions(+), 10 deletions(-)

-- 
2.1.4


