X-GM-THRID: 2517133950976
X-Received: by 10.43.65.211 with SMTP id xn19mr11862151icb.0.1424685118294;
        Mon, 23 Feb 2015 01:51:58 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.84.116 with SMTP id k107ls2100962qgd.91.gmail; Mon, 23 Feb
 2015 01:51:58 -0800 (PST)
X-Received: by 10.236.42.228 with SMTP id j64mr11121038yhb.36.1424685118132;
        Mon, 23 Feb 2015 01:51:58 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from mail-pd0-x235.google.com (mail-pd0-x235.google.com. [2607:f8b0:400e:c02::235])
        by gmr-mx.google.com with ESMTPS id ks4si4141982pbc.1.2015.02.23.01.51.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 01:51:58 -0800 (PST)
Received-SPF: pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c02::235 as permitted sender) client-ip=2607:f8b0:400e:c02::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c02::235 as permitted sender) smtp.mail=navyasri.tech@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pdbfl12 with SMTP id fl12so24261746pdb.2
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Feb 2015 01:51:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=H4hYaro3n54pdG73v4dm0sAg+fCvH/Z3Dsv0vpSr3RI=;
        b=tWgwIne4/p4hxnNg32nQ4LqhKrD/qhpeBJX0ptGr+QzMYMWxbtWRvGCGsZhPbY+YrX
         4ILDVbE2bMquyQe54TwCq86sLwlF/Qu0CH1IEcA6ScMNxsl0fOzPk1fQQhprcnfcpUn7
         lsQQFm0rm3BoKsPzaBD8G/UZyOB+Ohuln/Qaltmnx7El81PSRb/dSj+uwQP9UQRmba+2
         dX8OtFTU8JNw1SDiEbkq9mN7vrDU0cnvFl6cPjV25oPCdi98X0xykN4WhaYZ5QhpRGZc
         yfi5+r8aqjJ8SMnVf/42OX1k0s0hGWSEx+OZ7vFgSGePUkN/dF6hG4t0sXSmCPQWC8rM
         /OIA==
X-Received: by 10.70.91.49 with SMTP id cb17mr17872560pdb.35.1424685118016;
        Mon, 23 Feb 2015 01:51:58 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from nizamkari ([111.93.6.70])
        by mx.google.com with ESMTPSA id or4sm35060958pdb.66.2015.02.23.01.51.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Mon, 23 Feb 2015 01:51:57 -0800 (PST)
Date: Mon, 23 Feb 2015 15:23:00 +0530
From: Navya Sri Nizamkari <navyasri.tech@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 3/4] staging: rtl8192u: Replace asm header files with
 linux ones.
Message-ID: <f0126198da2ce88e02d6b5243aedc58c42df456b.1424683660.git.navyasri.tech@gmail.com>
References: <cover.1424683659.git.navyasri.tech@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1424683659.git.navyasri.tech@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

As asm header files are included in linux header files, this patch
uses <linux/string.h> instead of <asm/string.h> and <linux/errno.h>
instead of <asm/errno.h> to fix checkpatch.pl errors:

ERROR: Use #include <linux/string.h> instead of <asm/string.h>
ERROR: Use #include <linux/errno.h> instead of <asm/errno.h>

Signed-off-by: Navya Sri Nizamkari <navyasri.tech@gmail.com>
---
Changes in v3:
   -None.
   
 drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
index bcb2479..0aed175 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
@@ -15,8 +15,8 @@
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


