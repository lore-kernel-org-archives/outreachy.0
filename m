X-GM-THRID: 6674500883205586944
X-Received: by 2002:a25:3b0c:: with SMTP id i12mr1180944yba.68.1554028482012;
        Sun, 31 Mar 2019 03:34:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:cdc7:: with SMTP id d190ls2074789ybf.8.gmail; Sun, 31
 Mar 2019 03:34:41 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwjoFHpZdgRhVQ5Q1z8hbWsTZe+oP93RSzGqlOnPW9u07LoI8LhmiH7aD777sp62p2GMh1s
X-Received: by 2002:a25:9345:: with SMTP id g5mr3933071ybo.64.1554028481120;
        Sun, 31 Mar 2019 03:34:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554028481; cv=none;
        d=google.com; s=arc-20160816;
        b=CApI+7kCjt1gAnPmOQnN5ybuRoT1mr67CtqJ8nJaRL0FXf14IV4AEBRlLsu0vEbzVA
         CptLmiZtsZSw+IUpMKZjuP8QOjlyqCXGY6FRAQDKxRyy/LX+08Sev2ziIh+mCdRDmLN4
         KOr1+dB4KWtUYjB5iarK+yxKGeY1e7lXLsw7Ij0Lat8yRStEXMdU50HQNCBfU2NBFppk
         JtfSO50ijG3f0IH+mt3b/x1ZlKUvtGAoI+X1X7cbriKzefWLwKTzoypk6+so3LuL/GYG
         byuMfWvZ0G0igQWWgU57kfKxWVCLzL9BluEGAlv2LrREu+RZ8v9g94DLY64zgmPTGRZQ
         t+Yw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=GpSbS2NGHPrgWpCLLFks+DlsQU0gPsNKn4+9j2LxMRM=;
        b=WSYmni495CShpCk32AhLzruTkbWEHzGNnu9ti/MlHnLStqWPFK67imFhyMHcCaOdQu
         Syg77YPv4YpVQnBy9aS+IwlTRiLESBYQ3yISGE6Vzk+BGAyJPg44I8G+PVH6z6VTk+IT
         zrD8vZemmLgZBF/JcDEe4HqM7KIwr+rG+7woPvwxVJVRGfvIuZHzOZWoIlxASXXqD1dX
         Bn2kOouYQfhzOnORkS+pDI9p1ylQVv8mhTIlDb2Y1MVUPqJTcJu5vA9fvAKqzXIxzPI3
         OjP++ymWTFNNur4wxUp8+84Z3jz8E3ky1FMlUZCXT6FVQ/8WRBJpyYs2QKjS7lIrpD9v
         48UA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ON1s7Urj;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id 127si52501ybe.2.2019.03.31.03.34.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 31 Mar 2019 03:34:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ON1s7Urj;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x444.google.com with SMTP id i19so3120224pfd.0
        for <outreachy-kernel@googlegroups.com>; Sun, 31 Mar 2019 03:34:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=GpSbS2NGHPrgWpCLLFks+DlsQU0gPsNKn4+9j2LxMRM=;
        b=ON1s7UrjSJ+OpTHlxJiC0truQCFGDgErE3uGndMmuOkEwMWlYVCviNU3wboEHCteWt
         SZgKnZDjlE8k0oP2prAQPPzO9H1oPfBEN7PmMuGD8EGiqoL1HiPJu1m0MJneKhgsZVS3
         z20CNN3P2I7A52eRHFR/oWRTvO0z0KeuZbU4yZaGBrT0090Dg676dYlAuYFTayFARH4h
         KqOMOUPAVIDXAeyCTaMhNH8wkV7Pe+z4E+U+XuYURwCNpeaksZaqOXfTIufblbNeLqqk
         ViH3FQcbT2qcZaN7wzwT9YUEAXtchYKbwdY/W/H0e0cUU1BMlpEePa9C4D765KTYgQ1j
         5SZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=GpSbS2NGHPrgWpCLLFks+DlsQU0gPsNKn4+9j2LxMRM=;
        b=eFA3RCPMgDFkpUtmtzGmwf3BRdzn3exv0SwFz4gKtUoP04qREknguHsiMxDe6UrKGA
         XjTdchu6P8oUnyMalVIZd+BfkbVW9cygqsBCDRNutzXlgABs9oQNSp1kOwsZq014iZVN
         D3zMNdFH5CWPJvrSe0fUTRqf4vqH6MCZZ46SIsa4p96zN179uMPYOrUYSbhlX9fHFG+W
         o1oG+LUYW8m9YgtYNfrNPouGjs67E9LnP3uKyoA7fct8zHT3aD4hdkRYlWsr1nH1WowF
         hUSy2PepEW4pPavEOZ0lyZXP1BqDCgHgu96Jzw7GhUHsGOzMzUTTm4wx74cwY95+eris
         d5NA==
X-Gm-Message-State: APjAAAV8OzfeJcaNJ0bD1O6ppNm0bdYDjKHP7UAEp8L19PTofvrkaqyO
	Np3VxkkkZ20xejzcd/Hq7UlzqVUYGyo=
X-Received: by 2002:a62:4e86:: with SMTP id c128mr33583283pfb.39.1554028480422;
        Sun, 31 Mar 2019 03:34:40 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from sanjana-Inspiron-5570.domain.name ([123.201.105.95])
        by smtp.googlemail.com with ESMTPSA id p2sm26745102pfi.73.2019.03.31.03.34.38
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 31 Mar 2019 03:34:39 -0700 (PDT)
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 4/6] staging: comedi: Prefer using the BIT macro
Date: Sun, 31 Mar 2019 16:04:31 +0530
Message-Id: <20190331103431.21554-1-sanjana99reddy99@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190331103204.21358-1-sanjana99reddy99@gmail.com>
References: <20190331103204.21358-1-sanjana99reddy99@gmail.com>

Challenge suggested by coccinelle.

Replace bit shifting on 1 with the BIT(x) macro.
Coccinelle script:

@@
constant c;
@@

-(1 << c)
+BIT(c)

Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
---
 drivers/staging/comedi/drivers/dyna_pci10xx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/comedi/drivers/dyna_pci10xx.c b/drivers/staging/comedi/drivers/dyna_pci10xx.c
index e50536731d11..9bdd5bf2eb99 100644
--- a/drivers/staging/comedi/drivers/dyna_pci10xx.c
+++ b/drivers/staging/comedi/drivers/dyna_pci10xx.c
@@ -54,7 +54,7 @@ static int dyna_pci10xx_ai_eoc(struct comedi_device *dev,
 	unsigned int status;
 
 	status = inw_p(dev->iobase);
-	if (status & (1 << 15))
+	if (status & BIT(15))
 		return 0;
 	return -EBUSY;
 }
-- 
2.17.1


