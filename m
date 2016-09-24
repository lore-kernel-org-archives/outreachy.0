X-GM-THRID: 6333834735065759744
X-Received: by 10.66.42.135 with SMTP id o7mr2822888pal.115.1474710849152;
        Sat, 24 Sep 2016 02:54:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.90.74 with SMTP id v71ls1176532ita.9.canary; Sat, 24 Sep
 2016 02:54:08 -0700 (PDT)
X-Received: by 10.66.251.167 with SMTP id zl7mr2776801pac.70.1474710848805;
        Sat, 24 Sep 2016 02:54:08 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id e66si2905130pfk.2.2016.09.24.02.54.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Sep 2016 02:54:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=namrataashettar@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id n24so6385047pfb.3
        for <outreachy-kernel@googlegroups.com>; Sat, 24 Sep 2016 02:54:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=RGmRoBwBYihYqIOCwKxKizvYCZd7VC34HD2rBpCI/gU=;
        b=gFNPcvfb74JnxOa/bUfHwjaQawdr/JZusOLkeUFzCjADW7XlHtCrKk2ALnxUYBm8xE
         FxHgPr88w1uPA+3L1EPq290HcwwYRej3ZGjaJwElTLUQD67Db5oLAmf4zlwm1npWdeP9
         wQ+CZc87xk0fG4HC+crA4LCBQDOUggcjqIW3IzlAxVtmsJl5IrIbDWzBNSKtgc95+GW0
         Dt2UYmAaBe58OYbZAJpn3hfkF9pbhRTWcejT4x31Ng7IbGgtxaxJ5fhhY7L9Zf4ESZOL
         v6yYAZ6319YGOeb9rY4//F76cfTpyXZXnRuCsdktFN20rs6/+P98Icm6sYYQmtnLeMdT
         b2Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=RGmRoBwBYihYqIOCwKxKizvYCZd7VC34HD2rBpCI/gU=;
        b=hgRhuk53MLtacx7Us2nggYwf0cgTGnL+13rmqfpqLzSWXmbwjkDuTeEAjUMJ/EbGdC
         PkY1VdENXmHmJ5oql94Lf0ATr2HbIc7HvlpGe4UM+3xoWPybwb89+u6U+B4+Lwv2lmHp
         JAJtwL6gd4y2026f5+7g+0wbgi0RYOovEluRDQMiWMQLVJae5t3ANqQ+6U0BqC73mY4t
         PQ7Cqw7zNELFg2cFwxysgWzWWIlELgXc/0v/C+StZ45e/hl4z0t5FH1HxpOlYR2MDwXi
         HUre5iJukVCTWP8l/EST4hpGL7hGOinO2rnbsfvM43ogyPEh4UtYwTHzQwPMwLgrylro
         E17w==
X-Gm-Message-State: AE9vXwPcX79R5TAZhZzTCR+OVGJxqOFs5rrrGtf2xuKkVTSYmNwtsdwhEdEtDdmZOKii8g==
X-Received: by 10.98.62.194 with SMTP id y63mr20079015pfj.99.1474710848639;
        Sat, 24 Sep 2016 02:54:08 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from namrata-HP-Pavilion-g6-Notebook-PC ([103.225.101.21])
        by smtp.gmail.com with ESMTPSA id w15sm17227516pfi.68.2016.09.24.02.54.04
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Sep 2016 02:54:08 -0700 (PDT)
Date: Sat, 24 Sep 2016 15:24:01 +0530
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
Subject: [PATCH 2/6] staging: media: lirc: Add space around '+'
Message-ID: <d0f1bdc5ccaa602ba0a53232be35202e326e395f.1474708456.git.namrataashettar@gmail.com>
References: <cover.1474708455.git.namrataashettar@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1474708455.git.namrataashettar@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Add space around '+' to resolve checkpatch issue.

Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
---
 drivers/staging/media/lirc/lirc_bt829.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/lirc/lirc_bt829.c b/drivers/staging/media/lirc/lirc_bt829.c
index 06eac71..04d881b 100644
--- a/drivers/staging/media/lirc/lirc_bt829.c
+++ b/drivers/staging/media/lirc/lirc_bt829.c
@@ -185,7 +185,7 @@ static int atir_init_start(void)
 
 static void cycle_delay(int cycle)
 {
-	udelay(WAIT_CYCLE*cycle);
+	udelay(WAIT_CYCLE * cycle);
 }
 
 static int poll_main(void)
-- 
2.7.4


