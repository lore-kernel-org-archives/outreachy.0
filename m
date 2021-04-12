X-GM-THRID: 6950254518663643136
X-Received: by 2002:a25:bad0:: with SMTP id a16mr36707808ybk.441.1618232233571;
        Mon, 12 Apr 2021 05:57:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:1342:: with SMTP id 63ls7399041ybt.8.gmail; Mon, 12 Apr
 2021 05:57:12 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzro8IpewQNnL31+0HT+KVbcXCU90psmIj6t+X8Bi7kIEFrXLvkw3frdll3xm5vx/FS0qGV
X-Received: by 2002:a25:ade7:: with SMTP id d39mr30811711ybe.31.1618232232620;
        Mon, 12 Apr 2021 05:57:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618232232; cv=none;
        d=google.com; s=arc-20160816;
        b=DHTS43CBKCUltnzIVQfXxpbWqTGE/iVNv2sx7LRCGLMzUvummuuIaYhtzf7OgJdlSt
         CsiY6cTUIyHkrTTGYu6D62Y6UaYXs9jtnCcL6CEqZ8cb87RlAHwdyem6nIUgijK2KfLQ
         zCMBSHvBLy09iVlje5pM/9RAxQt8/eKKFAGpLmGROUUHz/A3amsTLvvgHFnkOgrUW1RC
         IE6qO6qKweN5564bhMN9Zq0m4EjiKqv+miQqFvUPRt63hOPV/9c4l7AlS0tlANGFr9De
         fB4V1fMbh3LarzD/QpnNfAENuBhfn2dg8KiIoY4IUSjo/iRuNyaA18eKaNJMZfHBH17t
         HThA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=x7tmmZHrCVQE02Px5t5c/UG1yYUMoOazF7ZKUu9ZpuU=;
        b=H3+1I9rAwlw6gqXQhJ3klHaHuFCtkxcopos80t5uFMur9J4UwBqqew8IXwI/Mvob6k
         nrQbc19nipLQVZ9Ccg0NMf8wPBkF0qcHQpi2FTTqABb86kGYILlhY4su3Klvj3uTjel0
         n82J8OH9KYjQhMfUbBYwfXQ0kLjmElAnZUmtj0vJnV6iyvqnXRrI6SYpLJxt8Zx7TW0T
         nlK2MWl3C+opHZK171vCusbo6AKlBcdcFzlr6nyjA18VJeSAHgJaXvkgQvtlueKvgbJb
         N9Y7ccbAG1nejyO9I0vCYCI1Icmkr4YmVoXr0ee8lc19rphn0Jh3jvMIYq5tqlys+H9e
         PCvA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bG0J3T9h;
       spf=pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::72f as permitted sender) smtp.mailfrom=alinesantanacordeiro@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <alinesantanacordeiro@gmail.com>
Received: from mail-qk1-x72f.google.com (mail-qk1-x72f.google.com. [2607:f8b0:4864:20::72f])
        by gmr-mx.google.com with ESMTPS id q185si654851ybc.1.2021.04.12.05.57.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Apr 2021 05:57:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::72f as permitted sender) client-ip=2607:f8b0:4864:20::72f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bG0J3T9h;
       spf=pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::72f as permitted sender) smtp.mailfrom=alinesantanacordeiro@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qk1-x72f.google.com with SMTP id x11so13072378qkp.11
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Apr 2021 05:57:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=x7tmmZHrCVQE02Px5t5c/UG1yYUMoOazF7ZKUu9ZpuU=;
        b=bG0J3T9h0gD7RFwfNzKPHOpVtBGHDC9e4xfbvB/QjXJZsoROBH322oIhWOFt5ydN0P
         1anCaW9cFkl95K0dNa+EbRMXAoPlXdrJx/e+se+pX2glviRXmq3OhrFFPY51YvC3ajn+
         83hUxE2xXl9vp1qfzUjp8D0oX2JYcx+LW89E6owH8J/SATk7ABbi7x0yPotpnPoYT1tp
         Qx/gClqyN/42t0LjlexgVS5y1uBh4ECm545BJhY0d/VMPNO4GjoPgZ8Cl41UFTzUeyPg
         9RKFFB17yrw2osPKw+yR5EFHYdcJjyI1SYsI62WeNfQtNeTavOvnyTfcLSc1/76Lt8xs
         zhPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=x7tmmZHrCVQE02Px5t5c/UG1yYUMoOazF7ZKUu9ZpuU=;
        b=o0SoZXbgh1PLBW4yL1aQUlP4aDNmo3+xbKjrbRXNCQaFEF34NxevvcAPbV9zvzyVAx
         VDawtlLsWLRAS7lTx7QJ3UmopVV5GYM+JMT/zSCseeZInrFoRFwOSdzhGkYWVP81+Cx7
         9dBoPpY3zkiAS8tqt4dw2pY7veil7UlWhjAcXEsY0j0Ped28XuGiS1GIocYaXgnwqH9Y
         BB4ybHN5qlgXMij4hbtoWx38xvEM+RpqAcSmqLs/xcMueoaI9I+jQ5hN1pLgF6hsbBGu
         j/4nGMyYPWrfmyQCKxjE6ezwHdnHcELTdO1tcDktv2UG1NUm5oxWkdKG33HfXHKjWlsf
         3NEg==
