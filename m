X-GM-THRID: 6331277743473295360
X-Received: by 10.107.136.31 with SMTP id k31mr1823065iod.50.1474136265465;
        Sat, 17 Sep 2016 11:17:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.105.148 with SMTP id e142ls1878449itc.17.canary; Sat, 17
 Sep 2016 11:17:44 -0700 (PDT)
X-Received: by 10.67.24.100 with SMTP id ih4mr1872197pad.49.1474136264905;
        Sat, 17 Sep 2016 11:17:44 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id si10si4072371pab.1.2016.09.17.11.17.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Sep 2016 11:17:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id n24so5065309pfb.3
        for <outreachy-kernel@googlegroups.com>; Sat, 17 Sep 2016 11:17:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=ti7R7XS8yyllqLF3l6PLSg3LrflKm+PkLjooc4Q7vDI=;
        b=s313UkXeDwH66Doq8lxCVuUpoKf2SKrlW6X12aNzylXikWsoSlltfLIX2Se2/6pdN3
         1ZcruPl98xUA+dVWQQWtcu6yfsSJQLG0MaJfkUhYNkReSiJ9M0la02WZ3z25mCRv0M2A
         hjs3VKA5AdMDEb6fe3jRujbrYSe21GxQs6zRONyKs6G1G5jTAmnFYs1RGWq1aVlk+qOy
         q61eEiO0kALjhIr0RSeWW+VG29Cl5z31ek8WKiYASQkn55aBkEZFSaXtM9/VOujU5KDw
         hWFS0iQQSkxLIF3LqDI2Xl1cTqtmi//oCzd6Fp/b1KzayDLszIVc9xt3+9pdPy2q0dGW
         x7PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=ti7R7XS8yyllqLF3l6PLSg3LrflKm+PkLjooc4Q7vDI=;
        b=PHoY+SQOj+Qdinw0/NMxUeH3e0XmnDnfE8C/6iYd3juCz4dnslBDVjO1gtyrTddiiB
         IKQ3w2tADWUfKYRGtifjGOPO6/tKL/7++kTwvz9/6LVnXPo/rElyDSMoqsTJxJvd31uK
         JfGJbcSz+0P4R0V9dG8b3RNlctOtnBlQ6cCNwiKSUXH8hKFQE056xLwX//LTE9bP+V/h
         iTB4jLp5demS68sK2RYOl0KKfHgqhjQG9pVxbgOEYzhmwiR9DCQlpM/a2ZgVpKATsOeS
         K5fKtxsVC9nnKBH8ECQ9A957n5wkVzMpDoZzMFesymmaYoiuO4+20YNpIEdKRqXUS8oO
         rODQ==
X-Gm-Message-State: AE9vXwNYMYB5o4q2Ws/ZVdAR7geEuCcHg/JlYMNT5sGLmoOIRwHlQigOfb48vOqIXcXCug==
X-Received: by 10.98.31.133 with SMTP id l5mr19409176pfj.178.1474136264570;
        Sat, 17 Sep 2016 11:17:44 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([122.170.172.239])
        by smtp.gmail.com with ESMTPSA id f195sm60618283pfa.26.2016.09.17.11.17.42
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sat, 17 Sep 2016 11:17:43 -0700 (PDT)
Date: Sat, 17 Sep 2016 12:47:02 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v2] Staging: i4l: Return NULL instead of 0.
Message-ID: <20160917071702.GA16260@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Return NULL instead of 0, if card with given driverId is not found.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
Changes in v2:
* Correcting commit message
 drivers/staging/i4l/act2000/module.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/drivers/staging/i4l/act2000/module.c b/drivers/staging/i4l/act2000/module.c
index 39a8940..6a6c911 100755
--- a/drivers/staging/i4l/act2000/module.c
+++ b/drivers/staging/i4l/act2000/module.c
@@ -499,7 +499,7 @@ act2000_findcard(int driverid)
 			return p;
 		p = p->next;
 	}
-	return (act2000_card *) 0;
+	return NULL;
 }
 
 /*
-- 
1.7.1


