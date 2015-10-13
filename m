X-GM-THRID: 6205239190814195712
X-Received: by 10.182.233.195 with SMTP id ty3mr32272869obc.44.1444769834973;
        Tue, 13 Oct 2015 13:57:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.102.133 with SMTP id w5ls3753114qge.68.gmail; Tue, 13 Oct
 2015 13:57:14 -0700 (PDT)
X-Received: by 10.31.182.10 with SMTP id g10mr30470066vkf.7.1444769834572;
        Tue, 13 Oct 2015 13:57:14 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x236.google.com (mail-pa0-x236.google.com. [2607:f8b0:400e:c03::236])
        by gmr-mx.google.com with ESMTPS id uv4si594471pac.0.2015.10.13.13.57.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2015 13:57:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) client-ip=2607:f8b0:400e:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x236.google.com with SMTP id cn9so521610pad.2
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Oct 2015 13:57:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=oeAYxVqXTRBXavYJL4/M92xDr3/CW3uBCGabsl6Q8TY=;
        b=kfumpX7g83g1+0W1B8tsXXjIeNPvvmgiTMgZGrIyU5yV59q+HEqO5axVKFjYJ3xkOG
         JWlfdpZJH/3isYhMjnjVMi+/FBJ6irFb+P6RFT8hiz12j5dtE1spFbH0YLXUrq91viDg
         oEYtef4VpvvJfKR6QAVht1AKsYaSKtmEodOp+YoRPlZT6gvdk+Pad794qXhykHE3NGvj
         oeGZgvGYJKLgEVZSeFfwndqfJ3fTJpSk4ljapyPFbhydA/Itu2taUBp12hV8s+rXl+Qe
         cnXgUhCSIT1L7Gf0OjxTrLGIDpYTwnVcVPb037e3/J5vuvkfipWbPS7VXHCao5QoiVTZ
         temw==
X-Received: by 10.69.17.195 with SMTP id gg3mr42391779pbd.166.1444769834440;
        Tue, 13 Oct 2015 13:57:14 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id bh4sm5518312pbb.62.2015.10.13.13.57.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2015 13:57:13 -0700 (PDT)
Date: Wed, 14 Oct 2015 02:27:04 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: wilc1000: host_interface: Remove unnecessary NULL
 test
Message-ID: <20151013205704.GA10385@ubuntu>
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


