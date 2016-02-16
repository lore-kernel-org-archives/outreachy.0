X-GM-THRID: 6251877540046045184
X-Received: by 10.129.125.215 with SMTP id y206mr20841421ywc.54.1455629112697;
        Tue, 16 Feb 2016 05:25:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.27.130 with SMTP id b124ls1630392iob.40.gmail; Tue, 16 Feb
 2016 05:25:12 -0800 (PST)
X-Received: by 10.107.33.140 with SMTP id h134mr1706111ioh.27.1455629112304;
        Tue, 16 Feb 2016 05:25:12 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-qk0-x233.google.com (mail-qk0-x233.google.com. [2607:f8b0:400d:c09::233])
        by gmr-mx.google.com with ESMTPS id w126si2103031ywe.6.2016.02.16.05.25.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Feb 2016 05:25:12 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c09::233 as permitted sender) client-ip=2607:f8b0:400d:c09::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c09::233 as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x233.google.com with SMTP id o6so66401778qkc.2
        for <outreachy-kernel@googlegroups.com>; Tue, 16 Feb 2016 05:25:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=Gq8wfTOuKhk/GQcmOsqAMuEa09p69noCszUfdNCyyDI=;
        b=r/NzOKy95482YE9wUiakRPYB3WH7k700VsYVPUvtGEN17JlYNPOr1vH9DZIrp8joqs
         oXRF6rfhLoJWx3CSwld2N8zN8r74y6gEprYgk4DTtUHHO3qP3DgDyNJPHlDlkpX+ruL4
         g5W6J/NnahtImTihvJbmzB4gC3xFdRKLtiOChPBpCefk/io8jVMv6kET22tea01GSeZv
         83UeP087/KRVBSF8qUjaWMxaE2NbY3mwnEOURmGPWEQJ4f8Zlum7dYLvLlzlkzxuX70G
         +xezfut0+A4N2KByFdHeBQqJM0roBlNuBw2a8oeGZRwiheJYspfdV6tP5oIesal1cg46
         EjKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-type:content-disposition:in-reply-to
         :user-agent;
        bh=Gq8wfTOuKhk/GQcmOsqAMuEa09p69noCszUfdNCyyDI=;
        b=Lio1kLYmCkkSWHep5TiBffz4uwIMPcpxG9hQKugdAkl2GELfBgF89amgCHnOsfx3O1
         VGZp+mFoUr7KzcubgrNHwENyjdVHSuVcJr/AZFo49bqELE7o689TsxIaRGKK/IBOTbhi
         xEnzH8DI81xwR/yRb+MHRt5CA5dI+WUwS1dvH9eHzd78fpMspWDbK91rKMeD8Ib3Lhra
         sUdnuyKUgtsni2sPLN8WDxNHSIxlRe0bgc+CjLwqQeEszmlnYBmNQSTFTtXm4ABNO70G
         J1LYQGdOmNejEUTGQ6MFQdO3w1IN8JUP20k94xuW9uJJiJzzOyKkad9T8sbQmCaTe6gS
         k0sQ==
X-Gm-Message-State: AG10YOSajjlt1HzhWtVloGLCMTDnOu12a01m9TzFDxm2pa+INqI5mOmHMkmct7aA/+Z9vA==
X-Received: by 10.55.79.5 with SMTP id d5mr27415955qkb.30.1455629112138;
        Tue, 16 Feb 2016 05:25:12 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id p80sm13104268qge.0.2016.02.16.05.25.11
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Feb 2016 05:25:11 -0800 (PST)
Date: Tue, 16 Feb 2016 13:24:30 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: linux-wireless@vger-kernel.org
Subject: [PATCH 3/3] staging: wilc1000: wilc_wlan.c: Remove empty else blocks.
Message-ID: <092b535a15024a1db8af0c97fbcb74c5f3d0d1f8.1455645880.git.janani.rvchndrn@gmail.com>
References: <cover.1455645880.git.janani.rvchndrn@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1455645880.git.janani.rvchndrn@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Remove empty else blocks which are no longer necessary.

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
 drivers/staging/wilc1000/wilc_wlan.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/staging/wilc1000/wilc_wlan.c b/drivers/staging/wilc1000/wilc_wlan.c
index 75b9bbb..e5471a7 100644
--- a/drivers/staging/wilc1000/wilc_wlan.c
+++ b/drivers/staging/wilc1000/wilc_wlan.c
@@ -266,11 +266,7 @@ static inline void tcp_process(struct net_device *dev, struct txq_entry_t *tqe)
 				add_tcp_pending_ack(ack_no, i, tqe);
 			}
 
-		} else {
-	
 		}
-	} else {
-
 	}
 	spin_unlock_irqrestore(&wilc->txq_spinlock, flags);
 }
-- 
2.5.0