X-Gm-Message-State: AOAM531gqh3mvH5qUN/FseU+z0viSARnebX6OJcK4M+JF70rG/uSa1K3
	F19VcVkhH+gG7ilplqyL975IIAhn65+v2fLq
X-Received: by 2002:a05:620a:1592:: with SMTP id d18mr4863797qkk.329.1618232232193;
        Mon, 12 Apr 2021 05:57:12 -0700 (PDT)
Return-Path: <alinesantanacordeiro@gmail.com>
Received: from focaruja ([2001:1284:f016:a037:476a:dfcd:f18f:9ad5])
        by smtp.gmail.com with ESMTPSA id t198sm3824160qke.44.2021.04.12.05.57.11
        (version=TLS1 cipher=ECDHE-ECDSA-AES128-SHA bits=128/128);
        Mon, 12 Apr 2021 05:57:11 -0700 (PDT)
Date: Mon, 12 Apr 2021 09:57:09 -0300
From: Aline Santana Cordeiro <alinesantanacordeiro@gmail.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [Outreachy kernel][PATCH 1/4 v2] staging: media: omap4iss: Replace
 macro function by static inline function in file iss.c
Message-ID: <e302566a3d9e5180ab27eb2c2824fd1b678a6d99.1618231618.git.alinesantanacordeiro@gmail.com>
References: <cover.1618231618.git.alinesantanacordeiro@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1618231618.git.alinesantanacordeiro@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Replace macro function by static inline function.
Issue suggested by Julia.

Signed-off-by: Aline Santana Cordeiro <alinesantanacordeiro@gmail.com>
---

Changes since v1:
 - Insert file path in commit message

 drivers/staging/media/omap4iss/iss.c | 24 +++++++++++++-----------
 1 file changed, 13 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/media/omap4iss/iss.c b/drivers/staging/media/omap4iss/iss.c
index c89f268a..3bbc39e 100644
--- a/drivers/staging/media/omap4iss/iss.c
+++ b/drivers/staging/media/omap4iss/iss.c
@@ -27,22 +27,24 @@
 #include "iss.h"
 #include "iss_regs.h"
 
-#define ISS_PRINT_REGISTER(iss, name)\
-	dev_dbg(iss->dev, "###ISS " #name "=0x%08x\n", \
-		iss_reg_read(iss, OMAP4_ISS_MEM_TOP, ISS_##name))
+static inline iss_print_register(iss, name)
+{
+	dev_dbg(iss->dev, "###ISS " #name "=0x%08x\n",
+		iss_reg_read(iss, OMAP4_ISS_MEM_TOP, ISS_##name));
+}
 
 static void iss_print_status(struct iss_device *iss)
 {
 	dev_dbg(iss->dev, "-------------ISS HL Register dump-------------\n");
 
-	ISS_PRINT_REGISTER(iss, HL_REVISION);
-	ISS_PRINT_REGISTER(iss, HL_SYSCONFIG);
-	ISS_PRINT_REGISTER(iss, HL_IRQSTATUS(5));
-	ISS_PRINT_REGISTER(iss, HL_IRQENABLE_SET(5));
-	ISS_PRINT_REGISTER(iss, HL_IRQENABLE_CLR(5));
-	ISS_PRINT_REGISTER(iss, CTRL);
-	ISS_PRINT_REGISTER(iss, CLKCTRL);
-	ISS_PRINT_REGISTER(iss, CLKSTAT);
+	iss_print_register(iss, HL_REVISION);
+	iss_print_register(iss, HL_SYSCONFIG);
+	iss_print_register(iss, HL_IRQSTATUS(5));
+	iss_print_register(iss, HL_IRQENABLE_SET(5));
+	iss_print_register(iss, HL_IRQENABLE_CLR(5));
+	iss_print_register(iss, CTRL);
+	iss_print_register(iss, CLKCTRL);
+	iss_print_register(iss, CLKSTAT);
 
 	dev_dbg(iss->dev, "-----------------------------------------------\n");
 }
-- 
2.7.4


