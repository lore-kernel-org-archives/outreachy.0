X-GM-THRID: 6615419425157808128
X-Received: by 2002:a5b:649:: with SMTP id o9-v6mr7929693ybq.20.1540323372494;
        Tue, 23 Oct 2018 12:36:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:f30c:: with SMTP id c12-v6ls1817639ybs.2.gmail; Tue, 23
 Oct 2018 12:36:11 -0700 (PDT)
X-Google-Smtp-Source: AJdET5cmk9WfOrYW+gGp4fF3EzTsM8CiY19nnaf85Ep0bcFqV6pBbfgJQERQGnCDzh4UaYa+kDwH
X-Received: by 2002:a25:7805:: with SMTP id t5-v6mr6000688ybc.41.1540323371686;
        Tue, 23 Oct 2018 12:36:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540323371; cv=none;
        d=google.com; s=arc-20160816;
        b=Xs6U1N0H5TYntCoqdA+z2N/dSQcucbimIiSW3BQziTJ3AddVXmgQd0pclILG7kf2In
         58XxjdtVsEcF0NIdwgUpn7FYDIFE0DBX5ed6agDvDd5a8qcc7wRMl095H535Orh6CWiG
         Yyfii/qy+0llJsjAkn6yI92MELKqOc4nwEi2j5dq+qF8zoSA3nteIYjEAOTsWX3jFb5J
         s8mabz9mQ5ehCNl0P2C2Yl9faIAFa2VDretG36DLsdOMKCt/QTMNs1E1bzAhj+bvUl0n
         qCc6CL+yiy7nF179Af3Ny9RXwhb2dnNsTFTemiQ9NepKczm6eaZTtj8fU9rCSG0Did3X
         QXlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=k7wRywZal5tZkfp4iNr5/9ES1DWPJg2BFOqZjtdFYkY=;
        b=BimVgvCGv+kULcbWCWaHRedLD4aEy4HSMkwvZVDjhX3MJdlFcCkD+B9hGbF4a/zOOW
         GgnZe1Oap7MZdAzz7+zOPzj09yNMj76U/L+LatWKN8xm/U45lATeO+Y7ru1PQY7f3DE4
         djBEVE4gH1zQQb5f31DYMLd3MrsWRKFRBaivftqIRdZn5i+DRE0YxrQQAlCEmOrTNGBW
         EQYZ4EB5B/+ICmAjPGjxXcd1X4HVCx2SxvnMbgiSyzOmHkhGSb2YXsnsQk+zAkFXg6aI
         dq4DukfwAifw4GlPo/BsPNLP4egqwqcnVstnq/KUpdLu5oEPLK+j8BOtsvS/+2VfA4kI
         sZAQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ie+RAQZ7;
       spf=pass (google.com: domain of turnerzdp@gmail.com designates 2607:f8b0:4864:20::136 as permitted sender) smtp.mailfrom=turnerzdp@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <turnerzdp@gmail.com>
