X-GM-THRID: 6399866946348646400
X-Received: by 10.99.55.4 with SMTP id e4mr18551023pga.156.1490085140706;
        Tue, 21 Mar 2017 01:32:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.60.6 with SMTP id q6ls1313777otc.10.gmail; Tue, 21 Mar
 2017 01:32:20 -0700 (PDT)
X-Received: by 10.13.198.2 with SMTP id i2mr17390506ywd.116.1490085140254;
        Tue, 21 Mar 2017 01:32:20 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id 2si3153707pfz.1.2017.03.21.01.32.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Mar 2017 01:32:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id g2so24122644pge.2
        for <outreachy-kernel@googlegroups.com>; Tue, 21 Mar 2017 01:32:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=twA8H7cjUjHUVzRO759dRfg6LBd4XhVRbm+9TtrzNs4=;
        b=WwTNMLgM3yAgh2TniKYDwuihRZgV2eOjiXxfkQSQ503gzz0eDdzcoHIG124SDDbCOm
         7xgai6d/ZI3SY44mEGi/l3o7c8wGZDAGe+E9pbm3e1DLxGexwrBqLBPxwjbrJE9eqlW3
         2AXmc9oRNQKtS8oIDVcu0Onbg5Q6BCmhL9RfrqCuhsiozlnadbD2/e9NARWsWLvOynkv
         0Y0XN+emwyT3DstqqkeUyjyPgD/eVkWiVmKssGfJ5PyrgsByROXbzWrIZHl++R4LK7D7
         2C9Syr8ygm60iK7Jh/PB249IbrTxw4mQMFFNbMWbD8wqMY2z4eryK18AlbyJWvnVaCIX
         KhsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=twA8H7cjUjHUVzRO759dRfg6LBd4XhVRbm+9TtrzNs4=;
        b=R4+Q5AdrD5oXMzoGUoGLVzQ4SJbzKv+gE0OXC4Fave6+hckUfFiwBvP+OhZBXlVG0f
         jfR3xdveNs3i5zqVWdIkBIcey5GtB/t7YD459LgYWOjrG2FGqlHd8G5P5qF2ZUIPH9n4
         Yj91jgpyaJ2BlhbbT0VLPCsIpWvZW8E7zF93KyUAi24Mf+8yazjR1r4lCYEpuN6w99Zn
         P0hTWMDyrUPFOj5Yad93IW2+hx8ffvfnvECBshpmXGgsB7jfNzOt8AWZ+1ItdlBhJIJc
         K+ectE1CcCldsqhj6pFKcv6DGNswGf78mRdoTM/OAzGIs2lAcyju8yAOSvVJtCdiiqfo
         1c0Q==
X-Gm-Message-State: AFeK/H3nr8YKpv0QBzsycgfXwfkLAPt73t/KaJiQEmCTT9mxT50jn+dzaK+iHl3CftgOww==
X-Received: by 10.84.231.206 with SMTP id g14mr17824265pln.13.1490085140046;
        Tue, 21 Mar 2017 01:32:20 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id f3sm38152086pga.34.2017.03.21.01.32.18
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 21 Mar 2017 01:32:18 -0700 (PDT)
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: w.d.hubbs@gmail.com
Cc: chris@the-brannons.com,
	outreachy-kernel@googlegroups.com,
	kirk@reisers.ca,
	samuel.thibault@ens-lyon.org,
	gregkh@linuxfoundation.org,
	speakup@linux-speakup.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	Arushi Singhal <arushisinghal19971997@gmail.com>
Subject: [PATCH 0/4] staging: speakup: Checkpatch issues.
Date: Tue, 21 Mar 2017 14:02:11 +0530
Message-Id: <20170321083215.29209-1-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.11.0

Improve readability by fixing multiple checkpatch.pl
issues in speakup driver.

Arushi Singhal (4):
  staging: speakup: Removed Unnecessary parentheses.
  staging: speakup: Simplify the NULL comparisons
  staging: speakup: Match alignment with open parenthesis.
  staging: speakup: Fix alignment with parenthesis.

 drivers/staging/speakup/fakekey.c        |  2 +-
 drivers/staging/speakup/kobjects.c       |  2 +-
 drivers/staging/speakup/main.c           | 34 ++++++++++++++++----------------
 drivers/staging/speakup/selection.c      |  2 +-
 drivers/staging/speakup/serialio.c       |  2 +-
 drivers/staging/speakup/speakup_acntpc.c |  6 +++---
 drivers/staging/speakup/speakup_apollo.c |  2 +-
 drivers/staging/speakup/speakup_decext.c |  4 ++--
 8 files changed, 27 insertions(+), 27 deletions(-)

-- 
2.11.0


