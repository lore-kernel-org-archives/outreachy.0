X-GM-THRID: 6253716590349516800
X-Received: by 10.182.250.201 with SMTP id ze9mr22670042obc.0.1456056858265;
        Sun, 21 Feb 2016 04:14:18 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.120.228 with SMTP id lf4ls591514obb.39.gmail; Sun, 21 Feb
 2016 04:14:17 -0800 (PST)
X-Received: by 10.182.250.233 with SMTP id zf9mr22015998obc.5.1456056857686;
        Sun, 21 Feb 2016 04:14:17 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x22b.google.com (mail-pf0-x22b.google.com. [2607:f8b0:400e:c00::22b])
        by gmr-mx.google.com with ESMTPS id ff2si2810334pad.2.2016.02.21.04.14.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 21 Feb 2016 04:14:17 -0800 (PST)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::22b as permitted sender) client-ip=2607:f8b0:400e:c00::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::22b as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22b.google.com with SMTP id q63so77022795pfb.0
        for <outreachy-kernel@googlegroups.com>; Sun, 21 Feb 2016 04:14:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=Kil+R5i+v4qilS5p/ZfKTH3Bvh/nJKyTlXqciMiBjxU=;
        b=i+3BdgHjn2599PwE/cqImyTBcvZ83umqJNFWhuESnN1kUVF1HPXnRGSyh48Vcc4uXh
         q+6d2WKGBew+ZfgBM0/GSfYZKeIaAqWFiWxvZc+H9Yv8/W9AxzIZYeQj8TtF1b1yC3s8
         eDi9TYxxVIjquwK7T3egbnySjWohDQa5LGoUFyJwM2CxBmzCoObVVigH6F42jqUmAJM5
         71RByTc45k+39+i77Ei8NvsdxSwS0URHEECvwK248OyTtaq2g2xzfK0dUQVW7E3NAGFa
         PJFPCgBZUEEUUEDzfuyC41F1joBCK7N6wozLhDyJMB8cQnx91/z4jnynbbE+OlhKeUIM
         rmDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=Kil+R5i+v4qilS5p/ZfKTH3Bvh/nJKyTlXqciMiBjxU=;
        b=EkTaChJEgYtO+DH5E1zvhkEI18A3nDx9pRHi2b9Uxi5/GVj2vAbCWMXuaIGWWjmL59
         aoF/XP4RIwPTzwbMeGXsDi5MSr/SpBwG7k6POSnGBUdPgo+dkCWSTy/ir3bP33EVyfKP
         MOOsVsIx24Kvv6uhy0f/rSufI85rC1gCXvIDnN4KFD7kEiAdE/4l2dLj/TJIORgfNdDJ
         yDYTBXgMpBKEjxD6ByZw6/Tt0xLyoOq5ZzaV/Zlz56TjBp9qvQ6/pnnsQH/K3tpr1+Ii
         K053O6xbV4GegvmdwYnTb7dtAh1qM9oajYif4mjzNedm7/A3rtYlmPpZfw4bmSsh3lFo
         NjGw==
X-Gm-Message-State: AG10YOQZjSJYVPfu2jIvojnjKyUlHQoGkoJE3r454wxplTiQG91ZYxQmbn2VdfVZ+AlnLw==
X-Received: by 10.98.64.26 with SMTP id n26mr30904738pfa.149.1456056857542;
        Sun, 21 Feb 2016 04:14:17 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.31])
        by smtp.gmail.com with ESMTPSA id h66sm29693601pfd.91.2016.02.21.04.14.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sun, 21 Feb 2016 04:14:16 -0800 (PST)
Date: Sun, 21 Feb 2016 09:44:14 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: lustre: Remove unnecessary braces of single
 statement block
Message-ID: <20160221041414.GA2801@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Remove unnecessary braces of single statement block else


Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/lustre/lustre/llite/dcache.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/lustre/lustre/llite/dcache.c b/drivers/staging/lustre/lustre/llite/dcache.c
index bc179e5..e3b98b7 100644
--- a/drivers/staging/lustre/lustre/llite/dcache.c
+++ b/drivers/staging/lustre/lustre/llite/dcache.c
@@ -193,13 +193,11 @@ int ll_d_init(struct dentry *de)
 			if (likely(!de->d_fsdata)) {
 				de->d_fsdata = lld;
 				__d_lustre_invalidate(de);
-			} else {
+			} else
 				kfree(lld);
-			}
 			spin_unlock(&de->d_lock);
-		} else {
+		} else
 			return -ENOMEM;
-		}
 	}
 	LASSERT(de->d_op == &ll_d_ops);
 
-- 
1.8.3.4


