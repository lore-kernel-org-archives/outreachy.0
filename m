X-GM-THRID: 6660411535314124800
X-Received: by 2002:a05:620a:1525:: with SMTP id n5mr3251555qkk.33.1550748948381;
        Thu, 21 Feb 2019 03:35:48 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:7f86:: with SMTP id a128ls973688qkd.6.gmail; Thu, 21 Feb
 2019 03:35:47 -0800 (PST)
X-Google-Smtp-Source: AHgI3IYNMOH0Lmiy88/n3bxrzNnZQnGvacXS0WvWvG1WTMeb5RHEblsmp7rv+RfaRMBXJgvMVc9z
X-Received: by 2002:a37:d150:: with SMTP id s77mr22341062qki.35.1550748947701;
        Thu, 21 Feb 2019 03:35:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550748947; cv=none;
        d=google.com; s=arc-20160816;
        b=VEPILyfaTas5XLP3jwJMl2CqrAj9n760K2IqjOpGMTk5Lky0e48oXrb9ahFrgmbEQ3
         xiNqs/e5kXBFR9xI6zQtPYiV7lN4FWX4WALKCZgHWxi+ACSQPahMyLBfI66pxr7Ag3nE
         OGTjWO8bzS4GEP6cZzggTUb0T2+6xKzm+Vig9VWGz9QtsNW0PRA5EDwO7/dM6US+UNsA
         34z+kBj/zG+oulQlW0oWpGyes+nRLlhoL5MQ3qSoVvSNYrjKg7U2hd5Crx4AB6v4WW4l
         tkwKgitkcCE1km60YRPZrabrLD167MmYiLJW34jAKUYIRnPawbyJ/HI5khv23V1ubPCU
         /w9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=7FbWL2hFpfGLi3FqQLm/8XLh+8Fp6GfdlqvVzJyvCXg=;
        b=PnHq6HioVdlcTTBGmrg5rpF/hhGWXxJCJQQbUwnd43aEreBPxqXNiiQ7V6Icpu5T/g
         FrEUtZMn+qucsBnDaZwBQe5op2iTxPKIs3DDKntdbc3HdCo5mZsQJIx+IDaPaOC/6azr
         RL4SeZcV4Jqx94epQmF7np48glhmOQbU2p+SwwIPKsW0p+oLN6noGIBHkRe5fFNyFiRE
         TtO2LMJeHoyJ+fMfYo0XtTQOTrVqXEaJG2CFPRLLIyM/XwYNZ5STYG8AGp7LgkUWUZ0f
         5uG0IhhgxroFXCx1d7xp27F39LCKguRfAL120QRZmXvEsWi5oJYYbp2uQKQj9YuQ79tv
         Nudw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BKmFM8y0;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::429 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pf1-x429.google.com (mail-pf1-x429.google.com. [2607:f8b0:4864:20::429])
        by gmr-mx.google.com with ESMTPS id t79si1209806qke.0.2019.02.21.03.35.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Feb 2019 03:35:47 -0800 (PST)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::429 as permitted sender) client-ip=2607:f8b0:4864:20::429;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BKmFM8y0;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::429 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x429.google.com with SMTP id a3so3807351pff.11
        for <outreachy-kernel@googlegroups.com>; Thu, 21 Feb 2019 03:35:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=7FbWL2hFpfGLi3FqQLm/8XLh+8Fp6GfdlqvVzJyvCXg=;
        b=BKmFM8y0yLREKi4dXLKr1C21hxpgIQjcdIPaEmI8ofJ0Xm/PY2rtNcHdzTwCckOG3z
         MA35m5N1Eg2gZYbB+lUoFFmC3pzPvo9T3CMGj9Dfnf0LDtEcy3EgpPA6JLVc5g0Sir8H
         /+iQevL5LwNSq0JT8GuQjczwgBvDtDtNT6pmc9hSprJmHevqqsj/qXtyeOsydnk81mLX
         vsm4ZtrQjoyy2vqzIrI73KAGHJ7cGFIyNZvsUSU8CyNgHhznjav9RYV5E0Ga4aNXTbQj
         itilItybWeSASfaDVvllmp2fnKYLuz7JVCCJkJF/wGqUdsHHXncoT6x7lJ3VJvycjkVp
         aUzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=7FbWL2hFpfGLi3FqQLm/8XLh+8Fp6GfdlqvVzJyvCXg=;
        b=oWCtDkAmHuwsPKuK1oaUMiloE1hIn0v5qQe1I6feWeyQhWJcGhtwc6HNQdM9Bn6Dku
         IeRZQwUMhpirwvxFYOXybjQvmGWofu5xQEkIkA5cIwGUGfW3RP7WfJeQDvJlmGTt8O4n
         5bE98Es1tmSJ7kxdpZ22edCjs4oqgFa7eZiTCptqwpUGCgikPobc8J2ICYyUFi65hbMd
         CbxbHGeHPWESWgoPmMSQ2118VTLwYZptJh47AUCuX+y9xevX1mtlhikZcFRRh7FT9Y7D
         W7G28a/rSh8rNVkp5Hlf6DqyfXul89aEuJYdrHywLCJW2LiMfrIwcOG+EC9kTBFx7VZT
         X7EQ==
