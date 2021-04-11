X-GM-THRID: 6950041383671431168
X-Received: by 2002:ab0:6710:: with SMTP id q16mr1661382uam.73.1618182608875;
        Sun, 11 Apr 2021 16:10:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:f251:: with SMTP id y17ls157554vsm.0.gmail; Sun, 11 Apr
 2021 16:10:08 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJw5bAdO1otxY3rtHhKH4iwlsjS9HZreBEbCABqBiGEtUeNzAXkP7x9jcMhcBLDCXqz6Xd+c
X-Received: by 2002:a67:e258:: with SMTP id w24mr17649796vse.41.1618182607995;
        Sun, 11 Apr 2021 16:10:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618182607; cv=none;
        d=google.com; s=arc-20160816;
        b=0QAJZZhBEQkOoQ9wTk/k9F5TWPDyBm4+czQWTi99y3SMLD+SOMHnBiFHSuPv7oKHbw
         9ZVE/sL/VVxBPJM8+9eQScNqP1SHyy2LkKMZF3uFVSOL1Zuy7OQWSz/CXqTVrQMfBGXG
         HFknLt0PJMEqoBSG3fsJMVcsuyMot37OidDOR4SRhXMX9vi1aphv0QH4l5WbZk+XtAOY
         z0eLyiEc2HGWh7fjF0DNtY5zgZgwNxxPkBQrFq3eXHt6ZLEOE7IuG135qc2ScKBLPIcF
         p7i1zQDJ8wTO3YVrI7YP0wAnBQyPctIS5zD/q5oksDlh+ouYlmnz9kFHvNFjSJ4dldu+
         P5dg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=uNZYWgEVoAuUntavroH02XS3fbZ6zaZUx6Qay4mZmPA=;
        b=a/AYnlogExC4mpmlnKxMcGHokPampFj12z1ziC8sJE/7Lv0lRDCDzKq4c5vJx5LQ+Q
         skRt04kdHZT4u8WbrZ+MNoSqYjuS9QR0mPMuaJ0K97v8OTYggtyaWanlbbhRRPjTJ79U
         XTxv6Ccn1TKtht5cyXKtY54OVRpduPeEfXa0bHyWlN+Pzz/qx69dWuw3yNuzhKKe3JMj
         7OvLXWMTUhCiLGhoFvSOZfC+fw0ua7iv5U8w4rgqxoUwg1jPR2A9O5ndDpjuv8EltE+3
         JKJHr5GGOMBAvwEDFJ6MpGon3exo02kV9anc3GeHwzO+9H1+MJH/r1oy9iDm7iVVDjnm
         zFPQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="bm075u2/";
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::435 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pf1-x435.google.com (mail-pf1-x435.google.com. [2607:f8b0:4864:20::435])
        by gmr-mx.google.com with ESMTPS id r8si822308uat.1.2021.04.11.16.10.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 11 Apr 2021 16:10:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::435 as permitted sender) client-ip=2607:f8b0:4864:20::435;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="bm075u2/";
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::435 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x435.google.com with SMTP id b26so2850376pfr.3
        for <outreachy-kernel@googlegroups.com>; Sun, 11 Apr 2021 16:10:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=uNZYWgEVoAuUntavroH02XS3fbZ6zaZUx6Qay4mZmPA=;
        b=bm075u2/6bp5bVTyE82skZrkF1AOKjM+JqwEDKDedP5L33qOMv0ZLYxIGzTQoBjblx
         pF2Ps7cEWAsuWuambPeMut8Ntx8AoPeqMNLZB57bTQibajGanlXSchky9OuZOecRHFv+
         bWRl/aT5qhXk72bOVNoPvO421tr/Nxo+4qRkTInOZEUQX4tTceaNXnrmMJdKruFBTEVv
         mUjeIoN7zFBLDgKNq7danLE0aD1rRSONXNieWzjTh4bzyeLrpQCD14YOKQC4jwN1q43F
         4/Z8zy15zokhw+SSrgIIbO3wh7LS2XKkP2p4Fqf/lm7d007K7CBmrVT88GxSlNfQcV+x
         wfAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=uNZYWgEVoAuUntavroH02XS3fbZ6zaZUx6Qay4mZmPA=;
        b=GytvQx4lDFO9tp8ut5Xgnd9skJGhrqJaL1b/ES8ZAn9JYBn72LxP8SS+7DYkdeEVzm
         VIv98W8NROg2nmF4bA7yDkc4IHG5GN2aPInhwWz7bUXKhVwi0/otH/Li34HKYbpEGG8I
         t+ydSf2Rvia5A8nJu0UrmG520WBgqPGVE2L9+CjXDoHQx7dDLhzSyhKGDfLRWjVWQY3r
         DDC6enwCJLcMiYArL1a6HY6tskFpV0ZmvMEYbpNDQ6xP7GSQ0EtjWZa+AQO+b6EYT/Ya
         BF5f4k2QM8KFktYkHuskQT3ySA8rBBb+bdbqIRO13SWEXLi5ZwbWGtrce1NDwPnqEf4A
         2iAA==
X-Gm-Message-State: AOAM531gVIg/6kTni0ACNUf/VJgNwHfzsZM4KwmwT0iWC+oPiEQ1Z8i4
	CoAdLwHHYS1/ErQm8Y5Nacc=
X-Received: by 2002:a63:5004:: with SMTP id e4mr23507889pgb.61.1618182607156;
        Sun, 11 Apr 2021 16:10:07 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([103.141.87.253])
        by smtp.gmail.com with ESMTPSA id q5sm7696619pfj.131.2021.04.11.16.10.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Apr 2021 16:10:06 -0700 (PDT)
Date: Mon, 12 Apr 2021 04:39:58 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: sakari.ailus@linux.intel.com, bingbu.cao@intel.com,
	tian.shu.qiu@intel.com, mchehab@kernel.org,
	gregkh@linuxfoundation.org
Cc: linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
	mitali_s@me.iitr.ac.in
Subject: [PATCH 5/6] staging: media: intel-ipu3: line should not end with '['
Message-ID: <7514b0a9f6b0ce736de3c9d13ae2629d9e67f04c.1618180660.git.mitaliborkar810@gmail.com>
References: <cover.1618180659.git.mitaliborkar810@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1618180659.git.mitaliborkar810@gmail.com>

Fixed the issue of line should not end with '[' by moving arguments
from next line to line ending with '['
Reported by checkpatch.

Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
---
 drivers/staging/media/ipu3/include/intel-ipu3.h | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/media/ipu3/include/intel-ipu3.h b/drivers/staging/media/ipu3/include/intel-ipu3.h
index 53f8e5dec8f5..0451f8b7ba4f 100644
--- a/drivers/staging/media/ipu3/include/intel-ipu3.h
+++ b/drivers/staging/media/ipu3/include/intel-ipu3.h
@@ -246,8 +246,7 @@ struct ipu3_uapi_ae_ccm {
  */
 struct ipu3_uapi_ae_config {
 	struct ipu3_uapi_ae_grid_config grid_cfg __aligned(32);
-	struct ipu3_uapi_ae_weight_elem weights[
-			IPU3_UAPI_AE_WEIGHTS] __aligned(32);
+	struct ipu3_uapi_ae_weight_elem weights[IPU3_UAPI_AE_WEIGHTS] __aligned(32);
 	struct ipu3_uapi_ae_ccm ae_ccm __aligned(32);
 } __packed;
 
-- 
2.30.2


