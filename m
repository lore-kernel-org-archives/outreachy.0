Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EA398481
	for <outreachy@lists.linux.dev>; Fri, 10 Mar 2023 14:01:23 +0000 (UTC)
Received: by mail-pl1-f172.google.com with SMTP id h8so5613947plf.10
        for <outreachy@lists.linux.dev>; Fri, 10 Mar 2023 06:01:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678456882;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1E1H01G5yHTefNIXDYDwx8BnHam3cp9im/vl/s0zSJg=;
        b=paKTama3iHQUROKjuwszpwKu1vGrHb0C8kTFWk/OFl5k4xxjcPUQg3QwKohLz2Seva
         duc++0cFytkwWflXtPn99raoCbKXCbI+usvcgFDNWr8s3g34NPvLDYNJHUoCknWtNbov
         Mn+duwew2vbd4E2St/NsZ8go+P5EoxCFJSibkgrTPaqsKvcMVe8Lt4z/ERLyQqWhKCHV
         HV9sAJQX6BLcJnXcqH9qrmPLdbmChYsrXUNlPalBe9S18F556lyJY/ydflReQrNrtk1A
         W3axWXi56lbL+wQtT/BhwMAJBpVuwkmAw9kl2B6sXZSJyrlGEnrg1Yov4+O4YXYPxHEA
         XEog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678456882;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1E1H01G5yHTefNIXDYDwx8BnHam3cp9im/vl/s0zSJg=;
        b=Be++DouhRNkGPOPjJjxWerunz74CZg4pQw7YleKkX8p+JH87AVvRjVBmyYeJzDhEXg
         6xDuhh601EA7/WVTH9iOcMVfy1ac6gQMNNOQqa0F5a5WzoVKYU2jPqP4knaJlUs7mfce
         AnQ9XmVPSe6RxVBE/uoeAQkn4ZrVlHt464jTgWQUe4agnNagJ3y6v53opk/izF3ZsPi7
         iLAWUBb/f6Ah9ND70CABR2oyuV91wUhGH/L+oOHviEkqzZGx+QkU/eWc24cGH8HY5Fxf
         GQS35Be1YCYMKNldvQtYjWwRQrwUlBERbzouUo7a2eJyFKno3t5YW/RdDcxtYMo82JRG
         bkNQ==
X-Gm-Message-State: AO0yUKUkf7hotTZ9hE1Ir0n+O4fVdcE0vtfgHK+ycL3yJ/jETx/x7fr/
	LQKWg2KugW5JRkHuFixyRzk=
X-Google-Smtp-Source: AK7set979+teWvE1FEu6RfhEUebp9t15CkaDEwF0V5DUouuImINlNm7Z+d+ZXPcWXwFfFUIbSmJjBw==
X-Received: by 2002:a17:902:e74d:b0:19a:a520:b1fc with SMTP id p13-20020a170902e74d00b0019aa520b1fcmr2087123plf.14.1678456882061;
        Fri, 10 Mar 2023 06:01:22 -0800 (PST)
Received: from ubuntu ([117.245.164.94])
        by smtp.gmail.com with ESMTPSA id km13-20020a17090327cd00b00194c2f78581sm47239plb.199.2023.03.10.06.01.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Mar 2023 06:01:21 -0800 (PST)
Date: Fri, 10 Mar 2023 06:01:19 -0800
From: Sumitra Sharma <sumitraartsy@gmail.com>
To: abbotti@mev.co.uk, hsweeten@visionengravers.com,
	outreachy@lists.linux.dev
Cc: linux-kernel@vger.kernel.org
Subject: [PATCH] comedi: drivers: ni_pcimio: Remove the code enclosed by #if
 0 and its #endif
Message-ID: <20230310140119.GA12544@ubuntu>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Reported by checkpatch.pl:

WARNING: Consider removing the code enclosd by this #if 0 and its #endif
at line 482, 501, 570.

Signed-off-by: Sumitra Sharma <sumitraartsy@gmail.com>
---
 drivers/comedi/drivers/ni_pcimio.c | 48 ------------------------------
 1 file changed, 48 deletions(-)

diff --git a/drivers/comedi/drivers/ni_pcimio.c b/drivers/comedi/drivers/ni_pcimio.c
index 0b055321023d..1603095f2ed9 100644
--- a/drivers/comedi/drivers/ni_pcimio.c
+++ b/drivers/comedi/drivers/ni_pcimio.c
@@ -479,43 +479,6 @@ static const struct ni_board_struct ni_boards[] = {
 		.ao_speed	= 250,
 		.caldac		= { ad8804, ad8804 },
 	},
-#if 0
-	/* The 6115 boards probably need their own driver */
-	[BOARD_PCI6115] = {	/* .device_id = 0x2ed0, */
-		.name		= "pci-6115",
-		.n_adchan	= 4,
-		.ai_maxdata	= 0x0fff,
-		.ai_fifo_depth	= 8192,
-		.gainlkup	= ai_gain_611x,
-		.ai_speed	= 100,
-		.n_aochan	= 2,
-		.ao_maxdata	= 0xffff,
-		.ao_671x	= 1,
-		.ao_fifo_depth	= 2048,
-		.ao_speed	= 250,
-		.reg_611x	= 1,
-		/* XXX */
-		.caldac		= { ad8804_debug, ad8804_debug, ad8804_debug },
-	},
-#endif
-#if 0
-	[BOARD_PXI6115] = {	/* .device_id = ????, */
-		.name		= "pxi-6115",
-		.n_adchan	= 4,
-		.ai_maxdata	= 0x0fff,
-		.ai_fifo_depth	= 8192,
-		.gainlkup	= ai_gain_611x,
-		.ai_speed	= 100,
-		.n_aochan	= 2,
-		.ao_maxdata	= 0xffff,
-		.ao_671x	= 1,
-		.ao_fifo_depth	= 2048,
-		.ao_speed	= 250,
-		.reg_611x	= 1,
-		/* XXX */
-		.caldac		= { ad8804_debug, ad8804_debug, ad8804_debug },
-	},
-#endif
 	[BOARD_PCI6711] = {
 		.name = "pci-6711",
 		.n_aochan	= 4,
@@ -567,17 +530,6 @@ static const struct ni_board_struct ni_boards[] = {
 		.reg_type	= ni_reg_6711,
 		.caldac		= { ad8804_debug },
 	},
-#if 0
-	[BOARD_PXI6731] = {	/* .device_id = ????, */
-		.name		= "pxi-6731",
-		.n_aochan	= 4,
-		.ao_maxdata	= 0xffff,
-		.ao_fifo_depth	= 8192,
-		.ao_range_table	= &range_bipolar10,
-		.reg_type	= ni_reg_6711,
-		.caldac		= { ad8804_debug },
-	},
-#endif
 	[BOARD_PCI6733] = {
 		.name		= "pci-6733",
 		.n_aochan	= 8,
-- 
2.25.1

