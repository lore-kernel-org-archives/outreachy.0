X-GM-THRID: 6332335989632008192
X-Received: by 10.157.17.197 with SMTP id y5mr931413oty.104.1474362069805;
        Tue, 20 Sep 2016 02:01:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.26.6 with SMTP id a6ls1441047ote.22.gmail; Tue, 20 Sep
 2016 02:01:09 -0700 (PDT)
X-Received: by 10.129.132.208 with SMTP id u199mr5694550ywf.71.1474362069452;
        Tue, 20 Sep 2016 02:01:09 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id 7si6030772pfw.1.2016.09.20.02.01.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Sep 2016 02:01:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id oz2so657654pac.0
        for <outreachy-kernel@googlegroups.com>; Tue, 20 Sep 2016 02:01:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=/btu8MRr8uGXQz6doZOYoeP9C0C9fRQeIqij1ouRPTQ=;
        b=VRaStqIgrve09QNwB/dh7c9KYfZyBTBIA2NdbkPfhub+0o1tFK7BGMljYt/CYebAgH
         /CnIjtrEUvFr0wMa7waMNH4v9/aV9YK1NCiBqi/aPEJZNt2TKND5JgbAGbePzIgGszks
         /CMzduLaLrMQAs2bT37bxiwW5VMB3yXpeY0LS5tKX1MUYLfAAa1ofhlLxIOU5qlk9muI
         cbHpo8DaUnVpSVAy9iv7JSDD6VKroJ8XdQPu5l3Z4Fzq1iqTGF73T7c2AKdbkCT5yKhb
         1zVX26YSpYlU1/jTlanncZbww7IiDpyT7c6VJ04Jsp39eRqQa50EL2nR2agtlTR/iRwk
         6zCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=/btu8MRr8uGXQz6doZOYoeP9C0C9fRQeIqij1ouRPTQ=;
        b=cIIS/pbanwyMtfm/DEtvHxGIvzbI91uD54ZrhG5+Tw6hVYQfOIAxj52VZ4El6dGCau
         byPfQdoz2kAso1l6Z9RMcjC55+YYiOFM2Iu/n2H1ITI/3FPZ9EERifMKe+yhhpuwXWi9
         xe76ZltVEMnDeg0/fbL36jsQH3Zi0kYJ5m+JV9Wohf5RyMWD7cQ8dRR0TRKHM5U6aAIT
         e5kbOujHQQQJVQ/01jPigCZYVXFdpihZdmAHiiN5OM+/hPuF/9fKugDyYFiRdUVbhzhn
         KbP9TBnzGX8XeU6dskbww9bDGqj6ejfdaWIY1zZMudjPRDRnUE42TZkAaTuwc/FKmTTW
         azQQ==
X-Gm-Message-State: AE9vXwMKqe5Up39sySoRKwT6bFPlI6NxRAIkSfSlKA3hzUgJgYBtazFPpy0Qv7WIXo8y9A==
X-Received: by 10.66.193.199 with SMTP id hq7mr53585010pac.70.1474362068924;
        Tue, 20 Sep 2016 02:01:08 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([122.170.179.109])
        by smtp.gmail.com with ESMTPSA id 21sm28983284pfo.80.2016.09.20.02.01.06
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Tue, 20 Sep 2016 02:01:08 -0700 (PDT)
Date: Tue, 20 Sep 2016 14:31:50 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Larry.Finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org
Subject: [PATCH 1/4] Staging: rtl8712: rtl8712_efuse: Use !x instead of x ==
 NULL.
Message-ID: <3d7064fccab9036f91e927429f904141b47467ce.1474360940.git.bankarsandhya512@gmail.com>
References: <cover.1474360939.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1474360939.git.bankarsandhya512@gmail.com>
User-Agent: Mutt/1.5.20 (2009-12-10)

Use !x instead of x == NULL. This patch was found by checkpatch.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/rtl8712/rtl8712_efuse.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl8712_efuse.c b/drivers/staging/rtl8712/rtl8712_efuse.c
index 76f60ba..205298e 100644
--- a/drivers/staging/rtl8712/rtl8712_efuse.c
+++ b/drivers/staging/rtl8712/rtl8712_efuse.c
@@ -248,7 +248,7 @@ u8 r8712_efuse_pg_packet_read(struct _adapter *padapter, u8 offset, u8 *data)
 	u8 tmpdata[PGPKT_DATA_SIZE];
 	u8 ret = true;
 
-	if (data == NULL)
+	if (!data)
 		return false;
 	if (offset > 0x0f)
 		return false;
-- 
1.7.1


