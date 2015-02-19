X-GM-THRID: 590184710144
X-Received: by 10.42.240.132 with SMTP id la4mr3818394icb.15.1424327414999;
        Wed, 18 Feb 2015 22:30:14 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.81.163 with SMTP id f32ls425001qgd.84.gmail; Wed, 18 Feb
 2015 22:30:14 -0800 (PST)
X-Received: by 10.140.152.140 with SMTP id 134mr3709825qhy.6.1424327414826;
        Wed, 18 Feb 2015 22:30:14 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pd0-f175.google.com (mail-pd0-f175.google.com. [209.85.192.175])
        by gmr-mx.google.com with ESMTPS id bx1si1705898pdb.2.2015.02.18.22.30.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Feb 2015 22:30:14 -0800 (PST)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 209.85.192.175 as permitted sender) client-ip=209.85.192.175;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 209.85.192.175 as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pdjy10 with SMTP id y10so6723881pdj.6
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Feb 2015 22:30:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=fJdKoCf/92RVnuOClDtE8TDioshS5KF8yAMoL6y7WRE=;
        b=zdeCd0KICJ7zpRQ0XiYOOFNniNQsjVUNHfKjJFnl6v+RcBfRBljSX0YwOLwH3sWPoP
         50liCujl1lJldgqfxsGP845Kt9LM7eROFlHRfoFtdQivBa3R+GHcA3aTLvSbqRI0hsbY
         TRMOBkSf/67rAzv7XZNTzNTLvNXHSQCMYJtYT4efeg08o0Bbx4CtijZaDL7eNbHoLUpc
         skzmHGqktEK+jmJBg8UaWH4rFftuCcTufjmM3TqXt1miH5BIGdZtMW79kMHPRcmBHisD
         HmMwAI6c9RzkJIrY1clbpUseL7i6sFc+GKN+dgRiC9Y8P0l4XL/eIcWXcvjmaocSK076
         GC0A==
X-Received: by 10.69.25.6 with SMTP id im6mr4875042pbd.37.1424327414661;
        Wed, 18 Feb 2015 22:30:14 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from batra ([14.139.82.6])
        by mx.google.com with ESMTPSA id bs2sm6521119pbd.74.2015.02.18.22.30.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 18 Feb 2015 22:30:13 -0800 (PST)
Date: Thu, 19 Feb 2015 11:59:57 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: line6: Remove space before comma
Message-ID: <20150219062957.GA4849@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch is to remove the space before comma to follow
kernel coding conventions.

Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---
 drivers/staging/line6/pcm.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/line6/pcm.h b/drivers/staging/line6/pcm.h
index 6aa0d46..5d87934 100644
--- a/drivers/staging/line6/pcm.h
+++ b/drivers/staging/line6/pcm.h
@@ -145,21 +145,21 @@ enum {
 	    LINE6_BIT_PCM_IMPULSE_PLAYBACK_BUFFER |
 #endif
 	    LINE6_BIT_PCM_ALSA_PLAYBACK_BUFFER |
-	    LINE6_BIT_PCM_MONITOR_PLAYBACK_BUFFER ,
+	    LINE6_BIT_PCM_MONITOR_PLAYBACK_BUFFER,
 
 	LINE6_BITS_PLAYBACK_STREAM =
 #ifdef CONFIG_LINE6_USB_IMPULSE_RESPONSE
 	    LINE6_BIT_PCM_IMPULSE_PLAYBACK_STREAM |
 #endif
 	    LINE6_BIT_PCM_ALSA_PLAYBACK_STREAM |
-	    LINE6_BIT_PCM_MONITOR_PLAYBACK_STREAM ,
+	    LINE6_BIT_PCM_MONITOR_PLAYBACK_STREAM,
 
 	LINE6_BITS_CAPTURE_BUFFER =
 #ifdef CONFIG_LINE6_USB_IMPULSE_RESPONSE
 	    LINE6_BIT_PCM_IMPULSE_CAPTURE_BUFFER |
 #endif
 	    LINE6_BIT_PCM_ALSA_CAPTURE_BUFFER |
-	    LINE6_BIT_PCM_MONITOR_CAPTURE_BUFFER ,
+	    LINE6_BIT_PCM_MONITOR_CAPTURE_BUFFER,
 
 	LINE6_BITS_CAPTURE_STREAM =
 #ifdef CONFIG_LINE6_USB_IMPULSE_RESPONSE
-- 
1.9.1


