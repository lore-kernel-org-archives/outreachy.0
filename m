X-GM-THRID: 6333834735065759744
X-Received: by 10.129.95.11 with SMTP id t11mr3011393ywb.112.1474732889789;
        Sat, 24 Sep 2016 09:01:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.13.165 with SMTP id 34ls2262409ots.13.gmail; Sat, 24 Sep
 2016 09:01:29 -0700 (PDT)
X-Received: by 10.13.242.1 with SMTP id b1mr3253880ywf.151.1474732889381;
        Sat, 24 Sep 2016 09:01:29 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id 7si2968376par.0.2016.09.24.09.01.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Sep 2016 09:01:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=namrataashettar@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id n24so6703052pfb.3
        for <outreachy-kernel@googlegroups.com>; Sat, 24 Sep 2016 09:01:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Cz4OtlmyHWzBew//eKxDmmkPuIUjZYU7DT9BF7Q01nA=;
        b=dtKj3kNHjh4FafGz6teOdbliu8416sduNSbh7D6kylADElSCta1EGWKJWdZUAnASSw
         lyitxg05l4NFoK9cpRLxArlAKhDbvEax6tG9fm1vcdnpjGrLkB/AC7AVPsrfY3D9ujVB
         BlpY2dZTEq14RRATIb6uzpsvZqosoHOmNf0Yh2Y2Rqv/xgObsmEy2KAO385MWBKSf0FS
         U9XSvppvqR/hYWpiiQ29n9309nto9YZtr5YWM7x6jThlivHhNEPtdqGsDkaKKHwA1ZIC
         v5FG06rIdMwZu4YGa+yvBvGbS58aqNOI8+QrFoCTYKIymjSkAZW7kpup6kBfef1/LjGg
         50EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Cz4OtlmyHWzBew//eKxDmmkPuIUjZYU7DT9BF7Q01nA=;
        b=T+OZVk6Ks3GWPEuFRDVckQMO1M21+ZtwsVW/OQfha5UeGPwEapevYwOtvHMaxeAWj7
         /BLAx99NOeKP3RISeRBdLmou7Ll4or4t7DcPZN7ustMJ6YZX+C5go6u8I03vh0d7ajFW
         nv7MHVeH4miee4jut2T0aN15nYSr2krxVKWK/oUlZCPtlDeQk3RUeBqgwMQNOtWfG+GB
         qzIynznVO80oNN0KqMJ8wMHfcrx246OrL9mC4KEAZ0mNac2KwvtPR58hA2OVl9IjSx4p
         FEhgkdJWzds8c6oPnR5rxWIFYgClvs+uMkHuN/C05GMmOOZNBv1murbG3HBx6pJCzn+0
         aTcg==
X-Gm-Message-State: AE9vXwMkEKwm3tNgX29phb34UTCc872WrmFvh0gVZd799TG7NIyXMbVWGmt1WZU7Y9ZqrA==
X-Received: by 10.98.152.138 with SMTP id d10mr22486872pfk.8.1474732889147;
        Sat, 24 Sep 2016 09:01:29 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from namrata-HP-Pavilion-g6-Notebook-PC ([103.225.101.21])
        by smtp.gmail.com with ESMTPSA id s82sm15047225pfg.42.2016.09.24.09.01.26
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Sep 2016 09:01:28 -0700 (PDT)
Date: Sat, 24 Sep 2016 21:31:23 +0530
From: Namrata A Shettar <namrataashettar@gmail.com>
To: Jarod Wilson <jarod@wilsonet.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Wolfram Sang <wsa-dev@sang-engineering.com>,
	Maciek Borzecki <maciek.borzecki@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH v2 5/6] staging: media: lirc: Convert 'unsigned' to 'unsigned
 int'
Message-ID: <e1de5318efff31d1f7f18242ae534d5979aff12b.1474722341.git.namrataashettar@gmail.com>
References: <cover.1474722340.git.namrataashettar@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1474722340.git.namrataashettar@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Mention data type along with the variable to resolve checkpatch issue.

Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
---
 drivers/staging/media/lirc/lirc_sasem.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/lirc/lirc_sasem.c b/drivers/staging/media/lirc/lirc_sasem.c
index b080fde..9eb1eec 100644
--- a/drivers/staging/media/lirc/lirc_sasem.c
+++ b/drivers/staging/media/lirc/lirc_sasem.c
@@ -73,7 +73,7 @@ static void usb_tx_callback(struct urb *urb);
 
 /* VFD file_operations function prototypes */
 static int vfd_open(struct inode *inode, struct file *file);
-static long vfd_ioctl(struct file *file, unsigned cmd, unsigned long arg);
+static long vfd_ioctl(struct file *file, unsigned int cmd, unsigned long arg);
 static int vfd_close(struct inode *inode, struct file *file);
 static ssize_t vfd_write(struct file *file, const char __user *buf,
 				size_t n_bytes, loff_t *pos);
@@ -243,7 +243,7 @@ exit:
  * Called when the VFD device (e.g. /dev/usb/lcd)
  * is closed by the application.
  */
-static long vfd_ioctl(struct file *file, unsigned cmd, unsigned long arg)
+static long vfd_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
 {
 	struct sasem_context *context;
 
-- 
2.7.4


