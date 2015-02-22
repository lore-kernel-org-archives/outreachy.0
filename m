X-GM-THRID: 2595026370560
X-Received: by 10.70.2.36 with SMTP id 4mr91371pdr.8.1424641333606;
        Sun, 22 Feb 2015 13:42:13 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.65.102 with SMTP id w6ls669277igs.39.gmail; Sun, 22 Feb
 2015 13:42:13 -0800 (PST)
X-Received: by 10.66.66.108 with SMTP id e12mr9056198pat.30.1424641333458;
        Sun, 22 Feb 2015 13:42:13 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from mail-pd0-x236.google.com (mail-pd0-x236.google.com. [2607:f8b0:400e:c02::236])
        by gmr-mx.google.com with ESMTPS id bx1si2897662pdb.2.2015.02.22.13.42.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Feb 2015 13:42:13 -0800 (PST)
Received-SPF: pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c02::236 as permitted sender) client-ip=2607:f8b0:400e:c02::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c02::236 as permitted sender) smtp.mail=navyasri.tech@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pdjg10 with SMTP id g10so20812477pdj.1
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Feb 2015 13:42:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=atBGxOXWdl4dTRP3h8avHta6AY/O+x+b31HkKqQK8w0=;
        b=gBavoeRvqKQDnmMG3jfT5C0G5T5ZN2a0ccX275Z45tuOlynvMN0fXQCNoVTJA298C5
         OkBqV1sCBfK+XqEDyDnCU2Jbp4+i7006KrSbrY/zeJprIZZ+rDNa2MCWfVxRLmZtu/sK
         qmV1k8lYD4mBdA4PEWvH6qNs/c+jO6NOKWzERQv0zoMrOZyVBVoXRQ/U0nXQuesMfAv0
         FdhjmXEIjZaeM2uejheCJ8FbP4l9PrIfqG2lFqkCwAMXoHyFEKyBlGApnJp1xEbWL4oy
         eM+pGrhSomjK3nqzyQqvUQNNkxgm2Us0V+ixtpNAoQAHmoKLtCqlXcDqR069ybG4C/E3
         RVYw==
X-Received: by 10.68.201.168 with SMTP id kb8mr14033136pbc.89.1424641333393;
        Sun, 22 Feb 2015 13:42:13 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from nizamkari ([61.16.142.166])
        by mx.google.com with ESMTPSA id iv1sm33293270pbc.87.2015.02.22.13.42.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sun, 22 Feb 2015 13:42:12 -0800 (PST)
Date: Mon, 23 Feb 2015 03:13:15 +0530
From: Navya Sri Nizamkari <navyasri.tech@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 6/6] staging: rtl8192u: Remove commented header.
Message-ID: <81a766f7080c80e8b915e60f5a23b7d4d2419a10.1424640704.git.navyasri.tech@gmail.com>
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
 drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
index fca73c7..96ab304 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
@@ -32,7 +32,6 @@
 ******************************************************************************/
 
 #include <linux/compiler.h>
-//#include <linux/config.h>
 #include <linux/errno.h>
 #include <linux/if_arp.h>
 #include <linux/in6.h>
-- 
1.9.1


