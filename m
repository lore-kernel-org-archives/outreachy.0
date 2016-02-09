X-GM-THRID: 6249268328752218112
X-Received: by 10.28.47.211 with SMTP id v202mr832961wmv.3.1455048190885;
        Tue, 09 Feb 2016 12:03:10 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.137.9 with SMTP id l9ls809028lfd.65.gmail; Tue, 09 Feb 2016
 12:03:10 -0800 (PST)
X-Received: by 10.112.199.136 with SMTP id jk8mr4336354lbc.11.1455048190089;
        Tue, 09 Feb 2016 12:03:10 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-wm0-x244.google.com (mail-wm0-x244.google.com. [2a00:1450:400c:c09::244])
        by gmr-mx.google.com with ESMTPS id c140si507743wmh.0.2016.02.09.12.03.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 12:03:10 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) client-ip=2a00:1450:400c:c09::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) smtp.mailfrom=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x244.google.com with SMTP id c200so5475378wme.0
        for <outreachy-kernel@googlegroups.com>; Tue, 09 Feb 2016 12:03:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=YMzonh3kBra5g+WLC674hm00QDg87tTeRbyZ0YyiSU4=;
        b=hRlErxnVdaIe1EgdgO1krpuQ1N7C8e+rJu360C462Z1ScAcZ2P8HffSLzXsAYtl5qX
         sq1K7xsYTmKIMLnjVS7RKvHDOTaVM/wRpew5/qznK5VqcBp10DQj00LnAqNL6LcVKiiR
         zhqFByZKWTCWNoBUcXtATvZt9dpPGLHw2KwDqKnGv1OM8mR/B5VoNv5lJvdKc/C0uXD1
         YlShjJh+LpA7NEdKJpNzz8sQSt3ZQ04R73hbdwxFNS7JdSllFBBLVUsM/FgZpFiA/KHH
         ThczW/lVDYJXsRJo4QxNdX58ogpzC+USrZaHs6kVie+dJiu4ljrWcxuOYvg2dWIt8wTs
         uN9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-type:content-disposition:in-reply-to
         :user-agent;
        bh=YMzonh3kBra5g+WLC674hm00QDg87tTeRbyZ0YyiSU4=;
        b=XuoBL04ynl3d6dzR/INgO4t+yB7xoEy5jPj3qysfZh9C+K/bx71ycq8LG2h7NVra1V
         qeBhJa0ms/SNUYLgPB/Xi5QhOinCzAGFiwT5+Hjty1tzo02rp37OSy973qtw2FKx1wD2
         EyaWqiXd4VJbXfMcOScUL9a2CWdwzGL24lQDkZegM2xE+I//MPNSL+opjE5XxtACMplE
         8nuXPzDynYJWwGeytTByju4oytILCulMM4XqfmCWaGCMzIwzd2vs7R18UtxGxj5vMpPr
         iXSkCGGmQu7SkvwyBEjxIjuzHqJL+wUNYhqhN4qJBI8fNQKZwKIdMw94SMBq3Y3kE/fN
         Do1w==
X-Gm-Message-State: AG10YOQlInV8Hp7iXjaj06tpbDZzHUHOB6dcaPil24PMok1ycm98HwbkM3eyd24xVA9pIQ==
X-Received: by 10.28.129.194 with SMTP id c185mr6920171wmd.29.1455048189953;
        Tue, 09 Feb 2016 12:03:09 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneenVB ([109.171.130.235])
        by smtp.gmail.com with ESMTPSA id m63sm185281wmc.3.2016.02.09.12.03.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 09 Feb 2016 12:03:08 -0800 (PST)
Date: Tue, 9 Feb 2016 23:03:05 +0300
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 1/2] Staging: rts5208: fix check for dma mapping error
Message-ID: <602e0d8d295ea7ba16540be65c025e635015fd6c.1455047275.git.hamohammed.sa@gmail.com>
References: <cover.1455047275.git.hamohammed.sa@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1455047275.git.hamohammed.sa@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

use dma_mapping_error() instead of comparing the returned address with
zero after dma_map_single().

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
Acked-by: Julia Lawall <julia.lawall@lip6.fr>
---
Changes in v2: Make patchset to remove extra parantheses 
Changes in v3: Add acknowledgement. 

 drivers/staging/rts5208/rtsx_transport.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rts5208/rtsx_transport.c b/drivers/staging/rts5208/rtsx_transport.c
index f27491e..0c9549b 100644
--- a/drivers/staging/rts5208/rtsx_transport.c
+++ b/drivers/staging/rts5208/rtsx_transport.c
@@ -653,7 +653,7 @@ static int rtsx_transfer_buf(struct rtsx_chip *chip, u8 card, void *buf,
 		return -ENXIO;
 
 	addr = dma_map_single(&(rtsx->pci->dev), buf, len, dma_dir);
-	if (!addr)
+	if (dma_mapping_error(&rtsx->pci->dev, addr))
 		return -ENOMEM;
 
 	if (card == SD_CARD)
-- 
1.9.1