X-Gm-Message-State: AHQUAuZgEOgrNgLZYxZZJDN70ELbcXvw2Jnazi9laV4cGx2hOrfIvYlh
	+WyD6HwuCwLm+LIoRxJZcpIFuGDRPlM=
X-Received: by 2002:a65:624c:: with SMTP id q12mr34103957pgv.379.1550748947326;
        Thu, 21 Feb 2019 03:35:47 -0800 (PST)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from bhanusree-MacBookAir ([183.83.84.116])
        by smtp.gmail.com with ESMTPSA id q62sm21042297pfi.183.2019.02.21.03.35.46
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 21 Feb 2019 03:35:46 -0800 (PST)
Date: Thu, 21 Feb 2019 17:05:44 +0530
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] Staging: netlogic: Add SPDX License Identifier
Message-ID: <20190221113544.GA29315@bhanusree-MacBookAir>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

adds the SPDX GPL-2.0 license identifier in various files
Issue found with checkpatch.pl warning:
"WARNING: Missing or malformed SPDX-License-Identifier tag in line 1"

Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
---
 drivers/staging/netlogic/platform_net.c | 1 +
 drivers/staging/netlogic/platform_net.h | 1 +
 drivers/staging/netlogic/xlr_net.c      | 1 +
 drivers/staging/netlogic/xlr_net.h      | 1 +
 4 files changed, 4 insertions(+)

diff --git a/drivers/staging/netlogic/platform_net.c b/drivers/staging/netlogic/platform_net.c
index abf4c71ee66b..3886c99c1f68 100644
--- a/drivers/staging/netlogic/platform_net.c
+++ b/drivers/staging/netlogic/platform_net.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright (c) 2003-2012 Broadcom Corporation
  * All Rights Reserved
diff --git a/drivers/staging/netlogic/platform_net.h b/drivers/staging/netlogic/platform_net.h
index e1b27f649590..1d994f0d0995 100644
--- a/drivers/staging/netlogic/platform_net.h
+++ b/drivers/staging/netlogic/platform_net.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright (c) 2003-2012 Broadcom Corporation
  * All Rights Reserved
diff --git a/drivers/staging/netlogic/xlr_net.c b/drivers/staging/netlogic/xlr_net.c
index 4e6611e4c59b..fb8146cf3c1f 100644
--- a/drivers/staging/netlogic/xlr_net.c
+++ b/drivers/staging/netlogic/xlr_net.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright (c) 2003-2012 Broadcom Corporation
  * All Rights Reserved
diff --git a/drivers/staging/netlogic/xlr_net.h b/drivers/staging/netlogic/xlr_net.h
index f76e16cfd15d..de51d64c1f23 100644
--- a/drivers/staging/netlogic/xlr_net.h
+++ b/drivers/staging/netlogic/xlr_net.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright (c) 2003-2012 Broadcom Corporation
  * All Rights Reserved
-- 
2.17.1


