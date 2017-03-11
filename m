X-GM-THRID: 6394528999032225792
X-Received: by 10.25.56.6 with SMTP id f6mr3469466lfa.4.1489235728875;
        Sat, 11 Mar 2017 04:35:28 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.20.25 with SMTP id u25ls882183ljd.35.gmail; Sat, 11 Mar
 2017 04:35:28 -0800 (PST)
X-Received: by 10.25.26.80 with SMTP id a77mr3176724lfa.18.1489235728402;
        Sat, 11 Mar 2017 04:35:28 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wr0-x244.google.com (mail-wr0-x244.google.com. [2a00:1450:400c:c0c::244])
        by gmr-mx.google.com with ESMTPS id b186si196425wme.1.2017.03.11.04.35.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Mar 2017 04:35:28 -0800 (PST)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) client-ip=2a00:1450:400c:c0c::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x244.google.com with SMTP id l37so14493021wrc.3
        for <outreachy-kernel@googlegroups.com>; Sat, 11 Mar 2017 04:35:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=KIoly1M2KfwK9xD3N+nMUn6akkuFLtLXBinbPgviv80=;
        b=aKQW71BETpnKG8vfseor/hhgAixXdhqRFeDmnbYJKUBQx71NAAYKnN8Hus3Jx31E9/
         lvszsnUTRt4eKBc8rsGxf05zM6WN/j8n7paIywffmgURpyGjoX6eelzYPufFoRHLIKvg
         fVGb2n4juNqGKQ/wV8+DNm/c+0FH6E6eVajgvSFZ+l/39BtPkTmPNFbT+9sDQebvJqE+
         tI4upoJMe/WquqSy4s4pe3Why5kyLcD/jb4Cq4OxrVTK+2320qmw7xQeCjghXzL+mqmD
         9XLocBYLJSEMGYV9vpUrHn3OD32aQNrYfvhviT3Y1LodpyEx2S9NPcKVnL9BnR72dc11
         S+Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=KIoly1M2KfwK9xD3N+nMUn6akkuFLtLXBinbPgviv80=;
        b=bzhMbTajltKfh4B5uIM5rYfTrEPahi8jUI9P2aufIZR90GLR+SODQgkRfx93T/mBh5
         aiMVbk3b2QTWrGuCXknKvj6sVz3s83binLHvtO7Dl3CiCTXXgBZTCRMD4+g1ChMKA5Qp
         GAfH1H0b7YPcl61DKCUhRxISaZNaGpBcZYYStb+PGYZ7yzk1JJyCizSmTJVrSNKO8ISv
         9eCIPhKdEThBZLsSLW3Ohu5lq3YJzl1U/sgyCb6QtOP268vB+5wyxg5xLCH2PPC+rr5N
         i5TJL2s83I7cIvGB8gOW0UTFULCTpZp06sROGWqrdNj2KhUhm+/y/n90ZWEi3q9On7BF
         uwZA==
X-Gm-Message-State: AMke39nSrhHOmhUwrAXJHq0/hXCWVVj9sO6Rvly70E1zY6D9ZqX4wRREb85MaDvmt+wRNg==
X-Received: by 10.223.175.15 with SMTP id z15mr22743360wrc.84.1489235728244;
        Sat, 11 Mar 2017 04:35:28 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([141.85.228.77])
        by smtp.gmail.com with ESMTPSA id 63sm3498579wmg.22.2017.03.11.04.35.25
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 11 Mar 2017 04:35:26 -0800 (PST)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: aditya.shankar@microchip.com,
	ganesh.krishna@microchip.com,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH v2 1/3] staging: wilc1000: Declare variables at top of function
Date: Sat, 11 Mar 2017 14:33:58 +0200
Message-Id: <20170311123400.17274-2-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3
In-Reply-To: <20170311123400.17274-1-diaconita.tamara@gmail.com>
References: <20170311123400.17274-1-diaconita.tamara@gmail.com>

Moving declaration of some variables at top of wilc_spi_read_int
function to improve code readability.

Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
---
 drivers/staging/wilc1000/wilc_spi.c | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/wilc1000/wilc_spi.c b/drivers/staging/wilc1000/wilc_spi.c
index d5fd0e7..e1ead47 100644
--- a/drivers/staging/wilc1000/wilc_spi.c
+++ b/drivers/staging/wilc1000/wilc_spi.c
@@ -937,6 +937,9 @@ static int wilc_spi_read_int(struct wilc *wilc, u32 *int_status)
 {
 	struct spi_device *spi = to_spi_device(wilc->dev);
 	int ret;
+	int happended, j;
+	u32 irq_flags;
+	u32 unkmown_mask;
 
 	if (g_spi.has_thrpt_enh) {
 		ret = spi_internal_read(wilc, 0xe840 - WILC_SPI_REG_BASE,
@@ -955,12 +958,8 @@ static int wilc_spi_read_int(struct wilc *wilc, u32 *int_status)
 		tmp = (byte_cnt >> 2) & IRQ_DMA_WD_CNT_MASK;
 
 		{
-			int happended, j;
-
 			j = 0;
 			do {
-				u32 irq_flags;
-
 				happended = 0;
 
 				wilc_spi_read_reg(wilc, 0x1a90, &irq_flags);
@@ -973,8 +972,6 @@ static int wilc_spi_read_int(struct wilc *wilc, u32 *int_status)
 				}
 
 				{
-					u32 unkmown_mask;
-
 					unkmown_mask = ~((1ul << g_spi.nint) - 1);
 
 					if ((tmp >> IRG_FLAGS_OFFSET) & unkmown_mask) {
-- 
2.9.3


