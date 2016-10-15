X-GM-THRID: 6341764941506150400
X-Received: by 10.66.217.196 with SMTP id pa4mr4025870pac.16.1476557213963;
        Sat, 15 Oct 2016 11:46:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.20.72 with SMTP id 69ls3854256iou.32.gmail; Sat, 15 Oct
 2016 11:46:51 -0700 (PDT)
X-Received: by 10.98.131.200 with SMTP id h191mr4946377pfe.9.1476557211427;
        Sat, 15 Oct 2016 11:46:51 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from mail-ua0-x243.google.com (mail-ua0-x243.google.com. [2607:f8b0:400c:c08::243])
        by gmr-mx.google.com with ESMTPS id p131si3822689vkf.1.2016.10.15.11.46.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 15 Oct 2016 11:46:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c08::243 as permitted sender) client-ip=2607:f8b0:400c:c08::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c08::243 as permitted sender) smtp.mailfrom=elise.lennion@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ua0-x243.google.com with SMTP id p25so453766uaa.0
        for <outreachy-kernel@googlegroups.com>; Sat, 15 Oct 2016 11:46:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=c9lqY10fZdngl/fqzYuyBWIYmGk9XaD/5a+6oLdLm2Q=;
        b=MTIeqw6MJsWb2CNtitmMaqFHjdl4rXLokteTXxKXQG+qWMV8vm9owhvp7JULJWm7iA
         ON4rD2Iz89MKXqGXWzCWde14BOLLIe2VydOMzzaXfGqlDCYxGC7azQHIQsvSCtqJIzTg
         Re5IoLiVDkgxMOYuo+6PlEHliarN0KbPDi2N5ScKtppo720d1P4iNkBJ0dFO6n3kRY5c
         qzPqsftQffM2ssjNrU9uPgXIV8/a2CL71SEPZvtiQ91fKFXo/j4G6OQNMY9Ho1lArzDV
         Lf5fFtTB9mwU1PueTuRyN4JSgBzVkquzGi6A2rCwLH9ahrIYGKsXiw5hcHlg1JoNuwzF
         MdvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=c9lqY10fZdngl/fqzYuyBWIYmGk9XaD/5a+6oLdLm2Q=;
        b=Y+P8AuBkQBDjILEa9VAZjPaSIKFJbzGMJQ7jcK/ZPqG/mPp4d0+H47ldOKTZFro63n
         kb06VcohZ9tp3jshQcGKBL1GtZC30Hu1Mjsd3qdr9Hmw54b7Raivh7EGRX9AvO0u/7lE
         39vvudm7HDrUgI+0MUdq8DM02l7IFtVAIkFjanHlmdE0iRPsIwI5BIRuF2DbUvceyEvy
         HaNKGxJV7rEBfAD5xvJFcZzEEkeJTfmcDNB4qq1bYKMGKeL+nJ5yDmWZLSKfLSjKKZLC
         gfr9x/v+RGYntmDrzKKw2sXSRviJqkd/ihDCZG43ccxa8yj++cd6NXHYgMOIZlG/FQxW
         CPlg==
X-Gm-Message-State: AA6/9RlLL3Ti80S55YWyn9Q7XOeuu0kw1sfc6zqxSrO6jHlsCMmD5KTnZiN3RhBURBQQRQ==
X-Received: by 10.159.38.194 with SMTP id 60mr1980506uay.152.1476557211224;
        Sat, 15 Oct 2016 11:46:51 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from lennorien.com ([187.64.224.84])
        by smtp.gmail.com with ESMTPSA id u21sm950253uaa.19.2016.10.15.11.46.49
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 15 Oct 2016 11:46:50 -0700 (PDT)
Date: Sat, 15 Oct 2016 15:46:44 -0300
From: Elise Lennion <elise.lennion@gmail.com>
To: aditya.shankar@microchip.com, ganesh.krishna@microchip.com,
	gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: wilc1000: Remove unnecessary extern variables.
Message-ID: <20161015184643.GA2580@lennorien.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

The externs were removed because there are already declarations
in wilc_wlan.h for them.

Signed-off-by: Elise Lennion <elise.lennion@gmail.com>
---
 drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
index fca96d3..a5e2d96 100644
--- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
+++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
@@ -90,9 +90,6 @@ static const struct wiphy_wowlan_support wowlan_support = {
 #define IS_MGMT_STATUS_SUCCES			0x040
 #define GET_PKT_OFFSET(a) (((a) >> 22) & 0x1ff)
 
-extern int wilc_mac_open(struct net_device *ndev);
-extern int wilc_mac_close(struct net_device *ndev);
-
 static struct network_info last_scanned_shadow[MAX_NUM_SCANNED_NETWORKS_SHADOW];
 static u32 last_scanned_cnt;
 struct timer_list wilc_during_ip_timer;
-- 
2.7.4


