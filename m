X-GM-THRID: 6395446243166781440
X-Received: by 10.129.88.85 with SMTP id m82mr13196599ywb.97.1489333135405;
        Sun, 12 Mar 2017 08:38:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.68.202 with SMTP id p10ls6329749otg.18.gmail; Sun, 12 Mar
 2017 08:38:55 -0700 (PDT)
X-Received: by 10.157.9.138 with SMTP id q10mr11695545otd.21.1489333135096;
        Sun, 12 Mar 2017 08:38:55 -0700 (PDT)
Return-Path: <aishpant@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id c123si2677237pfa.4.2017.03.12.08.38.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Mar 2017 08:38:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id 77so15483603pgc.0
        for <outreachy-kernel@googlegroups.com>; Sun, 12 Mar 2017 08:38:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=SbQyVQhniHAgOIPH2FKLk1tfc2k7w2JL9CBjtwb5jys=;
        b=Kw+zUm68dK20rT0F73aI5q4N12+DGAKn3jYi/KbAdncxVN1p63DxZvd2103fyhcEbj
         6ed+3W8M3KAGoBsgYV6ScuUpz6oTcy4AwQIKvIuVdGo6j/7ZoUhRS5XL1oGXgg5OJxkF
         /F1SY2p7TJVEcaO/3ENb7esgPBjRPDSnPdT72lCY6xECeRkAnt7qPxt3gdJ6dIxYsm7s
         HA2aeIcLsmvPHiUj1ZyukAirXl3JxnLto7tFHG8QMyDVQzrgt6niYvxYPhxmZPan5U5A
         Yabzz5Re1ddLpTYPzimLbRm8ja8H3+nifJoCumlxTDtD1+S4ZSmlGDCNbqjn6SYR5AW3
         1y/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=SbQyVQhniHAgOIPH2FKLk1tfc2k7w2JL9CBjtwb5jys=;
        b=ncRQkCzrCCPP/mL3ISTjuNmGlDnhI3nilFc7iuy1WV6ilVQWieU9/bzTtGuL3cv3lO
         E6pP7iSbVjDOOpmD5uwBkG5SmjKjMsa3/1Lvk0utOmaH72fwGeWqx2fK82FdnAWdhpvx
         /NJqWBWZ1LomzSvzApzKwdZ5xWm0m1SNwqO54TT19e2sYKLuEDngRT+AfpCCTuSHvFES
         HjOxl/c4hKkdjkuk9ZBowvJzqjmuLvyjR/xKh8aPSpZiozyX2Wgiy/D+5gcF8gRQJ/Bk
         zP1tK9ATHhDZogRaQ92GXB6XFJV/VqMO3RddM0nZx6YXF1nnQ9HTQf1ruaq9lvavIIMQ
         6GOQ==
X-Gm-Message-State: AMke39mQskz8MEKUVCmBFbfroQvsObxigKntZEY+BGJxvkcy2hNEFW4HgV1txBow2Y6uwQ==
X-Received: by 10.84.225.146 with SMTP id u18mr41507120plj.157.1489333134692;
        Sun, 12 Mar 2017 08:38:54 -0700 (PDT)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([49.35.14.30])
        by smtp.gmail.com with ESMTPSA id a62sm29042692pgc.60.2017.03.12.08.38.52
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Mar 2017 08:38:54 -0700 (PDT)
Date: Sun, 12 Mar 2017 21:08:43 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v7 1/6] staging: bcm2835-audio: Replace kmalloc with kzalloc
Message-ID: <32f05da9856a627d5ccfc3944c3db23ff653537d.1489332734.git.aishpant@gmail.com>
References: <cover.1489332734.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1489332734.git.aishpant@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Replace kmalloc and memset with kzalloc.

Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
---
 drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
index d8a8e91..66a35ee 100644
--- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
+++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
@@ -290,11 +290,10 @@ vc_vchi_audio_init(VCHI_INSTANCE_T vchi_instance,
 		return NULL;
 	}
 	/* Allocate memory for this instance */
-	instance = kmalloc(sizeof(*instance), GFP_KERNEL);
+	instance = kzalloc(sizeof(*instance), GFP_KERNEL);
 	if (!instance)
 		return NULL;
 
-	memset(instance, 0, sizeof(*instance));
 	instance->num_connections = num_connections;
 
 	/* Create a lock for exclusive, serialized VCHI connection access */
-- 
2.7.4


