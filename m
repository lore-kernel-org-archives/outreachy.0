X-GM-THRID: 6950506572644614144
X-Received: by 2002:a67:1cc3:: with SMTP id c186mr4675983vsc.31.1618327730626;
        Tue, 13 Apr 2021 08:28:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:ee13:: with SMTP id f19ls1601094vsp.1.gmail; Tue, 13 Apr
 2021 08:28:49 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzfAq4spolQXwpphHeOLRODIGxuFF64LFSjyNhG4d0QnpSGALVTydpJSdHcOg+LMaTh7Hp7
X-Received: by 2002:a67:e34e:: with SMTP id s14mr6398014vsm.50.1618327729567;
        Tue, 13 Apr 2021 08:28:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618327729; cv=none;
        d=google.com; s=arc-20160816;
        b=N+Cdn97KP37VyFAperHtJpDCGZE99MYIoeoiWDvXwt6JhK+83JljZ/NUWD851RSw4m
         5axotEHwvhJ4Gla6LB3ey4PZkQBl2AeX4O3ARtnpd2ZbNAf/B1FYjtAsFEsOYkFrscBT
         mVeO2bD3zYDndHhGSUFUCPAU5l5pcg9qYj6Yi+HFnk8q7BggMmQvSHORzr2R/ibvXZPc
         InBnLMVbA+S1DLZuen52XLUg+zfybuMFUJfS6rYh4ftz2SvE109ffO54PwgUw9PKsEce
         atSqTX/a3f067GJMLgHpp4Rs9M+iyRhjLv5whn+UWrJ7WXTdSmPhA6YEVvyQKptcfw5v
         cJQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=DMFAeenJ3GJ+5amHPUt1V5Y4xL6+ih6uNBQOPdmIYsg=;
        b=pqElGN3mh4y5c17UkDARDRFD30CmvpelfLjdi5z0HW7vKakQUWTaS6rKsrvhw+VGt1
         DMx/FtNrlw+a6QoNL/GUsWDELKTeeN9L5wquotq/D5+aqIVrEglqxzs34O/MPUtWip/P
         pV07megKJrYYJZ21H/RABEXECaWttBN26iyEwswTEmsMbQ3YorfT7Mygrx2/oW8TFpPr
         bmJqAQ9b3C5rVmHcFFDaY6Q8qT+5ML/f3SiNl6Ziy71eM7iN34lopvha1ZCEAGhS2FZT
         Vpi2V1LeyOXWykxzO3GorY8NpMBXv5xQFS0rxDiWTfOGKmZ7W8ZJeSUmXPh+xyly1hir
         JG0w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Gfkv9H97;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::102a as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com. [2607:f8b0:4864:20::102a])
        by gmr-mx.google.com with ESMTPS id u13si1002937vkl.5.2021.04.13.08.28.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Apr 2021 08:28:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::102a as permitted sender) client-ip=2607:f8b0:4864:20::102a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Gfkv9H97;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::102a as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x102a.google.com with SMTP id kk2-20020a17090b4a02b02900c777aa746fso9172196pjb.3
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Apr 2021 08:28:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=DMFAeenJ3GJ+5amHPUt1V5Y4xL6+ih6uNBQOPdmIYsg=;
        b=Gfkv9H97ywR0e8+JktIS1lDOavqudu48crr8IGSjJbYInXDhgnAM5u4/PL8WyD+ujT
         7CKNooUstm/+3/wsG6PmF7FlvG3rUU9kkEwm3HcZNXLwPWkRaJusS/K8U9biX86xBjQO
         1VR09KCvDeC17reiaz4DEzaLCIdTbSOmw0wZau+UsYArwNUg1WOG4dw/WDafSgOvdj93
         tTIWI3WYn9EM73kSbLYmt5tzzmapPIUjYgr9r6wr89opIq5cDSiiWMX6OBU0n+3kNGx1
         uQ7S7Bh/NOuxqmnn60s93qJQEu6nn2S/GFT6Tr8jTwL7DkgX2HzuopAcUxJ6chmFdPEx
         pxUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=DMFAeenJ3GJ+5amHPUt1V5Y4xL6+ih6uNBQOPdmIYsg=;
        b=J09GqPwYMSP0opPij1w0VKDmYG+XyhMOU8JBGJqnG3VkA79+1F3nAQu/wazcYiCBiH
         N6HxWP2uLiXPZGFxhWJlIaEfFBHbkHzC530l3PgLPSXfj9guMXQE8EVAIHnFDAY8/3gh
         hCly8tchhBt3yMgHKA58xSDuMxQuFYK5xLGQFAaN2+s7yZO7fDXQvZ4PbkC9EwAPRwbm
         GLsTQi6g8Cp5nLYBp7g9/QyPj9gn/8Amy+ggu9Te8jBerj/Y6+lIiYxyOBn3XHEWO8mT
         0IcnlrwsIH9sAMt6ewwASI0UDeV7t7JDTsX5GQQ1TzqT8I/onbgDexXuay8OdPdSTGAq
         TowQ==
X-Gm-Message-State: AOAM531F78ZR1RpWL6CwOUm3h1NOhfBIlxW2ujGIBflTVyfvmVVlvj6e
	N8/Zxy9bzhbfOUsE5D1vvcc=
X-Received: by 2002:a17:90a:5413:: with SMTP id z19mr558107pjh.137.1618327729168;
        Tue, 13 Apr 2021 08:28:49 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([103.141.87.253])
        by smtp.gmail.com with ESMTPSA id a3sm2492213pjq.36.2021.04.13.08.28.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Apr 2021 08:28:48 -0700 (PDT)
Date: Tue, 13 Apr 2021 20:58:39 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: sakari.ailus@linux.intel.com, bingbu.cao@intel.com,
	tian.shu.qiu@intel.com, mchehab@kernel.org,
	gregkh@linuxfoundation.org
Cc: linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
	mitali_s@me.iitr.ac.in
Subject: [PATCH v3 1/4] staging: media: intel-ipu3: remove unnecessary blank
 line
Message-ID: <352ce300cfb744262bd30aa78e77b99bb28065dc.1618326535.git.mitaliborkar810@gmail.com>
References: <cover.1618326535.git.mitaliborkar810@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1618326535.git.mitaliborkar810@gmail.com>

Removed an unnecessary blank line to meet linux kernel coding style.
Reported by checkpatch.pl

Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
---
Changes from v2:- No changes.
Changes from v1:- NO changes.

 drivers/staging/media/ipu3/include/intel-ipu3.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/media/ipu3/include/intel-ipu3.h b/drivers/staging/media/ipu3/include/intel-ipu3.h
index edd8edda0647..438ec3ed7b6b 100644
--- a/drivers/staging/media/ipu3/include/intel-ipu3.h
+++ b/drivers/staging/media/ipu3/include/intel-ipu3.h
@@ -74,7 +74,6 @@ struct ipu3_uapi_grid_config {
 	(IPU3_UAPI_AWB_MAX_SETS * \
 	 (IPU3_UAPI_AWB_SET_SIZE + IPU3_UAPI_AWB_SPARE_FOR_BUBBLES))
 
-
 /**
  * struct ipu3_uapi_awb_raw_buffer - AWB raw buffer
  *
-- 
2.30.2


