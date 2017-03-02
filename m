X-GM-THRID: 6392947471116402688
X-Received: by 10.176.74.12 with SMTP id q12mr3419060uae.41.1488481104335;
        Thu, 02 Mar 2017 10:58:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.19.71 with SMTP id b68ls2253497ioj.22.gmail; Thu, 02 Mar
 2017 10:58:23 -0800 (PST)
X-Received: by 10.107.22.4 with SMTP id 4mr4994071iow.61.1488481103578;
        Thu, 02 Mar 2017 10:58:23 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id c123si1684739pfa.4.2017.03.02.10.58.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 10:58:23 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id x66so7490375pfb.1
        for <outreachy-kernel@googlegroups.com>; Thu, 02 Mar 2017 10:58:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Vnqni+E8ieZBdU9qM8oA463+4oSSz5a9YT5KA7xXnZc=;
        b=uZwi6cb+udt2DDhfrmog0L2BvNPRk5uGmb2kLYxysA+OH3Z5Pd3koY5LdhJpMVwrsi
         7b91J+WORIfyQEROZNrazGfbkGiGiqlG5jFu5+RUMeBVuhuEeKjCioWqHepmMwhyLCg4
         IOABPjtuhV6l4pIeLk87THqfrDA4l8iEAOEg5H6s35DPLamwN0Dad+acnao6h2xPzo0N
         Sw4AGa7wGAxAwxmP7+caD9xTFnyryhrBM0VWMlmT96n/h71smjd6AeRIt7/+0+gtORbh
         WLTVzMlKdOakI03B7X0Dco52DqGQeVNxa0nxSseqg+5+dQA7b6AHtpUh0xNZxNEAKJfv
         FaUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Vnqni+E8ieZBdU9qM8oA463+4oSSz5a9YT5KA7xXnZc=;
        b=rIhYsPA3O38MGqr3lcYJAzoqF0WGO5OWkktKvjFPSS8c2GQNwDiuWccujMeXdO3L5x
         F8qmQU/cG0u76dQPzOOLfVuQ5zyHSDi6/aOrohKZggkctBz7HROrK2jc5CXSXUIKZzqA
         WoPDaFp29hCeAx0/B3hqA9aq50H8fZ9MqHN3a9JmfG94hdWiRy4sBmoegQJh7TU9vLal
         3l1fXn6+W5dJYHHTAmzFPyvhSswwWJc2DLLztAilv5chvKIuMbJkZmFVN4SwfSDpjEbt
         V3Lzy1FI8YLUybk8vvT5Kqme/3B02+csC+NWdDc8oMLfx4MGJ1CGLvYBMsDT2Kld6ZJT
         9jeA==
X-Gm-Message-State: AMke39l6VhcE6N4XHvvay9hB3NBCBitwR1cUTWgbe8fFAm3pAj3Pe6Fid+BSfQ3pxsUwBg==
X-Received: by 10.99.147.68 with SMTP id w4mr17335127pgm.32.1488481103266;
        Thu, 02 Mar 2017 10:58:23 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([106.51.241.134])
        by smtp.gmail.com with ESMTPSA id w29sm18513376pfi.131.2017.03.02.10.58.18
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 10:58:22 -0800 (PST)
Date: Fri, 3 Mar 2017 00:28:16 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Stephen Warren <swarren@wwwdotorg.org>, Lee Jones <lee@kernel.org>,
	Eric Anholt <eric@anholt.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
	bcm-kernel-feedback-list@broadcom.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v5 5/5] staging: bcm2835-audio: replace printk(KERN_ERR...)
 with dev_err(...)
Message-ID: <9c5b6857fe9d2fd5076d099cdc950468615175c5.1488480443.git.aishpant@gmail.com>
References: <cover.1488480443.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488480443.git.aishpant@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Use dev_err(... in place of printk(KERN_ERR ...
Problem found by checkpatch

Signed-off-by: Aishwarya Pant <aishpant@gmail.com>

---
Changes in v3:
	-Merge two if conditions
	-Edit subject and commit message
Changes in v2:
	-Prefer dev_err to pr_err where device information is available

 drivers/staging/vc04_services/bcm2835-audio/bcm2835-ctl.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-ctl.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-ctl.c
index 46814fd..659c3d1 100644
--- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-ctl.c
+++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-ctl.c
@@ -139,10 +139,8 @@ static int snd_bcm2835_ctl_put(struct snd_kcontrol *kcontrol,
 		}
 	}
 
-	if (changed) {
-		if (bcm2835_audio_set_ctls(chip))
-			printk(KERN_ERR "Failed to set ALSA controls..\n");
-	}
+	if (changed && bcm2835_audio_set_ctls(chip))
+		dev_err(chip->card->dev, "Failed to set ALSA controls..\n");
 
 unlock:
 	mutex_unlock(&chip->audio_mutex);
-- 
2.7.4


