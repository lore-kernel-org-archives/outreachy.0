X-GM-THRID: 2595026370560
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,fc53a3572afbdb6f
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.236.229.233 with SMTP id h99mr8879905yhq.42.1424641232995;
        Sun, 22 Feb 2015 13:40:32 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.46.41 with SMTP id i41ls1244221ioo.65.gmail; Sun, 22 Feb
 2015 13:40:32 -0800 (PST)
X-Received: by 10.43.6.5 with SMTP id oi5mr9542462icb.11.1424641232827;
        Sun, 22 Feb 2015 13:40:32 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from mail-pd0-x230.google.com (mail-pd0-x230.google.com. [2607:f8b0:400e:c02::230])
        by gmr-mx.google.com with ESMTPS id bo1si3980954pbc.0.2015.02.22.13.40.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Feb 2015 13:40:32 -0800 (PST)
Received-SPF: pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c02::230 as permitted sender) client-ip=2607:f8b0:400e:c02::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c02::230 as permitted sender) smtp.mail=navyasri.tech@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x230.google.com with SMTP id fl12so20747219pdb.4
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Feb 2015 13:40:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=m0aG+V1fzcu3G2bjd7pQ3x0B7g8SYcbLolkfVBCD3AA=;
        b=LtEquk4oNVKEFm3YKSUmFj03x8CEafcAnYvzkmoQY5njqDp6ZcCvO2WfBP0VA88C6Q
         urGZe847+iCj6G4wT6vImfHKO5/FYy5gW8IzYLQsNbYHGHpoVdy2JDABIO1yykEr1sCn
         JW4WmwElaQkGa9mUApfLrTfmN4JJ/dXXy++p+cHOdnyuZw+Gl8MlPR+Na1U7r7UuYtdy
         Ekxnf3qYq0YPhAKFoyr0scQ/RWvNW6l3aO09oRczUyxQ2ZHOHGArnedpKZEhSV6vgyQB
         hCddq1ffrlO0DTx6nQ3i1sQcw1GuQ3yIXJiwdeL/Rlh8hBTdTuSO/1ZiDgoUGGcZmL5X
         KMzQ==
X-Received: by 10.66.55.74 with SMTP id q10mr14083467pap.94.1424641232748;
        Sun, 22 Feb 2015 13:40:32 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from nizamkari ([61.16.142.166])
        by mx.google.com with ESMTPSA id gi3sm33295117pbc.83.2015.02.22.13.40.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sun, 22 Feb 2015 13:40:32 -0800 (PST)
Date: Mon, 23 Feb 2015 03:11:34 +0530
From: Navya Sri Nizamkari <navyasri.tech@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/6] staging: rtl8192u: Remove commented header.
Message-ID: <8fce1afaa64c1a01087500ab7788430ee5f01030.1424640704.git.navyasri.tech@gmail.com>
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
 drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_tkip.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_tkip.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_tkip.c
index fcc90a5..6201712 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_tkip.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_tkip.c
@@ -9,7 +9,6 @@
  * more details.
  */
 
-//#include <linux/config.h>
 #include <linux/module.h>
 #include <linux/init.h>
 #include <linux/slab.h>
-- 
1.9.1


