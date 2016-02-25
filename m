X-GM-THRID: 6255098629488377856
X-Received: by 10.13.226.84 with SMTP id l81mr39280311ywe.16.1456378667929;
        Wed, 24 Feb 2016 21:37:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.83.230 with SMTP id j93ls170171qgd.64.gmail; Wed, 24 Feb
 2016 21:37:47 -0800 (PST)
X-Received: by 10.129.131.206 with SMTP id t197mr38056301ywf.50.1456378667148;
        Wed, 24 Feb 2016 21:37:47 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pf0-x230.google.com (mail-pf0-x230.google.com. [2607:f8b0:400e:c00::230])
        by gmr-mx.google.com with ESMTPS id yd9si939769pab.1.2016.02.24.21.37.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Feb 2016 21:37:47 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::230 as permitted sender) client-ip=2607:f8b0:400e:c00::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::230 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x230.google.com with SMTP id c10so27387536pfc.2
        for <outreachy-kernel@googlegroups.com>; Wed, 24 Feb 2016 21:37:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=RMdlak6YR+TebLVXgOmDgflGi2rD7BKleuiKgNPXMLk=;
        b=LhEgSmJ2lk7hGVbPYJed4uEshw2XfcwSBn4FpgsBeFn5K9Qb4J4WD2ETtu46LC2RjE
         stofYYGxK1dQWhT6nQTQAZLnuIV4t2E4u+C/yb8y9jt+ohQ1nUdlVeNVm3fOiRw+aXgx
         i6OKrE4PSvcqpPdIZtaB8K5c5zS1SwwOphp5iBCyf4LbVFq/ti7/erqUrelIVxExzoVj
         GDNLDXrS/zY8cFX7Dic2ldkust991FTyhtKC1lGTAaBRvFNRxPgLyT4NUKxbhy1oDZJI
         o/jIAT9IayXNwy/GUnxY5PoFIFAroulxoRJVDMRAsfCjkOFtclYor1ny1NPb0LUNlXNd
         DZww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-type:content-disposition:in-reply-to
         :user-agent;
        bh=RMdlak6YR+TebLVXgOmDgflGi2rD7BKleuiKgNPXMLk=;
        b=bzg2seKUJ+Z/3I19MhcpB6FZkdlp6uzhXVfRf5coyjfldpNS4DNL7KpjtKg9gwlVBu
         Th8wfSpLdkJgF/QUrMiN1jroL+mbahMrLKWD3VFRAclyLL7PJjEhG3ylcp5h6hXKCxCk
         G9q/FggPPpbPw159W9DGC9DA9oWnuwa4y7bhnhOHXYIm/T+KNIlyyBDZBuM7iti7p0dB
         rQmNu6CwcFS2Qxh0OjuojUqRmM16Ffi9PNU5biKPndWNtbtmacNoA2W0yhR2wYQE+Gdf
         HM+T3IYxb0ePmUrKWhqkko++C1unKwv4HAZnSKxfwhS3aKoNfjdhpNpFzcR+qg25xWyl
         ciUA==
X-Gm-Message-State: AG10YORGzoCeaDHQEo/cP3VP3TtO+pBW4x/NIKH15Ia1O/xoybV3PnqSCdQUq06Qijlsig==
X-Received: by 10.98.14.146 with SMTP id 18mr60530843pfo.35.1456378666962;
        Wed, 24 Feb 2016 21:37:46 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([122.176.175.16])
        by smtp.gmail.com with ESMTPSA id v75sm8805557pfa.39.2016.02.24.21.37.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Wed, 24 Feb 2016 21:37:46 -0800 (PST)
Date: Thu, 25 Feb 2016 11:07:37 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/6] staging: sm750fb: Remove unnecessary pci_set_drvdata()
Message-ID: <4597267e0b29e99622c3682b24cd5d7b8918f048.1456377485.git.amitoj1606@gmail.com>
References: <cover.1456377485.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1456377485.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Unnecessary pci_set_drvdata() has been removed since the driver
core clears the driver data to NULL after device release or on
probe failure. There is no need to manually clear the device
driver data to NULL.

The Coccinelle semantic patch used to make this change is as follows:
//<smpl>
@@
struct pci_dev *pci;
@@
- pci_set_drvdata(pci, NULL);
//</smpl>

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/sm750fb/sm750.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/sm750fb/sm750.c b/drivers/staging/sm750fb/sm750.c
index b889409..de996a6 100644
--- a/drivers/staging/sm750fb/sm750.c
+++ b/drivers/staging/sm750fb/sm750.c
@@ -1135,7 +1135,6 @@ static void lynxfb_pci_remove(struct pci_dev *pdev)
 	iounmap(sm750_dev->pvMem);
 	kfree(g_settings);
 	kfree(sm750_dev);
-	pci_set_drvdata(pdev, NULL);
 }
 
 static int __init lynxfb_setup(char *options)
-- 
1.9.1


