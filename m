X-GM-THRID: 6249509204772519936
X-Received: by 10.31.165.1 with SMTP id o1mr35850807vke.12.1455077250974;
        Tue, 09 Feb 2016 20:07:30 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.87.4 with SMTP id t4ls83719obz.56.gmail; Tue, 09 Feb 2016
 20:07:29 -0800 (PST)
X-Received: by 10.182.247.97 with SMTP id yd1mr36433694obc.9.1455077249463;
        Tue, 09 Feb 2016 20:07:29 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-qg0-x230.google.com (mail-qg0-x230.google.com. [2607:f8b0:400d:c04::230])
        by gmr-mx.google.com with ESMTPS id g136si92594ywb.5.2016.02.09.20.07.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 20:07:29 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c04::230 as permitted sender) client-ip=2607:f8b0:400d:c04::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c04::230 as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x230.google.com with SMTP id y9so5921745qgd.3
        for <outreachy-kernel@googlegroups.com>; Tue, 09 Feb 2016 20:07:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=kiB+XfMDYEFe+/KsAl1TQXflk+8QfS/4ul0tgTfbaOg=;
        b=qCemn49Wi5JgDhf5de+y7N9GZM7IXFtST7Aszy1Ub2igmZpI1AI/b67OOK7txZMFP0
         SdTL2ew8sKa9IrajdohZxSMJFQtYY3CjK7pjWMV2xF1lsznogDrZXkhnEdc08omheN5Y
         ptYjH3F1cm8wgARCafguZnBf0TrvvY/4ez3/dzNFa2SVzOI9yLHwoturaVgaLFHddXty
         jBGqJMTode1TPBqzjkcwsgZVaUPp9xnqxFZ+NfudIqe2M3nxlPc9fUJz0VHlSr6kVHxZ
         hSp3TdKcWB6B3HYgGm4/631ZG6u5WpmT79VK3I3Rhqo7TCWtive4XtQZQi6ODxJAU7RS
         64nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=kiB+XfMDYEFe+/KsAl1TQXflk+8QfS/4ul0tgTfbaOg=;
        b=nFKXH3I/U2mo81jb8Gg3ZfRxSVco0Yvn2a42okxssaRZPjMTaYlNWQwHGEFRlILexp
         XN9HZelTt7kkuz016oFFztW9i6hEdVkZv/vYsQX3kbBTAFsNah2AY2ROnSBVoj3uo8r+
         vxCmIg6fJ/MqnEVV/C01ECDGukw4eefhWUDYFp8+4JAyOzPGLuQgPWCglUnrYApFFVX2
         XQa2Yln3TF6AtHIZtQz8OtzV++CWjkhzCS7t2iWaccNidjmGaRYVa52r3bnpp0klIUVM
         ctDQdutZ0ZC7skfUJpM1L56jy/b7t+QasbLp7Y9cS+u/stxD6DzeVHsQLNFJjun2safs
         H3gg==
X-Gm-Message-State: AG10YOQgLY/Xwd6aqCk008+Dhbvyob4+L9KsjhyplBl4/VaNwHkyZuUZwXi5Hxn6/06/kw==
X-Received: by 10.140.130.85 with SMTP id 82mr48511975qhc.15.1455077249326;
        Tue, 09 Feb 2016 20:07:29 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id t103sm541589qgd.37.2016.02.09.20.07.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 20:07:28 -0800 (PST)
Date: Wed, 10 Feb 2016 04:06:50 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: slicoss: Align #define constants
Message-ID: <20160210090650.GA3575@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Aligning the constants in the macros improves code readability.

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
 drivers/staging/slicoss/slicoss.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/slicoss/slicoss.c b/drivers/staging/slicoss/slicoss.c
index c490b71..a91c60a 100644
--- a/drivers/staging/slicoss/slicoss.c
+++ b/drivers/staging/slicoss/slicoss.c
@@ -58,9 +58,9 @@
 #define DEBUG_MICROCODE                 1
 #define DBG                             1
 #define SLIC_INTERRUPT_PROCESS_LIMIT	1
-#define SLIC_OFFLOAD_IP_CHECKSUM		1
-#define STATS_TIMER_INTERVAL			2
-#define PING_TIMER_INTERVAL			    1
+#define SLIC_OFFLOAD_IP_CHECKSUM	1
+#define STATS_TIMER_INTERVAL		2
+#define PING_TIMER_INTERVAL		1
 #define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
 
 #include <linux/kernel.h>
-- 
2.5.0


