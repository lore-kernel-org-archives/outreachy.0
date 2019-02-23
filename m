X-GM-THRID: 6661131246812266496
X-Received: by 2002:aca:bb45:: with SMTP id l66mr4928736oif.35.1550915475560;
        Sat, 23 Feb 2019 01:51:15 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:305:: with SMTP id 5ls4207155oid.6.gmail; Sat, 23 Feb
 2019 01:51:14 -0800 (PST)
X-Google-Smtp-Source: AHgI3Ibf639Dk5AIv7gVZzAVsqWEMpfCpYW5iUPbeH8ny1kxpTVUgEaz1+510LHVU4p4t30kmugb
X-Received: by 2002:aca:4812:: with SMTP id v18mr4709303oia.30.1550915474722;
        Sat, 23 Feb 2019 01:51:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550915474; cv=none;
        d=google.com; s=arc-20160816;
        b=zQx4/kPT6z9OT/Cjdf42iJRCQpu1KTESMvT3sVakWZ1nVaj+oyH50HrsyoPg8T7Fl3
         jp0ZJcc/hlhOH4EFlNR3ICwe53jTJN3dzGXTQv3AWs7hW3zsj2qdeYoyJ8AV03C9VqiT
         tEu4yQBBbE+QogfGvbdOkr5777KBzUA25zRiIsMfWcYXAKpIEjFfNAGtqhAIVWKgwWk/
         AMPqHZjY2E/4rucw+DMlrbId/shLO5i7b1vrLmI3eZRmQ2bWcQDTGX32DJcUC90R9i6i
         HkvKqx+aGRtSmrhAjdH0zyvK+zYVUgO+0EJvTlNHyMmB4wf1xPn6VN2LjU5RDoPFABKc
         yvRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=CnQcM6iucA5xqQmKcng1wSl59L8uSF+91lbQDYa4fyw=;
        b=hvc78vBa//AMbVhVHtV0Z+ocC26e/WLiRVvr5m6WBe2e2HryMQPyYRwQ9kAdKMKEAP
         VIlaF8Dpe6QBM7M+h8+xjD4Ae1PKgEa1h6es5HYYFf6dMoXg6VaHiyuwkUK/9F5ddKjh
         GLTLs2YUjZuh/whgi96HfeZdTkLjppLrdUlFuk+sp/D3iWJkxS4zdwtqSrW12dwX+WO7
         tE86uZNXtefNytHb1BHp0thx2GtY8bF0+vEcj+0rvRqIf3Ykls7dZp8jCUylAdSTnR4z
         5Gm4IqMtH/VJurEsx2HTheBsf/Ys7CkMGKVKHTdo39NLQujt/TWB/BH4oSllFRMzi8s5
         M4rg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Tfs7R/xH";
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <digholebhagyashri@gmail.com>
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id 135si197111oia.1.2019.02.23.01.51.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Feb 2019 01:51:14 -0800 (PST)
Received-SPF: pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Tfs7R/xH";
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x641.google.com with SMTP id r14so2203884pls.12
        for <outreachy-kernel@googlegroups.com>; Sat, 23 Feb 2019 01:51:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=CnQcM6iucA5xqQmKcng1wSl59L8uSF+91lbQDYa4fyw=;
        b=Tfs7R/xHJEavCyuQBa9z8taSKs8wIpcJT5v4+3sI7rgPwGgVyyMrLbXZYzS5RC1rTS
         6gCTKd1TYPBUPQCsG5qif79IrdnN0jse3JrfHHfCmmRw15pDPiWcJK8eKydoG7WsBCqh
         IRllQIkYki0OLugWTjL3qzoKv0txQvPuwy+JUrwBJNMJMrS1xAMekDD4QbXcYMbdUPp0
         TuwhSCTzWT21BP6c3l4/8A/x1NUcLGo9Ibj5CZEshtQktEpC5bzdsKRpZPhlgioMOkB2
         XZ3dSM/Q15L/LtBCSv7PGaXOAOAIUV5+09kA4qywzNEHVUxgR4AiTj/zIrqnmTTFPShX
         5erQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=CnQcM6iucA5xqQmKcng1wSl59L8uSF+91lbQDYa4fyw=;
        b=cVu1PZAfkmxN+SvgJzf6Si1RdoSesphrs0gNrWnOXcNRAK3uax7hZvTMdlZlH/kV/s
         zfmVle5npiwuZZYMaZADAjaMCwqTVZ2o3H52WlS9ntp4wGN3hp/zew4+FCeNKao2CMYb
         O700dS2Z5IKZdTOdc2bb1keK4nRl6EIdnFaoHJoVUxVikDny0HpyU9k30+adJVH3kwBC
         Kj5ejpKQxEQIusA4dnnXYUFX71OZyTfOxkC08jpnY1TTiKEIAn9FjsGVyAC9R8bzxtel
         aIoE6s1/AKbS4RpGo//UYvoDVPU0rSjtqQY3as1j9r1qW3+qjfwuwJBfgAHunusYcHRD
         uWJg==
