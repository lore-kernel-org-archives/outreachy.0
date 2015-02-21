X-GM-THRID: 1969702830080
X-Received: by 10.236.28.102 with SMTP id f66mr3535179yha.31.1424540850299;
        Sat, 21 Feb 2015 09:47:30 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.93.165 with SMTP id d34ls1731646qge.61.gmail; Sat, 21 Feb
 2015 09:47:30 -0800 (PST)
X-Received: by 10.236.24.228 with SMTP id x64mr3613223yhx.26.1424540850132;
        Sat, 21 Feb 2015 09:47:30 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from mail-pd0-x22c.google.com (mail-pd0-x22c.google.com. [2607:f8b0:400e:c02::22c])
        by gmr-mx.google.com with ESMTPS id nt14si1914137pab.2.2015.02.21.09.47.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Feb 2015 09:47:30 -0800 (PST)
Received-SPF: pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c02::22c as permitted sender) client-ip=2607:f8b0:400e:c02::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c02::22c as permitted sender) smtp.mail=navyasri.tech@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x22c.google.com with SMTP id fl12so15103264pdb.2
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Feb 2015 09:47:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=9aHUWvDn3fh+zc7maNXjCrYUy9EJCf2yePF1a6yhPXA=;
        b=zIqiRFczVhoG60iRuciAdOiPCJaw/55QkSGE9+KVmPljEaUlB6rzGCeCVNgf4JEzz1
         ZDSWAQWPboYTBXAGDaEndBwaOW34HEM62ftRnYJUktoX1CkOXRuZ7fW23f9/Nop+IOLK
         swyC2+5HsYX6wYnNEDdztW2TQJ169f59Rz3E0wy6y90slKZnZPyMUJ/eWxpVSq9B0YnW
         Jwt7wGDwDPop0zlqHY0BMuoua3XGJKPmdhUuIkZtD10OHsZQ0i2R/FPEyBJHddnaFmSi
         TyKtNpxNynpI+3EqWvJAkA7tjyjP2qWqpSGUfZTp+1qEOSlYhFhVIMTLwQOfQCFi8/54
         Wofg==
X-Received: by 10.66.248.200 with SMTP id yo8mr5794742pac.96.1424540850029;
        Sat, 21 Feb 2015 09:47:30 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from nizamkari ([61.16.142.166])
        by mx.google.com with ESMTPSA id t14sm6526920pbs.67.2015.02.21.09.47.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sat, 21 Feb 2015 09:47:29 -0800 (PST)
Date: Sat, 21 Feb 2015 23:18:28 +0530
From: Navya Sri Nizamkari <navyasri.tech@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 3/4] staging: rtl8192u: Replace asm header files with linux
 ones.
Message-ID: <d4e9b7475d413c0fcdc8ffe713c724753b9f2bf8.1424538520.git.navyasri.tech@gmail.com>
References: <cover.1424538520.git.navyasri.tech@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1424538520.git.navyasri.tech@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

As asm header files are included in linux header files, this patch
uses <linux/string.h> instead of <asm/string.h> and <linux/errno.h>
instead of <asm/errno.h> to fix checkpatch.pl errors:

ERROR: Use #include <linux/string.h> instead of <asm/string.h>
ERROR: Use #include <linux/errno.h> instead of <asm/errno.h>

Signed-off-by: Navya Sri Nizamkari <navyasri.tech@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
index 8c29c58..553e421 100644
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


