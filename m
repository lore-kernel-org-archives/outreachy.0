X-GM-THRID: 6205025075895205888
X-Received: by 10.182.106.228 with SMTP id gx4mr30243046obb.34.1444768642944;
        Tue, 13 Oct 2015 13:37:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.27.4 with SMTP id p4ls1612595igg.11.canary; Tue, 13 Oct
 2015 13:37:22 -0700 (PDT)
X-Received: by 10.50.62.68 with SMTP id w4mr18930607igr.13.1444768642495;
        Tue, 13 Oct 2015 13:37:22 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-f46.google.com (mail-pa0-f46.google.com. [209.85.220.46])
        by gmr-mx.google.com with ESMTPS id pe1si477209pac.2.2015.10.13.13.37.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2015 13:37:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 209.85.220.46 as permitted sender) client-ip=209.85.220.46;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 209.85.220.46 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by pabws5 with SMTP id ws5so4167pab.1
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Oct 2015 13:32:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=oeAYxVqXTRBXavYJL4/M92xDr3/CW3uBCGabsl6Q8TY=;
        b=OBC0M8TklIUlHJE/z/3LfLFukiGg6vhO8STEydGmwz69AYtLHUJvhJcWIeIYrwuhaJ
         /Rne42q0qzVMRFF1lgCo40tmapHH4IGZ+tUrwCDvtapaxqch+v2Wi6kV5EwjtApakh9/
         HHVYPzVKp6kBD75vUbH+yiKNNOgiqiqCLaN+oQv1bVpAbZc2I2CKq3ceO7YFtGcxYS0n
         xPG4wLuaLNbb7zhfmukOdC4UHG5g/O/9fdNJkgYXDbm3QjwEBf9X3phq9TBHXXTXVs7K
         gi3KcGuZcwhAzfRX1L4S/OUT+tzSLpiOXJN9HeptueHX2bCosfUSQ29/G9Zla1zvs2gX
         O1pA==
X-Received: by 10.68.202.9 with SMTP id ke9mr43171533pbc.85.1444768342369;
        Tue, 13 Oct 2015 13:32:22 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id ug4sm5514256pac.11.2015.10.13.13.32.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2015 13:32:21 -0700 (PDT)
Date: Wed, 14 Oct 2015 02:02:11 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: wilc1000: host_interface: Remove extra NULL test
Message-ID: <20151013203211.GA8366@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Remove a NULL test on variable hif_drv as it is already preceded by one.

Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
---
 drivers/staging/wilc1000/host_interface.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
index ec04aec..73f99ea 100644
--- a/drivers/staging/wilc1000/host_interface.c
+++ b/drivers/staging/wilc1000/host_interface.c
@@ -4774,11 +4774,6 @@ s32 host_int_set_join_req(struct host_if_drv *hif_drv, u8 *pu8bssid,
 		return s32Error;
 	}
 
-	if (!hif_drv) {
-		PRINT_ER("Driver is null\n");
-		return -EFAULT;
-	}
-
 	if (pJoinParams == NULL) {
 		PRINT_ER("Unable to Join - JoinParams is NULL\n");
 		return -EFAULT;
-- 
2.1.0


