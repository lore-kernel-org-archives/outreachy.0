X-GM-THRID: 6338573306714652672
X-Received: by 10.200.45.34 with SMTP id n31mr2067006qta.19.1475814102169;
        Thu, 06 Oct 2016 21:21:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.20.68 with SMTP id h62ls4708982oth.17.gmail; Thu, 06 Oct
 2016 21:21:41 -0700 (PDT)
X-Received: by 10.157.43.169 with SMTP id u38mr4527111ota.117.1475814101856;
        Thu, 06 Oct 2016 21:21:41 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from mail-vk0-x242.google.com (mail-vk0-x242.google.com. [2607:f8b0:400c:c05::242])
        by gmr-mx.google.com with ESMTPS id p131si1825216vkf.1.2016.10.06.21.21.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 06 Oct 2016 21:21:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::242 as permitted sender) client-ip=2607:f8b0:400c:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::242 as permitted sender) smtp.mailfrom=elise.lennion@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x242.google.com with SMTP id 192so1503485vkl.2
        for <outreachy-kernel@googlegroups.com>; Thu, 06 Oct 2016 21:21:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=MXQcloAYLLpLZb1Dd4NucOxz6Iq330oyuTpI0GvWyho=;
        b=ojgiWdEI1C6NfQdkMdqtc3VdJDXbpCFocsIvCq1ACIW9X7N+7ngJtpEQmF18GzEOmD
         sS0vz/08z9mycx3Jmx5qJiVoMETUY4Nn2Cgi0bOQ4EEmakMjkGg+bai4li+eGvu/IV0Z
         /EL/ajePrhRE5Fy3gst17ATPWOZbFfE5G0yTiCx90P4RPL/omRjb36Ls1zy6MjBdmzbD
         5ECBudGn2XUckYV2iSdvBhJkF0eIm8DVM1/dgur+11E/5jRSAxO2T/E2Xl7Nx5hHPgQX
         7OWY8iPJSjY6v+eLjCmgqtFUecFQf9gyw7ZY9qOU2IB+Srr7h6xbspFhbQKTM5ZICHkh
         DAEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=MXQcloAYLLpLZb1Dd4NucOxz6Iq330oyuTpI0GvWyho=;
        b=X/5H/Noe0uAmircgW+lQyGjNPkuasJ7IuVdWF+VavHVcBiVTK6bC/q9bzTZQKmYsMV
         u/JaIVs+0KpUv9YBM+ylNc4t0N++uucls3KHfpN6rzraUYFdpdZE44T3Nde1hj1jQ040
         GlOLdzGqtl21kBWFAhqiWZ876nYS4HqPZ33WfIJYIqfkuY5PYZK13H/P5NBqEMGewc9H
         TyS6/aJiCsR0HPw0s+h8h945O1fuTWck/wK7448LCuVxShedMQo5Q517/cKTN06lqH2r
         2az9LfYdau92CCR2TSwZpdiwp8dLdhLv/XwnInbbsz3vEPzPXO3MXHfFO5knMWR1S4tS
         DI0w==
X-Gm-Message-State: AA6/9RkR6xgFZYdxNyqO4kdANAnPK+QSFUpjNIBw/hotDoLULFPN42qX/TIjJCuwKxkq/Q==
X-Received: by 10.31.83.133 with SMTP id h127mr13833831vkb.166.1475814101678;
        Thu, 06 Oct 2016 21:21:41 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from lennorien.com ([187.64.224.84])
        by smtp.gmail.com with ESMTPSA id m194sm1509402vke.7.2016.10.06.21.21.40
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 06 Oct 2016 21:21:41 -0700 (PDT)
Date: Fri, 7 Oct 2016 01:21:37 -0300
From: Elise Lennion <elise.lennion@gmail.com>
To: aditya.shankar@microchip.com, ganesh.krishna@microchip.com,
	gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: [PATCH 3/4] staging: wilc1000: Replace printk() with pr_info().
Message-ID: <20161007042137.GA22305@lennorien.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix checkpatch warning:

WARNING: Prefer [subsystem eg: netdev]_info([subsystem]dev, ... then dev_info(dev, ... then pr_info(...  to printk(KERN_INFO ...

Replace printk(KERN_INFO...) by pr_info() for more uniform error reporting.

Signed-off-by: Elise Lennion <elise.lennion@gmail.com>
---
 drivers/staging/wilc1000/wilc_debugfs.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/wilc1000/wilc_debugfs.c b/drivers/staging/wilc1000/wilc_debugfs.c
index 802bb1d..70af32e 100644
--- a/drivers/staging/wilc1000/wilc_debugfs.c
+++ b/drivers/staging/wilc1000/wilc_debugfs.c
@@ -69,9 +69,9 @@ static ssize_t wilc_debug_level_write(struct file *filp, const char __user *buf,
 	atomic_set(&WILC_DEBUG_LEVEL, (int)flag);
 
 	if (flag == 0)
-		printk(KERN_INFO "Debug-level disabled\n");
+		pr_info("Debug-level disabled\n");
 	else
-		printk(KERN_INFO "Debug-level enabled\n");
+		pr_info("Debug-level enabled\n");
 
 	return count;
 }
-- 
2.7.4


