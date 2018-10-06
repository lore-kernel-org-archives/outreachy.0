X-GM-THRID: 6609200682225369088
X-Received: by 2002:a9d:ccb:: with SMTP id o11mr5502047otd.35.1538834277264;
        Sat, 06 Oct 2018 06:57:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:3e8a:: with SMTP id l132-v6ls7137084oia.7.gmail; Sat, 06
 Oct 2018 06:57:56 -0700 (PDT)
X-Google-Smtp-Source: ACcGV62x/GyHEayJJ/ew2tJqINu0PDxCXjVfzBxCpvm7YvaVcol7JNBRkxRaOTrS6iriH3kkWHiI
X-Received: by 2002:aca:d695:: with SMTP id n143-v6mr11684863oig.23.1538834276571;
        Sat, 06 Oct 2018 06:57:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538834276; cv=none;
        d=google.com; s=arc-20160816;
        b=QzRSazI1I+Z6Sa9yJW3s45v9SpWPAr01LJLA2jJSOOsIqpt+IoE8k18KPKu/qL/PUe
         /VuugWCAcxQHtMf5t60j2UgIwLEjv9BvRZn2OQ8rH/G6hRZ6KrYzEUn75iTVJ4XM2EG4
         LRXw/fdqGul8c2LlPWzXPnOOwZr0WO8F35H9+hRcm1Q+Bng3kY8pL6VqWM6yyURe0nan
         1LKGlVtaW6OONIGmlx3sKtntUdASAhds/kPlZxfdq63mRR56PmWjijO8qyThMbqw0Q75
         yHp3iUAz2snm94vAo1i5HbVQmDqQSLucmY5y6YhzrRvEA2SHWH36RvCWWn9yd5WBXCD1
         cdng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:reply-to:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=X21mylry/NMUbfqad5TLOvwJQo7Dw+dmyITKvOavEkY=;
        b=0tnFd0SjqKabehFzKF4p3OS1Ux9vvOIXiDOW0d7vZMjCQyC+rL0KeavSy6CIY2dD7E
         GIpkpxodr0/ScAiTMeXZbKZwFyzo3fCh3vki9CdwDHRji8AGrPHJGsyHI9azJJHo750N
         MTThOkHRWTmH05EQudQyOWwL02TZgBEBbPc/MwEvJcELq7i71aQfd9jsdeuuibel+7J5
         Vjz97Ehd4FIWoN+koQbbN8TpDWt2zHYkumF/OVOE8cCr7WZsSMgxN4nKuhyGVCWL8T2f
         ij0MsePyU0UtmzfYJm1IUKvOFZd6ZgTDt+Dl4LnseEq1uUO1ssWWW4AJe3rAD2CtcG7R
         ghLg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ilj3YT2I;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id i126-v6si469618oib.5.2018.10.06.06.57.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 06 Oct 2018 06:57:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ilj3YT2I;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x442.google.com with SMTP id m77-v6so6360881pfi.8
        for <outreachy-kernel@googlegroups.com>; Sat, 06 Oct 2018 06:57:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:reply-to:mime-version
         :content-disposition:user-agent;
        bh=X21mylry/NMUbfqad5TLOvwJQo7Dw+dmyITKvOavEkY=;
        b=Ilj3YT2InKPtuANIxP5OvE12QQ/L4pTzYVLBl8nOVzypSnK+PvJ86Bte5jIfYK+TTL
         NdRB0OA7T6ynYiPxGf+xGMcH+y8ha/MRvY7YM1xqOjJT7z1FJxPuD6nAMkMlPc9zswpU
         LYH+uK8El0gnIM5XYe6Pvc2KVVa1bM7+X7dXSaY92wFOOp2ykQGuDy3KOlivkuwdfq3W
         QkqH+pry/teq3dU9u37GkHpj+F/A0vI66dGkwNA+rwEk5tM8EFIq3yRAeJrGmV2ZbVGP
         x4Eo5Uvt1NbJASMkTN7iXe5lUkUMAEczufJSQVfSLTHDxAP4EbrcYjb1zBvb8TCon6zC
         6a5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:reply-to
         :mime-version:content-disposition:user-agent;
        bh=X21mylry/NMUbfqad5TLOvwJQo7Dw+dmyITKvOavEkY=;
        b=rk26OAcWbiPl4vwiwkocDvyJ2K03s5ebQQK2k6xLbVv6CJAC3GGfi2EicyQN8f2NuE
         b+JKWj20NRbkYJLZ+NRe+rVr95vCnRBkmHZxGkQArHvcQkkcE8A26MJ2alqDktXxLPa4
         j/wH/ZKHqqEGRyrQ3f7VUZIkKKrS57vpaJOSCUoQSMxVXlmrbJEcTTy8F1dcH1jbnueR
         ErnN8NZQ4BzWtthtXk+fVOepOEjwCeK6KhryKJWKMmHdstQkbVn4Pponn9SZSCqXboah
         ACxx7lZ/gEFbEzq2AqGmO9qavmqvcS+64g08rQOc0/Kxvzze8mD/5zQt1NLoTOwssscU
         nGPg==
X-Gm-Message-State: ABuFfoiB+qunGkfl6901v6xGfLzo4N4BDqKNvaHbr1W+8FmTato/KIua
	3mkQZ0DTqE+rv59NiLd2JveS5DDkIco=
X-Received: by 2002:a63:7b09:: with SMTP id w9-v6mr14307711pgc.385.1538834275809;
        Sat, 06 Oct 2018 06:57:55 -0700 (PDT)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from veda-VGN-CS3AGH-R ([183.83.92.101])
        by smtp.gmail.com with ESMTPSA id m15-v6sm30626483pfk.149.2018.10.06.06.57.54
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 06 Oct 2018 06:57:55 -0700 (PDT)
Date: Sat, 6 Oct 2018 19:27:52 +0530
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [Outreachy Kernel][PATCH v3] staging:comedi:comedi_pci.h Prefer a
 maximum 75 chars per line
Message-ID: <20181006135752.GA3037@veda-VGN-CS3AGH-R>
Reply-To: julia.lawall@lip6.fr
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Adjust all lines exceeding 75 chars per line to fix checkpatch warning.

Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
---
changes in v4:
-Remove Whitespace in comment section of module_comedi_pci_driver()
 to fix checkpatch Error.

changes in v3:
-Comment section of module_pci_driver() exceeds 75 characters.
 Adjust the chars to 75 per line
-Modified log message.
-Added change log.

changes in v2:
-comedi_pci_auto_config() function prototype is exceeds 
 75 characters per line. Adjust to 75 chars to improve 
 readability and also adjust the arguments to match open 
 parantheses.
-Comment section of module_comedi_pci_driver() exceeds 75
 characters. Modified contents to adjust 75 chars per line.

 drivers/staging/comedi/comedi_pci.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/comedi/comedi_pci.h b/drivers/staging/comedi/comedi_pci.h
index 1cc5436cb415..7291d3c0b7dc 100644
--- a/drivers/staging/comedi/comedi_pci.h
+++ b/drivers/staging/comedi/comedi_pci.h
@@ -42,7 +42,7 @@ void comedi_pci_driver_unregister(struct comedi_driver *comedi_driver,
 				  struct pci_driver *pci_driver);
 
 /**
- * module_comedi_pci_driver()-Helper macro for registering a comedi PCI 
+ * module_comedi_pci_driver()-Helper macro for registering a comedi PCI
  * driver
  * @__comedi_driver: comedi_driver struct
  * @__pci_driver: pci_driver struct
-- 
2.17.1


