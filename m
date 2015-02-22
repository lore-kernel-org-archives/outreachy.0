X-GM-THRID: 2595026370560
X-Received: by 10.182.47.228 with SMTP id g4mr9337793obn.5.1424641283998;
        Sun, 22 Feb 2015 13:41:23 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.170.81 with SMTP id t78ls1357854ioe.21.gmail; Sun, 22 Feb
 2015 13:41:23 -0800 (PST)
X-Received: by 10.43.78.198 with SMTP id zn6mr9385831icb.12.1424641283849;
        Sun, 22 Feb 2015 13:41:23 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from mail-pd0-x22d.google.com (mail-pd0-x22d.google.com. [2607:f8b0:400e:c02::22d])
        by gmr-mx.google.com with ESMTPS id ki8si3981324pdb.1.2015.02.22.13.41.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Feb 2015 13:41:23 -0800 (PST)
Received-SPF: pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c02::22d as permitted sender) client-ip=2607:f8b0:400e:c02::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c02::22d as permitted sender) smtp.mail=navyasri.tech@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pdno5 with SMTP id o5so20735179pdn.8
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Feb 2015 13:41:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=e6kF4e0iDfNcKKBA926UKDJ7ukUe1aEwc2zmBSI5BI8=;
        b=P9PImNqx0Rx4qPC6/uOwQ3BsDhyxkRXVhuuXZHQLbVUW6mxtP/MFMaSaMFsgt1U+du
         f0UjOmN2yVtIMFkRbktYSTZ4bb5qluddSfd3i1zYFuFmamaoepbd9/DlRxFQU4zZkOtV
         lMJXpO9fKWLsGz4uEYUxL3TANbW0/mzCbEsjhTW/G6jeAG/Pby3HwXsJ58BDtLAVjuPt
         1rCJ1I+l6pySEKnW/pMAcYnbY2T+ui6V74LZ3cB+OPNE079ZHc5hJSIbBhzuCLlWQXK0
         eAvElqeOFyQAYgK9BK5h/Sxbq3EBmsWRTs/GbB47yi1IcUCoSroE8ON56j6guHzyaiHP
         AXoQ==
X-Received: by 10.70.128.15 with SMTP id nk15mr13613849pdb.121.1424641283635;
        Sun, 22 Feb 2015 13:41:23 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from nizamkari ([61.16.142.166])
        by mx.google.com with ESMTPSA id mm9sm33310592pbc.76.2015.02.22.13.41.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sun, 22 Feb 2015 13:41:23 -0800 (PST)
Date: Mon, 23 Feb 2015 03:12:25 +0530
From: Navya Sri Nizamkari <navyasri.tech@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 4/6] staging: rtl8192u: Remove commented header.
Message-ID: <c0bd295e07222829c85d81e86a80c7016f2e32e5.1424640704.git.navyasri.tech@gmail.com>
References: <cover.1424640704.git.navyasri.tech@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1424640704.git.navyasri.tech@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch removes the commented header <linux/config.h>
as it is not used in modern linux systems.

Signed-off-by: Navya Sri Nizamkari <navyasri.tech@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211_module.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_module.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_module.c
index afbd09d..e58fb28 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_module.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_module.c
@@ -31,7 +31,6 @@
 *******************************************************************************/
 
 #include <linux/compiler.h>
-//#include <linux/config.h>
 #include <linux/errno.h>
 #include <linux/if_arp.h>
 #include <linux/in6.h>
-- 
1.9.1


