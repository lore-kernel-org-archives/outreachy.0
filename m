X-GM-THRID: 6885936091088551936
X-Received: by 2002:a17:902:a612:b029:d6:6ae:4d47 with SMTP id u18-20020a170902a612b02900d606ae4d47mr12772150plq.50.1603735080520;
        Mon, 26 Oct 2020 10:58:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:7b05:: with SMTP id w5ls3423367pfc.11.gmail; Mon, 26 Oct
 2020 10:57:58 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwp3AqCT9NrmTCElKKPZYdqCJGJBKbAOgjkiNXYs0sYSYARV4noLFjhLfJYalgzg0ruGVLS
X-Received: by 2002:a63:f20:: with SMTP id e32mr18781499pgl.61.1603735078911;
        Mon, 26 Oct 2020 10:57:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603735078; cv=none;
        d=google.com; s=arc-20160816;
        b=p1DKzWN2g9HICm9OsPrAbOBmKOMLeITWDf1RsmBQWNCKuU9CaBvNYF0FK6jz5L1sKt
         gUscs0MHl6lPRJ96vlsGNEOW34xBxj9y3/fvZufwNjuipC8YHayjGlFIJCDBNfj8f3i8
         +GnUDW7pSZsxoaNe8BLBz4vWgwxsjm+u9JVlDSwgATyvDn8DwEvaUGlwiXhPrOV3cl+F
         fp8KgONRSJb+VAKpiHkNWbv2u+dL6IpSkuEQQ50Kk9O8+iRKkp5xSszHxKRsURJ3KNyf
         WNmQtmBBhA454i5gzAzHFz1elk9JAnldUcgj0w+TkoLMuCSEWfyu21kXGl598BsDb8Q+
         C1Sg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=WTBxUBEKn0g1IPvl+ubZhUrAfqIG3SetFNG2DnkSH24=;
        b=f2wHL4jha0GzyJtEA6A9DLkr1uUUjfe7X6SojcuTU4dIdQvIzCLVRt0M2+dbzHWFtf
         mAyRZ9LjqNbO2yb+hvfcyGrCsaDahEVm9PaWpuiDGYudYrwM2BTB6SnHGuneIToXbEL7
         PPmem7cWULlA8WlS2qWsvMp2JiplQjIlJOvIQz5RH3RgwHwtHJXhvASnGc7IY6hrs2Rm
         S3jFufSkFMU+/vKrxLXPY7dMJoTMOV8wj+NkgZbJywrShxdUpK+caOdw1MkBXVmA1pmC
         ucJFNhhS5eUGaved+ZzhehswUJYdOn+6+awC7ju5T9P1jP7D6vh7+jJKVKPjOD/idzkB
         GZdQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TgI40ITZ;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id mu11si468244pjb.0.2020.10.26.10.57.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Oct 2020 10:57:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TgI40ITZ;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x441.google.com with SMTP id 10so6612169pfp.5
        for <outreachy-kernel@googlegroups.com>; Mon, 26 Oct 2020 10:57:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=WTBxUBEKn0g1IPvl+ubZhUrAfqIG3SetFNG2DnkSH24=;
        b=TgI40ITZQH2wzGTfXDA82P1pyawFS2wFzCm8XU2Kx5upwQRQ8RcULXBuQb5/xdLpHW
         TT8InCZvHQRueV7mH81jzqbGViVv3uh7s8noG+pmZEwj9LMZbc1Tb6BZ69OSr3ajP3O1
         HRPChaKjtt1G9sBrkKgfUvsybXNbza0VRKk+GGVjmRO02rPAsG26z/3ln1ucPvqsCCBX
         W+yYrZ1/UxVvtUENcf5sjPZOBi2Hb8XBPCmK29b6Pj+W+u4TYkFHPbkAP2YOQXxnjX2f
         +bxXl/Kmp9yjAD+JzwgoB1Z0tpFUvE/lpZbIgu1FF3h7AuXZYJlHWh9ARZxSOkoBKse2
         7Wjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=WTBxUBEKn0g1IPvl+ubZhUrAfqIG3SetFNG2DnkSH24=;
        b=uTkQ1xKyFixcFMxtmwTs4lpwk8UkrAIOEeWfCh8Zp06PX1IkQGSskNDrz3DY62jVsQ
         XwV/Yop36Pi1hmWzF1LOcAXwqMNKcv7RLfGJwxSkbbR5bH/iv/XM8AsFLZTaXHpsqvBu
         tGEasYIX4EYeLPpPA4V8+gUfkJO6wUGiiWa7EkP6y6cs5raNLpQgAz3cG8345yNAjChI
         GkXXxuPktstbMlJ+al7FVS9aD8WIqGsia50eDODSeq+lkqSKN7YYD5YJEzo1gZix9F6q
         Zp8a2cm7gVMvc1nbv7pV6L/op3gt95vW+Kw9FDuPozrbK6BEKl9H0pdH9PrgEnQuk7g1
         UD4Q==
X-Gm-Message-State: AOAM5339qJA3DIwvorc0jLegt6fMTR23CVPu/0xKk2Chr8RzBM9esDBq
	edGqeOYA4L5kZaa/tAYJdcg=
X-Received: by 2002:a63:5c5f:: with SMTP id n31mr13753728pgm.397.1603735078705;
        Mon, 26 Oct 2020 10:57:58 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from my--box ([103.108.75.206])
        by smtp.gmail.com with ESMTPSA id w17sm12685792pjq.42.2020.10.26.10.57.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Oct 2020 10:57:58 -0700 (PDT)
Date: Mon, 26 Oct 2020 23:27:53 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com
Cc: mh12gx2825@gmail.com
Subject: [PATCH v3 2/2] staging: kpc2000: kpc_dma: rename show function per
 convention
Message-ID: <9c8c0d60cec70b99f55d6e228b7585d47be695c2.1603734679.git.mh12gx2825@gmail.com>
References: <c853e015ec460b909a3e2cd529bc0f69093bce3e.1603734679.git.mh12gx2825@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <c853e015ec460b909a3e2cd529bc0f69093bce3e.1603734679.git.mh12gx2825@gmail.com>

Rename show_engine_regs show function to engine_regs_show as per the
convention followed. The show function macro DEVICE_ATTR also replaced
by DEVICE_ATTR_RO. Issue reported by checkpatch script.

Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
---
Changes since v2:
   - None for this patch.
Changes since v1:
   - Replace DEVICE_ATTR by DEVICE_ATTR_RO as suggested by Greg.

 drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c b/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c
index e1dac89ca6a2..175fe8b0d055 100644
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


