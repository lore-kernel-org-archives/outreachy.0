X-GM-THRID: 6395863057719885824
X-Received: by 10.99.151.10 with SMTP id n10mr14434377pge.9.1489338629195;
        Sun, 12 Mar 2017 10:10:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.11.156 with SMTP id 28ls3502701iol.20.gmail; Sun, 12 Mar
 2017 10:10:28 -0700 (PDT)
X-Received: by 10.107.162.147 with SMTP id l141mr8277520ioe.4.1489338628320;
        Sun, 12 Mar 2017 10:10:28 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id r66si2710289pfb.7.2017.03.12.10.10.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Mar 2017 10:10:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id 77so15652627pgc.0
        for <outreachy-kernel@googlegroups.com>; Sun, 12 Mar 2017 10:10:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=/ijT1xS0FT9tKf1PeTm1jICzuh7EwrsKt93FiOPH5bQ=;
        b=flIXrauPj9DnkqcxaRHKmGziIH8EoUGjTEhRLWGaJ2Ir9nWR7K4J+t3PunrbiSTc7p
         QrNEcZErjUlMqMx4Y7N5JqdK60wYyg8UP+nGzefTu3LPazhmSR/LVHnSMFv9bCO6CeZc
         xh/DKkQvbVG/wtXVhuHiUjA/pqLfq+/JRd58tyPlibktZFX/f/ruSb1mU216yVAdb79R
         MzPWbd+44Oph3E87/xVHqmW0Eu01xsnwu5l/r69eaq9EYav3q4xEAo6weUx88mBLdcCa
         /afDowWyGEZy0lLuexKme9G9M6fVMMfkNy32I/lKOChq11RitYqdPPPbL+cgvHskUhDB
         fQnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=/ijT1xS0FT9tKf1PeTm1jICzuh7EwrsKt93FiOPH5bQ=;
        b=JJlNehDogoQMSqTo5+VUWCHrD0daamyKw1zugQglt8kSbUzAyGr6QDdtFMnwh88ubs
         XxG9x8LlxL86CTszsyN9vSv04tPLDXy7mqM1roqaH3UCTBTCySky66JpWcZYzjJxM5SO
         W84SgPB2Z41duLjKdFYaxrMXyx6VgVPtvBkSpScDYz4ZED/Xee1STM2UWG+JmECxd7HH
         2fXV1b7JEVlOcpg/yuTFKiGLhihJAcHcKHTFUlYUrr+75QG0e+aNjRzyKeJg8cWzAASN
         tdQdg8u4qIJ2gEgeTCEE1rQR932ipE8Qs1isy9DGtOnDBJu5jFH5aPU4rzhGZ4CPoslW
         DA7Q==
X-Gm-Message-State: AMke39nscFZeqXAr6xuOvy/mojo1xnV/VYCbqLRVj0JN9ouvozduTqRbm8DXHb0+StVmTg==
X-Received: by 10.98.67.193 with SMTP id l62mr32765357pfi.148.1489338628091;
        Sun, 12 Mar 2017 10:10:28 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id x65sm29156745pfx.115.2017.03.12.10.10.26
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 12 Mar 2017 10:10:27 -0700 (PDT)
Date: Sun, 12 Mar 2017 22:40:23 +0530
From: simran singhal <singhalsimran0@gmail.com>
To: mchehab@kernel.org
Cc: gregkh@linuxfoundation.org, linux-media@vger.kernel.org,
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, alan@linux.intel.com
Subject: [PATCH v2] staging: media: Remove unused function
 atomisp_set_stop_timeout()
Message-ID: <20170312171023.GA5377@singhal-Inspiron-5558>
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
 v2:
   -cc the patch to more developers 

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


