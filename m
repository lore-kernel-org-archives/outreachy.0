X-GM-THRID: 6802693712832888832
X-Received: by 2002:a81:ae53:: with SMTP id g19mr5870352ywk.198.1583875555297;
        Tue, 10 Mar 2020 14:25:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5b:883:: with SMTP id e3ls1814294ybq.11.gmail; Tue, 10 Mar
 2020 14:25:53 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vshv14EDUmtHLjmTH4eIAb5dmvBokpuPJaYbjKYz6tPjqHNN/VunY4v95SKID24DBr04P2B
X-Received: by 2002:a25:c052:: with SMTP id c79mr25656589ybf.84.1583875553921;
        Tue, 10 Mar 2020 14:25:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583875553; cv=none;
        d=google.com; s=arc-20160816;
        b=lKfIMGKRHGVwzG+UawcUdpXuqTzGk2Xf9dc+AGt2dyA3bjvripgmaAYMCqpBzApYuh
         26LTGHIIicUWVYAEquqDe+AQutfrpsjGwXJst4kn4PeFG4sHJ0JQ0MMXFtIykiFK4Lcc
         oNSbLCM+mdAx5HefBSokC6q4bPHOIdpKxno/FnIA61cXe7vpQR78gAjxWSKfm6L4hEpz
         jZjXXq2X13NhgnrxttIr4fZiCwlEo348BLt/1bIAGXwLcamXXFD7RObH4Wvy9U3leybJ
         IwkzNWY5lDHtrosPsdUXA6rNFj7xvJxQyvG0IIIutAJxwUdtMhrcuUoP5R0g2vMouYef
         kyBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=FrvE9y0XswwRjIVwAqv7THmgqm3c6JoyldeANkYnwos=;
        b=UKUMDRRhlLT4BG2oyLrEb601hTMxqKkHx8SRxThixuC2hIaIU0ckuwCAaCDYzSxTJN
         +/DogDB7Wd5GEZpgZAGkfmL2lMk3/lYt5JNit9dCNnMbtQJ2pQhdcz2/ibdsMBRJDIjZ
         zHivmdwJad2/7rI5UYi4XnOr5kjq1ZzWqSojh2VOIqqJ5uNBAKig5m1Sg7vbVBYJJunv
         fbzAzYu7jmUIEknN9dkuSuppYL8FltyrrgmA6aP0znPQLuuO/qaPvUeeG5wLek55slA5
         hAARSmN7tD1frSWVgwuUhuKGg4uNhVlhULkkq3PPranHia6PLw0w2EZZ1HvlVBm7Agdu
         HV3w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BFnUSvbo;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id s64si821570ywf.0.2020.03.10.14.25.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Mar 2020 14:25:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BFnUSvbo;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id b72so55153pfb.11
        for <outreachy-kernel@googlegroups.com>; Tue, 10 Mar 2020 14:25:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=FrvE9y0XswwRjIVwAqv7THmgqm3c6JoyldeANkYnwos=;
        b=BFnUSvbo47Snu7MZNpuNVTIp5L5PZRvggvp9XZyUhbjHesa4TpvNL6ovY11cLzpWJn
         fl4mkctD674veppXhCgWpFGeB0nleXhLvH2o/5qpg/m+tespnfV7xSXIVwX08zUxDxKY
         zmlt06PH7Ph1IT/+YOg880t0QvvXfNZPAri70QTRbxbG2Rj5R96jrn2VfiiKmoHJaRfh
         vGItR/0AlsuMq+vF9fM+ed461yGnoX/+ypCydF0GM7slHTn8bohCKaleKgNQwlQCK2yx
         nuwtlulloW1OktlwksKZdHfftFhHp1pjqIm6vJ5XncOjnFgl1u7/n2VTpB03Jq60gLzr
         tCDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=FrvE9y0XswwRjIVwAqv7THmgqm3c6JoyldeANkYnwos=;
        b=C70dHtzndwCz/mK79guCv47LIgRAMMyN07PeGujfa96+juUXcZ2Q/r764UxN9Tz+F3
         ae6gx2a4cGB5X1lyLf8qTwYZ1cU3rYhyc1FkVg/8cz9BRWtMruKZ3UKt+2QPWca9ub8O
         ENFYalWHeXsaIx+ZnjYuzWL1awMX0lXBfLZ4RL+VJQUWP7+p0esnTSO7eXssqHvoNDMJ
         a/MbrkPaDDl7cjBnTGLMC6KkDfD/n6dbGr5trf+P1M2h6w6Wvo2sPxlmZqZPaMVcypmV
         Us8SLaPEnIRDtCLwmRVUDOK/dgI7PDyv9yfQQTr0SLzuAGtRRru29bzQaKLbbQ7lHu8J
         Wb7Q==
