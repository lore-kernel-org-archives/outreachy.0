X-GM-THRID: 6254033434194214912
X-Received: by 10.140.242.214 with SMTP id n205mr26077370qhc.14.1456130674063;
        Mon, 22 Feb 2016 00:44:34 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.142.97 with SMTP id rv1ls485929igb.12.gmail; Mon, 22 Feb
 2016 00:44:33 -0800 (PST)
X-Received: by 10.107.164.208 with SMTP id d77mr28274194ioj.22.1456130673781;
        Mon, 22 Feb 2016 00:44:33 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pf0-x229.google.com (mail-pf0-x229.google.com. [2607:f8b0:400e:c00::229])
        by gmr-mx.google.com with ESMTPS id u66si3348176pfa.2.2016.02.22.00.44.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Feb 2016 00:44:33 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::229 as permitted sender) client-ip=2607:f8b0:400e:c00::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::229 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x229.google.com with SMTP id e127so89432817pfe.3
        for <outreachy-kernel@googlegroups.com>; Mon, 22 Feb 2016 00:44:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=b+UQjBdKE6V8KneYchegW7Q6x/fW897SL69SglbKrw0=;
        b=Qx7nPQkevK3FynKAAj5n3U5VIUIovocw9d9Mbnkoqo0SsLf5fncvHhGXHK50Pz1qXc
         dYfGaprYUiEZ5dA7QGA1XgU72LXSl9w6FLK61EwrcqCfwuvvoQV7Obj0OGCT/SmZnZJi
         VUKg065l61J8im8ogEjLi6tGWK2MjRaLcu79Y5MoMdfVE9cFjvjIPmCd08H8n0hC/OvZ
         ksgeFqHrBFLfZmBk/Cn6KM/PQpeoEOm1n5/gl6WWLhaj1h1pMpPLprlxf2R23KzpVGe6
         Kx4q2Z00RxTNpnvfDAbkTt2WwFWrLBUL29pz1faxi68ZULO6AhlD7dJ1S9Bt/RdtCKNf
         toSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-type:content-disposition:in-reply-to
         :user-agent;
        bh=b+UQjBdKE6V8KneYchegW7Q6x/fW897SL69SglbKrw0=;
        b=LY8Xn/mcWKYNiczKt43YOjb4L1hy69mInjeu4CKEGUjv7FGxWAXjPObArmNYGUb+f6
         hiV5wmFGhxSE+E3D6flTU+Kxhx9R/iE9quidZaStxwLvYSADtsJzGbN87x6Yew/251yk
         D2AJrlDE2AtX4AoBt12515af22RaDAnG4lYAxSyiiDNH057eCLTjZ1ML8aKbylgAf3jC
         yCwF6Q/oZ8XfSQtPpqkcamF0QBGbrUIoautU5UqM0FSQifTQSiXp7smLLNNC6he4ez7y
         tk3eL4+sXzat0ZTNzFMHZZpxzGU/QskHllOOF9yoRwlc93q11/Ftm5YRUesc88pi6F5O
         qdBQ==
X-Gm-Message-State: AG10YOQiQ/OE1Hmo4VJN2kzN6tiHCPh/luFCCenOZsRuA5YspAnZdXg/pyOo0k0zS+3V+g==
X-Received: by 10.98.86.13 with SMTP id k13mr25973402pfb.28.1456130673642;
        Mon, 22 Feb 2016 00:44:33 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.106.39])
        by smtp.gmail.com with ESMTPSA id 85sm34944830pfl.18.2016.02.22.00.44.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Mon, 22 Feb 2016 00:44:33 -0800 (PST)
Date: Mon, 22 Feb 2016 14:14:17 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 6/7] staging: wilc1000: Remove header file
Message-ID: <a4b3350bba5509549cf5238ce2bf170c87fc91ad.1456129759.git.amitoj1606@gmail.com>
References: <cover.1456129759.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1456129759.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove duplicate header file. Found using includecheck.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/wilc1000/linux_wlan.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/wilc1000/linux_wlan.c b/drivers/staging/wilc1000/linux_wlan.c
index 274f468..8bd48a3 100644
--- a/drivers/staging/wilc1000/linux_wlan.c
+++ b/drivers/staging/wilc1000/linux_wlan.c
@@ -13,7 +13,6 @@
 
 #include <linux/kthread.h>
 #include <linux/firmware.h>
-#include <linux/delay.h>
 
 #include <linux/init.h>
 #include <linux/netdevice.h>
-- 
1.9.1


