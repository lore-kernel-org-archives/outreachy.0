X-GM-THRID: 6751148365074923520
X-Received: by 2002:a05:6402:b02:: with SMTP id bm2mr3643068edb.244.1571874219707;
        Wed, 23 Oct 2019 16:43:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:e2c1:: with SMTP id gr1ls871692ejb.16.gmail; Wed, 23
 Oct 2019 16:43:38 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyfMq/Azz00a4kVPEttTlcfVqVVPpeXHr2Y9Sbi2sOF2vvG4yI4Dwr+bF8QexgYEW3NR/f1
X-Received: by 2002:a17:906:1f57:: with SMTP id d23mr12084063ejk.233.1571874218656;
        Wed, 23 Oct 2019 16:43:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571874218; cv=none;
        d=google.com; s=arc-20160816;
        b=njkN0vZXAarfIqj2FJfYPMCxVVvcavBIYUzQkIloJmrmiYey58JFjTWXsb/rqfEkNh
         i8ZBefMu0fLpEWa9iCwiyAD92XdfIBpraY3bZGA/RjwBBgZ4gDfkG22IoihRBn9mU0i4
         NiABvXAQgsVpORlz2UGW7jQNHCEghpV0ssSKwcAglbCzX4RCo+XpTo+n/io9t/66I4xD
         fIpBj630GdJOH9NLShu37OY9OQqG1xc+JddtinBdio2/41JSEi5QO3zjkyvqe7rk1X00
         24JjSzK5K7Va+JsJ+sUiWDNbnLtgsFfGEyE2qcq1no/6PYzz9Xh9eF6Z2QedqmOPucHj
         o91w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=cuz6pICnCOx5LOTDyaYGFSRVjLKXApo0+43+84+6GRI=;
        b=rKgfgl27mM0xrRRnSRHVx9e/nVOd0ru8rNm4SrR07dv5u+njKKXEWryDfTfRoJo5hT
         gFLF5ZxKQ5u55L6AeZK1vVF8timFJPYx98hJQheKu8/Tpvlo6yH94waSjaoIp/NBSRcq
         YzF8874h7x6ZWsm5KVEmzOtdad5/LxLC1sA0MWxXFk9FNHBeSD6Z+GpAMV/Axwu0nyja
         A26p45kuC+1OOsl6jBvqsXEFj15bIQ1m/KesfvDaY5DkoAV8Ene8dm71WgvgTBesp1ZZ
         IZBM9QUmpUAkbaKKLCfkPs52CjPolMt44uW9fYImk0NI4RW1QKnlCiK0GsyMDnlpPuWI
         Dg+Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qXZvelga;
       spf=pass (google.com: domain of chime.evan.dri.devel@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=chime.evan.dri.devel@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <chime.evan.dri.devel@gmail.com>
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com. [2a00:1450:4864:20::344])
        by gmr-mx.google.com with ESMTPS id c28si1114765eda.4.2019.10.23.16.43.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Oct 2019 16:43:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of chime.evan.dri.devel@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) client-ip=2a00:1450:4864:20::344;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qXZvelga;
       spf=pass (google.com: domain of chime.evan.dri.devel@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=chime.evan.dri.devel@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x344.google.com with SMTP id r19so692133wmh.2
        for <outreachy-kernel@googlegroups.com>; Wed, 23 Oct 2019 16:43:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=cuz6pICnCOx5LOTDyaYGFSRVjLKXApo0+43+84+6GRI=;
        b=qXZvelgaTUGPZGFrjNf4MgYaJZy+SYRFjFICxy9cSiqoi/6LfeC84b3t8kGhGvdXtG
         tOXsifCjCdMgyxIGZ1RAfc4Gj0cxOU8HdXRYnlGT4/1nS7+o46rmfotCXqCy5LYXig8P
         zGteH2QCFHbbdPCuiKWG6P5IhQKLzxkWxLKfRMSiwUiOXx9vhZnQyPj+BJK9RIqA1+05
         JfoDFt83PW+DxSNSiFeEdORSgJubO82ezKP7DbCN8mZF1AWyeWRpXEJKULeYeQ3ibajj
         VRgkBRWV19scdVoYa1tRXcmOsKQtBy56iyTLK4ucKa9n0ie6WELUgam1G6uJnBkfHaT4
         PbYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=cuz6pICnCOx5LOTDyaYGFSRVjLKXApo0+43+84+6GRI=;
        b=mgXWEz2Lax2NihIiLT1gX3bIeHlOu4oyBSC8Tjom0L02fvdBAAsLnMUtTucerxLbG+
         U05wTsID/spsFXdAMGu4DalkQeb7VSL28k2J96XsHbPDqo7PZm2Bi8ZE26F+Fq52ok4E
         eA6Xkb9YXK9/oXLo6INBfgDLqGWXOYNkjBThJmtKV8B1C1rX+WhP1BJ8OA+AezPFm/U0
         0c24i91RGPhp+YPx5eMMO75s8Vzyp+VuopTsnxVnUTGSMkyzKULGc7S/Euhv7pirVBKL
         ITg0xytUPBl9EAJJsZ+pOG0KWOkU3JWaoxQXVmiFQevdIF9Dxg0C9rrB792JRemKzWdM
         Ei8Q==
X-Gm-Message-State: APjAAAXr8cW5p3s1FDpSOJYIeGZhLKPdcINBos/jMA43wWStLoVCCpJT
	LlKbvNI+97C+3SQ1AY0c1qmitlgU9pI=
X-Received: by 2002:a7b:c7c8:: with SMTP id z8mr2084936wmk.29.1571874218436;
        Wed, 23 Oct 2019 16:43:38 -0700 (PDT)
Return-Path: <chime.evan.dri.devel@gmail.com>
Received: from ik-ubuntu ([2a00:23c4:7286:6400:9161:6c55:984c:2a0])
        by smtp.gmail.com with ESMTPSA id s14sm660540wmh.18.2019.10.23.16.43.37
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 23 Oct 2019 16:43:38 -0700 (PDT)
Date: Thu, 24 Oct 2019 00:43:35 +0100
From: Evan Chime <chime.evan.dri.devel@gmail.com>
To: gregkh@linuxfoundation.org
Cc: hsweeten@visionengravers.com, abbotti@mev.co.uk,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 2/7] Staging: comedi: Remove wrapper function definition
Message-ID: <20191023234335.GA4557@ik-ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Remove wrapper function "comedi_buf_map_get" definition as part of remove
all wrappers in drivers/staging/comedi/TODO, and replace reference of the
wrapper function in the file with the wrapped code

