X-GM-THRID: 6387793530273660928
X-Received: by 10.157.47.173 with SMTP id r42mr1248382otb.15.1487274079948;
        Thu, 16 Feb 2017 11:41:19 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.79.79 with SMTP id c76ls765171itb.21.gmail; Thu, 16 Feb
 2017 11:41:19 -0800 (PST)
X-Received: by 10.36.105.6 with SMTP id e6mr4604611itc.26.1487274079138;
        Thu, 16 Feb 2017 11:41:19 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id z73si256772pfa.2.2017.02.16.11.41.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Feb 2017 11:41:19 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id 19so2255068pfo.3
        for <outreachy-kernel@googlegroups.com>; Thu, 16 Feb 2017 11:41:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:message-id:mime-version:content-disposition
         :user-agent;
        bh=EBFYAsrOY0RQBTWamf40yGtHbFIUAhJFg4F5MelBxR0=;
        b=aMoCmDCaEQqUTtf+jr1U+wgNFzZpclsfslC512em4Nq1oohq08jva4RYDwaSS6GXXM
         n7/6vVdJT/fyyyhPYeVEXUztz56zX3ujq3NSipvv2Zd1Da98mRKIFwY/HdbDIqI32qEg
         HZpNbYCJ17jhC36CLBNO3878nOgKlBQnJ3dBEYU3t6Tri8nr2OWJVV1xcbji8PSr3EL9
         xIrfYZXQg7NONwf1wSLgo54MemhRCojiVrCF66ngemz/7RoAfaQzStkDqYxW3Rquj6Tl
         aSJaEG7MQEm6NAFIzfU9pZ50NmzZ6g+Ozz8Zt1W0h0ITkNEZrMeTPhMqMFhP80EoQ+/3
         8GqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:message-id:mime-version
         :content-disposition:user-agent;
        bh=EBFYAsrOY0RQBTWamf40yGtHbFIUAhJFg4F5MelBxR0=;
        b=tudhOOw/n38n0SgIEM8X/fAwl7BCYNgQwI7W9UvGA2/qi4N6T4D2XBSb2WELMeNJzr
         CuYVBPLRSZXgryNxK+hpOZxe0YCEbTzZk6w3Nwv3GSZ0wxG8Gjpj4VssG6VgYhPGaxAC
         J9fOt3SHqaUJEvizQDPriRhgfvUuh/ULAKFX3XOTnADNfPWvkTGAImSnm21QYk3HuQoC
         REgO4hl49FvbNw6QE0o8jPFEn3nN5dP4irwGstInqcV6E/JeAjBMi+hfmAaAkSKOMx2H
         u2p2rI2ddLYBquVFKcPc8B0EelGe1bvD76cTkQcLuAvEg3AB/3BGXntoRL7odWv2mwrN
         wl5A==
X-Gm-Message-State: AMke39mW9JewtoM1TzWCXbuAlY8bPLVSMJQEofcQx69kBLIp70AbyupQJhfiihYO0YqT0A==
X-Received: by 10.98.80.146 with SMTP id g18mr4672905pfj.74.1487274078927;
        Thu, 16 Feb 2017 11:41:18 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id g70sm15135228pfb.50.2017.02.16.11.41.16
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 16 Feb 2017 11:41:17 -0800 (PST)
Date: Fri, 17 Feb 2017 01:11:14 +0530
From: simran singhal <singhalsimran0@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com, devel@driverdev.osuosl.org
Message-ID: <20170216194114.GA17810@singhal-Inspiron-5558>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

linux-kernel@vger.kernel.org
Bcc: 
Subject: [PATCH 1/3] staging: rtl8192u: Replace symbolic permissions with
 octal permissions
Reply-To: 

WARNING: Symbolic permissions 'S_IRUGO | S_IWUSR' are not preferred.
Consider using octal permissions '0644'.
This warning is detected by checkpatch.pl

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211_module.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_module.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_module.c
index a9a92d8..2ebc320 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_module.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_module.c
@@ -283,7 +283,7 @@ int __init ieee80211_debug_init(void)
 				" proc directory\n");
 		return -EIO;
 	}
-	e = proc_create("debug_level", S_IRUGO | S_IWUSR,
+	e = proc_create("debug_level", 0644,
 			      ieee80211_proc, &fops);
 	if (!e) {
 		remove_proc_entry(DRV_NAME, init_net.proc_net);
-- 
2.7.4


