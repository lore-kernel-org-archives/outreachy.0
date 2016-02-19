X-GM-THRID: 6252877113258409984
X-Received: by 10.98.8.15 with SMTP id c15mr10861567pfd.0.1455861402170;
        Thu, 18 Feb 2016 21:56:42 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.230.71 with SMTP id sw7ls1597479obc.23.gmail; Thu, 18 Feb
 2016 21:56:41 -0800 (PST)
X-Received: by 10.182.120.106 with SMTP id lb10mr11222861obb.24.1455861401772;
        Thu, 18 Feb 2016 21:56:41 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x231.google.com (mail-pa0-x231.google.com. [2607:f8b0:400e:c03::231])
        by gmr-mx.google.com with ESMTPS id 79si1428431pft.0.2016.02.18.21.56.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Feb 2016 21:56:41 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) client-ip=2607:f8b0:400e:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x231.google.com with SMTP id ho8so45629556pac.2
        for <outreachy-kernel@googlegroups.com>; Thu, 18 Feb 2016 21:56:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=0VwGeVH3SmDKqPTVlly25ZeSE3/ltkRI7cotJsVsDsY=;
        b=Y+qNqxW6wPV0yWhlCAVaakeM1ULgwbWop5AoG9/kmbzORxPKHHUGLJvF/YcfxQ1mFa
         cIz0BQ8NuIBjLXD+CRDdcgc49eJUtkhB0BhbcFask+PAGT70yUV781NrKuz/NX+boHy3
         h2rzQ9E3Z552DbwpoDD7KGs5zq22xQNouXKrYpLpPlNmGeKSEAkco49RTzYXRZ32cs5m
         HRmCgGOBOTxRTAlZwLe3elKSup8tJ7+3WEdUwMZiWoI2WVSLdN4NZHiQFKVpRxFzewJn
         KFftNcB1nw3kDb1wprsH9fY0VEVgoU3WmBm024ru6e0M3Gn3w5yyvS9f+aqjO6QUJmkA
         tWSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=0VwGeVH3SmDKqPTVlly25ZeSE3/ltkRI7cotJsVsDsY=;
        b=Tb2FYdSWqdwYEszTMu3O7CmOy24JZH467XH/iXJiscGdo6Xph+uK4/k0C8p2qEToVg
         MAq1NRUpeNY9IdZudx7vNb25Y1Y7IVwElJ2wUddDCs9KlZxVycVC6HDVFGgLYSAY4cRn
         h+YtyobSrSAJT0w3CDWEqrQerp54yGwAorJxn63c08iFvSM6BHPZLlInorM2MwWNTImk
         iiK+CflHVyZ/WzS6iMEVZ7DgArd5IEymvwYXBgrK2W5EFs9BJPlsD073EDL31j+xhTE3
         MQS4dxVG6kvU5WY/eMao1lzq0PZkJRHSMnYl0h6jOj8vHgmfRAnotXaMizGmfwWCvYLT
         vDYA==
X-Gm-Message-State: AG10YOQrSyEWz7TcGFRm79iNa86CEgWB2xbcO445zCZKqP0csxLRr4YEjbOGJo/B5iHhlw==
X-Received: by 10.66.222.101 with SMTP id ql5mr15814739pac.144.1455861401588;
        Thu, 18 Feb 2016 21:56:41 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([171.48.49.90])
        by smtp.gmail.com with ESMTPSA id d22sm14481755pfj.32.2016.02.18.21.56.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Thu, 18 Feb 2016 21:56:41 -0800 (PST)
Date: Fri, 19 Feb 2016 11:26:38 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: fsl-mc: Drop owner assignment from platform_driver
Message-ID: <20160219055637.GA29461@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

platform_driver does not need to set an owner because
platform_driver_register() will set it.

Generated-by: scripts/coccinelle/api/platform_no_drv_owner.cocci

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/fsl-mc/bus/mc-bus.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/fsl-mc/bus/mc-bus.c b/drivers/staging/fsl-mc/bus/mc-bus.c
index 9317561..c42bfac 100644
--- a/drivers/staging/fsl-mc/bus/mc-bus.c
+++ b/drivers/staging/fsl-mc/bus/mc-bus.c
@@ -795,7 +795,6 @@ MODULE_DEVICE_TABLE(of, fsl_mc_bus_match_table);
 static struct platform_driver fsl_mc_bus_driver = {
 	.driver = {
 		   .name = "fsl_mc_bus",
-		   .owner = THIS_MODULE,
 		   .pm = NULL,
 		   .of_match_table = fsl_mc_bus_match_table,
 		   },
-- 
1.9.1