Signed-off-by: Evan Chime <chime.evan.dri.devel@gmail.com>
---
 drivers/staging/comedi/comedi_buf.c | 8 +-------
 1 file changed, 1 insertion(+), 7 deletions(-)

diff --git a/drivers/staging/comedi/comedi_buf.c b/drivers/staging/comedi/comedi_buf.c
index 3ef3ddabf139..b6a9b5840afb 100644
--- a/drivers/staging/comedi/comedi_buf.c
+++ b/drivers/staging/comedi/comedi_buf.c
@@ -187,12 +187,6 @@ static void __comedi_buf_alloc(struct comedi_device *dev,
 	}
 }
 
-void comedi_buf_map_get(struct comedi_buf_map *bm)
-{
-	if (bm)
-		kref_get(&bm->refcount);
-}
-
 int comedi_buf_map_put(struct comedi_buf_map *bm)
 {
 	if (bm)
@@ -239,7 +233,7 @@ comedi_buf_map_from_subdev_get(struct comedi_subdevice *s)
 	bm = async->buf_map;
 	/* only want it if buffer pages allocated */
 	if (bm && bm->n_pages)
-		comedi_buf_map_get(bm);
+		kref_get(&bm->refcount);
 	else
 		bm = NULL;
 	spin_unlock_irqrestore(&s->spin_lock, flags);
-- 
2.17.1


