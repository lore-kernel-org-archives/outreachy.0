X-GM-THRID: 6333834735065759744
X-Received: by 10.13.219.144 with SMTP id d138mr2998740ywe.30.1474710834142;
        Sat, 24 Sep 2016 02:53:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.39.6 with SMTP id n6ls6926038ion.17.gmail; Sat, 24 Sep
 2016 02:53:53 -0700 (PDT)
X-Received: by 10.67.6.199 with SMTP id cw7mr2878102pad.76.1474710833576;
        Sat, 24 Sep 2016 02:53:53 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id e66si2905130pfk.2.2016.09.24.02.53.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Sep 2016 02:53:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=namrataashettar@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id n24so6385047pfb.3
        for <outreachy-kernel@googlegroups.com>; Sat, 24 Sep 2016 02:53:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=55qen8iDfthZOSpVHf/VTSIgOp4/z0sfTBJlaPcQj0g=;
        b=o9wcXA2j5jcDB3jt6qStj11czQyRVFvklO8Cs2Q7MdMhHAg+UxGzKuroHKb514Pyya
         R6rPDgDkNmcw0XUTYDdDZtzXkHCsHCEumxZQU1Vn42qLlx2RnkQTbLe6ILdpNc4NzkxC
         WbOGF27iiQHAb6rLiH0rct54jHgureq4D2kinrK9e9ydU6YF7XkzG9qAGvxUcQLMjhrh
         G36jC5xpeYH5px1UMvFeGNf+Ujz4YlZqdjeWWmPutDjwVwLVm4O24Z1BMBOsC9JyTdDl
         0n9XjJlCqXVI6oRsRbnPyumfpbfzszk7B/PaMnl0M7M9H2OCOhodP9s1B1OQhnHtYKip
         edDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=55qen8iDfthZOSpVHf/VTSIgOp4/z0sfTBJlaPcQj0g=;
        b=DUki2n0dKWu2g70Ox7OobhyU/r6GuR/XECd6ad7Upvlowkv6sfWHva9CNjKmf1CScZ
         /TSBdMSm7f0GV+vUsSsfSJmUhXvjz0BgHxa6rkbAi04e9DPhNZo15TtsZg7OFjZTOAKx
         bq+nQwmQ14kVkbXMHY5axGu/vYPf/Er1QrIcUOT61d96JYRphO4h0RSyBfHlQIbffTwr
         s4UHS9IbV5klKXC9i+1d60K6u8Ws3StiDIxuMvnH0ue9VItd90/13siTOlhUkVwlKW2X
         aarSNewLC1oAiue1Wg0u2eSfju4EJ4K2Gq+qLMqArRgOU6mkhP1MnSJoBeg8Q7TS5/YA
         z0vQ==
X-Gm-Message-State: AE9vXwM4kmi/+pIR5fiNeme6IGHeiBm50zj+iDZH9oLRZYR+CT0i/3wVH0ry56W9K4gfgw==
X-Received: by 10.98.14.221 with SMTP id 90mr20002902pfo.181.1474710833429;
        Sat, 24 Sep 2016 02:53:53 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from namrata-HP-Pavilion-g6-Notebook-PC ([103.225.101.21])
        by smtp.gmail.com with ESMTPSA id h8sm17217403pfk.88.2016.09.24.02.53.49
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Sep 2016 02:53:53 -0700 (PDT)
Date: Sat, 24 Sep 2016 15:23:46 +0530
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
Subject: [PATCH 1/6] staging: media: lirc: Remove multiple blank lines
Message-ID: <003f1241daa3380987f980dfba53f0cc79bf16b6.1474708455.git.namrataashettar@gmail.com>
References: <cover.1474708455.git.namrataashettar@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1474708455.git.namrataashettar@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Remove multiple blank lines to resolve checkpatch issue.

Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
---
 drivers/staging/media/lirc/lirc_bt829.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/staging/media/lirc/lirc_bt829.c b/drivers/staging/media/lirc/lirc_bt829.c
index f740115..06eac71 100644
--- a/drivers/staging/media/lirc/lirc_bt829.c
+++ b/drivers/staging/media/lirc/lirc_bt829.c
@@ -163,7 +163,6 @@ err_put_dev:
 	return rc;
 }
 
-
 void cleanup_module(void)
 {
 	struct pci_dev *pdev = to_pci_dev(atir_driver.dev);
@@ -174,7 +173,6 @@ void cleanup_module(void)
 	pci_dev_put(pdev);
 }
 
-
 static int atir_init_start(void)
 {
 	pci_addr_lin = ioremap(pci_addr_phys + DATA_PCI_OFF, 0x400);
@@ -190,7 +188,6 @@ static void cycle_delay(int cycle)
 	udelay(WAIT_CYCLE*cycle);
 }
 
-
 static int poll_main(void)
 {
 	unsigned char status_high, status_low;
-- 
2.7.4


