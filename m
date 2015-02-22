X-GM-THRID: 2273030701056
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,1bc0e2b2eb529af1
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.159.227 with SMTP id xf3mr523417lbb.11.1424569941084;
        Sat, 21 Feb 2015 17:52:21 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.84.72 with SMTP id w8ls334738wiy.4.canary; Sat, 21 Feb
 2015 17:52:19 -0800 (PST)
X-Received: by 10.180.83.168 with SMTP id r8mr4920wiy.6.1424569939800;
        Sat, 21 Feb 2015 17:52:19 -0800 (PST)
Return-Path: <gulsah.1004@gmail.com>
Received: from mail-wi0-x229.google.com (mail-wi0-x229.google.com. [2a00:1450:400c:c05::229])
        by gmr-mx.google.com with ESMTPS id el6si402501wib.2.2015.02.21.17.52.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Feb 2015 17:52:19 -0800 (PST)
Received-SPF: pass (google.com: domain of gulsah.1004@gmail.com designates 2a00:1450:400c:c05::229 as permitted sender) client-ip=2a00:1450:400c:c05::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gulsah.1004@gmail.com designates 2a00:1450:400c:c05::229 as permitted sender) smtp.mail=gulsah.1004@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-f169.google.com with SMTP id em10so13086452wid.0
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Feb 2015 17:52:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=DwG9Avbd/oN9+gekfTtHXwWwBdFvswhyW1ptgaNJN/w=;
        b=Y3gRBsF3pXUHzG4whVJozjURL0nHTzNpqt9i7NVzcEXyPMxTJjibinZFBD6ca4Xh1V
         UnoWxidDbKHKCS0xU4GtGnI2uACyvlBKcZZ0OU6K4MdCElpuxuZs+LsBAwlgKYrjUg0a
         jN9Y0TqrQneIY6J0wtz8nLp3fU8I7ojiO0x8vUcXGrq9zVrq2Wi0tgn+TvgMPTNhbmU+
         9kbmDMOebb4TPqJ9jy2nIY/OF3PkUdb82nPXqXyovKtgZY9UtAUJt9pWSIWVtT00ST0F
         bECxeoaBf5kUInVQ4LoLSmUxFgMLvcTTV5mduRiX9PZmgBlNmRc6ox1ALFUcN2uhkexv
         AOhg==
X-Received: by 10.180.10.131 with SMTP id i3mr8445284wib.54.1424569939732;
        Sat, 21 Feb 2015 17:52:19 -0800 (PST)
Return-Path: <gulsah.1004@gmail.com>
Received: from diyorki.kykwifi.com ([81.213.40.143])
        by mx.google.com with ESMTPSA id dm6sm9227136wib.22.2015.02.21.17.52.18
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 21 Feb 2015 17:52:19 -0800 (PST)
From: Gulsah Kose <gulsah.1004@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Gulsah Kose <gulsah.1004@gmail.com>
Subject: [PATCH 3/7] staging: ft1000: ft1000-pcmcia: Used "linux" instead of "asm"
Date: Sun, 22 Feb 2015 03:51:59 +0200
Message-Id: <d2d2afd6dc640b7aeed388b8b7e6782aee21f02c.1424569663.git.gulsah.1004@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1424569663.git.gulsah.1004@gmail.com>
References: <cover.1424569663.git.gulsah.1004@gmail.com>
In-Reply-To: <cover.1424569663.git.gulsah.1004@gmail.com>
References: <cover.1424569663.git.gulsah.1004@gmail.com>

Used "linux" instead of "asm" in include line and removed following checkpatch.pl warning:
WARNING: Use #include <linux/bitops.h> instead of <asm/bitops.h>

Signed-off-by: Gulsah Kose <gulsah.1004@gmail.com>
---
 drivers/staging/ft1000/ft1000-pcmcia/ft1000_hw.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/ft1000/ft1000-pcmcia/ft1000_hw.c b/drivers/staging/ft1000/ft1000-pcmcia/ft1000_hw.c
index 5358dac..572a07a 100644
--- a/drivers/staging/ft1000/ft1000-pcmcia/ft1000_hw.c
+++ b/drivers/staging/ft1000/ft1000-pcmcia/ft1000_hw.c
@@ -29,7 +29,7 @@
 #include <linux/interrupt.h>
 #include <linux/in.h>
 #include <linux/io.h>
-#include <asm/bitops.h>
+#include <linux/bitops.h>
 
 #include <linux/netdevice.h>
 #include <linux/etherdevice.h>
-- 
1.9.1


