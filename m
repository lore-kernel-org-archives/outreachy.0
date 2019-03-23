X-GM-THRID: 6671492660700643328
X-Received: by 2002:a02:3b1c:: with SMTP id c28mr10550393jaa.5.1553327944470;
        Sat, 23 Mar 2019 00:59:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a6b:bdc1:: with SMTP id n184ls4776067iof.0.gmail; Sat, 23
 Mar 2019 00:59:03 -0700 (PDT)
X-Google-Smtp-Source: APXvYqykMob7GwDqYtNm1yIwXtxuqyndq5BVl2a2ZKF0Yij/CBu4c/2XviAgeM6q6lrG9p57oDEY
X-Received: by 2002:a6b:e402:: with SMTP id u2mr9938910iog.45.1553327943950;
        Sat, 23 Mar 2019 00:59:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553327943; cv=none;
        d=google.com; s=arc-20160816;
        b=iQhuSN09//ylDPAXAGPcigIXAyRG0eLQ7WkLqDCM15290GzlokBUm0dwZCvsIqQpBk
         AYG2ZR69c487azbQO/50UhDaaJF7eXnMdG6nNPYsx4Si+CW5VI3N5NxmdIOddAXbe5uP
         6HjgEC4dFe05uL7KXzRdM24R44SXOPLk9Z7ufLebgt4MG5gOQ206WmcXbdBRfnYW/34C
         NR3ORlxjHiJDCcaOvhYThPPrCpu3826D/Qk3MCclqosk4hpDxcYII4FYlcETVlRZ+iwV
         ndTrgsKpPRwU5cuTPMMqj9DOq4cYYVnuyjDSM/h8rUQIEFrp8XsGviizV7uKgoEskekE
         xf8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=+dH8mmraEDdNQt93LB7ey7xhw9jfombBLGedtbAKej8=;
        b=ckju3t/PQ7HbbF18DvUFxaOQsKfj7OF+8TlUi55YUcAgdBj2nCnYq5WeMhIRHt1hS9
         K3gUH9yJG11R38i2GplfBN3Jh6xQV4NJDudAKxXD82xvYOiowdEZdMr0S1DcIxNcoa0u
         Z7Ddh80stb/kONHVSUKbHKhTeeWTYSvxs6S2z4T1aAQsBDUPVWTXOO8G5YBaJD+Ryuid
         ShVWLViFpifeNaDWP5HnXgkeV2O8qyL3iYq9gqycExWlYPJ1VE46xBWy1UOG6YP8c03C
         fwgI3wl0zupJI9nhrgX9uDfQAcMvsqYsOT0ewGN5/Dk1ZIci/VaXG2WigiP2fuzJ4ZVC
         PyYQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tswNz1X7;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id g127si925972ita.3.2019.03.23.00.59.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Mar 2019 00:59:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tswNz1X7;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x444.google.com with SMTP id 9so3021722pfj.13
        for <outreachy-kernel@googlegroups.com>; Sat, 23 Mar 2019 00:59:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references:mime-version:content-transfer-encoding;
        bh=+dH8mmraEDdNQt93LB7ey7xhw9jfombBLGedtbAKej8=;
        b=tswNz1X7mnqlFn81uBeJ4lPh2aIG4NBS0r1xN3xc/R42r7WIDeStWQpwlz/DO+BK4i
         sTbJBKUkDrc8kTI0Of4QKaVG0nUzBCs6EfhAYp9ssnT4xnsy9Z6CE/QN1EeO5j5+hVlp
         yxo70K+MI0CxHIIIYliz3ZQPtVbCS3CV5q4Y2wpOXyioUnJ6gtSN/5noqnq6gxJVXXlv
         vS/EXGILkJN80EhQm9ybqa1cx1lzupVB6QtLGZdlSz2x9zLrPzVlYXkEUKNuPAN+Wr6t
         WbMgT867YX/2Ekuucjd2ZPREfoHF5RFUD/J9FB3RMSzG9MN1QT8RMHFPjZImMtD2oSLl
         R8fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=+dH8mmraEDdNQt93LB7ey7xhw9jfombBLGedtbAKej8=;
        b=rqft2uVoDJRSQImubOOamsZUsIZ5FdMUh3Yv9PKjsTPUUsYfmUAE3wWGLBoaypQLD/
         nw+FZkJ8L+VAER3GyEUKYzgSog5nzLDFrEVvXfQp5Ft0gyFsYDKq52bY+H3J0KzjEYIe
         UCOcqq/0Md/Jb6rpQBJvSWGz5c/y6o8WdX5XAoMynD7JbZI3o34fD5FfeLaVF7WfPlf7
         2esnhYesEFsljT4cOxkv/Iw6zlgMssj7s3hiINX0ixPczshDguZD2niyNzfhhHMaXI6d
         xhGQPX7wKZWmGbY9eVnpfX/R7rDQxMcErVHTX8a1+wmRtXMj5F/NqV0Cr9sFdeerrD6U
         u7TA==
X-Gm-Message-State: APjAAAXtBjPA+Y3tIEJTF+QLlQKSDdfLTwvF8utPnXUwCO82G1dXsS6N
	iKNhJn5yxQbJK1fJFCn6k4bi8059
X-Received: by 2002:a65:4244:: with SMTP id d4mr12995679pgq.419.1553327943057;
        Sat, 23 Mar 2019 00:59:03 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([157.33.173.66])
        by smtp.gmail.com with ESMTPSA id n24sm22379150pfi.123.2019.03.23.00.59.00
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 23 Mar 2019 00:59:02 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>,
	pkbehappyallthetime@gmail.com
Subject: [PATCH 4/5] staging: rtl8712: avoid camelcase variable name 'bContinual'
Date: Sat, 23 Mar 2019 13:28:30 +0530
Message-Id: <2105c2ad643dc4a451287fea94daf3836597fa8d.1553327467.git.payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <6b2beffe41d8256284179eda6eadd8b9cf0a24fb.1553327467.git.payal.s.kshirsagar.98@gmail.com>
References: <6b2beffe41d8256284179eda6eadd8b9cf0a24fb.1553327467.git.payal.s.kshirsagar.98@gmail.com>
In-Reply-To: <cover.1553327467.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1553327467.git.payal.s.kshirsagar.98@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Eliminate camelcase variable names to fix the style issue – ‘avoid
camelcase’

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/rtl8712/rtl8712_efuse.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl8712_efuse.c b/drivers/staging/rtl8712/rtl8712_efuse.c
index dd007280..34341bf 100644
--- a/drivers/staging/rtl8712/rtl8712_efuse.c
+++ b/drivers/staging/rtl8712/rtl8712_efuse.c
@@ -208,12 +208,12 @@ static void pgpacket_copy_data(const u8 word_en, const u8 *sourdata,
 
 u16 r8712_efuse_get_current_size(struct _adapter *padapter)
 {
-	int bContinual = true;
+	int continual = true;
 	u16 efuse_addr = 0;
 	u8 hworden = 0;
 	u8 efuse_data, word_cnts = 0;
 
-	while (bContinual && efuse_one_byte_read(padapter, efuse_addr,
+	while (continual && efuse_one_byte_read(padapter, efuse_addr,
 	       &efuse_data) && (efuse_addr < efuse_available_max_size)) {
 		if (efuse_data != 0xFF) {
 			hworden =  efuse_data & 0x0F;
-- 
2.7.4


