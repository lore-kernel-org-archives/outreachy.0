X-GM-THRID: 6256370221351698432
X-Received: by 10.13.236.84 with SMTP id v81mr9359361ywe.2.1456674717609;
        Sun, 28 Feb 2016 07:51:57 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.66.230 with SMTP id i6ls291073igt.39.gmail; Sun, 28 Feb
 2016 07:51:57 -0800 (PST)
X-Received: by 10.66.191.230 with SMTP id hb6mr9439873pac.25.1456674717278;
        Sun, 28 Feb 2016 07:51:57 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x241.google.com (mail-pa0-x241.google.com. [2607:f8b0:400e:c03::241])
        by gmr-mx.google.com with ESMTPS id yd9si3078812pab.1.2016.02.28.07.51.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 07:51:57 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) client-ip=2607:f8b0:400e:c03::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x241.google.com with SMTP id a7so5914780pax.3
        for <outreachy-kernel@googlegroups.com>; Sun, 28 Feb 2016 07:51:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=5PdRP1PcgfMKrEV0oqYvZKXOtvLuDPthZG+SkYEJwGE=;
        b=zK5GeQEcz1PKPAVWzXe5neV8LrK/3zs0AWwOsFB2alN/kjpQGWUwdETGGUM4N4O/dN
         AObRmxZYBxglDMtFQJ1DtadhwZpHpDuExHUWgDz9KD6tNvAPP/TbdFnanZoO51Zf6mds
         IgR98QbZDzGl831J6tMxbLsu9TUWNOsOnfMC1RXhU+NJsZJlI0J5mpoQnkYxuNN9q7mQ
         AF6q+3Oc46BpJTr00AozcN6HYfRwZT1Ptjv4ZIIVycsB33TAAgis6V3iUhXmsxF8rKCG
         Ki8Ixb57Ve5NLGB5tuxmvYUx1TNtH0wCLpatHt97eZ5UBb8OEYiVaWVyn/Ba8TE5ghik
         kYzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=5PdRP1PcgfMKrEV0oqYvZKXOtvLuDPthZG+SkYEJwGE=;
        b=hbbJ5o1FNvKWiRV6ycV4mZH+MVN84GW6h8GKrqv9D87UUd05WV2QrWE1Ri5GRMmLZ/
         rF9T88bRy24muitBpVZjpy+MVvj5OqDdc15QgQJTwGmohV7cS0yjvAwq/fa/VT+LLfMz
         hxtbma/zVyqFIlObZeQQaTuuqSez7o90pGbuhaiks0E78hb7yMKvcfF5yQG1IRiMC0/g
         P4CPajrWIxNyOayC9Tn9y+zszB7GrHJS2in28I6McrLcFf6zQXCiYWcMnAt9CibHsAm4
         plmEA78QU1cO03NBJauqGftkk2bjIk+ThrTMh2xclMy+7N5fRcliPveZMtNR3PBo/Pq5
         Ja5A==
X-Gm-Message-State: AD7BkJL+43vhcVr8sBR3hpmhgcTi+5AQftzLOmtBtAuTCR4zsMGnUaizrEoGSwiNcQ8i9A==
X-Received: by 10.66.147.103 with SMTP id tj7mr16372383pab.72.1456674717106;
        Sun, 28 Feb 2016 07:51:57 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.179.114])
        by smtp.gmail.com with ESMTPSA id c9sm32011758pfd.90.2016.02.28.07.51.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Sun, 28 Feb 2016 07:51:56 -0800 (PST)
Date: Sun, 28 Feb 2016 21:21:53 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/2] staging: sm750fb: Replace kzalloc with devm_kzalloc
Message-ID: <bf919ac52e652816507c7a77cc51d4afe2273f39.1456673895.git.amitoj1606@gmail.com>
References: <cover.1456673895.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1456673895.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Devm_ functions allocate memory that is released when a driver
detaches.
Replace kzalloc with devm_kzalloc and remove corresponding
kfrees from probe and remove functions of a pci_dev.

Also, an unnecessary label has been removed by replacing it 
with a direct return statement.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/sm750fb/sm750.c | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/sm750fb/sm750.c b/drivers/staging/sm750fb/sm750.c
index de996a6..7967a85 100644
--- a/drivers/staging/sm750fb/sm750.c
+++ b/drivers/staging/sm750fb/sm750.c
@@ -1058,7 +1058,7 @@ static int lynxfb_pci_probe(struct pci_dev *pdev,
 		return err;
 
 	err = -ENOMEM;
-	sm750_dev = kzalloc(sizeof(*sm750_dev), GFP_KERNEL);
+	sm750_dev = devm_kzalloc(&pdev->dev, sizeof(*sm750_dev), GFP_KERNEL);
 	if (!sm750_dev)
 		goto disable_pci;
 
@@ -1090,7 +1090,7 @@ static int lynxfb_pci_probe(struct pci_dev *pdev,
 	/* call chip specific mmap routine */
 	err = hw_sm750_map(sm750_dev, pdev);
 	if (err)
-		goto free_sm750_dev;
+		return err;
 
 	if (!sm750_dev->mtrr_off)
 		sm750_dev->mtrr.vram = arch_phys_wc_add(sm750_dev->vidmem_start,
@@ -1115,8 +1115,6 @@ static int lynxfb_pci_probe(struct pci_dev *pdev,
 
 release_fb:
 	sm750fb_frambuffer_release(sm750_dev);
-free_sm750_dev:
-	kfree(sm750_dev);
 disable_pci:
 	pci_disable_device(pdev);
 	return err;
@@ -1134,7 +1132,6 @@ static void lynxfb_pci_remove(struct pci_dev *pdev)
 	iounmap(sm750_dev->pvReg);
 	iounmap(sm750_dev->pvMem);
 	kfree(g_settings);
-	kfree(sm750_dev);
 }
 
 static int __init lynxfb_setup(char *options)
-- 
1.9.1


