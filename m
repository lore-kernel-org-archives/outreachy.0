X-GM-THRID: 6340627534791573504
X-Received: by 10.36.65.95 with SMTP id x92mr999445ita.39.1476292390233;
        Wed, 12 Oct 2016 10:13:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.103.72 with SMTP id u69ls1688176itc.6.gmail; Wed, 12 Oct
 2016 10:13:09 -0700 (PDT)
X-Received: by 10.66.102.65 with SMTP id fm1mr510478pab.55.1476292389731;
        Wed, 12 Oct 2016 10:13:09 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from mail-vk0-x244.google.com (mail-vk0-x244.google.com. [2607:f8b0:400c:c05::244])
        by gmr-mx.google.com with ESMTPS id p70si997375vkd.0.2016.10.12.10.13.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 12 Oct 2016 10:13:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::244 as permitted sender) client-ip=2607:f8b0:400c:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::244 as permitted sender) smtp.mailfrom=elise.lennion@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x244.google.com with SMTP id 83so1322157vkd.0
        for <outreachy-kernel@googlegroups.com>; Wed, 12 Oct 2016 10:13:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=J3g/rSGJ6/P/vN4GE6JMqEs4ahVkKsaellNsgqM7GWc=;
        b=KA9cDFkaLCpNAvIVAIpcJKPD++rPuvjkSMEEP/YqpDOB8CYFcCLHaAKkAX1WgqM4Gp
         8y2B/tao8UbQN3ve0QZUW0clLAfSWw3Pk7ClNJgJx3QcEko+yajmxherMZSfT+RYY+Nu
         ZzmLEN16d70HokysQmpyyWPtZYRqD01otyGGoh7YqJdzYt0cZVM4gxmPyKdtRiy7i0Ac
         P8AkOoRa672bgPeh+Qag6VJDjxSlaqRbBOPcImPH/H7VoIT+GgzZ+urxH4r3kEsEQxfX
         d6JgQfcPy9brThHrRsrsXHUYmIvvRnKwrB9zpjwEAXWiaD+ZZ1XZVGJgz91Ibfqs8Dr1
         q3Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=J3g/rSGJ6/P/vN4GE6JMqEs4ahVkKsaellNsgqM7GWc=;
        b=LO/iIoNUUpqLCLDbif1VQHyF+IJvwo4ZJMag5oPSQOq+3M8TfO7RYDsHBX/Jzc6XMu
         Gb7NajcJFV4wJAoJiotbTRqD+l5LTmlX8LS4cG72he8HGLKneDiz3Wm+4xlChHAbyACC
         kbm9AWebbby2XUTwkwkr3IBxN8DplXnwBdqHa1Oz3kSn1ipji8uuNggAwZltD+rYudzL
         cKs9QMsWq5DrOj9E/zCZVidAxH6vOXHsyWDuUdBaqLYEHEgrSoUFrHP6mvhmyMBqFcyK
         BUQJM99jPA1ccQw3QrypyKSk41uXXfdt++mPWdD7O8vn0nJJYOFLm6si1rJBe+KpxXVi
         TxNQ==
X-Gm-Message-State: AA6/9RlSc5QcBCp+eCLUJjg01AjbFn++d3ketIz20cxX4f9zoqfe7Qi/bUPdNnGj+CoDkw==
X-Received: by 10.31.174.147 with SMTP id x141mr1299067vke.73.1476292389524;
        Wed, 12 Oct 2016 10:13:09 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from lennorien.com ([187.64.224.84])
        by smtp.gmail.com with ESMTPSA id n73sm3433180vkf.24.2016.10.12.10.13.06
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 12 Oct 2016 10:13:08 -0700 (PDT)
Date: Wed, 12 Oct 2016 14:13:01 -0300
From: Elise Lennion <elise.lennion@gmail.com>
To: johan@kernel.org, elder@kernel.org, gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v3 2/4] staging: greybus: camera: Replace blank spaces with
 tabstops.
Message-ID: <20161012171301.GA29178@lennorien.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix checkpatch warning:

WARNING: Statements should start on a tabstop

Signed-off-by: Elise Lennion <elise.lennion@gmail.com>
---

 v2: Changed subject of the patch.
 v3: Added versions information.

 drivers/staging/greybus/camera.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/greybus/camera.c b/drivers/staging/greybus/camera.c
index d89a329..0c73445 100644
--- a/drivers/staging/greybus/camera.c
+++ b/drivers/staging/greybus/camera.c
@@ -1119,7 +1119,7 @@ static ssize_t gb_camera_debugfs_write(struct file *file,
 	char *kbuf;
 
 	if (len > 1024)
-	       return -EINVAL;
+		return -EINVAL;
 
 	kbuf = kmalloc(len + 1, GFP_KERNEL);
 	if (!kbuf)
-- 
2.7.4