X-Gm-Message-State: AHQUAua3f5FEtVo25g1H6KNG6KiqmYdSq0DInBGnmLO5CL23+ifXbROa
	eB7/RkEIz2JSP4OjKtSbd/v2ksV22Ds=
X-Received: by 2002:a17:902:a40d:: with SMTP id p13mr8414563plq.144.1550915473791;
        Sat, 23 Feb 2019 01:51:13 -0800 (PST)
Return-Path: <digholebhagyashri@gmail.com>
Received: from bhagyashri-Lenovo-G570 ([49.35.247.83])
        by smtp.gmail.com with ESMTPSA id 62sm4774937pgc.61.2019.02.23.01.51.12
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 23 Feb 2019 01:51:13 -0800 (PST)
Date: Sat, 23 Feb 2019 15:21:08 +0530
From: Bhagyashri Dighole <digholebhagyashri@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Outreachy <outreachy-kernel@googlegroups.com>
Subject: [PATCH 1/2] staging: netlogic: Add SPDX-License-Identifier tag at
 the top
Message-ID: <b1dceeedf83ff02d352c0323796b5050f7b2ec9a.1550915042.git.digholebhagyashri@gmail.com>
References: <cover.1550915042.git.digholebhagyashri@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1550915042.git.digholebhagyashri@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Adds the SPDX GPL-2.0 or BSD-2-clause license identifier,
which solves the checkpatch.pl warnings: "WARNING: Missing
or malformed SPDX-License-Identifier tag in line 1".

Signed-off-by: Bhagyashri Dighole <digholebhagyashri@gmail.com>
---
 drivers/staging/netlogic/platform_net.c | 1 +
 drivers/staging/netlogic/platform_net.h | 3 ++-
 drivers/staging/netlogic/xlr_net.c      | 1 +
 drivers/staging/netlogic/xlr_net.h      | 3 ++-
 4 files changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/netlogic/platform_net.c b/drivers/staging/netlogic/platform_net.c
index abf4c71..2637fb1 100644
--- a/drivers/staging/netlogic/platform_net.c
+++ b/drivers/staging/netlogic/platform_net.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
 /*
  * Copyright (c) 2003-2012 Broadcom Corporation
  * All Rights Reserved
diff --git a/drivers/staging/netlogic/platform_net.h b/drivers/staging/netlogic/platform_net.h
index e1b27f6..f7e7c8a 100644
--- a/drivers/staging/netlogic/platform_net.h
+++ b/drivers/staging/netlogic/platform_net.h
@@ -1,4 +1,5 @@
-/*
+/* SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+ *
  * Copyright (c) 2003-2012 Broadcom Corporation
  * All Rights Reserved
  *
diff --git a/drivers/staging/netlogic/xlr_net.c b/drivers/staging/netlogic/xlr_net.c
index 4e6611e..a4d6a73 100644
--- a/drivers/staging/netlogic/xlr_net.c
+++ b/drivers/staging/netlogic/xlr_net.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
 /*
  * Copyright (c) 2003-2012 Broadcom Corporation
  * All Rights Reserved
diff --git a/drivers/staging/netlogic/xlr_net.h b/drivers/staging/netlogic/xlr_net.h
index f76e16c..0a830ef 100644
--- a/drivers/staging/netlogic/xlr_net.h
+++ b/drivers/staging/netlogic/xlr_net.h
@@ -1,4 +1,5 @@
-/*
+/* SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+ *
  * Copyright (c) 2003-2012 Broadcom Corporation
  * All Rights Reserved
  *
-- 
2.7.4


