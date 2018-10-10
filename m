X-GM-THRID: 6610529510960922624
X-Received: by 2002:a1f:c014:: with SMTP id q20-v6mr26760784vkf.17.1539133461764;
        Tue, 09 Oct 2018 18:04:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ab0:5963:: with SMTP id o32-v6ls910271uad.2.gmail; Tue, 09
 Oct 2018 18:04:20 -0700 (PDT)
X-Google-Smtp-Source: ACcGV62zwGaL27+7pg9/GyHnGorLH2CX2cFtZNnwPDIFZCeXqXcugczGnDwJHrZuxjQ2f4o583Az
X-Received: by 2002:ab0:d81:: with SMTP id i1-v6mr3375255uak.4.1539133460150;
        Tue, 09 Oct 2018 18:04:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1539133460; cv=none;
        d=google.com; s=arc-20160816;
        b=m5GkHlPZjGKvCsimkEXK3f1Xug9okCGX3aH8djSRGtG6T4rupin+tpi+AELr8PMoQ5
         Cei62jIDENo5mYYNlOiLK6tcYPXVMlGStlHFY9NON0T6YowQjT+ruLdJpSBLI453DO1/
         Pg9FQ3uSvHv1f6lVeuqXC6YGywMA9wyz3DuiA5n0gagr/qQpKs/8zEfIjBHMtMeDEbro
         y/sZIys2sGPaTdSfpCyx4aUyMiPFbH4NkwMsYRzFhwI/heF9sIn90JVGlGA9oXhEbuPB
         JGxPEnsnmffPJ0d8WTOP6CN0HuoFVLS+ny38CX1BMVQwFtin/6tpljINsIUb5UH9LwxF
         0few==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=UDC39XAPOYQ3OmAGwyxCeGADnCG1wQkwR/yd505OrKk=;
        b=L8fST0iXXcO80usYWBc2uhNReDfUU8aw122zwz3cbA5cLdtXDxk/EEevEPlaVj8pU3
         QB3C6YolSitTtODnTQgvh2LAzfy7ozTgFRdzj8YXMsKYYfRNgmHv14pa35MOSzdHSGG7
         BHY+ZkOevBzMrT1TXJLWM+Q6TwmLhFy75s4nemQ8BxyT8PKLz5AbmhNyS2B7vsjulBLj
         y5sbIIBjv+mrkXIqAWCYyhq9y8uruSHCTG2pjiHhTplfWhsv9cW1ZcXr2IDpsbCtAzY9
         CIj7E3V0WM2NqgmrCgwa6wkXAILQ9ADDARPFGwgcULXZv8KhB8aFnuAqu5MrQQufrhg/
         ySZA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=N1DrO0+E;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::633 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com. [2607:f8b0:4864:20::633])
        by gmr-mx.google.com with ESMTPS id a71si1202767vsb.1.2018.10.09.18.04.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Oct 2018 18:04:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::633 as permitted sender) client-ip=2607:f8b0:4864:20::633;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=N1DrO0+E;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::633 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x633.google.com with SMTP id p25-v6so1650983pli.11
        for <outreachy-kernel@googlegroups.com>; Tue, 09 Oct 2018 18:04:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=UDC39XAPOYQ3OmAGwyxCeGADnCG1wQkwR/yd505OrKk=;
        b=N1DrO0+EyhiJbhR+1JGLqjQcT3EzIWjzj5s3Y/tvj74fSZX2FqSmkfXWtc6JfhWKU0
         9sLHuIc2T4LPk0AMUBbJdAubylSj1S9/6qpAF8wb1s2SFHtZZVxfH/7wI2m0HHU6bCGx
         lbMZcjl6If0G5jcYQExWbwcq/fqOH5YN+6+ui0GqAkvcf+k0cpHVF29fparrK+2csJg4
         38iq7mpxHeZ/kWhS1wq88CqiAXjCtknKkeZG0aPq87L1fBU4x/NkLIMhME0BAb8lBO3M
         Ry7zb+tm7qAwO3dBMRthSffYiVGQMc3L+ZWG2v5nWWMRtNv+Yd6SMfcTfdgv9WOD9pS9
         Qw6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=UDC39XAPOYQ3OmAGwyxCeGADnCG1wQkwR/yd505OrKk=;
        b=kCWeP45v+DEc2ktrD27THyiiqQsMLmVyGQELE4wMY6EKcOscWGT3QLDIFhwc9JthU/
         79kZJfXJ98xK3ep09V+pUn9onxkHxxSoMOMmGDXFaMpbOXPO5G1a4V30JJy1SULCmswr
         3ZDbNe5LuVQh1fJ6vp/z7TVKCTXtbixyVTGeUSNnicnsrFDzM2QiF7HCwMVM8S9DrxFf
         Fjelmr4nsek6BE1YkOzrwe4zumQIvNpJg/sl60XRLqN//kYkBLVBnMAWb/QXkb6Z6biG
         O9zQTEMKqNeMQG0eS248HxO8u8cDJa8q81TEgkxAnUb4xdlwpq78BRZgEYE+C2BsXRyE
         VmBQ==
X-Gm-Message-State: ABuFfohA2oa5Gu832+AhdJzsi1r8FD2p1X4cvnOyjyuEJHZlYjmSDmUF
	Pax/2s6z00cTE3Ok4+5KAE8jsEwcLJk=
X-Received: by 2002:a17:902:59dc:: with SMTP id d28-v6mr30871360plj.116.1539133459599;
        Tue, 09 Oct 2018 18:04:19 -0700 (PDT)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from veda-VGN-CS3AGH-R ([183.83.92.101])
        by smtp.gmail.com with ESMTPSA id q2-v6sm73142178pfc.17.2018.10.09.18.04.18
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 09 Oct 2018 18:04:19 -0700 (PDT)
Date: Wed, 10 Oct 2018 06:34:16 +0530
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: greg@kroah.com
Subject: [Outreachy kernel][Patch v3] staging: mt7621-dma: Delete unused
 define
Message-ID: <20181010010416.GA13096@veda-VGN-CS3AGH-R>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

delete unused '#define GDMA_REG_CTRL1_CONTINOUS BIT(14)'

Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
---
 drivers/staging/mt7621-dma/ralink-gdma.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/mt7621-dma/ralink-gdma.c b/drivers/staging/mt7621-dma/ralink-gdma.c
index 6d9fe175ea52..73dbc7fe38a2 100644
--- a/drivers/staging/mt7621-dma/ralink-gdma.c
+++ b/drivers/staging/mt7621-dma/ralink-gdma.c
@@ -47,7 +47,6 @@
 #define GDMA_REG_CTRL1_REQ_MASK		0x3f
 #define GDMA_REG_CTRL1_SRC_REQ_SHIFT	16
 #define GDMA_REG_CTRL1_DST_REQ_SHIFT	8
-#define GDMA_REG_CTRL1_CONTINOUS	BIT(14)
 #define GDMA_REG_CTRL1_NEXT_MASK	0x1f
 #define GDMA_REG_CTRL1_NEXT_SHIFT	3
 #define GDMA_REG_CTRL1_COHERENT		BIT(2)
-- 
2.17.1


