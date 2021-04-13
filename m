X-GM-THRID: 6950506572644614144
X-Received: by 2002:a17:90a:1d4b:: with SMTP id u11mr616973pju.74.1618327782813;
        Tue, 13 Apr 2021 08:29:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:860c:: with SMTP id f12ls5370359plo.5.gmail; Tue, 13
 Apr 2021 08:29:41 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwmM5RflTwOc0Z2ApBM6CFoTUgP2FpAhSTnq0gj79D3kBe3TwN97T7ObAs5rAMaWk2eSITE
X-Received: by 2002:a17:90a:bb85:: with SMTP id v5mr613096pjr.106.1618327781699;
        Tue, 13 Apr 2021 08:29:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618327781; cv=none;
        d=google.com; s=arc-20160816;
        b=EnYvkA2Tsfw/FNASvJMBvSFZFqo8tmJm2hFJd6p9oI+RfFXq3G5CS13/9/Js5b8tFP
         y5nNAnvEzNndXDZ9daXp+eHdL+h2zNB+twsGCSrdkBcF7UKrHlmMs4hh6UY8KLA1YZLT
         jSDq6EY0BwfH8MRSUebwaaPghSW42LV+aKpSLWEbAejq+dkZAhxxQozfdU8RnkV0P442
         XUDWNPMVkOI4zRfkBMiRF4bhV1JQNJIzhpvIbNtRgV9c43I9zqaNUejSIJoSuZpOZLIx
         0aazMRQY0mhJy9i/UdN1kXflR3jjgw3MxU2sE3oq2Dw78sOGY9mwIFlmvh7pBkoYP5Re
         lFSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=1fCrfrmJZI3X6ymxjhobx0T/1lZLGKuT5ZcshF1fEYk=;
        b=HHEbndoaeFXhXleU77/I4Jthkh9wGHt2VJsntY0RzGAcCm4CC0FHfWy1Pj+B/TEBsG
         F+0OW4ojKOV2cDhIteog7XDYedsMKsANSQ0nN2wwFHpUeCBs9FjmC2D+p8/e8vrIHkFv
         pIrdgOejkpZLvrKS8wu0c5fDaxVG/pJV1neIcWe9VmRQ8wC89SNG4EBXRW8qLUgIMA/Z
         pTQLLgWphtkxuIFpIP9r9Tdrc3bhL86nOiSmR2gIhbDcfJOzKt8QXlWOjhaPiHJ8BaX4
         rtEb+mO9Tm0Yn8nomERotFLsr/MMeERPawTq45Hm2oywxixy7KoOtdMOqbwHy3xyuba8
         jaNQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mH0tMSNT;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::52b as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pg1-x52b.google.com (mail-pg1-x52b.google.com. [2607:f8b0:4864:20::52b])
        by gmr-mx.google.com with ESMTPS id p18si557392pgi.3.2021.04.13.08.29.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Apr 2021 08:29:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::52b as permitted sender) client-ip=2607:f8b0:4864:20::52b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mH0tMSNT;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::52b as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x52b.google.com with SMTP id w10so12195206pgh.5
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Apr 2021 08:29:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=1fCrfrmJZI3X6ymxjhobx0T/1lZLGKuT5ZcshF1fEYk=;
        b=mH0tMSNTz8SyU5qkYvK2u80gaZ8Gn4PLz0ULcefgOuEGJGR/lC596O1HMIV6cBuRV1
         OohY8hKnIWlihH3zWuGeDQK6QP8zgy01Ay640QVAPvCkS5/S9nBgr9AS5k8gm/sOcHeo
         HQA5ZKC07UCEJqwmChMrgoYCbZezZWx72sk69xjcCpTUcndCujYXZeIzdRmXhp86WHGR
         HnYaO/dYPOTs+1FVMNhqq34HqQVX2fIhX4iDHI9MLx04F91xxWzwiU+dRn6X16qr3U7T
         4At2K3yP2/5cYkKE+89I/MjbXiKKw75kFWr2n8KXeqdjjyhFCL8ozg9REVAFIUR1g3RD
         YdQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=1fCrfrmJZI3X6ymxjhobx0T/1lZLGKuT5ZcshF1fEYk=;
        b=tp9Eg/nnQWU79ldrc0EWd6sxyAA/0gW71T0sNN3EaqlqfBh/o7pfjWi9J/X5RWbtsF
         j/q9qvJ0CwXbc3HUOtyqnyHKGmtbeIOZQEforrXeybqF6ybrmAJG4h8El5bJrWmSgL5E
         a7UIrZ+Bs0c/e4VtB4UdmENqCQS+4cKsgiOJn7RE+e0lh7QYDAsFFegATFc4ETL/ZfBP
         EsRiaUc/aHPQEVYWALQFmoYJjMzDUk46iaKonkDU58dCyi72nw0TFfDfzJpyJZv50hcR
         YEWW5k0HZf3AjGBqIAWArA4SyhUxvzni9wkNtJlYaVbAks3XqWxvmew1QMPzU1kuoYNo
         7/sg==
X-Gm-Message-State: AOAM530I244zlyotKKOpyOP0VE6moPDPpzsJjy+nKAd1BBtEjnd61+VR
	Ih5cuyXeLLwvfp8JvxTqJu9xHgx8DuBHkw==
X-Received: by 2002:a62:e70e:0:b029:245:3a00:5720 with SMTP id s14-20020a62e70e0000b02902453a005720mr25036334pfh.0.1618327781360;
        Tue, 13 Apr 2021 08:29:41 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([103.141.87.253])
        by smtp.gmail.com with ESMTPSA id c15sm12892707pfi.207.2021.04.13.08.29.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Apr 2021 08:29:41 -0700 (PDT)
Date: Tue, 13 Apr 2021 20:59:34 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: sakari.ailus@linux.intel.com, bingbu.cao@intel.com,
	tian.shu.qiu@intel.com, mchehab@kernel.org,
	gregkh@linuxfoundation.org
Cc: linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
	mitali_s@me.iitr.ac.in
Subject: [PATCH v3 4/4] staging: media: intel-ipu3: remove space before tabs
Message-ID: <01ad7ff353f805dfc48e7bcc26ed974e7bb5ef9f.1618326535.git.mitaliborkar810@gmail.com>
References: <cover.1618326535.git.mitaliborkar810@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1618326535.git.mitaliborkar810@gmail.com>

Removed unnecessary space before tabs to adhere to linux kernel coding
style.
Reported by checkpatch.

Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
---
 
Changes from v2:- No changes.
Changes from v1:- No changes.

 drivers/staging/media/ipu3/include/intel-ipu3.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/ipu3/include/intel-ipu3.h b/drivers/staging/media/ipu3/include/intel-ipu3.h
index 47e98979683c..42edac5ee4e4 100644
--- a/drivers/staging/media/ipu3/include/intel-ipu3.h
+++ b/drivers/staging/media/ipu3/include/intel-ipu3.h
@@ -633,7 +633,7 @@ struct ipu3_uapi_bnr_static_config_wb_gains_thr_config {
  * @cg:	Gain coefficient for threshold calculation, [0, 31], default 8.
  * @ci:	Intensity coefficient for threshold calculation. range [0, 0x1f]
  *	default 6.
- * 	format: u3.2 (3 most significant bits represent whole number,
+ *format: u3.2 (3 most significant bits represent whole number,
  *	2 least significant bits represent the fractional part
  *	with each count representing 0.25)
  *	e.g. 6 in binary format is 00110, that translates to 1.5
-- 
2.30.2


