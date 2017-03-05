X-GM-THRID: 6393902542586118144
X-Received: by 10.36.121.2 with SMTP id z2mr2161077itc.18.1488696444628;
        Sat, 04 Mar 2017 22:47:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.6.194 with SMTP id 60ls11994760otx.21.gmail; Sat, 04 Mar
 2017 22:47:24 -0800 (PST)
X-Received: by 10.176.1.103 with SMTP id 94mr2666374uak.35.1488696444258;
        Sat, 04 Mar 2017 22:47:24 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id r66si789261pfb.7.2017.03.04.22.47.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 04 Mar 2017 22:47:24 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id 187so3029236pgb.2
        for <outreachy-kernel@googlegroups.com>; Sat, 04 Mar 2017 22:47:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=YqmiVwDICLKRnUAodb/y99dcJcJ3aPdFEutrC+fMuUM=;
        b=K9824HoHuHQQ1+YlTQjqS8khC1s0PueoJQFqfDcgRE6cGDWUmGFKNGy+SnIC7FbeEq
         NVYycDCwjXmrRyYsNh53nZPemgBd7Y5E56KGeOtqNe8I2+rrrB1yrXi6XhqMo46imVdQ
         sFYFfoJjCBvF46Q2Vcca/DSv0/CnJ/uMBrKCQTIZU62m5zl3laO8R9sVKFB8BsejlWDa
         DjKEIX5JBWM72dvx4btDvdcdGP1FSYEOxfhlvJl5ruIWdrFBng9XsOvwS6gZVHSkxeN1
         ToSQ7cDWQX7spuy2gWNaoDhPaSi3QWQqzzVWJb8u9/G68ySwxMaHzXa04pFqrxLSoGqi
         OvLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=YqmiVwDICLKRnUAodb/y99dcJcJ3aPdFEutrC+fMuUM=;
        b=t0viMpBVAZCpiG5fPPF7PEJH/GTnPYBA27axafmC9mkvGezQqjXBP5pNBb80mFElcz
         /8YqSRO4UuEchOMMV9xi6RTgMoH2/CXMwsVQWr30Szxbeq8Ahg8dNsEFtnbM9IaXWAx3
         fscUaYkdehVMQmEcHc4Zex0tOJwNZugpZCZqIcVm84FfvukBdPSEMdsJ7zFIf47hHQlg
         H3UlaRu8R4cl321yo3uvD4BjzMsQhsoPWVQFVAfnOUGEzgQDgbEmRQfrLwCRHDkTqmEe
         IwUThwh/By6CK7Dae8hzyKGt3PRHKMA9tkrSE1IbWcBbJxyBnWFN4oOvw1Uo2dI5q9bz
         1RIQ==
X-Gm-Message-State: AMke39kRXedObotTqPMjnkHc4kMv84djmlfvqemo5FOXIlQzInT1P2rfT8V8a3lI8p0uiA==
X-Received: by 10.99.62.202 with SMTP id l193mr13149957pga.172.1488696444028;
        Sat, 04 Mar 2017 22:47:24 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id w131sm30984002pfd.34.2017.03.04.22.47.21
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 04 Mar 2017 22:47:22 -0800 (PST)
Date: Sun, 5 Mar 2017 12:17:21 +0530
From: simran singhal <singhalsimran0@gmail.com>
To: mchehab@kernel.org
Cc: gregkh@linuxfoundation.org, linux-media@vger.kernel.org,
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: media: Remove unnecessary function and its call
Message-ID: <20170305064721.GA22548@singhal-Inspiron-5558>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

The function atomisp_set_stop_timeout on being called, simply returns
back. The function hasn't been mentioned in the TODO and doesn't have
FIXME code around. Hence, atomisp_set_stop_timeout and its calls have been
removed.

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c          | 1 -
 drivers/staging/media/atomisp/pci/atomisp2/atomisp_compat.h       | 1 -
 drivers/staging/media/atomisp/pci/atomisp2/atomisp_compat_css20.c | 5 -----
 3 files changed, 7 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c b/drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c
index e99f7b8..66299dd 100644
--- a/drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c
+++ b/drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c
@@ -1700,7 +1700,6 @@ void atomisp_wdt_work(struct work_struct *work)
 		}
 	}
 #endif
-	atomisp_set_stop_timeout(ATOMISP_CSS_STOP_TIMEOUT_US);
 	dev_err(isp->dev, "timeout recovery handling done\n");
 	atomic_set(&isp->wdt_work_queued, 0);
 
diff --git a/drivers/staging/media/atomisp/pci/atomisp2/atomisp_compat.h b/drivers/staging/media/atomisp/pci/atomisp2/atomisp_compat.h
index 5a404e4..0b9ced5 100644
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


