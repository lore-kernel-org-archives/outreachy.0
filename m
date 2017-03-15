X-GM-THRID: 6397785232436625408
X-Received: by 10.46.5.136 with SMTP id 130mr713089ljf.6.1489600695604;
        Wed, 15 Mar 2017 10:58:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.9.129 with SMTP id 123ls272537ljj.16.gmail; Wed, 15 Mar
 2017 10:58:15 -0700 (PDT)
X-Received: by 10.25.104.21 with SMTP id d21mr662409lfc.31.1489600694921;
        Wed, 15 Mar 2017 10:58:14 -0700 (PDT)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wr0-x242.google.com (mail-wr0-x242.google.com. [2a00:1450:400c:c0c::242])
        by gmr-mx.google.com with ESMTPS id e72si87643wma.0.2017.03.15.10.58.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 15 Mar 2017 10:58:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c0c::242 as permitted sender) client-ip=2a00:1450:400c:c0c::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c0c::242 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x242.google.com with SMTP id l37so2964310wrc.3
        for <outreachy-kernel@googlegroups.com>; Wed, 15 Mar 2017 10:58:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=dq9xQy+5HQ5N8sYm9ncCS7Rtm+SI0Xkt3P4q/7q5t8U=;
        b=eLAVOGqAqPp4P4m30bnCg8/0EqCB5RhY9i3dkpvC+qo0i+hn8UJrhEtYZ6KroHC6h2
         BB311PREzfyi1hk0hDTTM1RcV24ULR6u05TMv+YOvePeOcao6dspLWvd48zlzH6AGmH2
         p8RUTGEWSid0+6Gi4bfc10Iws/JkZ/6zhVZ7B37e4Qhlype7x+ugwJXJ6hJ2nmUEpyOs
         BbP1D2OfCvFmpmHe24wzMs9mOTnpNHGmZEnEfdeqWKpGu+7YIQ3euHZ30O8hK6/lFFxR
         EMFGhKzAbrDmENtR6yrlgsSmWd+m6tCEJ0z3RxIVbbdXZFl5gd+QPJ+cpeRvR+FZkPS/
         n6iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=dq9xQy+5HQ5N8sYm9ncCS7Rtm+SI0Xkt3P4q/7q5t8U=;
        b=pjhQhi28KKgp+I1UDEIlkmM3emleEx61T2I+Y5R1hvCJLVkp7M7DPG8/pQ6X80nPnb
         o3Nq2vbQjIYPzZfHHLYcFkzk4kLKtoscjGnS5OX02/pp4ER0tr21BAoyDtRl0GX6FmQz
         gq3ub/hi8HpOvTrA3N18KQUBS3fN5sPHd/B0LJql0aw89ZHgDX8fJAEWEaMwK8Hj+NCw
         9UVo/9XXPBwd8CKFDeWoanTV988f6o22TdbBHhPSmKEX0xk2FVMyKePdG5kh74q2Kktx
         /j3O4BSofrB1kgzJLYR+xibvgs005WK08IU6tZGCCU/FdpfDJUl2R5ksi3qFLsNbQFxx
         mQfA==
X-Gm-Message-State: AFeK/H19pVmnUFmizOO/4wTLryEEJD6pDRfWgqQ+C8IkHtJn4pe9juYSE8N0RIiehFU7xA==
X-Received: by 10.223.139.196 with SMTP id w4mr4362731wra.172.1489600694639;
        Wed, 15 Mar 2017 10:58:14 -0700 (PDT)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([2a02:2f0b:8130:11ea:3132:88fa:c554:dae8])
        by smtp.gmail.com with ESMTPSA id p93sm3168950wrc.67.2017.03.15.10.58.13
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 15 Mar 2017 10:58:13 -0700 (PDT)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: corbet@lwn.net,
	outreachy-kernel@googlegroups.com,
	linux-doc@vger.kernel.org
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH] Documentation: Fix typos
Date: Wed, 15 Mar 2017 19:58:11 +0200
Message-Id: <20170315175811.4187-1-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3

Fix typos in sync_file.txt to make documentation grammatically correct.

Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
---
 Documentation/sync_file.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/sync_file.txt b/Documentation/sync_file.txt
index 269681a..c3d033a 100644
--- a/Documentation/sync_file.txt
+++ b/Documentation/sync_file.txt
@@ -37,7 +37,7 @@ dma_fence_signal(), when it has finished using (or processing) that buffer.
 Out-fences are fences that the driver creates.
 
 On the other hand if the driver receives fence(s) through a sync_file from
-userspace we call these fence(s) 'in-fences'. Receiveing in-fences means that
+userspace we call these fence(s) 'in-fences'. Receiving in-fences means that
 we need to wait for the fence(s) to signal before using any buffer related to
 the in-fences.
 
-- 
2.9.3


