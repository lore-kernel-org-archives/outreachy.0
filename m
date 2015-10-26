X-GM-THRID: 6210016168421359616
X-Received: by 10.129.146.4 with SMTP id j4mr7857247ywg.45.1445882301951;
        Mon, 26 Oct 2015 10:58:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.32.193 with SMTP id g184ls886731iog.70.gmail; Mon, 26 Oct
 2015 10:58:21 -0700 (PDT)
X-Received: by 10.107.10.153 with SMTP id 25mr26800661iok.3.1445882301305;
        Mon, 26 Oct 2015 10:58:21 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x22f.google.com (mail-pa0-x22f.google.com. [2607:f8b0:400e:c03::22f])
        by gmr-mx.google.com with ESMTPS id pe1si3661434pac.2.2015.10.26.10.58.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2015 10:58:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) client-ip=2607:f8b0:400e:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22f.google.com with SMTP id z6so194656584pas.2
        for <outreachy-kernel@googlegroups.com>; Mon, 26 Oct 2015 10:58:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=H9GS+RXwvd5p81fcCellGTpIeuKZe6Rr5vEdB3qKlGc=;
        b=kHdpKxFTMxQwQbG9Y3N8PJmH7WXSuo3tbnKydbAq/m9YPFDbw/b/nl3/l/C7u9Hf0r
         4y7OkA6WoTF9zOfHncouxl57XNg/wRJwHJHn7RFCsdx4m4+d5ITYqm8QffLN9xC0tokH
         oNfrtpzLjx7ia0wMolBIM2RPx5VGNO/EXeMASqSmq8pJMKvoD6WgMj4BfjkA+PkHi5BM
         F5s1WOYrBjpbtZA/JTjuXqcHQRsyLyICxZJn9oVKFTtnA9K+83yJKT1QplSp9GBhnSm9
         uzBgYFvsxPeROAWannOUV6+B6lFgb9gyshP6UT5ZUQLcfo+9EsI/YttynbOPNSDh3D34
         G4Ug==
X-Received: by 10.66.152.44 with SMTP id uv12mr28870903pab.110.1445882301170;
        Mon, 26 Oct 2015 10:58:21 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.252.119])
        by smtp.gmail.com with ESMTPSA id t9sm35127882pbs.17.2015.10.26.10.58.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Mon, 26 Oct 2015 10:58:20 -0700 (PDT)
Date: Mon, 26 Oct 2015 23:28:17 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 3/3] staging: sm750fb: sm750: Remove unnecessary variable
Message-ID: <61769b6c8202e531f0e36279c7614243ad816a29.1445881808.git.amitoj1606@gmail.com>
References: <cover.1445881808.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1445881808.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/sm750fb/sm750.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/sm750fb/sm750.c b/drivers/staging/sm750fb/sm750.c
index 494017f..25a64dd 100644
--- a/drivers/staging/sm750fb/sm750.c
+++ b/drivers/staging/sm750fb/sm750.c
@@ -1302,7 +1302,6 @@ static struct pci_driver lynxfb_driver = {
 static int __init lynxfb_init(void)
 {
 	char *option;
-	int ret;
 
 #ifdef MODULE
 	option = g_option;
@@ -1312,8 +1311,7 @@ static int __init lynxfb_init(void)
 #endif
 
 	lynxfb_setup(option);
-	ret = pci_register_driver(&lynxfb_driver);
-	return ret;
+	return pci_register_driver(&lynxfb_driver);
 }
 module_init(lynxfb_init);
 
-- 
1.9.1


