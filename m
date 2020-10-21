X-GM-THRID: 6885936091088551936
X-Received: by 2002:a62:343:0:b029:15c:e33c:faff with SMTP id 64-20020a6203430000b029015ce33cfaffmr2106952pfd.7.1603265732870;
        Wed, 21 Oct 2020 00:35:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aa7:8edc:: with SMTP id b28ls1752987pfr.9.gmail; Wed, 21 Oct
 2020 00:35:31 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJx4bUf09AI7Vpp7tCEINdJ3vM4Mq+Tw0a5wvYQ7cTOhrRSa6d5R4PRs2f/n6yPd9Vx48qRM
X-Received: by 2002:a05:6a00:7cb:b029:152:94b3:b2ee with SMTP id n11-20020a056a0007cbb029015294b3b2eemr2208382pfu.58.1603265730866;
        Wed, 21 Oct 2020 00:35:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603265730; cv=none;
        d=google.com; s=arc-20160816;
        b=QOdGxhqywpZWf68kIoG8jT5aYcUEHGMGyMuIe2pa7o0LDfbQ61N4ZD/n2w8qUsNKoT
         UaAEvT2dJD+i443NDMXZptvfxLPUltYoMi2aR3Fw0SgaoBcgeUBGV/+nDvw4whsbxYsK
         50LrqmAL/c+sdHYvvx4tb+5dIOd3plZJfYM8eBxYbxhwDSNZ1V2OGY0apRLJysI8z6B+
         u/PzRgomzV3xoG8ETFKrW7WS0UwRw/yHowuJIuPaS9VtgQouJ+jRPsbd7Edb8/Z+o1Z1
         TEDwZ2STiVsK7D2vlTKMljfM5bu7XZDSKo34SVKu69Pj/9mCgzR0Frs4kzvnTHmJMnvf
         Kvaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=5LfVEvRJtyCjDhqOkmhLUCyYIUG+eq91lMriaMW4Nbo=;
        b=oBVMcUGyWjTENNBHcNDI8kAnbog7J9TZe6TAKt686G0//l2MU0AY1sdMrAG0WryeIT
         qrK81KbQnWiZcHAMLo8D5sKhtpwtPOQcznfJRmC++BwYRa9QxamdqBlPyIMBEwHl7hZw
         qqtf8FzwwsmXwnxzmyFmgN84M75EjgnFIOWd542z4N2lwfnXaMRi10jfrisEgNZzEfgR
         Awlq2lQ2DqUJB+ES28XKc0vLJ8KCVoeqtznOqyPtOCqtojzHyo+Lopvkb1j5iEceWyeq
         hIBCJXZhsgws1uF0qPW8t4xFB9tPAaq+eL6JReEJ+xAM05uJcCtv8a3+FBiWsDEru/SE
         cR0g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="sg/M2ZOC";
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id v1si96977pfi.2.2020.10.21.00.35.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Oct 2020 00:35:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="sg/M2ZOC";
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x643.google.com with SMTP id t22so771713plr.9
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Oct 2020 00:35:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=5LfVEvRJtyCjDhqOkmhLUCyYIUG+eq91lMriaMW4Nbo=;
        b=sg/M2ZOC1GiSORG7urGWKDKbOb9OPPsPDnKCRhsKSV0taARzkdzWWfOR4doZ8ti35Z
         J0Q8g5/FbX6Xat8JXW7vZVyaIFaNwVxWIdqeYusTxNYQyZDUKz6uoaMpssC/2WDSAyIu
         7DYHdRcH2uNbs6tj7Avs6I6hKy/PqW+xxgE/hF10TbD/FGMLq1HBMivdiJoe+na1VcGj
         Kha61Ox2d9iT9QVXNs4vBzFaOWqIqHvyux+F7Nr3mX1BVxlNg8cJB7X68NE1ztkzXc4z
         x3xk6woQHyH1KvyZ59FHPFinGr2U/SFx6z69IM+GwxWfBzGrSjbocOzAnkSl5Etl4Q4Y
         M5nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=5LfVEvRJtyCjDhqOkmhLUCyYIUG+eq91lMriaMW4Nbo=;
        b=Hq1ItBoSTCibGm3wW+Q/DNIX2LuIYQGuVVGB/eETLj7l6NH15lZBoAXyR5d5nPJaeI
         qLcCyNLl/VHDFhi3QcYSTUj7Ww4Tht+TkonSSvUjCtkGOUTauP0yxysjj23ZrvGBDQ0J
         KQNwaGd1x1likd9pl6Brpl3YNxjBR9UUga4qaBKuLjsEYtu/DUsGjmhBIt3TmGvhuVhv
         96GPPGtta6Rx5279pVwnoYCQH8j3MLWsclf2s8xAMWBJDeWDDWwWIVlecfQzcYYzvLDz
         vxtHt4osK3WHDVGIJlt2siBoNTkzQ78TTX3joiJ75Xq/2FtICKYwUVkfQo3FRcU+TA6r
         GKIQ==
X-Gm-Message-State: AOAM5335bM6M2+TjFYi2sB5VB4ggPdSM2hnfFBmKIB4cgZ6jMfax8Ymk
	ESJbSFBEHi4jeYMWthMyY08=
X-Received: by 2002:a17:902:bcc9:b029:d3:c7de:5cfc with SMTP id o9-20020a170902bcc9b02900d3c7de5cfcmr2289425pls.19.1603265730650;
        Wed, 21 Oct 2020 00:35:30 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from ubuntu204 ([103.108.75.206])
        by smtp.gmail.com with ESMTPSA id e196sm1278833pfh.128.2020.10.21.00.35.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Oct 2020 00:35:30 -0700 (PDT)
Date: Wed, 21 Oct 2020 13:05:25 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com
Cc: mh12gx2825@gmail.com
Subject: [PATCH v2 2/2] staging: kpc2000: kpc_dma: rename show function per
 convention
Message-ID: <8e02f6d8a4263971b90f73820fd855a31da3f8fc.1603264617.git.mh12gx2825@gmail.com>
References: <c61a3c244bea516528e9ca4e909c30f16959c3aa.1603264617.git.mh12gx2825@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <c61a3c244bea516528e9ca4e909c30f16959c3aa.1603264617.git.mh12gx2825@gmail.com>

Rename show_engine_regs show function to engine_regs_show as per the
convention followed. The show function macro DEVICE_ATTR is replaced
by DEVICE_ATTR_RO. Issue reported by checkpatch script.

Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
---
Changes since v1:
   - Replace DEVICE_ATTR by DEVICE_ATTR_RO as suggested by Greg.

 drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c b/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c
index 7698e5ef2a7c..aa9f96793e59 100644
--- a/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c
+++ b/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c
@@ -50,7 +50,7 @@ static void kpc_dma_del_device(struct kpc_dma_device *ldev)
 }
 
 /**********  SysFS Attributes **********/
-static ssize_t  show_engine_regs(struct device *dev, struct device_attribute *attr, char *buf)
+static ssize_t  engine_regs_show(struct device *dev, struct device_attribute *attr, char *buf)
 {
 	struct kpc_dma_device *ldev;
 	struct platform_device *pldev = to_platform_device(dev);
@@ -80,7 +80,7 @@ static ssize_t  show_engine_regs(struct device *dev, struct device_attribute *at
 		ldev->desc_completed
 	);
 }
-static DEVICE_ATTR(engine_regs, 0444, show_engine_regs, NULL);
+static DEVICE_ATTR_RO(engine_regs);
 
 static const struct attribute *ndd_attr_list[] = {
 	&dev_attr_engine_regs.attr,
-- 
2.25.1