X-Gm-Message-State: ANhLgQ0rtJdBTDNKfPHGOcdrorSHP7SEV/gdC2VIYUyunPdfAbSLlC5D
	Wd+/sxpgYOGK2sAp7hCX1FOgCUEO
X-Received: by 2002:a63:c4e:: with SMTP id 14mr22577253pgm.444.1583875552872;
        Tue, 10 Mar 2020 14:25:52 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from deeUbuntu ([103.240.207.69])
        by smtp.gmail.com with ESMTPSA id w25sm47918224pfi.106.2020.03.10.14.25.50
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 10 Mar 2020 14:25:52 -0700 (PDT)
Date: Wed, 11 Mar 2020 02:55:48 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: abbotti@mev.co.uk, hsweeten@visionengravers.com,
	gregkh@linuxfoundation.org, daniel.baluta@gmail.com
Subject: [PATCH] staging: comedi: dt282x: remove old unused code
Message-ID: <20200310212545.GA8914@deeUbuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

There are two #if 0 blocks that have no recent history of any change.
Remove those code blocks for improved readability of the code.

Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
---
 drivers/staging/comedi/drivers/dt282x.c | 30 +------------------------
 1 file changed, 1 insertion(+), 29 deletions(-)

diff --git a/drivers/staging/comedi/drivers/dt282x.c b/drivers/staging/comedi/drivers/dt282x.c
index e15e33ed94ae..89dc84d3c803 100644
--- a/drivers/staging/comedi/drivers/dt282x.c
+++ b/drivers/staging/comedi/drivers/dt282x.c
@@ -484,14 +484,7 @@ static void dt282x_ai_dma_interrupt(struct comedi_device *dev,
 		s->async->events |= COMEDI_CB_EOA;
 		return;
 	}
-#if 0
-	/* clear the dual dma flag, making this the last dma segment */
-	/* XXX probably wrong */
-	if (!devpriv->ntrig) {
-		devpriv->supcsr &= ~DT2821_SUPCSR_DDMA;
-		outw(devpriv->supcsr, dev->iobase + DT2821_SUPCSR_REG);
-	}
-#endif
+
 	/* restart the channel */
 	dt282x_prep_ai_dma(dev, dma->cur_dma, 0);
 
@@ -534,28 +527,7 @@ static irqreturn_t dt282x_interrupt(int irq, void *d)
 		s_ao->async->events |= COMEDI_CB_ERROR;
 		handled = 1;
 	}
-#if 0
-	if (adcsr & DT2821_ADCSR_ADDONE) {
-		unsigned short data;
-
-		data = inw(dev->iobase + DT2821_ADDAT_REG);
-		data &= s->maxdata;
-		if (devpriv->ad_2scomp)
-			data = comedi_offset_munge(s, data);
 
-		comedi_buf_write_samples(s, &data, 1);
-
-		devpriv->nread--;
-		if (!devpriv->nread) {
-			s->async->events |= COMEDI_CB_EOA;
-		} else {
-			if (supcsr & DT2821_SUPCSR_SCDN)
-				outw(devpriv->supcsr | DT2821_SUPCSR_STRIG,
-				     dev->iobase + DT2821_SUPCSR_REG);
-		}
-		handled = 1;
-	}
-#endif
 	comedi_handle_events(dev, s);
 	if (s_ao)
 		comedi_handle_events(dev, s_ao);
-- 
2.17.1


