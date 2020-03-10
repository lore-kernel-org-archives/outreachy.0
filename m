X-GM-THRID: 6802607426621145088
X-Received: by 2002:a17:902:8542:: with SMTP id d2mr22474407plo.200.1583864076457;
        Tue, 10 Mar 2020 11:14:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90b:3851:: with SMTP id nl17ls528296pjb.1.canary-gmail;
 Tue, 10 Mar 2020 11:14:34 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvxpw184Ap4BOx1A/2z47iPpIegGMcmArUipknn+Q6Rzvg/lzCWjgJmHaMXzy/ot1uXnEKU
X-Received: by 2002:a17:902:b208:: with SMTP id t8mr22518537plr.60.1583864074766;
        Tue, 10 Mar 2020 11:14:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583864074; cv=none;
        d=google.com; s=arc-20160816;
        b=H5Bt7HLhr8Do0hekKwO+0wT3c/mmdOg/Vf0AEhth/5+v24FlcSUhpQ9qSk4G4IqPaQ
         3AmDyvi1vM/VDSeyU9/74YkN91bRVCJqNqYSX/0eX/+Jc3CpBVJa5Cdu9zxo5hKnpT1p
         QgV6CM4Oz4UNmAE+SKBlt1jyVIAVLlQ/wBJKsaj4j+VtgSV/qF2Ml8Sh6ocOsdXnT6CR
         +IB5CGYSne1vSrkCSm3oYUpSll7yYcPbDKRu5Y1QSlIJ5D+wgNq7AmCEy0YbigYLdSa8
         u9hFGuXEPDFwQysZkT+XXKUrRBSS1AVxe0/HtTyUz6U4rYHdmezw5uGcz649LvoRv0dK
         vqYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=197NN8Ix0kLRHCx8pHRQsfUSL0F60xO/uXpRl6uERbA=;
        b=FLb4wj1iWgpftwh0oZ8FhUeUted+hfHb6yiLvxc2reHFe/lRwGgdPghLuvtxY1v+dD
         lIsfjtu5+5gOOe/uF4o3CEminsG4wDe2nlqrmdPG1ZvZnXikbP5sbxFsXvh1kw8un+RZ
         /M6/3gsL89GvIPNufTbow5+LEB77gMklM/5SrZ3VrcYJpzvE5LeingBhvmMzaEs/grik
         42DkFGsTbqOKFzbFHQ8E5bwLZfLVeErncoEAZVxD4IWDr7vlbyqiaRXYb7DQ3dpHB4GA
         hbncAnKBbWsaqHvPxJv4k6pAX+jxFfAZXnGhYdB9WiFRIEUcyv7seMv19qSHvIdKmHPy
         nQiw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MDE6PR6m;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id x12si870200plv.3.2020.03.10.11.14.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Mar 2020 11:14:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MDE6PR6m;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id c19so4569939pfo.13
        for <outreachy-kernel@googlegroups.com>; Tue, 10 Mar 2020 11:14:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=197NN8Ix0kLRHCx8pHRQsfUSL0F60xO/uXpRl6uERbA=;
        b=MDE6PR6mg69PxOqFGjOZy7/9qo0Lks8a+m5k4hrwgnA9n/yKFre3+frWz+2RTm0CAX
         89Dr1z4Qf6DJaaAxuuhm6u2Q/WmSXpLUZ2mQSX6SX95OvdUm7qdodhIjC5txdUH4IIp6
         CFWz6iBSyB9nc+sFAYyGx+2tUB6SDWno+V6EvRrkSD8kBNnSmzULmStTGzCeo2llqCZQ
         R3vRy4MxoXLRe3NcMDE0zONAsUsOER23jO2kqmg9eHyzxRIfoeHq1sVJ6UAHAr87R5j8
         78aFPRy727f92kkjua4fPe45EWjbW2Fy89SOM6N8Sck85LzBmcmI1Fvo6KL8PD5wIuEA
         rxlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=197NN8Ix0kLRHCx8pHRQsfUSL0F60xO/uXpRl6uERbA=;
        b=Em5d57h7dOaf/8bq+x5NygxHcjkLINQ+CIKuDgjKHByb3tWp+0s0pVBsf/uENkGLpy
         lCk0QpOV6L6BxnYmalB9oTTgAtXWTd+LdhvsJ/IND9tQG5ewLD5aebPzSdBqPhtq+/ZH
         nPdZp3fGEwBHGo9iDVHwvFyb37KfWiGJgrT3f7syKtjMHQkasTm9dUebTY2id5oIFw1B
         rSF7xRp6b2ZwJIaTqO+Jt2fph+lmnAWQlKYPfC6BmAv312Cb6YxwEQ7mn6eQUmTs/9rL
         EDsViVfq2xhmxhxjn2OgnHkBEpqJRh5TweWUqGykZVd0km++vH2349Ewgh7iCl7zwc2i
         g9pw==
