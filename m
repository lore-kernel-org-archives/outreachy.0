X-GM-THRID: 6205119636361445376
X-Received: by 10.107.132.81 with SMTP id g78mr29388912iod.10.1444742092872;
        Tue, 13 Oct 2015 06:14:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.57.71 with SMTP id g7ls1466537igq.21.canary; Tue, 13 Oct
 2015 06:14:52 -0700 (PDT)
X-Received: by 10.107.164.154 with SMTP id d26mr13670082ioj.19.1444742092455;
        Tue, 13 Oct 2015 06:14:52 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x22c.google.com (mail-pa0-x22c.google.com. [2607:f8b0:400e:c03::22c])
        by gmr-mx.google.com with ESMTPS id uv4si347932pac.0.2015.10.13.06.14.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2015 06:14:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) client-ip=2607:f8b0:400e:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22c.google.com with SMTP id ex6so21261763pac.3
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Oct 2015 06:14:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=6nCHqLPtu8edD6tlSQQCVg4AS12yDoA3rsK94nq9W/s=;
        b=LH7k9Y2+s+f4DpdOdABN2Voyijlk7VfNxYoyZJyalOkPXIfIpQYc6aeOBlFm88vBNB
         SSJV8pDAqcGSCgzPvPBNKQYYTR5CMU6seKs9bB4sgd96j7lgo4jkKjL5Wpccdw6gpq9A
         2KDyWkLQrMbrAyClI+ANSR0hCucAfRewWCxcNad2XW8kbxHNHqWp4sR1qk6y+FmUMyUk
         FiqSZCCmslTYh40NIMcCDO3GK66FD9LP3ShXtKBBdtLg4AtryYwz65m7+TEm5QQn2d42
         SAz2d/LqTjB4T7ZE+AqdC7oo/5tiuOjWoqMbqvLawrck/lu79C2c3CI+zEz+wIBHTs+b
         3lUQ==
X-Received: by 10.66.144.199 with SMTP id so7mr40832614pab.42.1444742092351;
        Tue, 13 Oct 2015 06:14:52 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id dd4sm3939248pbb.52.2015.10.13.06.14.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2015 06:14:51 -0700 (PDT)
Date: Tue, 13 Oct 2015 18:44:42 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 3/3] Staging: wilc1000: wilc_wfi_netdevice: Remove
 definition of a constant
Message-ID: <854e6d4b0e0a7fc6d8ddae8239b20613e8ee2167.1444741377.git.shivanib134@gmail.com>
References: <cover.1444741377.git.shivanib134@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1444741377.git.shivanib134@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Remove definition of the constant PMKID_FOUND as it is not required to
be used in the entire code.

Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
---
Changes in v2:
        -Remove the definition of constant from header file,
	include one more patch.

 drivers/staging/wilc1000/wilc_wfi_netdevice.h | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/wilc1000/wilc_wfi_netdevice.h b/drivers/staging/wilc1000/wilc_wfi_netdevice.h
index cb21968..553ed60 100644
--- a/drivers/staging/wilc1000/wilc_wfi_netdevice.h
+++ b/drivers/staging/wilc1000/wilc_wfi_netdevice.h
@@ -14,8 +14,7 @@
 #define WILC_WFI_TIMEOUT 5
 #define WILC_MAX_NUM_PMKIDS  16
 #define PMKID_LEN  16
-#define PMKID_FOUND 1
- #define NUM_STA_ASSOCIATED 8
+#define NUM_STA_ASSOCIATED 8
 
 #include <linux/module.h>
 #include <linux/init.h>
-- 
2.1.0


