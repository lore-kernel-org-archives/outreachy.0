X-GM-THRID: 6395863057719885824
X-Received: by 10.129.120.201 with SMTP id t192mr8271825ywc.118.1489152912744;
        Fri, 10 Mar 2017 05:35:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.26.214 with SMTP id 205ls512784iti.12.gmail; Fri, 10 Mar
 2017 05:35:11 -0800 (PST)
X-Received: by 10.99.111.6 with SMTP id k6mr8702141pgc.131.1489152911793;
        Fri, 10 Mar 2017 05:35:11 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id a3si1761982pfb.2.2017.03.10.05.35.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 05:35:11 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id 77so10338173pgc.0
        for <outreachy-kernel@googlegroups.com>; Fri, 10 Mar 2017 05:35:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=A54JGDReGcimIjbhofqKEvctX6j5S+69bVudsvaFFNM=;
        b=nUFbqVxQ06P91QS7g9R9PxG28CalJ+b2hLIuXr5e9kQOW5e2L3U+1N//MJsaFwpMKV
         JOlQCV+3XHInkCQGTjIvlk9V82C4R4dAOr0ca3tIMliekmRKjJjl0ue4C3DFb10CuAcu
         eeI5xQzZaEg125bhViDDUKb4L6vLb3PhxsTQkGdjrQw/gd0XRrBZaAXYiGv5Z8PtsVdn
         tOj6W8ENWZ7WIoqDL5dYUc0xOoHcl5mnw4/D0eUPG2+LSSct+q5m0tdu4MYhCd3GxCbq
         s+8kGuciYmIZWFT1Vwv08Ez5nDthhWHb+IXnYfT7RoroIrYA4g/AHkNxHCX/noSKXBhq
         WcKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=A54JGDReGcimIjbhofqKEvctX6j5S+69bVudsvaFFNM=;
        b=kCvAYMxicZVMAmH9IWfaHTQRjHJC3hMUH3KWHSeylNrpIsK8C8NlfM2SvNuRGE4YV8
         NU/TxfO0jGVYsnxrAiRY9HWXBZUjWjgWirFYqFv7bFDdJyEeYu2MR6fXAddrA903jnLE
         LfifQdqqQquwBeSPX981WF2RqnoEH2YOmYtBMhj+F09SYulmQRtJ25UsY/vTF0sXGCgU
         a3VY84Ja3H67r6u8Rq1v7cpP+NMwioudXL110H1C7q07+fB573LDwIecOabKJ+QZVhsR
         Ul61jGwkJsXC4yGPM14tiZ5CYJy/l2zcvDCPzKXVSPbqAWWwFhS9f0ByTlIXkj2v7BDB
         E5xA==
X-Gm-Message-State: AMke39kW1eTZ2pEhdmmZUgGleVD4u9hLuvrH4V0CCBazB1IoVgkBcrP5o7A1mF5ubk7kpA==
X-Received: by 10.98.193.69 with SMTP id i66mr21004347pfg.35.1489152911559;
        Fri, 10 Mar 2017 05:35:11 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id w123sm18907819pfb.44.2017.03.10.05.35.07
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 10 Mar 2017 05:35:10 -0800 (PST)
Date: Fri, 10 Mar 2017 19:05:05 +0530
From: simran singhal <singhalsimran0@gmail.com>
To: mchehab@kernel.org
Cc: gregkh@linuxfoundation.org, linux-media@vger.kernel.org,
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v1] staging: media: Remove unused function
 atomisp_set_stop_timeout()
Message-ID: <20170310133504.GA18916@singhal-Inspiron-5558>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

The function atomisp_set_stop_timeout on being called, simply returns
back. The function hasn't been mentioned in the TODO and doesn't have
FIXME code around. Hence, atomisp_set_stop_timeout and its calls have been
removed.

This was done using Coccinelle.

@@
identifier f;
@@

void f(...) {

-return;

}

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 v1:
   -Change Subject to include name of function
   -change commit message to include the coccinelle script
   
 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c          | 1 -
 drivers/staging/media/atomisp/pci/atomisp2/atomisp_compat.h       | 1 -
 drivers/staging/media/atomisp/pci/atomisp2/atomisp_compat_css20.c | 5 -----
 3 files changed, 7 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c b/drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c
index d9a5c24..9720756 100644
--- a/drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c
+++ b/drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c
@@ -1692,7 +1692,6 @@ void atomisp_wdt_work(struct work_struct *work)
 		}
 	}
 #endif
-	atomisp_set_stop_timeout(ATOMISP_CSS_STOP_TIMEOUT_US);
 	dev_err(isp->dev, "timeout recovery handling done\n");
 	atomic_set(&isp->wdt_work_queued, 0);
 
diff --git a/drivers/staging/media/atomisp/pci/atomisp2/atomisp_compat.h b/drivers/staging/media/atomisp/pci/atomisp2/atomisp_compat.h
index e6b0cce..fb8b8fa 100644
--- a/drivers/staging/media/atomisp/pci/atomisp2/atomisp_compat.h
+++ b/drivers/staging/media/atomisp/pci/atomisp2/atomisp_compat.h
@@ -660,7 +660,6 @@ int atomisp_css_set_acc_parameters(struct atomisp_acc_fw *acc_fw);
 int atomisp_css_isr_thread(struct atomisp_device *isp,
 			   bool *frame_done_found,
 			   bool *css_pipe_done);
-void atomisp_set_stop_timeout(unsigned int timeout);
 
 bool atomisp_css_valid_sof(struct atomisp_device *isp);
 
diff --git a/drivers/staging/media/atomisp/pci/atomisp2/atomisp_compat_css20.c b/drivers/staging/media/atomisp/pci/atomisp2/atomisp_compat_css20.c
index 6697d72..cfa0ad4 100644
--- a/drivers/staging/media/atomisp/pci/atomisp2/atomisp_compat_css20.c
+++ b/drivers/staging/media/atomisp/pci/atomisp2/atomisp_compat_css20.c
@@ -4699,11 +4699,6 @@ int atomisp_css_isr_thread(struct atomisp_device *isp,
 	return 0;
 }
 
-void atomisp_set_stop_timeout(unsigned int timeout)
-{
-	return;
-}
-
 bool atomisp_css_valid_sof(struct atomisp_device *isp)
 {
 	unsigned int i, j;
-- 
2.7.4


