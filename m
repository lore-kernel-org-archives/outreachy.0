X-GM-THRID: 6256792083376373760
X-Received: by 10.129.73.74 with SMTP id w71mr8699840ywa.6.1457299438647;
        Sun, 06 Mar 2016 13:23:58 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.248.226 with SMTP id yp2ls581350obc.38.gmail; Sun, 06 Mar
 2016 13:23:58 -0800 (PST)
X-Received: by 10.182.40.193 with SMTP id z1mr14167883obk.15.1457299438341;
        Sun, 06 Mar 2016 13:23:58 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id 12si2496151pfb.1.2016.03.06.13.23.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 06 Mar 2016 13:23:58 -0800 (PST)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id 184so6815728pff.1
        for <outreachy-kernel@googlegroups.com>; Sun, 06 Mar 2016 13:23:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=oMEmdidcHvGzkMFQ6UNI9u6nrnrnQTKGdu4vZaYA4sQ=;
        b=n75ONac9j8WKPX87Y0bEy4EQL+KpecjKP1or1lhn2+vMR5Zk178vaHvkH9dic6BWO3
         3eE3XNTyZxNu1QagCZb0gFTP3wOcNgI6PjnXYjKD4IQM3Qd+KFzDGiz2UQoMtWfVWT1O
         OEgNqDcV+SgNDAbZ2TVAJoc3eQeE48Zdehna/SUBw8xI0rdp3C7RolrSKmB7QWn+56Um
         q3LTyaS4bFhX8zj3+zHPkqgAuictW8Le9LXJH+2Zy0/peIKBM0x7CcU0Mp26bcw6bqX9
         3gLeA7NOr5FIzTRJdKj+pSI6OOET7hyhRliBkDofm9mCcLNFwi3rWUspJZfGyHc1d7ds
         FunQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=oMEmdidcHvGzkMFQ6UNI9u6nrnrnQTKGdu4vZaYA4sQ=;
        b=bZDWitTuriPStwh0mODW/R5R2eCkjjeT6ISlbKle3H8vycVh+UMQlT7OodciC9lv3d
         2XvyYZiKnrZFVOUw/ZIhkrDLq/uoCRzeUZ6uHap8/ZAiVeR3ir530SCHNqFX2jbGzrZ8
         /7ByjjxvnPGjLUPaF/l//EYtsJnVH/xSu9tNA47gVVwlRGb/qDB21TZcB5VJn1FfCXNb
         TteZm7Wy7+Wsajt0YmLok+Bj+eovDv/sQ7AIqy0uRamWqvqTPLlwj6C2EG28Cezw1d6p
         z0R6bwtdNUO9058fwMv2hOTZrVnAn6RUgPAmkjUjyFCI2BA4mdxhZBCoOLwo5v5UcaRM
         2rng==
X-Gm-Message-State: AD7BkJLAW+CCRFMalZ5fUvGSapDjzW2js6ffSXP/3qsfbwuXXSu33rAdoidImofY46Vsxg==
X-Received: by 10.98.66.157 with SMTP id h29mr28559995pfd.91.1457299438188;
        Sun, 06 Mar 2016 13:23:58 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.154])
        by smtp.gmail.com with ESMTPSA id r5sm19539969pap.7.2016.03.06.13.23.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sun, 06 Mar 2016 13:23:57 -0800 (PST)
Date: Sun, 6 Mar 2016 18:54:09 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 5/5] Staging: media: Remove unnecessary goto.
Message-ID: <0f8c5a838312a71e0fe2e1e076e45768af43c915.1457269115.git.bankarsandhya512@gmail.com>
References: <cover.1457269114.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1457269114.git.bankarsandhya512@gmail.com>
User-Agent: Mutt/1.5.20 (2009-12-10)

Remove unnecessary goto.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/media/bcm2048/radio-bcm2048.c | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/media/bcm2048/radio-bcm2048.c b/drivers/staging/media/bcm2048/radio-bcm2048.c
index 8fdf0ac..abf330f 100644
--- a/drivers/staging/media/bcm2048/radio-bcm2048.c
+++ b/drivers/staging/media/bcm2048/radio-bcm2048.c
@@ -1828,17 +1828,14 @@ static int bcm2048_deinit(struct bcm2048_device *bdev)
 
 	err = bcm2048_set_audio_route(bdev, 0);
 	if (err < 0)
-		goto exit;
+		return err;
 
 	err = bcm2048_set_dac_output(bdev, 0);
 	if (err < 0)
-		goto exit;
+		return err;
 
 	err = bcm2048_set_power_state(bdev, BCM2048_POWER_OFF);
-	if (err < 0)
-		goto exit;
 
-exit:
 	return err;
 }
 
-- 
1.8.3.4


