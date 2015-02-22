X-GM-THRID: 2517133950976
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,25a6457a67aef068
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.66.157.129 with SMTP id wm1mr7806259pab.15.1424623284375;
        Sun, 22 Feb 2015 08:41:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.30.180 with SMTP id d49ls2092727qgd.97.gmail; Sun, 22 Feb
 2015 08:41:24 -0800 (PST)
X-Received: by 10.236.63.230 with SMTP id a66mr8166842yhd.51.1424623284190;
        Sun, 22 Feb 2015 08:41:24 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from mail-pd0-x232.google.com (mail-pd0-x232.google.com. [2607:f8b0:400e:c02::232])
        by gmr-mx.google.com with ESMTPS id bo1si3930304pbc.0.2015.02.22.08.41.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Feb 2015 08:41:24 -0800 (PST)
Received-SPF: pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c02::232 as permitted sender) client-ip=2607:f8b0:400e:c02::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c02::232 as permitted sender) smtp.mail=navyasri.tech@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x232.google.com with SMTP id fp1so19697994pdb.5
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Feb 2015 08:41:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=9FCg8RW22ehfWp/8naSk968Pv9j0r3elFbMuZK8KNfQ=;
        b=orNk91dw5TXGzdywNeoshleDGU0tmiJa4XBoGHtvQZXXvrCbpoIyJsuH4n9cvH3H8v
         XU57RZ8tpvy6Rpbn85/aPhj4hLcKvB/PGGJLftWosixlLjs2lPpf/zFygMnprUVsrfS6
         Kq0CfNJ5ykokS+ABQXKz2h8iLlDYQMLkFgssqDW5/JWa7KtOzCnJfEfI45qH0Sw6IFZU
         uWRMVVktD6SEhsvHdvj//nGG3q8CEWHyUpNhCLRd/DqIrDcLxkcCtXhVGnc/uh6gYrhb
         ivfeTAmTTRP6QU0WMQCdzmQ0FeKGX6QfM+YMv3zvj2i64410Uc19iD2BfD5OsDCnkkBN
         CrxA==
X-Received: by 10.68.138.194 with SMTP id qs2mr12796186pbb.8.1424623284085;
        Sun, 22 Feb 2015 08:41:24 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from nizamkari ([111.93.6.70])
        by mx.google.com with ESMTPSA id jd10sm32959005pbd.23.2015.02.22.08.41.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sun, 22 Feb 2015 08:41:23 -0800 (PST)
Date: Sun, 22 Feb 2015 22:12:25 +0530
From: Navya Sri Nizamkari <navyasri.tech@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 3/4] staging: rtl8192u: Replace asm header files with
 linux ones.
Message-ID: <71ee952c978879101ab9ef3d18e5eb5a3d8e9a95.1424622240.git.navyasri.tech@gmail.com>
References: <cover.1424622240.git.navyasri.tech@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1424622240.git.navyasri.tech@gmail.com>
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
index cd31598..bd1555d 100644
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


