X-GM-THRID: 6464370677237415936
X-Received: by 10.101.66.141 with SMTP id j13mr6659193pgp.0.1505103585179;
        Sun, 10 Sep 2017 21:19:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.103.14 with SMTP id u14ls4780585itc.7.canary-gmail; Sun, 10
 Sep 2017 21:19:44 -0700 (PDT)
X-Received: by 10.200.10.1 with SMTP id b1mr5678105qti.53.1505103584158;
        Sun, 10 Sep 2017 21:19:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505103584; cv=none;
        d=google.com; s=arc-20160816;
        b=ENqNnHgPb/4sP3Z8s2BXjwEd9Y9PSW/mdw/UoTrgUGkBZXU/UolE+6ltZdkoLYYJZX
         qMUPBDa3+lQxJo6hst/DNLMzuvkCO4z/6aXWl3RO5/RBiusIM6ckCYNeosSTohKGuKkj
         9VI26eGafCjTDCrdv7eU+vHN/Z4M0QM8d5SqZbtpOWQ6R1HdHTuwVsdf0iUP70z/baOs
         vnR7QDISAmq4wOCQUqcpeXcpzhpBzwS/d5nduZ4NS3J+XbD3Oq2xxe3IFv75lMbZJco+
         OOIUBpu4MTojxozmv0DYeIXbTi7CQiO89j23bhQeY/os/OSlb8r1WT0JpB4tMF+Hnshl
         7K0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=YG4dAbDc4ptaK7NqrbFIT6SPohs+3waDIvWamTdlbmo=;
        b=esaCcbYf264v0+R1tDp0Qg5dTeYvv4e8jQp1tq/c9ndPzMiWELlR0vRQZNEYXtieGa
         G3skaoWHx4mDeqHrPuq83pGt1KLyNKApp3MGkw4MsYqIQFkJZfcGJwzhIO27P9rIcUtb
         YG8tMZiMdXXvFFUUfIk5exS2BiFWDYj7wri3N7pRbSE7h+zbXCF/FBDUDEJt4/OAwciU
         fzGFkmo7GxcJFoemzmqLA6JSQLZjla6ONBYpOaokgNLDyLDowAJZi14bHHmKn/ElVS7l
         Nu3kfR2xBRqWGucS4fbSzcLk4sZ2s5fMkQMFTeWOo0C81XhWmnfCHnyBiYp9lAxVkVau
         katQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PAHuePAq;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id y18si57283pfj.18.2017.09.10.21.19.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 10 Sep 2017 21:19:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PAHuePAq;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id q76so4415452pfq.5
        for <outreachy-kernel@googlegroups.com>; Sun, 10 Sep 2017 21:19:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=YG4dAbDc4ptaK7NqrbFIT6SPohs+3waDIvWamTdlbmo=;
        b=PAHuePAqCTRqHdM3OiP07LI1SP4FwghICOX8zhJsOZXJFebebMkXeAFiGr1rTB1xm7
         olBHscDpViCjIMYaHTLFODrlzN2Mlnx3O6wQPDguoI7pegxIJ5hyOPBIwrtiPLkLTIZQ
         IxvuMAXO0HLinfd84/0cDjmDKwxm9PwltgBOoQ18yHDTVgt53rpEg6Sa87gZpHZhwqeO
         tQTOdHrDtCXHYLXGIY388nq8tcFo/jR1XaCoqW5h5mWIq9Y9QX+dDtagO5H/e9k8TXFi
         85t14ec7AzAl4OanmaIB5ohsyxZjtrsW6GGqfIZ+/jWzOgEN7Hn1NjGv4Tr4q3g2d0Xf
         ZZUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=YG4dAbDc4ptaK7NqrbFIT6SPohs+3waDIvWamTdlbmo=;
        b=brI5LF/Es+qSL1ofCuv3MrmxnrTEWJFbC64L3/9uhSPEr9/h6qeDyNxDDPA3gfAAH5
         rxdbbDfh37OLx77c0uGtnLCVfyKJbJ3h6MMIpCPge3kmWJoVbMnQa8dkV6PS6SCp/GCe
         etIX7lf+mk01KtOKCCTv+KaAK9GNxmNVO2um1BNBhSM1WuK2iVY8BNYpW2wV/CjWooEA
         vnBrSiQw9U4b+3dBfYCfoLDa2pTf5xz+aZd9rWPN318559DwxSxPMTZOg9iAsqruBfgC
         6FfppVVkfAwRZXvEZMekmOdoPI8eKcMuxuzpsSBKcvMAf6T2F3T7r0LPbzMXYwY7xJl7
         iPhQ==
X-Gm-Message-State: AHPjjUhJ2MXYGJrE0c7KB2nyRDHY5xNQdHwv6khrYe+F49XYG9VfeSBH
	0x/AVrFCy+LQXw==
X-Google-Smtp-Source: ADKCNb7njmYcauO8tyFIiXcW4SxAhCzl4U+Ad/UK1sbBFLGjH+vas7Zg6AUdyjAt52zD8Pks4CnSqA==
X-Received: by 10.98.159.137 with SMTP id v9mr10571247pfk.49.1505103583774;
        Sun, 10 Sep 2017 21:19:43 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([182.77.47.123])
        by smtp.gmail.com with ESMTPSA id z89sm12882494pff.13.2017.09.10.21.19.42
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 10 Sep 2017 21:19:43 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Arnaud Patard <arnaud.patard@rtp-net.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH] staging: xgifb: fix multiple line dereference
Date: Mon, 11 Sep 2017 09:49:35 +0530
Message-Id: <1505103575-5301-1-git-send-email-aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4

This patch fixes the checkpatch.pl warning:

WARNING: Avoid multiple line dereference - prefer'XGI330_EModeIDTable[ModeIdIndex].Ext_ModeFlag'

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
 drivers/staging/xgifb/vb_setmode.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/xgifb/vb_setmode.c b/drivers/staging/xgifb/vb_setmode.c
index cea128b..bf69dc9 100644
--- a/drivers/staging/xgifb/vb_setmode.c
+++ b/drivers/staging/xgifb/vb_setmode.c
@@ -5479,8 +5479,7 @@ unsigned char XGISetModeNew(struct xgifb_video_info *xgifb_info,
 						   ModeIdIndex))
 				return 0;
 
-		pVBInfo->ModeType = XGI330_EModeIDTable[ModeIdIndex].
-						Ext_ModeFlag & ModeTypeMask;
+		pVBInfo->ModeType = XGI330_EModeIDTable[ModeIdIndex].Ext_ModeFlag & ModeTypeMask;
 
 		pVBInfo->SetFlag = 0;
 		pVBInfo->VBInfo = DisableCRT2Display;
-- 
2.7.4


