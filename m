X-GM-THRID: 6662796640872562688
X-Received: by 2002:a25:2d67:: with SMTP id s39mr1904949ybe.71.1551303230049;
        Wed, 27 Feb 2019 13:33:50 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:a223:: with SMTP id b32ls720115ybi.6.gmail; Wed, 27 Feb
 2019 13:33:49 -0800 (PST)
X-Google-Smtp-Source: AHgI3IYH1HsqpnvH+MTlVUElO76H5Uhp2SWIIsHHYU1EvBDvByb345ATy5mGYHkldnGZgl+2BAam
X-Received: by 2002:a5b:cc8:: with SMTP id e8mr2067523ybr.0.1551303229316;
        Wed, 27 Feb 2019 13:33:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551303229; cv=none;
        d=google.com; s=arc-20160816;
        b=0SsDjuwVUANAq9xiJYT3OAHgX3ElT0X3lQGA7QCYw5tciWXi/gBqwC0mI23FPwILjN
         kHhjzfTV9hMN6OGN+yOF5qk6QnoVP0glM3Az4bjuMFMR0I7vKWEqsVRqOnWUUhMqC2Lm
         vN5ZWRbzVigQurGAoGJ32OhS3mQ4FE2OcfUFpweim0V6Snoq+2XGZomkwUGW6DPoYy9W
         rOI/R1YB8HGg0zwGJuPY6TAcwu5uIyFqHSxgkiQrmBie+u/P3i7O9ax7EfdVEhRsKyWy
         A3s10T4NozcclXwyG55/YIexChPafd9EIDWHdJ/fP2BYM73gPeONfREKdcRnJ9HQci1V
         X+MA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=JE19BIVgeeY85uiWjcFV8/ZeH2EjU73C4xgYg7Rg0BQ=;
        b=U3tIpveDopvDCc5Z/66j276jkAmP8jrHbfihxF3f2QYClf7PaqTTYwXNPk8y9u5GxI
         zhEQ5nmplj3lZEZ81wvGu2gNYkBwL7COvpKgxkItvxMRtrs1Zw5EG9tltDywq1ogc6mt
         pptTVrLYpwDF9PlzDREFfS/jsa804/qVKsa0lKI2esck6yOFaCLtRn5DhP4aq8vc7zMY
         j7lZMP1+4FNysoZTaudBDgx5mVVVvnkeIqNL5PG7DFxWSilO1KHnCO77rq938896XJv4
         Jr5dZBBmbGxzjRlIyRH66B8xeuaMsUftqafC4yFosqLuxhDhpCiGzil6IGp6jIIc+Fzw
         zXsw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NrpakqGV;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::233 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x233.google.com (mail-oi1-x233.google.com. [2607:f8b0:4864:20::233])
        by gmr-mx.google.com with ESMTPS id r128si1224348ywd.0.2019.02.27.13.33.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Feb 2019 13:33:49 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::233 as permitted sender) client-ip=2607:f8b0:4864:20::233;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NrpakqGV;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::233 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x233.google.com with SMTP id x187so14735357oia.7
        for <outreachy-kernel@googlegroups.com>; Wed, 27 Feb 2019 13:33:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=JE19BIVgeeY85uiWjcFV8/ZeH2EjU73C4xgYg7Rg0BQ=;
        b=NrpakqGVZ7bGYIdOT4Spr7428vYb+VInI/6pYOfVAJLF069LR0WqmyRiLpzsh/H+Lt
         dPpH9d7x3ITkfnQREsA8yqKZKCMr85TQP7GsfswAiLFvCZ+6/a2zSr+INRAqiaX/cytN
         TizHEP57vI9hjDKCokIS6AyrP743rIsLyAXNmlEQiYcGPvRGRmCXhIIHxP/kTZFtkAew
         cZvGzpbQ1DkzsthQKpnp6Z4qSpM7ZxhQ9KF4lwSDjHS0JrlKJTKrfvypbkutVMvALqad
         LW636dsAJlbIfZCEYsWy2+XU8WeO45OldyFmeanGap57EOmSUE4oIBi9yqd7ND0jQ037
         WIAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=JE19BIVgeeY85uiWjcFV8/ZeH2EjU73C4xgYg7Rg0BQ=;
        b=P/HFMIHe7Pjkdr5XBg8SNPVZThgSLuB0tQzhyJk4pBfHwFHraj9pod/M2dVfEJvM+i
         LdJkVr9T9xkHuo/U9u7/VCNzozTQt73IURsMr3oLLpWsd28q2jZk53ilZF41pV7xIcFR
         wqDajbbFA9HV/nQ0u7tSZKQz0FfvscsZSbSXG4RWvFFocRF1xX9+AQT/w8ThyeO6U2CQ
         y+McEVOiiSotgL3EXNbhqZSBlofxvBKAltxX5NtL5vVtPHq/+4BgyQM2lpuqUH1udow0
         LRxmtCOaOohhVvVwu+b9piENeE70Q39mBXqD//Ex6jQIRN4Nb5vt/jH5I1YHGD5nceaA
         7ViQ==
X-Gm-Message-State: AHQUAubVCeJeNWmXPcdJ4hEEQX2PG1W/jGgsfoT7yE06S5uoYb5bNpRc
	eDPJp6VtWMHMT8pWF6pFW5c=
X-Received: by 2002:aca:56ca:: with SMTP id k193mr913792oib.59.1551303228961;
        Wed, 27 Feb 2019 13:33:48 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id y37sm7673349ota.17.2019.02.27.13.33.48
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 27 Feb 2019 13:33:48 -0800 (PST)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH] Staging: vt6655: Modify comment style of SPDX License Identifier
Date: Wed, 27 Feb 2019 15:33:44 -0600
Message-Id: <20190227213344.10632-1-madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1

Fix the comment style of SPDX license identifier based on header file
type

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
 drivers/staging/vt6655/baseband.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vt6655/baseband.h b/drivers/staging/vt6655/baseband.h
index 30d9e9d20a39..0cc2e07829c5 100644
--- a/drivers/staging/vt6655/baseband.h
+++ b/drivers/staging/vt6655/baseband.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+/* SPDX-License-Identifier: GPL-2.0+ */
 /*
  * Copyright (c) 1996, 2003 VIA Networking Technologies, Inc.
  * All rights reserved.
-- 
2.17.1


