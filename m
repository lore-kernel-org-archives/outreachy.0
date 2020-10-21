X-GM-THRID: 6885936091088551936
X-Received: by 2002:a62:e70c:0:b029:155:dd3d:f349 with SMTP id s12-20020a62e70c0000b0290155dd3df349mr1523648pfh.32.1603257027954;
        Tue, 20 Oct 2020 22:10:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:3c5:: with SMTP id 188ls1366489pgd.4.gmail; Tue, 20 Oct
 2020 22:10:26 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJw5JneJ1HNd7XvbE8inzbVMza/6Cnk0Yl1KwcMvJZl7L6JMLtMzxr/KPk14sZZBq4+TzHKf
X-Received: by 2002:a65:4485:: with SMTP id l5mr1679907pgq.121.1603257026196;
        Tue, 20 Oct 2020 22:10:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603257026; cv=none;
        d=google.com; s=arc-20160816;
        b=jNKKYqn74u/yUrZS7ZLmOWeYDVKSVYnR9ExVz5PlS/TZoUIhYBhedlP6KmcCllbMgU
         rg/CHtwW8jNEmsOqK4Dd0XbnO6gMmrZiKOjglDmTD7hPWe8ncsQoLoUnIOTYQdM2qGoi
         kGhqWKhrCBQRjlrl/eYO/7S6HNNAUWKSZ3hyoTZ4wQKmw7ELFS5hAaIOkiCIxSkZoqWB
         62RK2m6qFMhFUeXr8I8lMHvO0v5xiNVW2fa+2C2tL2WMnYxND1llbI6wIyk+yozi1c2m
         ZkdMEaDmemUaBUAbmK33SHlVAIR9+oGAbC7cQF96m2oIfBvZrEA6fHI4x/qecZK9d/T5
         gaTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=fz6DzrGGPP8zFxtoUoU/zyK1Eq1rYQIJMtG16VRcrs8=;
        b=ORfGWCGZKcEZ9KoZY318NRZPu6cGIX2Qubbb55oWYhusOSYe0EHSGoK/Y2U74W9dI9
         UmaznYUtavXt3rdCV1C/ONx8VJXDVWZNVqcuIIk6DmpuYYJawXAkKsBmhPHEQBqxJTJq
         hKSCzrB4pYZh5lUxidHEFkbiZJ841mMpM5ozzDZlUKaMMJsxXdk0O7e2l6iKlPAHJYN+
         0lhz2iZEb7qXOB7zd6nwFJFAb3n7CUgJ/9+Vb5+CVfOxkXzK4j7dCYwG/SJFdFHJLg7t
         ISPKK6hBai5kpO71tIRPXm0LJck6Qo/tYAn32kyHp5qTlkNmSPmRyzqUohRR3waE/aJg
         C7rw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cMgfgIpc;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id i4si270270pjj.2.2020.10.20.22.10.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Oct 2020 22:10:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cMgfgIpc;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x542.google.com with SMTP id s22so756584pga.9
        for <outreachy-kernel@googlegroups.com>; Tue, 20 Oct 2020 22:10:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=fz6DzrGGPP8zFxtoUoU/zyK1Eq1rYQIJMtG16VRcrs8=;
        b=cMgfgIpcffHW74TfcNtV1x2lv6rlaPZAOOPZsXPucatJ3mU0/nQ0qN9zlYIX/mKBbL
         DY4Y1kzeHf+MxbWQCUe1GxNG3WqkBCUcvfxTs9oaDM5LW/DJpnpGFUFbt0LoB3lRu/n5
         GOqZ6JD4tZMOufs1XkGZ6Ff0yLjJIvMXUHsWEogGvcNebt1EYdEnvfUuEhyIsKX9+Yme
         AmIzttGlG+3G7R/5B2WuqQfCGy8sMw6Q8W2fpPNFrqClTWZAZgPjmNXExYcJ+HNNX6rI
         iFsNuMQybqXRST5yioHMx5tQqY5afjvhwgfLn9Dj8KByd6cZXqIgf20zoGBUagI34ook
         oolg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=fz6DzrGGPP8zFxtoUoU/zyK1Eq1rYQIJMtG16VRcrs8=;
        b=FOANxFJKqj/gU+2qHsA/19aKnLiYBAO2lGRpbfdxmQ6mVGK0tGnFvhDBLhSmwSmJcD
         Pp+lJ94k+wUniGtFCVVNpojcjrOaUCviuyjiiKk4ISMADpkXZF2tr2dYLNxM77cf0MQa
         SbrMp6Ck1iQRrnu3Iy5/9odRykZm4J3gXMSjmhPotToaoezWSCvx0GpGuDaEYBUM+wWe
         QdWi+y85o1l9/omrGUmg6pUa8UJBG3+NAV87naUjLNIASLXM0uNP/Wlv4L5O6J8fAZLR
         frq63F9BPSCac9Uw9g0aTAS8U/HYvfiBJedBz+kXp9z+2R3QrTPmL3ksTr1f+BERzCpI
         HE6g==
X-Gm-Message-State: AOAM5310cZHpbKExK6c3NBnhAhC90iF75i9jWF5/pNjMp7xAX2MStse1
	Qc6RdXormLjf42/W+z9MLIdV8cNkWWE=
X-Received: by 2002:aa7:84c6:0:b029:155:d56e:5191 with SMTP id x6-20020aa784c60000b0290155d56e5191mr1529691pfn.41.1603257025992;
        Tue, 20 Oct 2020 22:10:25 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from ubuntu204 ([103.108.75.206])
        by smtp.gmail.com with ESMTPSA id j37sm869997pgi.20.2020.10.20.22.10.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Oct 2020 22:10:25 -0700 (PDT)
Date: Wed, 21 Oct 2020 10:40:21 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com
Cc: mh12gx2825@gmail.com
Subject: [PATCH 2/2] staging: kpc2000: kpc_dma: rename show function per
 convention
Message-ID: <5d757cf6f97533b48aa471db6efc100acfb8f517.1603256795.git.mh12gx2825@gmail.com>
References: <273abf291f47286a702d2a53445e7a6efcf9972b.1603256795.git.mh12gx2825@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <273abf291f47286a702d2a53445e7a6efcf9972b.1603256795.git.mh12gx2825@gmail.com>

Rename show_engine_regs to engine_regs_show as per the convention
followed. Issue reported by checkpatch script.

Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
---
 drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c b/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c
index 7698e5ef2a7c..b6d1afbd452d 100644
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
+static DEVICE_ATTR(engine_regs, 0444, engine_regs_show, NULL);
 
 static const struct attribute *ndd_attr_list[] = {
 	&dev_attr_engine_regs.attr,
-- 
2.25.1


