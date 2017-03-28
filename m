X-GM-THRID: 6401312092482174976
X-Received: by 10.200.48.53 with SMTP id f50mr8853648qte.74.1490717302104;
        Tue, 28 Mar 2017 09:08:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.17.116 with SMTP id p49ls4848027otp.4.gmail; Tue, 28 Mar
 2017 09:08:21 -0700 (PDT)
X-Received: by 10.129.165.201 with SMTP id c192mr10605123ywh.74.1490717301577;
        Tue, 28 Mar 2017 09:08:21 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id f73si417729ita.1.2017.03.28.09.08.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Mar 2017 09:08:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id g2so22340762pge.2
        for <outreachy-kernel@googlegroups.com>; Tue, 28 Mar 2017 09:08:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=aVj4YWyCSy9mISSeODDblc+the3QIRe1RiGCT6pN+xs=;
        b=dg4H/JuSbiHRuHv8lItkk9PKYK1y3ykSoeZljj+a3R8AQcGq/ziJprgjej/gQeSt2J
         FzQ1HWp06Aarr5isie1rnSQV1l3yU7T8nEoZDWAzPszpOIu9lRCGWRH7nlOBDccRaAE3
         W4STjvUfjmWK6Qw9Am8txcDs2H99hquKhuW1ZadcOglvQzDpygc09S8UgM70UDNzJPCV
         xcRQz4G+W7YRVD8Vq36Vdka/4DM/aALNfGwUlVOGjirMjPmr0IY1ZaFCZaOJ6lxOJTI7
         ZRIZ34HZS3MiZMsnvAqHdnkZZ6+dw3CvEde2HSU6xRKiazJBP86vi/n/2EeuKDX1lOEq
         lf3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=aVj4YWyCSy9mISSeODDblc+the3QIRe1RiGCT6pN+xs=;
        b=HTtDEl8V8ecixl4wUMiTOuquq6kQXq03MPstVT6t0iWFfmFHFkxHe8ql0gV/yqeKuS
         3oxtps1b6rViGTwOlArIxf9CIR3N6i8t6aCan6LOey9IS3m6RmWwNwQBcMVBWGiQ3e1w
         BiKwx+zrerta/qn+XpL/rfsoWsu3PpZZOA05VQJgsawdT2Tty/qxALW/Q0gwm+LEoxiS
         SmAsBO6jZA1m+GNmS2N4okYoYQD0EgAWVPSdwnciDQaPyN96pu3Pcr3q+/m+3xnvIY0m
         dxOEFxb65DuyzblXFR7YTBZ38UgR+VbdQTR1BLEujcVm3LqkH5z/2rxOhkLsKKQJt5yh
         0ExQ==
X-Gm-Message-State: AFeK/H15KdunkuV5krYUMmHblvJzFJ+3lWvHEexZLaOgvC1vPfKNPsVEW70xAkxht0zbpw==
X-Received: by 10.99.247.83 with SMTP id f19mr30492030pgk.158.1490717301235;
        Tue, 28 Mar 2017 09:08:21 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id e70sm8353308pfh.84.2017.03.28.09.08.18
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 28 Mar 2017 09:08:19 -0700 (PDT)
Date: Tue, 28 Mar 2017 21:38:15 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: mchehab@kernel.org
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-media@vger.kernel.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: media: atomisp: compress return logic
Message-ID: <20170328160815.GA8320@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Simplify function returns by merging assignment and return.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
changes in v2
 *correct the error.

 drivers/staging/media/atomisp/pci/atomisp2/atomisp_v4l2.c      |  8 ++------
 .../media/atomisp/pci/atomisp2/css2400/runtime/bufq/src/bufq.c | 10 ++++------
 2 files changed, 6 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp2/atomisp_v4l2.c b/drivers/staging/media/atomisp/pci/atomisp2/atomisp_v4l2.c
index b1f685a841ba..a04cd3ba7e68 100644
--- a/drivers/staging/media/atomisp/pci/atomisp2/atomisp_v4l2.c
+++ b/drivers/staging/media/atomisp/pci/atomisp2/atomisp_v4l2.c
@@ -519,9 +519,7 @@ int atomisp_runtime_suspend(struct device *dev)
 	if (ret)
 		return ret;
 	pm_qos_update_request(&isp->pm_qos, PM_QOS_DEFAULT_VALUE);
-	ret = atomisp_mrfld_power_down(isp);
-
-	return ret;
+	return atomisp_mrfld_power_down(isp);
 }
 
 int atomisp_runtime_resume(struct device *dev)
@@ -587,9 +585,7 @@ static int atomisp_suspend(struct device *dev)
 		return ret;
 	}
 	pm_qos_update_request(&isp->pm_qos, PM_QOS_DEFAULT_VALUE);
-	ret = atomisp_mrfld_power_down(isp);
-
-	return ret;
+	return atomisp_mrfld_power_down(isp);
 }
 
 static int atomisp_resume(struct device *dev)
diff --git a/drivers/staging/media/atomisp/pci/atomisp2/css2400/runtime/bufq/src/bufq.c b/drivers/staging/media/atomisp/pci/atomisp2/css2400/runtime/bufq/src/bufq.c
index 737ad66da900..ed33d4c4c84a 100644
--- a/drivers/staging/media/atomisp/pci/atomisp2/css2400/runtime/bufq/src/bufq.c
+++ b/drivers/staging/media/atomisp/pci/atomisp2/css2400/runtime/bufq/src/bufq.c
@@ -440,7 +440,7 @@ enum ia_css_err ia_css_bufq_enqueue_psys_event(
 enum  ia_css_err ia_css_bufq_dequeue_psys_event(
 	uint8_t item[BUFQ_EVENT_SIZE])
 {
-	enum ia_css_err return_err;
+	enum ia_css_err;
 	int error = 0;
 	ia_css_queue_t *q;
 
@@ -457,8 +457,7 @@ enum  ia_css_err ia_css_bufq_dequeue_psys_event(
 	}
 	error = ia_css_eventq_recv(q, item);
 
-	return_err = ia_css_convert_errno(error);
-	return return_err;
+	return ia_css_convert_errno(error);
 
 }
 
@@ -466,7 +465,7 @@ enum  ia_css_err ia_css_bufq_dequeue_isys_event(
 	uint8_t item[BUFQ_EVENT_SIZE])
 {
 #if !defined(HAS_NO_INPUT_SYSTEM)
-	enum ia_css_err return_err;
+	enum ia_css_err;
 	int error = 0;
 	ia_css_queue_t *q;
 
@@ -482,8 +481,7 @@ enum  ia_css_err ia_css_bufq_dequeue_isys_event(
 		return IA_CSS_ERR_RESOURCE_NOT_AVAILABLE;
 	}
 	error = ia_css_eventq_recv(q, item);
-	return_err = ia_css_convert_errno(error);
-	return return_err;
+	return ia_css_convert_errno(error);
 #else
 	(void)item;
 	return IA_CSS_ERR_RESOURCE_NOT_AVAILABLE;
-- 
2.11.0


