X-GM-THRID: 6205270918308036608
X-Received: by 10.68.94.1 with SMTP id cy1mr15025003pbb.14.1444777221062;
        Tue, 13 Oct 2015 16:00:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.58.81 with SMTP id o17ls1608394obq.52.gmail; Tue, 13 Oct
 2015 16:00:20 -0700 (PDT)
X-Received: by 10.182.128.101 with SMTP id nn5mr31007280obb.31.1444777220334;
        Tue, 13 Oct 2015 16:00:20 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x22f.google.com (mail-pa0-x22f.google.com. [2607:f8b0:400e:c03::22f])
        by gmr-mx.google.com with ESMTPS id el2si593281pbb.0.2015.10.13.16.00.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2015 16:00:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) client-ip=2607:f8b0:400e:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22f.google.com with SMTP id cn9so3007426pad.2
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Oct 2015 16:00:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=WoNcCOh1xvnxtSsTPyZ3hUxGnyrFcarpulZ6qdVDPTM=;
        b=lX7GVcPPwEmSbb7LZosVlOM4dU5q+Mn6GeR+Rk2wjKXXhxdQDRkz8lMFNrRDT0TRq2
         InyXPvSetZ88e0svlZcu9ph67L99u83iCG8A8YLU93mQOTyCea5oyeN50fBIUnspKi/t
         jieNSYXZgVO62V/LkJVz5ujxC+czUvcfC6tYy6OyZmaMu36C7KXGsL0kR0Ysgu4uc/5F
         rJzJouPhe/UTa7gS40nh8Z53QGbvxzZ9lrlRxoB//GgxqH4iR1K+6PHz3F2DgMwz0Iiu
         eQNeaWWlJMtEu1KroKHj1TJdrHBjb8TfUicVJkc0EniYbKkLM2YLuUsJjUCLlKDVtHUG
         swbg==
X-Received: by 10.66.162.227 with SMTP id yd3mr43912092pab.53.1444777220184;
        Tue, 13 Oct 2015 16:00:20 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id ey17sm5827949pac.26.2015.10.13.16.00.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2015 16:00:19 -0700 (PDT)
Date: Wed, 14 Oct 2015 04:30:10 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: rts5208: sd: Remove redundant code
Message-ID: <20151013230010.GA16506@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Change the order of statements and remove extra code.

Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
---
 drivers/staging/rts5208/sd.c | 11 ++++-------
 1 file changed, 4 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/rts5208/sd.c b/drivers/staging/rts5208/sd.c
index d6c4982..4269be9 100644
--- a/drivers/staging/rts5208/sd.c
+++ b/drivers/staging/rts5208/sd.c
@@ -2707,17 +2707,14 @@ RTY_SD_RST:
 		return STATUS_FAIL;
 	}
 
+	CLR_SD_HCXC(sd_card);
+
 	if (hi_cap_flow) {
 		if (rsp[1] & 0x40)
 			SET_SD_HCXC(sd_card);
-		else
-			CLR_SD_HCXC(sd_card);
-
-		support_1v8 = false;
-	} else {
-		CLR_SD_HCXC(sd_card);
-		support_1v8 = false;
 	}
+
+	support_1v8 = false;
 	dev_dbg(rtsx_dev(chip), "support_1v8 = %d\n", support_1v8);
 
 	if (support_1v8) {
-- 
2.1.0


