X-GM-THRID: 6665132923205713920
X-Received: by 2002:a9d:76d9:: with SMTP id p25mr2839921otl.11.1551847201807;
        Tue, 05 Mar 2019 20:40:01 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:3de5:: with SMTP id l92ls153493otc.0.gmail; Tue, 05 Mar
 2019 20:40:01 -0800 (PST)
X-Google-Smtp-Source: APXvYqz+p8Lpg+EvqGQklpUj+i+j0dNJB1Yf1p8+csALLuo+9QXJYhyZ0tlOlbJMs5dHUSCWt5o+
X-Received: by 2002:a9d:ee4:: with SMTP id 91mr2796948otj.50.1551847200989;
        Tue, 05 Mar 2019 20:40:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551847200; cv=none;
        d=google.com; s=arc-20160816;
        b=IojedONelFJevVF1ueSxW87VQR/Uh2LT8MEf0pJ1JXtO5/wQ9F5yeBtMrUZdKw3SwT
         PBWxGvPgLprBKPPQz2p6wY6YR1/WopQQTsBbycrdZswT3885Qg1kvFaeXDpMCo6D9PMn
         Jq/7LH6YuTF7s09eXcCc4Yu3E9Xg1cMsaTuQ0xlJ2Ze+LU8jSf7fimGM7yra1RC5W38l
         Q3EobkN//1jaV+xqfQXrkE5kxlml3OtYUxqZo+D4Mb1z+UFHEGg4yDk/vnPdsaphxL0U
         V2unCTYVQdybHx6zp+Do3iuQGUnVNN9YUDzvt+soSmsptEAI9oJaS/VbBeM6cYjVGoab
         8qJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=05Q8spaSddUw3pj1JAYjaL3LvzE8t9QOaQYJmxOEko4=;
        b=Bw5o7eGwz33p8rUHZYmZjYB5/LcyBGqXHbRg3hnB6qGsaX1OZ7JhehCbCY/SFjVIej
         ififIe4WSXYJXqUBtcGx7UN0hGRIEmDt4PYt0uj1hKB8BVSETlevYb0Qt6zaNopOAUw4
         wiDay29PzuZNlW1GB9rIDYcMe8zrdtGN2jNQs2C4WvQkAvcl78RSeK3r5cfdzU+oQdOn
         TaKIWGLb9Agyge32GjsFNj0alwmkwEhwE9ygg3/Bjr1fXKv43RoSvz0hHwTY/tGs1W9U
         Xm3hxnyLNbVHcLsvfNtqii7ifoWlYTqD+l5ktbsPRd4m1DQz4N1k7ukz1NpjsNK4nfCm
         m6qA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RNbMSDT0;
       spf=pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::431 as permitted sender) smtp.mailfrom=etsai042@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <etsai042@gmail.com>
Received: from mail-pf1-x431.google.com (mail-pf1-x431.google.com. [2607:f8b0:4864:20::431])
        by gmr-mx.google.com with ESMTPS id a188si24656oih.4.2019.03.05.20.40.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Mar 2019 20:40:00 -0800 (PST)
Received-SPF: pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::431 as permitted sender) client-ip=2607:f8b0:4864:20::431;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RNbMSDT0;
       spf=pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::431 as permitted sender) smtp.mailfrom=etsai042@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x431.google.com with SMTP id i19so7497843pfd.0
        for <outreachy-kernel@googlegroups.com>; Tue, 05 Mar 2019 20:40:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=05Q8spaSddUw3pj1JAYjaL3LvzE8t9QOaQYJmxOEko4=;
        b=RNbMSDT0kP8TNmY4Dkp1qz+S8PdiTwRxFdinwImq4WKgyYm9TwRsIRHfbbmVCcozB0
         rvfw0MFIsWVFm7IJv48yBkH3l85y6LNDz599dC/i2a9dTiKk9D3ktuSiIBRPhQhNpEl6
         WxgQNuXMYrELVI13ltiF41AJdUAIfFWkTSZ0Vtd2UuRB4eP/oB0VIldp/WG9dpZHtavC
         vhR7F78/gwYBJpuB9tVA2OArTlZQFp9ybYGKTKeOlUP7001H66bMgrA76/2ftrxHn3xC
         AY7+N2jg+7IPiZiX1H9eD57jbMycZiBL9ntjhIvhzEpQe516tix5OJJncOAkx1Sthw4b
         Lb3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=05Q8spaSddUw3pj1JAYjaL3LvzE8t9QOaQYJmxOEko4=;
        b=FQ21fCDwR7tWahR8wOknCrStEjAchR8BHlw2WTJtv1JnpD7jr8sAze0MsQ9ayqyW/J
         3etjPoCAaEDxJUVFemeLzS5wQMgFU1e386BlFPZTS73DqvXy7iLh7X0/kmO0qfAFvGrY
         NLhFZXdvg5Di8hObaKTBEesaVgcDmART/4+mMtuPUo+6Y+7FAXAR75IjQwB+yEpwwWqL
         deDAIfU/wOqGMs9DRlH4BaQfYX2A4C+LnntC4zUoZXcoHUwQXfaNlJMkwYOBSpQXQjMB
         AmdL1HJIxFRrKi9XxSCyuA55Ii3zqHHxvOrtSI2tV1xBlgLPSdoBmAP2wsX+5dPQDQOP
         6zGA==
X-Gm-Message-State: APjAAAX9YNDgsJjFrxeqrrNy49wazbIb+G2u1JWMMaBaVe0p1C6nVms0
	UFMwfPWOXhA210FbRt7bVR07Nz1vZBmqUw==
X-Received: by 2002:a63:c310:: with SMTP id c16mr4403743pgd.233.1551847200701;
        Tue, 05 Mar 2019 20:40:00 -0800 (PST)
Return-Path: <etsai042@gmail.com>
Received: from debian ([2001:da8:d800:199:7e1:7347:f861:5837])
        by smtp.gmail.com with ESMTPSA id x1sm697248pge.73.2019.03.05.20.39.59
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 05 Mar 2019 20:40:00 -0800 (PST)
From: Wentao Cai <etsai042@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Wentao Cai <etsai042@gmail.com>
Subject: [PATCH 2/4] Staging: most: dim2: Fix malformed SPDX-License-Identifier
Date: Tue,  5 Mar 2019 20:39:39 -0800
Message-Id: <20190306043941.6141-2-etsai042@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190306043941.6141-1-etsai042@gmail.com>
References: <20190306043941.6141-1-etsai042@gmail.com>

This patch fixes the checkpatch.pl warning:
WARNING: Missing or malformed SPDX-License-Identifier tag in line 1

Signed-off-by: Wentao Cai <etsai042@gmail.com>
---
 drivers/staging/most/dim2/hal.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/most/dim2/hal.h b/drivers/staging/most/dim2/hal.h
index e04a5350f134..fca6c22de8a6 100644
--- a/drivers/staging/most/dim2/hal.h
+++ b/drivers/staging/most/dim2/hal.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * hal.h - DIM2 HAL interface
  * (MediaLB, Device Interface Macro IP, OS62420)
-- 
2.11.0


