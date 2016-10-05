X-GM-THRID: 6337746804060192768
X-Received: by 10.13.220.66 with SMTP id f63mr2838533ywe.129.1475700775694;
        Wed, 05 Oct 2016 13:52:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.12.40 with SMTP id 37ls1620788otr.33.gmail; Wed, 05 Oct
 2016 13:52:55 -0700 (PDT)
X-Received: by 10.237.55.97 with SMTP id i88mr337931qtb.60.1475700775034;
        Wed, 05 Oct 2016 13:52:55 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from mail-vk0-x244.google.com (mail-vk0-x244.google.com. [2607:f8b0:400c:c05::244])
        by gmr-mx.google.com with ESMTPS id o72si1173212vkc.0.2016.10.05.13.52.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 05 Oct 2016 13:52:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::244 as permitted sender) client-ip=2607:f8b0:400c:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::244 as permitted sender) smtp.mailfrom=elise.lennion@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x244.google.com with SMTP id b186so4009095vkb.3
        for <outreachy-kernel@googlegroups.com>; Wed, 05 Oct 2016 13:52:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=1uEa1f15uZ6aUsAupLrO4/Tgk8K7qtH0t+K8w9eMxL8=;
        b=nUwAo9lhetEpsLR21PdfOBLx1AA4NRuI59h6TOzlU2pb7KAUhFKC14DPk8fJs31BmU
         cBrRzTUm9XGa+F2CkKezGo3x4uC+GWUVt6XDGdmr/bpJzqlETZ/gyznXL07hxtmh3wpQ
         8aP0pWsrK/X8m2BDnqvHJ833vy2jU4k+HbV8pQjZAmNB9s8cufYdTMtyZouTQiqkrbaW
         JZP+cON+I5ZuweGKLwDMeW9pbMtUG7SYaSSvYIAKALrA2PQHw6J2d9H7IcUCCnOr2lG/
         BGrYf15iQ6ICqesJkHlH+5fcc+Ja8dgLO/KBymzvvF4RjzJ71DLZtaNfSvoE0a8HW9Qk
         JvDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=1uEa1f15uZ6aUsAupLrO4/Tgk8K7qtH0t+K8w9eMxL8=;
        b=bhcQ/TZy3TcRFBzzimzWfwPm+bVG842zEyrGxvMg+feGINiGul097YI53lGw6xT1A2
         +hYIoKG/RD7TvEnnwt3iazE32mIT9c9PSgMNkT5C8erxwgpvR0d//29/BzpP4KzNDwwQ
         BB9x1zV2nrP7mjVkFFHVBcolW4caUdkvaj0V1SyPbBUjI+zTMeqxVqMArR1/LGwo5sYu
         1TTuRvEvOBpvHJBdNC6kvr+Sv0Flno5vUz3s9SZW/GddQ32f667MmurVapoogqngbTP6
         aRfHJ5ju8HuZpJDJaqx3aC7xKoVfag9KBumP+4NvXbgjG88VKddv0p1V7wweaS8r+iih
         AorQ==
X-Gm-Message-State: AA6/9Rn3QTyLiKF89we9dHQ/5D2am8TJPLC2vI/M0XPrP+2Idq7fMfi1+5bnvZRGrHUvBg==
X-Received: by 10.31.234.194 with SMTP id i185mr8329606vkh.127.1475700774884;
        Wed, 05 Oct 2016 13:52:54 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from lennorien.com ([187.64.224.84])
        by smtp.gmail.com with ESMTPSA id d65sm3600218vke.20.2016.10.05.13.52.52
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 05 Oct 2016 13:52:54 -0700 (PDT)
Date: Wed, 5 Oct 2016 17:52:47 -0300
From: Elise Lennion <elise.lennion@gmail.com>
To: sudipm.mukherjee@gmail.com, teddy.wang@siliconmotion.com,
	gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: [PATCH v3] staging: sm750fb: Replace printk() with pr_info().
Message-ID: <20161005205247.GA8857@lennorien.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix checkpatch warning:

WARNING: printk() should include KERN_ facility level

New checkpatch warning appears after including KERN_ facility level.

Fix checkpatch warning:

WARNING: Prefer [subsystem eg: netdev]_info([subsystem]dev, ... then dev_info(dev, ... then pr_info(...  to printk(KERN_INFO ...

Signed-off-by: Elise Lennion <elise.lennion@gmail.com>
---

v2: Fixed new checkpatch warning noted by Julia Lawall <julia.lawall@lip6.fr>
Reworked to use pr_info() instead of printk()

 drivers/staging/sm750fb/ddk750_help.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_help.c b/drivers/staging/sm750fb/ddk750_help.c
index 9637dd3..475a943 100644
--- a/drivers/staging/sm750fb/ddk750_help.c
+++ b/drivers/staging/sm750fb/ddk750_help.c
@@ -11,7 +11,5 @@ void ddk750_set_mmio(void __iomem *addr, unsigned short devId, char revId)
 	devId750 = devId;
 	revId750 = revId;
 	if (revId == 0xfe)
-		printk("found sm750le\n");
+		pr_info("found sm750le\n");
 }
-
-
-- 
2.7.4


