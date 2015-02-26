X-GM-THRID: 3565286326272
X-Received: by 10.140.235.83 with SMTP id g80mr6852410qhc.5.1424935227895;
        Wed, 25 Feb 2015 23:20:27 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.95.227 with SMTP id i90ls3478521qge.59.gmail; Wed, 25 Feb
 2015 23:20:27 -0800 (PST)
X-Received: by 10.236.41.73 with SMTP id g49mr7542439yhb.57.1424935227755;
        Wed, 25 Feb 2015 23:20:27 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from mail-pd0-x22e.google.com (mail-pd0-x22e.google.com. [2607:f8b0:400e:c02::22e])
        by gmr-mx.google.com with ESMTPS id bo1si5447pbc.0.2015.02.25.23.20.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Feb 2015 23:20:27 -0800 (PST)
Received-SPF: pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c02::22e as permitted sender) client-ip=2607:f8b0:400e:c02::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c02::22e as permitted sender) smtp.mail=navyasri.tech@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x22e.google.com with SMTP id fp1so11005081pdb.5
        for <outreachy-kernel@googlegroups.com>; Wed, 25 Feb 2015 23:20:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=0W0PvyNHVRRTcBDiUvQSFSs6E+Y36EMat2ggEEJt00M=;
        b=veSOe4eUfPaMf1LMPSoxRdE553RI9bAG66qAwo+Rvea0oyPsR52XFUeS8adte0ylmf
         H4+vTeaWAQpGJHkZzIt4hS2PyxVLBGG2nBYQzjzMEFdUuIO6On3ScUkY8WzdiDe4eh3I
         pT3/N9NlQjTnxgRRYGl8Fa2KG+UEdd2re4+OtAO0oFW9DdOZ+eK60EDLVB1xc8wbcAXd
         Z3YYfsqhf1VTYRt1pp894fT5Wur1q3ccVKr2beX4kupqNqbNEECBQbB75I2cNeWP0IF3
         r3hIUrDxF0Z9hu7uPCov6TRkw7RWSGnLGhnMb7NM2mBlQwKUCdO/BXS7x2oSmc8+2Iik
         s5nA==
X-Received: by 10.70.43.203 with SMTP id y11mr12305743pdl.143.1424935227644;
        Wed, 25 Feb 2015 23:20:27 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from nizamkari ([61.16.142.166])
        by mx.google.com with ESMTPSA id br14sm15837361pdb.38.2015.02.25.23.20.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 25 Feb 2015 23:20:27 -0800 (PST)
Date: Thu, 26 Feb 2015 12:51:35 +0530
From: Navya Sri Nizamkari <navyasri.tech@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v4 3/4] staging: rtl8192u: Replace asm header files with
 linux ones.
Message-ID: <971ee523e3e083c3fd381fc96c8621c3ae3528dd.1424934230.git.navyasri.tech@gmail.com>
References: <cover.1424934230.git.navyasri.tech@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1424934230.git.navyasri.tech@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

As asm header files are included in linux header files, this patch
uses <linux/string.h> instead of <asm/string.h> and <linux/errno.h>
instead of <asm/errno.h> to fix checkpatch.pl errors:

ERROR: Use #include <linux/string.h> instead of <asm/string.h>
ERROR: Use #include <linux/errno.h> instead of <asm/errno.h>

Signed-off-by: Navya Sri Nizamkari <navyasri.tech@gmail.com>
---
Changes in v4:
     -None.

Changes in v3:
     -None.

Changes in v2:
     -None.

 drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
index 971fbe6..6d1c030 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
@@ -14,8 +14,8 @@
 #include <linux/module.h>
 #include <linux/init.h>
 #include <linux/slab.h>
-#include <asm/string.h>
-#include <asm/errno.h>
+#include <linux/string.h>
+#include <linux/errno.h>
 
 #include "ieee80211.h"
 
-- 
1.9.1


