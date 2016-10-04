X-GM-THRID: 6337746804060192768
X-Received: by 10.98.37.2 with SMTP id l2mr361919pfl.29.1475621667942;
        Tue, 04 Oct 2016 15:54:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.156.13 with SMTP id f13ls5024577ioe.45.gmail; Tue, 04 Oct
 2016 15:54:23 -0700 (PDT)
X-Received: by 10.66.22.100 with SMTP id c4mr1171629paf.110.1475621663667;
        Tue, 04 Oct 2016 15:54:23 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from mail-yw0-x241.google.com (mail-yw0-x241.google.com. [2607:f8b0:4002:c05::241])
        by gmr-mx.google.com with ESMTPS id v21si2797889ywa.7.2016.10.04.15.54.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 04 Oct 2016 15:54:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:4002:c05::241 as permitted sender) client-ip=2607:f8b0:4002:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:4002:c05::241 as permitted sender) smtp.mailfrom=elise.lennion@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-yw0-x241.google.com with SMTP id g192so8623546ywh.0
        for <outreachy-kernel@googlegroups.com>; Tue, 04 Oct 2016 15:54:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=0uFfoUeIN880v+HwmNvvR1KZKLZy3hrzpTyBYbAmr0s=;
        b=CQkBOluCJz5Bqn66nXM77aeqapk13c+bKRzRpZ4dqIZGVYOGnW2DdntRAAC+WRBDgR
         ruTtF3y1nDWNEcxi5GaGRO9A8xGd6NEjZRRCqfWdYGtQpjJIAGiI0XhXXUw0tUTpZbCT
         GmLUzkpnFIe0Nt/OVIALWI/5/gphqINRE3fBT1ADhQ9N0eezouISzg5p5Hz18nIh+aSm
         5xApvfAX+XjOpRz6TbUwLjTXGNMANHdl0RHoVC6eYD+XuKc/LNfXDu2M+k+jj8kkl+X9
         PMI6obWx+aDyhq829Vi7t7PGcGkGR5jbbov4Om/DAfAr3h2RGmwd5i+SDZf7j15MKFzo
         OjEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=0uFfoUeIN880v+HwmNvvR1KZKLZy3hrzpTyBYbAmr0s=;
        b=iNG4YV6I2N/CP48OeDaHkBtRChPssuRUi4DJ22A+DRx7RPHMEqGohG8Bmjw/EIvPR+
         TSfPnWn9sB1nA9zlSBxcbre3tvuXrK09ty+HjCOKWATJEDdl2B1nr++nKESvUUQndSwf
         yOSBR2BQgx66a7C15vqwD/FhFtOi0oJulUCnWOoIV9S3lFPgOyjpNlw3qIKQJUaZZEVt
         nuvcaXf3ASRtrOQ0f8vgtuwj4PnMqc0MLRFnHLq4irAcDKClJ9cjwir1e1JSIPlc9SlR
         yyuy8sXzLNo4WPON27b2QgO1/0REhVHvU8wfXZr7vmJSY+RGcfU1ccoH3Wismlv3P2i+
         er3w==
X-Gm-Message-State: AA6/9RmCi/tW1pUwOzcx2RIe7P0gtO5u6Ay4saCLfNroI6WeMTD/TOxkSnSkA/LxTczRag==
X-Received: by 10.37.31.196 with SMTP id f187mr4766113ybf.56.1475621663451;
        Tue, 04 Oct 2016 15:54:23 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from lennorien.com ([187.64.224.84])
        by smtp.gmail.com with ESMTPSA id v6sm3530608ywd.32.2016.10.04.15.54.19
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 04 Oct 2016 15:54:23 -0700 (PDT)
Date: Tue, 4 Oct 2016 19:54:14 -0300
From: Elise-Lennion <elise.lennion@gmail.com>
To: sudipm.mukherjee@gmail.com, teddy.wang@siliconmotion.com,
	gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: sm750fb: Replace printk() with pr_info().
Message-ID: <20161004225414.GA5712@lennorien.com>
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

v2: Fixed new checkpatch warning noted by Julia Lawall <julia.lawall@lip6.fr> 
Reworked to use pr_info() instead of printk()

---
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


