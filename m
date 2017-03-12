X-GM-THRID: 6395629856318554112
X-Received: by 10.46.33.82 with SMTP id h79mr4920121ljh.7.1489353341319;
        Sun, 12 Mar 2017 14:15:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.92.71 with SMTP id q68ls1388386ljb.40.gmail; Sun, 12 Mar
 2017 14:15:40 -0700 (PDT)
X-Received: by 10.46.88.9 with SMTP id m9mr4768690ljb.25.1489353340814;
        Sun, 12 Mar 2017 14:15:40 -0700 (PDT)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wm0-x243.google.com (mail-wm0-x243.google.com. [2a00:1450:400c:c09::243])
        by gmr-mx.google.com with ESMTPS id f7si555163wmg.3.2017.03.12.14.15.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Mar 2017 14:15:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) client-ip=2a00:1450:400c:c09::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x243.google.com with SMTP id z63so7120801wmg.2
        for <outreachy-kernel@googlegroups.com>; Sun, 12 Mar 2017 14:15:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=KIoly1M2KfwK9xD3N+nMUn6akkuFLtLXBinbPgviv80=;
        b=ZPG0qzr92XKn8QiHgwsd7Rp7hu3OAwMfGtROtxa2T5zoM6IweCtjnpTrjCsB9cmk1k
         qhF266UyY0vC5BH2Tf3Ul6G+8XtZ4KgNgz9xzXxhtxIQUa/k0jdXibBIflmDZeuxPqZZ
         cSMeMj7L4qUH+I9f4ndOMAuZS+N8Lkk7WN0aCOweEJNMpeq86OLYXBUh5TrzgKOxEWdt
         oxaPYlx8TruP8e5hn7Gs77170Kri8410s4pGUFa4ydCaSL2rcHH7vl80YXKUp8MK9B34
         cMj1OCLS8JyhoIHk0zjQol+fUfXIOMywdKmViM8lK9iixvPAd3W8Y9SOxGpbsgLNAQRd
         H+qA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=KIoly1M2KfwK9xD3N+nMUn6akkuFLtLXBinbPgviv80=;
        b=hJgQpxS0ZX80/f/HBX5yhDgx+NFyKpZOnZEQ8095cN7pZ1prvzitohe0cJPXi1F0CN
         2gxdpjRY2Xwv0xQipX+KsSNvyQVBNwCoqG71+OjjAu/GnQK93hTfYP/g62PXLcM6FV9K
         OB3dNpwJlI1UeU2KDm6ltItrGF7nNjH5/VUzkJPpfZeL/qhyI6517mS/eO4yEDplBaAT
         CIzB8UUArI/b5ufeyyJqDd+t0uMAiZzKnG5U0Pw46zsw7RPJILfrs3Z4YBKoGum5Y+57
         UizlJDulXAWo+2jVFcR/pAmNUQ8fc1rwlVBh92fzocxSgLsanTUBVC8ddDLge+xWY/zR
         wM8g==
X-Gm-Message-State: AFeK/H2A+3e+V2qGNFf7VyFqvMeA7AgkeZLihIW5xkCoCBAubz+7F4RZrsjPavUgrA9Dmg==
X-Received: by 10.28.62.204 with SMTP id l195mr7097217wma.88.1489353340649;
        Sun, 12 Mar 2017 14:15:40 -0700 (PDT)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([2a02:2f0b:8130:11ea:402c:8cdb:1897:4e7d])
        by smtp.gmail.com with ESMTPSA id 32sm22275629wrr.64.2017.03.12.14.15.39
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 12 Mar 2017 14:15:39 -0700 (PDT)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: aditya.shankar@microchip.com,
	ganesh.krishna@microchip.com,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH v2 1/3] staging: wilc1000: Declare variables at top of function
Date: Sun, 12 Mar 2017 23:15:16 +0200
Message-Id: <20170312211518.3172-2-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3
In-Reply-To: <20170312211518.3172-1-diaconita.tamara@gmail.com>
References: <20170312211518.3172-1-diaconita.tamara@gmail.com>

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


