X-GM-THRID: 6954767724907069440
X-Received: by 2002:a05:600c:25ca:: with SMTP id 10mr11703283wml.0.1619283045200;
        Sat, 24 Apr 2021 09:50:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6000:1287:: with SMTP id f7ls3042228wrx.3.gmail; Sat, 24
 Apr 2021 09:50:43 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwuOZhyKnSKXPCGAw5dvT7gEE1xPC399owH8xMXuzhAfhJ23oQSHiCTHXWb5bwSKKwEahWg
X-Received: by 2002:a5d:6607:: with SMTP id n7mr12243089wru.146.1619283043838;
        Sat, 24 Apr 2021 09:50:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619283043; cv=none;
        d=google.com; s=arc-20160816;
        b=rCdcB3yuhf3e2LsBJxi4XlpyaWnQ41n/jPogG/NbUF5NK+4bi9k9zGVki7le+DyYLt
         WFjtZ/A5U+Oip5IdNNXieu5M39aNx09/nNEWfuqdhB5KAAJ1FsvuF38/WHvmWCXN3ckC
         LXg9ougX2Ha31y5gcT3XfZw7u1ySsMiWAr7Ri9fmisgrKUXirjrV45/6l7e1Qi/1jLZi
         RxPST+2s3JX4CZ5mMLQIMYXX9JTeSQvm2HY+gJ+hDbr6WV1nnfWOSu05Fs9dkSk0MO3V
         3HIoIQVLGHuIZp4nLhpzxqPAu919klgli0rjx67hCI//bkh7ZMaJyC/zcPBJtOMBH21B
         9JbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=5m4sbKb1mKDj2CQTY50xzkbYv3PjnU1uIP8oNNYAVao=;
        b=GQzvPxFkdRnqtCLp3VW+1qudGZL0t+MA23IGzLBsJPEaIaL9/hPZ/nGJmi7XC2FgDT
         aZ97+xB0aYPX4F7dReqfP3ihrFkrCiMKZ5Pdkdk7RNBwpAHhceeGVsx89rCHIpjmD57h
         eSO68sVvv/OySvACjU8zqoNJaH5cyiCSUywZxws/68PKASYCvBLf6ZG0ePitydoBg2kl
         MEvvUwPD4IvxTWQT2a7dVVCdcQQPU7Hdv1ZMWAJTmB64G0oj/M7J4eOPi6Ut7/+9QSc2
         8nNW5gnxCpcji9mPx78QBo2LENsgIMyEzQ90flC4K+CxnaWyAKb8/ZYhtJUEizcUVm6K
         i9/g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GFF0+1DJ;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62c as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com. [2a00:1450:4864:20::62c])
        by gmr-mx.google.com with ESMTPS id a4si958230wrc.0.2021.04.24.09.50.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 24 Apr 2021 09:50:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62c as permitted sender) client-ip=2a00:1450:4864:20::62c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GFF0+1DJ;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62c as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ej1-x62c.google.com with SMTP id r20so28433807ejo.11
        for <outreachy-kernel@googlegroups.com>; Sat, 24 Apr 2021 09:50:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=5m4sbKb1mKDj2CQTY50xzkbYv3PjnU1uIP8oNNYAVao=;
        b=GFF0+1DJiChlYl8FNWpHHNDZvW9IjIr62vsAo8VaSx4wU5tKMCxa2tvHT0DnKZILaN
         rhjhGi9NHqbwDXQz4w5IO6TrZFweKliScVCUglRHDF/OngEFtglfrBHxu+eyYjA7ovu3
         lB+dMJt5DSovsp5vbbO6ENqhNxSEOxaDlfBu5779i2XbljxMBEevy5CvVobw1eRLdYrx
         FhdzKaHe/LR1tfAlhfY5VOIbwRYxZoHhuBlzQpxJWOnbKGgeTNEth6Hijqur+e9Ab1Eq
         7evazICJpH9K47jzER0wurmaovsrr881Mefy7QfIazJmgj8hcf3mMsz3wuaEBCfFy1Sv
         XMQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=5m4sbKb1mKDj2CQTY50xzkbYv3PjnU1uIP8oNNYAVao=;
        b=pEtG4GfS77L9inS8TBs78ngwU/DZsaF+Xez46+JAgI8Zn64yTxMHjocha7HSMnIEXN
         QUF6vNlhkmmR56EyG5ETKKf8rXBUaVUCpZqntWMdE4n55V/kxmEYMOxx4YcEHP7Tz2l3
         4IHpD+CFes5DRcuwcDV4vg0oJO8ca13qgijP76Zh0cgTU0g5dFhPrwzD5tHLF8l1Hijn
         DNU9RSdLgM3TIe3cZ1BjEFs3cfznbVW2SEVVfdLoioN0Ik0sihezrkRX+p9L4zsZqnye
         nAJHEZ+kyqDAT75syrSrrIhaIgEJpVC9PNB3YqRhxxCaLhNFN2Mn5AoBUU6Dx+TlzL+1
         n0rw==
X-Gm-Message-State: AOAM5314eL9jgrH05GmWgsFu82AsuTMiSmwvbRAcldZFSgyEz5vC//wR
	9vNP2TJXVJSY/AXIvgt25yiy71VbCNI4nKiI
X-Received: by 2002:a17:906:9b15:: with SMTP id eo21mr10240199ejc.237.1619283043335;
        Sat, 24 Apr 2021 09:50:43 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from linux.local (host-79-52-107-152.retail.telecomitalia.it. [79.52.107.152])
        by smtp.gmail.com with ESMTPSA id n14sm7200702ejy.90.2021.04.24.09.50.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 24 Apr 2021 09:50:42 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: outreachy-kernel@googlegroups.com,
	dri-devel@lists.freedesktop.org,
	Felix Kuehling <Felix.Kuehling@amd.com>,
	Alex Deucher <alexander.deucher@amd.com>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
	David Airlie <airlied@linux.ie>,
	Daniel Vetter <daniel@ffwll.ch>
Cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Subject: [PATCH] drm/amd/amdkfd/kfd_process.c: Fix kernel-doc syntax error
Date: Sat, 24 Apr 2021 18:50:39 +0200
Message-Id: <20210424165039.22717-1-fmdefrancesco@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Fixed a kernel-doc error in the documentation of a function.

Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
---
 drivers/gpu/drm/amd/amdkfd/kfd_process.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/amd/amdkfd/kfd_process.c b/drivers/gpu/drm/amd/amdkfd/kfd_process.c
index 65803e153a22..12587fa768a9 100644
--- a/drivers/gpu/drm/amd/amdkfd/kfd_process.c
+++ b/drivers/gpu/drm/amd/amdkfd/kfd_process.c
@@ -250,7 +250,7 @@ static void kfd_sdma_activity_worker(struct work_struct *work)
 }
 
 /**
- * @kfd_get_cu_occupancy() - Collect number of waves in-flight on this device
+ * @kfd_get_cu_occupancy - Collect number of waves in-flight on this device
  * by current process. Translates acquired wave count into number of compute units
  * that are occupied.
  *
-- 
2.31.1


