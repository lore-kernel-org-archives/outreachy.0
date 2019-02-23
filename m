X-GM-THRID: 6661078107431108608
X-Received: by 2002:a1f:fcc5:: with SMTP id a188mr1428541vki.12.1550903103040;
        Fri, 22 Feb 2019 22:25:03 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1f:4247:: with SMTP id p68ls1568671vka.3.gmail; Fri, 22 Feb
 2019 22:25:02 -0800 (PST)
X-Google-Smtp-Source: AHgI3IbOV2e2eWIHu8RbzB0GetW5OOQ8YDCnhsdmvKCP90/OL5xw3E5JRKh1T3IzOvsXJtmVlTFq
X-Received: by 2002:a1f:34d2:: with SMTP id b201mr1426175vka.24.1550903102341;
        Fri, 22 Feb 2019 22:25:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550903102; cv=none;
        d=google.com; s=arc-20160816;
        b=GO/im09HtAUzy44s6SCE9j6naQZ+d21inx0vE95/hJ1a1UBx0oOw7/yadyU11nHo/w
         ZgQQNqpq3IN9L4POGsVlPDaZDOlg+1QwWqKPItrbAvosTKtzaG6Pnw79p9uCPssZKFbj
         17lCm3tAE30y1u+mKmD6bRXSrsohAKe0eHzde/Y4+sZqMrTXZKUJSE1Sc1Jpg2ie/ZiJ
         whX+dMgY0IFFV7+1+bBM/tO8Y19wcXjXRjUGO8EEWYc7ToUa8NudBpUleeAopL+ETJv2
         9GutA0ytUuyMXFTorQq4exT/E9MBDssP4b/1RtRV3q3Mls9c1FHLoPnI6NghRuzMO+Jb
         +B6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=GR2wQC8qD16jYvH+5+VJtBYXjQFfWapYvJ6SIkGEXe4=;
        b=pjyn0m06Pz8nJosUJQxAcLMRefW3YKxv+hVPZS1RYZFFroFdcN9g8qj578rhBb6zXJ
         dcWszLvVtq8HxjaXUk/KEbfMRlJTSvf4qeqyXaMxnBhH29wM/sNNoWC63cqZclBYS10A
         P9QcvjyOOknBnVO8av12hfWSRxMQvc2yI/a+N9qQnJftqIYcv4Yd1sQd+I+kGKjNf9WM
         1MUzx704OWMmmKNY1bYce2c63NjX3gzNp/hGLKcZh31UKrAwwY5G6RjZ8fo9uc68eExs
         68+ELhSRScgQf5F3o3gCfDhMlCySq9paDLHo/UrjQYqL4wv15KhzEtKgwS3gCdT1caXv
         skMQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VdADQ7ws;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <digholebhagyashri@gmail.com>
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id v187si122708vkd.5.2019.02.22.22.25.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Feb 2019 22:25:02 -0800 (PST)
Received-SPF: pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VdADQ7ws;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x444.google.com with SMTP id d25so2082061pfn.8
        for <outreachy-kernel@googlegroups.com>; Fri, 22 Feb 2019 22:25:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=GR2wQC8qD16jYvH+5+VJtBYXjQFfWapYvJ6SIkGEXe4=;
        b=VdADQ7ws0y7O4GzfjejDMFgc7WqKXbvhE87I/VJEvomWbPdvbuVUZqqF/GwlG2wy9n
         01t2/YWnLOG081ojHqmIQAjxSnkRau2ICRrvfhmO88XgyAtNiacTlFkiF57Ta3QN2Xka
         ixOePRT8TYsYhg9knCSmQVHMcARah15ObVk95vDUSMGk4Vqsof0j+bEUtqGxg9Mzb69D
         ATKhX4vqM+0PomkZatFYWPCEFRwSehBzaKTuS9pJqC5Ecjz+3M9iomU1lqqLPaZVzVgb
         XlXZNPMys6TcFr26M+87Lo+IW12ymiluMRZNnnqNqR2EvUGjFaJ/vVVKjvb68FCA1AqI
         t56g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=GR2wQC8qD16jYvH+5+VJtBYXjQFfWapYvJ6SIkGEXe4=;
        b=nZyC1F9vuAPxV75Rb6buIcfRLu0DAg9UOoLcdne+l0FsL9PglLU55NYLq/voelK/80
         7QL6faLlSOPaf2mRpNW4dc4VC9Wjs28Q/Yx/TVj9EaIC8Px1j8GFxMFTKo3UVzFn6gp9
         y9XY0HSQBn5htuIkxwRQU2DY0hsOSOBKTGo27dZ4MTJOi/MPqXyLAU5r4bzmUvrJEL7g
         eaF5sQpVYI77/jM9Vh3q4tcZhnNpJUyaE42cZ24k1COYNa/n/seVxRZaQ26KUwotVoqO
         RaybiIr/3w/BRtk/u4JdcsgwtpZff/EWrXIBSCg6xVj62JKiuwGJe/fkqtLA/aP1yBy6
         ftYA==
X-Gm-Message-State: AHQUAuaY4mFYovMMMzASiRMuxKRJAe8RULfdbMVM+iFhkI0Mnq6Yjx6H
	U/QzQUvfiIUeGsYxJWbdQO1PyixsVPo=
X-Received: by 2002:a63:c310:: with SMTP id c16mr7314393pgd.233.1550903101171;
        Fri, 22 Feb 2019 22:25:01 -0800 (PST)
Return-Path: <digholebhagyashri@gmail.com>
Received: from bhagyashri-Lenovo-G570 ([49.35.247.83])
        by smtp.gmail.com with ESMTPSA id a20sm8145300pfj.5.2019.02.22.22.24.59
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 22 Feb 2019 22:25:00 -0800 (PST)
Date: Sat, 23 Feb 2019 11:54:55 +0530
From: Bhagyashri Dighole <digholebhagyashri@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Outreachy <outreachy-kernel@googlegroups.com>
Subject: [PATCH] staging: netlogic: Add SPDX-License-Identifier tag
Message-ID: <20190223062455.GA11432@bhagyashri-Lenovo-G570>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Adds the SPDX GPL-2.0 or BSD-2-clause license identifier, which solves the
checkpatch.pl warning:
"WARNING: Missing or malformed SPDX-License-Identifier tag in line 1".

Signed-off-by: Bhagyashri Dighole <digholebhagyashri@gmail.com>
---
 drivers/staging/netlogic/platform_net.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/netlogic/platform_net.c b/drivers/staging/netlogic/platform_net.c
index abf4c71..2637fb1 100644
--- a/drivers/staging/netlogic/platform_net.c
+++ b/drivers/staging/netlogic/platform_net.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
 /*
  * Copyright (c) 2003-2012 Broadcom Corporation
  * All Rights Reserved
-- 
2.7.4


