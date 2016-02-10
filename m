X-GM-THRID: 6249380756525678592
X-Received: by 10.98.71.209 with SMTP id p78mr33977520pfi.13.1455047343441;
        Tue, 09 Feb 2016 11:49:03 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.30.8 with SMTP id o8ls6138igh.44.gmail; Tue, 09 Feb 2016
 11:49:03 -0800 (PST)
X-Received: by 10.66.157.37 with SMTP id wj5mr35239348pab.30.1455047343101;
        Tue, 09 Feb 2016 11:49:03 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-qk0-x22e.google.com (mail-qk0-x22e.google.com. [2607:f8b0:400d:c09::22e])
        by gmr-mx.google.com with ESMTPS id l85si673970ywb.2.2016.02.09.11.49.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 11:49:03 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c09::22e as permitted sender) client-ip=2607:f8b0:400d:c09::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c09::22e as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x22e.google.com with SMTP id s68so74112787qkh.3
        for <outreachy-kernel@googlegroups.com>; Tue, 09 Feb 2016 11:49:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=nkI+a0m6mQJt5CJblj4LyGgHwF3IfTQMBMI91mtT3kU=;
        b=0QjuyuxOSPzJ9kCMJhxDk4R02CvAro2iEIvkBg+yqCnWp7Uioi/y7fhmcrRNtt5ZiW
         6ZWbdi4Qb6YLCtRObxsqnEc2Phugp3qlQGaMJBBqW1yZalzJK7q40yKM3vKgzSZE/YRt
         rvw1HliLje8EDmNpEoEVx6yHpXxyDjiqArtTcUsz/pxHTJJ6Q5xNeL8Cd3pGgeCDlbfM
         mhIK7foJYIRfudQ659PdBa/Vbk0bejMJbz0w6coUBrI6wKCI32o0R9dinHr8EEZWJVIm
         Br+QJKnJny3AxcRKWS3bLPzisZFYdtp70LjEwYqqpsBz08ccSMmzz4GMlS3K/eQYQAt0
         gYuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=nkI+a0m6mQJt5CJblj4LyGgHwF3IfTQMBMI91mtT3kU=;
        b=TBexew4oSBj3nKw9l1pgMPvFVCUHQZa7NY0HM9qygPTj4UCjSAzVtyyTsFp8Fg7MqU
         R7D28aI9ZGfJ0tFT1O56A7t+31UHNext5IbJhqPdh9F0/pT7+dhvJeoPI8bAGrbTMbWy
         xgxaRFbhRehKnBtjue2F74+W5GV39gGGxLWBChFViVzBJFLOC2PHqdjU72QrpHU7w0Wx
         s5pSJdZjxYrP0N/J5cRwadUPB4Ut176oLQGISz5PhZb+AxVE1WbD0400bT/3ksm3WEQ5
         2FeV/g59KI7AwaC5byHM3C1g4SWMwiQ5FKFHWxHhGwFb6T2YUj+vsnFem8VKcka8upT3
         sx6g==
X-Gm-Message-State: AG10YOTVm5nb7SXYUMxvfVxFH9UAY2gz+ATD2aB2Mj1s3B5HhrmoBneqJi37ZQQrBHhfKw==
X-Received: by 10.55.71.76 with SMTP id u73mr44566394qka.6.1455047342712;
        Tue, 09 Feb 2016 11:49:02 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id c135sm16402762qka.23.2016.02.09.11.49.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 11:49:02 -0800 (PST)
Date: Tue, 9 Feb 2016 19:48:25 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: speakup: Eliminate commented out code
Message-ID: <20160210004825.GA11829@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch removes commented out code as it contributes to code clutter.

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
 drivers/staging/speakup/serialio.c | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/drivers/staging/speakup/serialio.c b/drivers/staging/speakup/serialio.c
index a5bbb33..3615457 100644
--- a/drivers/staging/speakup/serialio.c
+++ b/drivers/staging/speakup/serialio.c
@@ -92,8 +92,6 @@ const struct old_serial_port *spk_serial_init(int index)
 static irqreturn_t synth_readbuf_handler(int irq, void *dev_id)
 {
 	unsigned long flags;
-/*printk(KERN_ERR "in irq\n"); */
-/*pr_warn("in IRQ\n"); */
 	int c;
 
 	spin_lock_irqsave(&speakup_info.spinlock, flags);
@@ -101,8 +99,6 @@ static irqreturn_t synth_readbuf_handler(int irq, void *dev_id)
 
 		c = inb_p(speakup_info.port_tts+UART_RX);
 		synth->read_buff_add((u_char) c);
-/*printk(KERN_ERR "c = %d\n", c); */
-/*pr_warn("C = %d\n", c); */
 	}
 	spin_unlock_irqrestore(&speakup_info.spinlock, flags);
 	return IRQ_HANDLED;
@@ -175,9 +171,6 @@ int spk_wait_for_xmitr(void)
 	while (!((inb_p(speakup_info.port_tts + UART_MSR)) & UART_MSR_CTS)) {
 		/* CTS */
 		if (--tmout == 0) {
-			/* pr_warn("%s: timed out (cts)\n",
-			 * synth->long_name);
-			 */
 			timeouts++;
 			return 0;
 		}
-- 
2.5.0


