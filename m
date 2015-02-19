X-GM-THRID: 1041667981312
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,35bd55723637087e,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.182.79.168 with SMTP id k8mr6940796obx.49.1424384639727;
        Thu, 19 Feb 2015 14:23:59 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.37.84 with SMTP id q78ls836938qgq.46.gmail; Thu, 19 Feb
 2015 14:23:59 -0800 (PST)
X-Received: by 10.236.210.113 with SMTP id t77mr2654067yho.13.1424384639578;
        Thu, 19 Feb 2015 14:23:59 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pa0-x233.google.com (mail-pa0-x233.google.com. [2607:f8b0:400e:c03::233])
        by gmr-mx.google.com with ESMTPS id xj4si2708289pbc.2.2015.02.19.14.23.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Feb 2015 14:23:59 -0800 (PST)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) client-ip=2607:f8b0:400e:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x233.google.com with SMTP id et14so2913298pad.11
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Feb 2015 14:23:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=gI9ZVzDWXP9vQc/Do4psD1LfhCqO8gbBjOa3qeNzkNs=;
        b=qnom/FslL9zU2rN7RlWzKX1P7y7qolqwANRAEjoCD7X6QatBP4ZFuwXJix1IadJBfy
         pdFgxb7Pz79vLrL/eIY7ZUNMp2bKCjC6fS+HlYXzOvFoXV/ViX7Sy5DFDGY+FxLTeqcS
         uB2SHZzz3LQxVxC5F44i4IQLb9GQt1G7ZlzH8qPR1fkK0vuHghFWbG69ePwvMTeXx2DE
         NXuKbMKYBoFPGdKww80HIYb2a8Yk0JlqOUNhQjEO7b4H5t/LrFxWEJT0WYoD0ZbS7vPl
         JlowOVi8ode25Txo/T1AVB6H/OqLEojM4GT4wnYa/KaQLapfREyUf2Ni1fh2gBLMQ+aq
         hRZw==
X-Received: by 10.67.10.227 with SMTP id ed3mr11142193pad.91.1424384639469;
        Thu, 19 Feb 2015 14:23:59 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from batra ([14.139.82.6])
        by mx.google.com with ESMTPSA id gk1sm24690290pbb.61.2015.02.19.14.23.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 19 Feb 2015 14:23:58 -0800 (PST)
Date: Fri, 20 Feb 2015 03:53:42 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: media: Add newline after variable declarations
Message-ID: <20150219222341.GA976@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch is to add a newline after variable declarations
to follow kernel coding conventions.

Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---
 drivers/staging/media/tlg2300/pd-alsa.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/staging/media/tlg2300/pd-alsa.c b/drivers/staging/media/tlg2300/pd-alsa.c
index 7a07a1d..00b329e 100644
--- a/drivers/staging/media/tlg2300/pd-alsa.c
+++ b/drivers/staging/media/tlg2300/pd-alsa.c
@@ -254,6 +254,7 @@ snd_pd_capture_pointer(struct snd_pcm_substream *substream)
 {
 	struct poseidon *p = snd_pcm_substream_chip(substream);
 	struct poseidon_audio *pa = &p->audio;
+
 	return pa->rcv_position;
 }
 
@@ -261,6 +262,7 @@ static struct page *snd_pcm_pd_get_page(struct snd_pcm_substream *subs,
 					     unsigned long offset)
 {
 	void *pageptr = subs->runtime->dma_area + offset;
+
 	return vmalloc_to_page(pageptr);
 }
 
-- 
1.9.1


