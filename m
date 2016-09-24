X-GM-THRID: 6333834735065759744
X-Received: by 10.66.250.232 with SMTP id zf8mr2688935pac.79.1474732814075;
        Sat, 24 Sep 2016 09:00:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.73.76 with SMTP id z73ls145386ita.5.canary; Sat, 24 Sep
 2016 09:00:11 -0700 (PDT)
X-Received: by 10.107.190.71 with SMTP id o68mr3337144iof.58.1474732811900;
        Sat, 24 Sep 2016 09:00:11 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id f12si3000576pfk.0.2016.09.24.09.00.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Sep 2016 09:00:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=namrataashettar@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id q2so6706753pfj.0
        for <outreachy-kernel@googlegroups.com>; Sat, 24 Sep 2016 09:00:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=55qen8iDfthZOSpVHf/VTSIgOp4/z0sfTBJlaPcQj0g=;
        b=LIYQb9MOG2JWZ7pfawJvdSu8Mr3RNWVxqR+Somu+Pm8yZXdAy8Vy1PsREccU1G0Y5/
         wxodEzZIbQGedqmPMn6ZAIJv327ITDbd/m2kemjR+54UvCyvmpsAjax9g9j6+dz4E5YX
         ++EwHxiKFpltETWLFPueOLqjFn58xCAyYhr6OmpSIzUkentGGG7aQl7JAeRhu1ea0+ot
         IiS4QvTYTj7so5nxGf9eb/1ps1op1fALY9GyPJUnwU7vPbg/Nv/iU/L+3axT9E8Um2m9
         1gJlKLtc0cF8Z39Pjxrk/5wLxvT4SgSoXZNaMel5rtGgM25lpnalOSNZIZ2wAFcYNrWL
         KESQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=55qen8iDfthZOSpVHf/VTSIgOp4/z0sfTBJlaPcQj0g=;
        b=bjEN1EwgbzGhHLUFQQMuclAm/EavbmUpWN/P1hNjrRqz8Qh9EPoleHVrDoHSMAw8bo
         SJwf2N1nWZifBLXypWrgY+POZ4+NgzN9yiI7TiCHamwpdKU47S815ZiEQjUX5vDB0AtC
         PgK74qCH7jUQlUw6Zsjgo8+e2bqY6unNWwMDJxxIhsX0G9Ru+PruXNUQ/H5kSPzYSR7C
         SBqyNkYvCBbv08lS3VtE+qdJU8ib9Mh9WampjhfiZQ3irmOb9A/xPOeBXjVZgm6sd2OA
         +2lI7QCZhWrEBt5h9KZd4QOSFBBe2LIssRgF01xDg5qGWQQMnN2R7OpsLHQ52xJ8fK2O
         udCw==
X-Gm-Message-State: AE9vXwM2Ls6l38sLMhZUs91HHXvbBl96A/l1oAmYsgcwa/dpXnlYqusDMz6PdxN7nYBB1Q==
X-Received: by 10.98.61.203 with SMTP id x72mr22831270pfj.50.1474732811687;
        Sat, 24 Sep 2016 09:00:11 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from namrata-HP-Pavilion-g6-Notebook-PC ([103.225.101.21])
        by smtp.gmail.com with ESMTPSA id 138sm19517944pfx.41.2016.09.24.09.00.07
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Sep 2016 09:00:11 -0700 (PDT)
Date: Sat, 24 Sep 2016 21:30:04 +0530
From: Namrata A Shettar <namrataashettar@gmail.com>
To: Jarod Wilson <jarod@wilsonet.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Wolfram Sang <wsa-dev@sang-engineering.com>,
	Maciek Borzecki <maciek.borzecki@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH v2 1/6] staging: media: lirc: Remove multiple blank lines
Message-ID: <003f1241daa3380987f980dfba53f0cc79bf16b6.1474722340.git.namrataashettar@gmail.com>
References: <cover.1474722340.git.namrataashettar@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1474722340.git.namrataashettar@gmail.com>
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


