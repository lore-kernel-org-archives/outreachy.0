X-GM-THRID: 6341082895708323840
X-Received: by 10.157.53.90 with SMTP id l26mr2220407ote.72.1476398412006;
        Thu, 13 Oct 2016 15:40:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.85.4 with SMTP id e4ls15429itb.8.gmail; Thu, 13 Oct 2016
 15:40:11 -0700 (PDT)
X-Received: by 10.36.86.19 with SMTP id o19mr2489471itb.11.1476398411464;
        Thu, 13 Oct 2016 15:40:11 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from mail-vk0-x243.google.com (mail-vk0-x243.google.com. [2607:f8b0:400c:c05::243])
        by gmr-mx.google.com with ESMTPS id p131si2725512vkf.1.2016.10.13.15.40.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 13 Oct 2016 15:40:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::243 as permitted sender) client-ip=2607:f8b0:400c:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::243 as permitted sender) smtp.mailfrom=elise.lennion@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x243.google.com with SMTP id 2so4259789vkb.1
        for <outreachy-kernel@googlegroups.com>; Thu, 13 Oct 2016 15:40:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=eaAJNSmVhvgQosS/gBswfCQIYGBtEMTwWWPTh3d57nc=;
        b=RwybfLhOK8UekRSH6AGSjNrWwH10Q+fOUPULiZho+j7SKx45lQ7BgxFpbm41VORUiA
         OC4z3RHTTUxwJ/OO1e5hP3Q5lQfeJbstBBr+fHukNU/dUBbcdRfjGM4lkd/Z/lMRy7Nm
         D4CJco338HEc/geKlPDMKbv7e3bYilHbPDwZzLFiWqHgQQspSlHzWc+BUWTTTZqv+QY0
         1ozWNkxXZtB2I+64m7djQMKAkrii+ey4zFdCpe0lY5JPqDRUs3y6lmzNNsdOwWFtDue8
         Ush+yR//f8HtTDW6wIgXFgoboRMh2ss9v2MozXQzfE+v+7DyV2p/XKa4mv4jhcxMhWzB
         RGeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=eaAJNSmVhvgQosS/gBswfCQIYGBtEMTwWWPTh3d57nc=;
        b=Dw11Te+EFAUQvaM/Bz9MFm54y+seo1zM1QqpG0pHz8EI04WsyyR9VMbd10W9JmbvGX
         g00B+aLzubmJ/zPTc6gwMzc5h/VG7zLL9tTKWdwxVt4F6x22L2BLhMEhiutNGD5ABp84
         xdahOLcEJ1t4mjoslvKFxi7CmIUzuSkvuT/orQRFJmHr6AwsKczDXIhNpt3Hedbnh1jh
         w3jK8AIqLpodlrfndsuffO1q+96VrkSERzVuHQzygYxKikhbKtKkoS6ag79IUq4ezXjb
         McW5X5ysjjW6jMbTAnsWrgMAIaePgc7X+0seGMdlKmo/GNCXLLS2fWgTSr8GQs76rdNx
         UgJw==
X-Gm-Message-State: AA6/9RmV8Hay5GrA8ShxsZ/HQLa8gEYShYxLYpZE4+jpplP1KXUAHM9yNmaIIjgMJ+SF6w==
X-Received: by 10.31.9.210 with SMTP id 201mr6787706vkj.106.1476398411312;
        Thu, 13 Oct 2016 15:40:11 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from lennorien.com ([187.64.224.84])
        by smtp.gmail.com with ESMTPSA id n191sm6228791vkc.1.2016.10.13.15.40.09
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 13 Oct 2016 15:40:10 -0700 (PDT)
Date: Thu, 13 Oct 2016 19:40:04 -0300
From: Elise Lennion <elise.lennion@gmail.com>
To: vaibhav.sr@gmail.com, mgreer@animalcreek.com, johan@kernel.org,
	elder@kernel.org, gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v2 1/2] staging: greybus: audio_codec: Remove useless return
 statement.
Message-ID: <20161013224003.GA13160@lennorien.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Remove return statement that is immediately followed by the function
closing bracket.

Signed-off-by: Elise Lennion <elise.lennion@gmail.com>
---

 v2: Add file name to the patch subject name.
  Rewrite git log message.

 drivers/staging/greybus/audio_codec.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/greybus/audio_codec.c b/drivers/staging/greybus/audio_codec.c
index 1bdf849..f8862c6 100644
--- a/drivers/staging/greybus/audio_codec.c
+++ b/drivers/staging/greybus/audio_codec.c
@@ -405,7 +405,6 @@ static void gbcodec_shutdown(struct snd_pcm_substream *substream,
 	params->state = GBAUDIO_CODEC_SHUTDOWN;
 	mutex_unlock(&codec->lock);
 	pm_relax(dai->dev);
-	return;
 }
 
 static int gbcodec_hw_params(struct snd_pcm_substream *substream,
-- 
2.7.4