Received: from mail-it1-x136.google.com (mail-it1-x136.google.com. [2607:f8b0:4864:20::136])
        by gmr-mx.google.com with ESMTPS id s132-v6si115647ywg.1.2018.10.23.12.36.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Oct 2018 12:36:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of turnerzdp@gmail.com designates 2607:f8b0:4864:20::136 as permitted sender) client-ip=2607:f8b0:4864:20::136;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ie+RAQZ7;
       spf=pass (google.com: domain of turnerzdp@gmail.com designates 2607:f8b0:4864:20::136 as permitted sender) smtp.mailfrom=turnerzdp@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-it1-x136.google.com with SMTP id c23-v6so3302044itd.5
        for <outreachy-kernel@googlegroups.com>; Tue, 23 Oct 2018 12:36:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=k7wRywZal5tZkfp4iNr5/9ES1DWPJg2BFOqZjtdFYkY=;
        b=Ie+RAQZ7bFmU1Gw17qtZirS+wHJViW9NBRI9J2BaH2IiUHRvDy8IpzFCqzcXcbfVrx
         f9BNjuFjQqlAw0G8x5jeeplr3AEMwYwQ7JqFLtVL9O8/Ug8Nray06GgUt7h3GaWnJh5Y
         Za/wl7IzXOp09JbXT+mWwJRQwSKViq3vLNqEZSP9a69MgNOu0Y7+oeHjDZONheKxqKqH
         dooEW/iWvcXk92zQXyB4iV1wJkMb/KDwlhohckAFX7zrsIKJIG20+J5zRFuAf/QPhYld
         pBsEsHyBW9AUBg2h+TJMbX37h7tzZ+Oj1NwZ6bo1AV0/VvRmEfsZRf9QPudLS21jyN9W
         qJnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=k7wRywZal5tZkfp4iNr5/9ES1DWPJg2BFOqZjtdFYkY=;
        b=haT/vMpmXH4xQGC0gGNXf5JTq0DFU9eva+Ss77OGdLNprBuUeYYmkBmNVH0mvUdntV
         ug846P09o/YXrD6JQWFJr2tUF7yqlWnEHmhIoIy3o0kRkgcB08WmNh1G/GOlC35wHgr5
         jF8R5I1o/Yhy5iGt1Q87pfZEBN8G7K4wRz2nI6MQ6xY29AcJiAZ2mGZHdB36ZDopQOG2
         Tlil3olAfINH8TOnhg3jtZfWSz1Kt0pN/P4lUm8NWgkf8HvfGV20LAzDcIlkq0j6nSK/
         l9zpFhSr8lUWPSoeJEYgMVUOM+PIEJBWxPHZBwvZxdBUlSDv0N4TeoiMCOBHpJpGJiCQ
         aUSQ==
X-Gm-Message-State: ABuFfoi9hVCwCmv0hLl5AlxoTe3RrJqldAkFRZez/KT/LVDYG6SFtxoc
	bEBaCjvH8GK9IOWkhHsAD8I=
X-Received: by 2002:a24:dd05:: with SMTP id t5-v6mr13948622itf.114.1540323371436;
        Tue, 23 Oct 2018 12:36:11 -0700 (PDT)
Return-Path: <turnerzdp@gmail.com>
Received: from venus ([2601:285:300:e6d0:b8aa:85e3:42c7:79a7])
        by smtp.gmail.com with ESMTPSA id s14-v6sm734307ioj.71.2018.10.23.12.36.10
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 23 Oct 2018 12:36:10 -0700 (PDT)
Date: Tue, 23 Oct 2018 13:36:09 -0600
From: Zach Turner <turnerzdp@gmail.com>
To: gregkh@linuxfoundation.org, hwentland@gmail.com,
	manasi.d.navare@intel.com, daniel.vetter@ffwll.ch,
	outreachy-kernel@googlegroups.com
Cc: jkmaline@cc.hut.fi
Subject: [PATCH v2] staging: rtl8192e: Add SPDX-License-Identifier - Style
Message-ID: <20181023193609.GA32288@venus>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Add SPDX-Licens-Identifier tag to the start of the file. This is
a coding style change which should not impact the runtime code execution.

Signed-off-by: Zach Turner <turnerzdp@gmail.com>
---
Changes in v2:
 - Remove the boilerplate license text
 - Fix SPDX identifier to be GPL-2.0

 drivers/staging/rtl8192e/rtllib_crypt_ccmp.c | 9 ++-------
 1 file changed, 2 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtllib_crypt_ccmp.c b/drivers/staging/rtl8192e/rtllib_crypt_ccmp.c
index bc45cf098b04..07980c0b8a14 100644
--- a/drivers/staging/rtl8192e/rtllib_crypt_ccmp.c
+++ b/drivers/staging/rtl8192e/rtllib_crypt_ccmp.c
@@ -1,12 +1,7 @@
-/*
- * Host AP crypt: host-based CCMP encryption implementation for Host AP driver
+// SPDX-License-Identifier: GPL-2.0
+/* Host AP crypt: host-based CCMP encryption implementation for Host AP driver
  *
  * Copyright (c) 2003-2004, Jouni Malinen <jkmaline@cc.hut.fi>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation. See README and COPYING for
- * more details.
  */
 
 #include <linux/module.h>
-- 
2.17.1


