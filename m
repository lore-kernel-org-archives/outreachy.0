X-GM-THRID: 6333834735065759744
X-Received: by 10.107.174.135 with SMTP id n7mr2837700ioo.20.1474710928119;
        Sat, 24 Sep 2016 02:55:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.227.70 with SMTP id d67ls1227741ith.3.canary; Sat, 24 Sep
 2016 02:55:27 -0700 (PDT)
X-Received: by 10.107.174.135 with SMTP id n7mr2837692ioo.20.1474710927783;
        Sat, 24 Sep 2016 02:55:27 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id si10si3151487pab.1.2016.09.24.02.55.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Sep 2016 02:55:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=namrataashettar@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id q2so6388832pfj.0
        for <outreachy-kernel@googlegroups.com>; Sat, 24 Sep 2016 02:55:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=YdrB/w60wCM+3sk5RNhNI9C11GGT0OZVigxF8sUZNR0=;
        b=HryaQjt+hcBB/py/zSDJbj0V3ab3Gq9tO14fhYVIuNkj3+dSh/FZ+eRIA5FxrqCO9G
         ttGT+s/buFgfgJGBrMB8yekS55txporksXoda1IOlk933oRkPwDka0jQmsLK5XQ4dyii
         j7cg9JYAvO3VBeZ2Ko0wgXcb/UXz8GXVMd9kHreXaIDVnylU5I6eTyBmghLqxtD8xhdW
         doOjkFuAimFRPUqFq0ncJehis/IZSRhLFrmth3crQEx/X1SkbAa+PA7EPcKKuc3Hkc1z
         zyHEzVfkWRHjeUK9m1ObRMklFLY628bsJYjksY8ojHZO8B/j910O6biiKxvXIgMYLfz8
         6xag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=YdrB/w60wCM+3sk5RNhNI9C11GGT0OZVigxF8sUZNR0=;
        b=WkPdlw927EjfHBM7wO1/VczZCICm9Tc4tc1A4X5rAUpiXeK7vuD32r9qNH1Tjqfd4y
         7RlUyEth+ydy+AK8wdxFz12GRF1ppyBFj48gnNlenDySgdVcaO3wTrNpGFQmg9MepUqm
         1bPDv5gK8KojWn+u43d/Pfzwlfke/pSywPN69YNyp17fEW15X0mGC+tQf1BqOjCbKtbV
         IXu4+YLrbtQFsmdpxHU7hlaZJ7fjQJVllpTYTdpB/tOY15yyVZkKdfO8EU/ClbXsobfY
         c1XHqnSulctUwbCtiLK/ihUwserPkfGFann9V/MIiVfAIm5IjeDU4X8/3/j+Nh/ETdk1
         vEEQ==
X-Gm-Message-State: AE9vXwPKW820l52HV4Lc3T1cetWVvBZeA0lU0BznynBm93JCqaR2vfYUCikm/7EMCinAag==
X-Received: by 10.98.129.131 with SMTP id t125mr20574642pfd.157.1474710927601;
        Sat, 24 Sep 2016 02:55:27 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from namrata-HP-Pavilion-g6-Notebook-PC ([103.225.101.21])
        by smtp.gmail.com with ESMTPSA id tq5sm17254908pac.42.2016.09.24.02.55.23
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Sep 2016 02:55:27 -0700 (PDT)
Date: Sat, 24 Sep 2016 15:25:20 +0530
From: Namrata A Shettar <namrataashettar@gmail.com>
To: Jarod Wilson <jarod@wilsonet.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Namrata A Shettar <namrataashettar@gmail.com>,
	Amitoj Kaur Chawla <amitoj1606@gmail.com>,
	Tapasweni Pathak <tapaswenipathak@gmail.com>,
	Wolfram Sang <wsa-dev@sang-engineering.com>,
	Maciek Borzecki <maciek.borzecki@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Shraddha Barke <shraddha.6596@gmail.com>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH 5/6] staging: media: lirc: Mention data type along with
 'unsigned'
Message-ID: <e1de5318efff31d1f7f18242ae534d5979aff12b.1474708456.git.namrataashettar@gmail.com>
References: <cover.1474708455.git.namrataashettar@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1474708455.git.namrataashettar@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Mention the data type along with the variable to resolve checkpatch
issue.

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


