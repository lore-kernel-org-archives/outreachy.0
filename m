X-GM-THRID: 6812465234894127104
X-Received: by 2002:adf:e94a:: with SMTP id m10mr12245209wrn.324.1586187706770;
        Mon, 06 Apr 2020 08:41:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:dc86:: with SMTP id r6ls6638771wrj.5.gmail; Mon, 06 Apr
 2020 08:41:45 -0700 (PDT)
X-Google-Smtp-Source: APiQypL86ecngy5JjS9A0AspDE6LnOdaUvVDGXrYkRYta3kZBdMHXKn8vx2vR3GiHaXp02jj7El/
X-Received: by 2002:a5d:6187:: with SMTP id j7mr25890831wru.419.1586187705508;
        Mon, 06 Apr 2020 08:41:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586187705; cv=none;
        d=google.com; s=arc-20160816;
        b=nogLO9nlMubG/B7k/x1JXekx+I2iZs1peCoA2m6Nu6vnGuwvXAYOvGgfvA5wbYRBfY
         owBpRodvZ+IOM5owva8w0toH8oywqO7mjSciT2xUXd47+M1ES+IYhKOx25bIvwWTuTrr
         qNyzvCpyhGe8ZkwzeNGYNi2p4Rq9OaQHZcf4Vqns9ShyxSGQYjK7iDf2X+fi1q5CO9lc
         V/Wz7hWaTSOH/C5yPE3ZFiiXn95fMCUdAFZ9mbdrAx+GHZ9m3cNo7Kv90L0SBFejq6P+
         GV2cfkzvxDhLuXMt+NtY4FUwWHqoangT82hJj4osESzdW2cSUMq+ijbLWFQQeCc8RJ+X
         2yGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=Sp08MIk5odOmyAYUQH0Po6YHxqmsgfYuv4y1/e3/A4Q=;
        b=JnhJqq0YWahjSyN1rT+ll0rCXb0gYyx/YKwSYpcMFVLb+4WcwJMIpFZ/YnxjRoEAXn
         stbYbsuaV1S0s6Js5OVGN6raCzrBYCAwaxRKvMDb3a0K8cIO7Hkco7Jx0K0bQexvgPJo
         zJM5ZEAQOyeMVyI4jnOVaqos+g4rxDxalpklziVr4xEegjGqF2xUgpr4x6CfSTroR1Tw
         bvY3IkegDkV7HgMdgnS9LMUg3SD3gW+RZu5Scqiy9OB0LiRhQQ/i0M0/irIqEpqkogfS
         bvn6Kgjtk5srKk/hWXI+lOIkMS2dKHRyx49qPoymzyQttJyy7NMVznsSwfwH6+9nYnfm
         G4mw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Return-Path: <vkor@vkten.in>
Received: from vkten.in (vkten.in. [104.244.73.96])
        by gmr-mx.google.com with ESMTP id z84si43wmc.2.2020.04.06.08.41.45
        for <outreachy-kernel@googlegroups.com>;
        Mon, 06 Apr 2020 08:41:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) client-ip=104.244.73.96;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Received: (qmail 845 invoked from network); 6 Apr 2020 15:41:42 -0000
Received: from unknown (HELO localhost) (vkor@vkten.in@117.219.218.209)
  de/crypted with TLSv1.3: TLS_AES_256_GCM_SHA384 [256/256] DN=none
  by vkten with ESMTPSA; 6 Apr 2020 15:41:42 -0000
From: R Veera Kumar <vkor@vkten.in>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: R Veera Kumar <vkor@vkten.in>,
	Hans de Goede <hdegoede@redhat.com>,
	Larry Finger <Larry.Finger@lwfinger.net>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH v2 0/3] staging: rtl8723bs: Spelling corrections in driver code
Date: Mon,  6 Apr 2020 21:11:23 +0530
Message-Id: <cover.1586187304.git.vkor@vkten.in>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Spelling corrections in driver code.

Changes in v2:
 Combined Patch 1 & 2 to prevent build failure.

---
R Veera Kumar (3):
  staging: rtl8723bs: Correct misspelt symbolic names
  staging: rtl8723bs: hal: Correct misspelt enum name
  staging: rtl8723bs: hal: Correct misspelled symbolic name

 drivers/staging/rtl8723bs/hal/hal_com_phycfg.c   | 8 ++++----
 drivers/staging/rtl8723bs/hal/odm.h              | 2 +-
 drivers/staging/rtl8723bs/hal/odm_RegDefine11N.h | 4 ++--
 drivers/staging/rtl8723bs/include/hal_data.h     | 8 ++++----
 4 files changed, 11 insertions(+), 11 deletions(-)

-- 
2.20.1