X-Gm-Message-State: ANhLgQ3MrOgDKDpSn1bG5+vIGBrAIzZ+LIHIlIRSf2WcFcpq7Kp85y+j
	bI8uag0rGThBzOzPn5b+gZOt65RF
X-Received: by 2002:a63:a807:: with SMTP id o7mr21371493pgf.407.1583864074234;
        Tue, 10 Mar 2020 11:14:34 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from deeUbuntu ([103.240.207.69])
        by smtp.gmail.com with ESMTPSA id d6sm2947020pjv.38.2020.03.10.11.14.32
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 10 Mar 2020 11:14:33 -0700 (PDT)
Date: Tue, 10 Mar 2020 23:44:29 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: abbotti@mev.co.uk, hsweeten@visionengravers.com,
	gregkh@linuxfoundation.org, daniel.baluta@gmail.com
Subject: [PATCH V2] staging: comedi: dt2801: remove old unused code
Message-ID: <20200310181426.GA19938@deeUbuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

patch V2 revision is for updating the patch description only.
There are two #if 0 blocks that have no recent history of any change. We
can remove those code blocks for improved readability of the code.

Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
---
 drivers/staging/comedi/drivers/dt2801.c | 22 ------------------
 drivers/staging/comedi/drivers/dt282x.c | 30 +------------------------
 2 files changed, 1 insertion(+), 51 deletions(-)

diff --git a/drivers/staging/comedi/drivers/dt2801.c b/drivers/staging/comedi/drivers/dt2801.c
index a29880981d81..aad02faa2f83 100644
--- a/drivers/staging/comedi/drivers/dt2801.c
+++ b/drivers/staging/comedi/drivers/dt2801.c
@@ -87,17 +87,6 @@
 #define DT2801_STATUS		1
 #define DT2801_CMD		1
 
-#if 0
-/* ignore 'defined but not used' warning */
-static const struct comedi_lrange range_dt2801_ai_pgh_bipolar = {
-	4, {
-		BIP_RANGE(10),
-		BIP_RANGE(5),
-		BIP_RANGE(2.5),
-		BIP_RANGE(1.25)
-	}
-};
-#endif
 static const struct comedi_lrange range_dt2801_ai_pgl_bipolar = {
 	4, {
 		BIP_RANGE(10),
@@ -107,17 +96,6 @@ static const struct comedi_lrange range_dt2801_ai_pgl_bipolar = {
 	}
 };
 
-#if 0
-/* ignore 'defined but not used' warning */
-static const struct comedi_lrange range_dt2801_ai_pgh_unipolar = {
-	4, {
-		UNI_RANGE(10),
-		UNI_RANGE(5),
-		UNI_RANGE(2.5),
-		UNI_RANGE(1.25)
-	}
-};
-#endif
 static const struct comedi_lrange range_dt2801_ai_pgl_unipolar = {
 	4, {
 		UNI_RANGE(10),
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


