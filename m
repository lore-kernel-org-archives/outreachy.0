X-GM-THRID: 6950506572644614144
X-Received: by 2002:a63:c70c:: with SMTP id n12mr31189605pgg.213.1618290974259;
        Mon, 12 Apr 2021 22:16:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:b7c7:: with SMTP id v7ls3365653plz.0.gmail; Mon, 12
 Apr 2021 22:16:13 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJw7sn8RYSuDP78KchCc9hPPfa/Cm/OF0mTrWBG8xBDM6jrTYsukZV71NtZt5dZxwkLOjuLn
X-Received: by 2002:a17:902:9a84:b029:ea:e627:f7c2 with SMTP id w4-20020a1709029a84b02900eae627f7c2mr10344732plp.57.1618290973259;
        Mon, 12 Apr 2021 22:16:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618290973; cv=none;
        d=google.com; s=arc-20160816;
        b=Czu9SmxtihrdSJuRYAGQQv/w5/xGiSDjrBI5gVyZSVtpVi8oX8VPeZugoP1FAD4q35
         NDi+3h/nKpnekf34ASOMzRHDukCQEawjv9XzDI51dD929X17HhWUA6cMgDCOA8LdkbLt
         cqvMgdptKOJF3ZkAl6sxQPoWJnGE79wbaA2iOMrVDm7egpSeel1y+IWmSE3aDE+vTuL+
         s76OpkXZEoaAV7ypfsCRRIkDyZI37WXhhTeGQ3WZtz2QEJCFmNoEPr4ujZtcy7oDGpol
         2b/U8wH4Rpj/Q1p7F8YkQZG/sY2kAsIvjTnOhhGLCYafRI8xLXPqRn/bRSohhn7M4uYc
         vfpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=zBM+FAFuyyZibWOVEU+NwC2c9w2fNaMRxLkV7FI0hEU=;
        b=OSxb4yQ33J6HCbb6VPJ9PZ0ODnroW9R6skb8KbQ/lu8StN0shKOxr2LDwyWrm40k6e
         w1X3yr/4l1mMEiuzPIrLh0aDxyZZo3iJ0VoFmeUP7em4nAm47xNhJn9MYo+twjNsKY5K
         pqmyPmYX47taX8NOe+DuKxZCMysz3WN2xRgfNyad48sbTBsqyjWHGmweLmS5YPAzxJ9H
         nWGJ8y/hd2JZ0vy9xrwGmzYmyERydAGI0gnPXlsf97bqgVINBxPK8y5dt9uJ4O0yNOzP
         iSIP+vg64u3VOnepOvLvS17c83mz8M+E+mJijUgOV1jbLNI7VM9DLSlLIMOuM+9VatZw
         qLkw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IuAaYHqg;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::42e as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pf1-x42e.google.com (mail-pf1-x42e.google.com. [2607:f8b0:4864:20::42e])
        by gmr-mx.google.com with ESMTPS id t19si88155pjq.3.2021.04.12.22.16.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Apr 2021 22:16:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::42e as permitted sender) client-ip=2607:f8b0:4864:20::42e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IuAaYHqg;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::42e as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x42e.google.com with SMTP id l123so10662095pfl.8
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Apr 2021 22:16:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=zBM+FAFuyyZibWOVEU+NwC2c9w2fNaMRxLkV7FI0hEU=;
        b=IuAaYHqgmWuGE1aDi5pIPlZamrmCpCqykFFVVaojpyqCtwRYGnvNC1fNguqZTNV29j
         DK1BQLhTNPtKqwtnFpH7x4tesjocdWzdNUGeyETuYJRmmW2GkfrEotRS+VLtTVYy+eyu
         HXklhZEl8zMlWPV9F8OdUNHLa1ThyLfw7+ntx7c/OQs9x9CG+L+QrQfA8WTmiv4jxlvq
         /KpORx/ZSQWHV0boKkrfFFv577AqIKYqESgh5gbCz0CWyKtORtXtgXxc2LZjge2YShjK
         7KbR16Q2WP2YmBB0i98vWiu0mNwtB2pboRL5L99RcDyLtTOG0AIkuSZwX5Doa8FqqxB1
         ZrNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=zBM+FAFuyyZibWOVEU+NwC2c9w2fNaMRxLkV7FI0hEU=;
        b=ZWlEmgTBZC+YjZcJFYUpDBK9Hui5aJT/yPJPFHc2Z6rsVQiMvCJvP92E/onDLPxlfJ
         Sjk9xxSno6Hx6h8WpJsxD7Ee8UL5JJIQAleNAW2oZjCUoa4/bNjBbV/o3xjjWO7tB0aH
         eEfy/uXQCLGK0x3DXJKVGEUkkNbdR9A3tF2JE14Z7V8mHAlakdg4DI3yFvTibYbiQQcR
         MnsW4gGul24haJpHZWckud8MX4gd67T+lPqy90iFERGICYZvw7k51Bae9o8BydMvnwb3
         IDutW52hOaAlpfSTgrgnOSr+3kCNx8g8pcTZlfhNEeShChPqbuiQuEVUeZ3/DrDRSTGk
         lZGg==
X-Gm-Message-State: AOAM530bb7Bdegz5TYfWGpS8+ACB1hPFYg35jPlGgwIYB3Qr+Q0FxPPh
	5K2ZHBGeKxpPX56eu6ZqsIxFuNM4qenCag==
X-Received: by 2002:a65:40c7:: with SMTP id u7mr30494173pgp.29.1618290972915;
        Mon, 12 Apr 2021 22:16:12 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([103.141.87.253])
        by smtp.gmail.com with ESMTPSA id p24sm7952422pfn.11.2021.04.12.22.16.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Apr 2021 22:16:12 -0700 (PDT)
Date: Tue, 13 Apr 2021 10:46:06 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: sakari.ailus@linux.intel.com, bingbu.cao@intel.com,
	tian.shu.qiu@intel.com, mchehab@kernel.org,
	gregkh@linuxfoundation.org
Cc: linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
	mitali_s@me.iitr.ac.in
Subject: [PATCH v2 3/4] staging: media: intel-ipu3: reduce length of line
Message-ID: <f18b704654797e29f3bbbe49689eaa2c0ad28d59.1618289130.git.mitaliborkar810@gmail.com>
References: <cover.1618289130.git.mitaliborkar810@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1618289130.git.mitaliborkar810@gmail.com>

Reduced length of the line under 80 characters to meet linux-kernel
coding style.

Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
---

Changes from v1:- Reduced length of the line under 80 characters

 drivers/staging/media/ipu3/include/intel-ipu3.h | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/media/ipu3/include/intel-ipu3.h b/drivers/staging/media/ipu3/include/intel-ipu3.h
index 6a72c81d2b67..52dcc6cdcffc 100644
--- a/drivers/staging/media/ipu3/include/intel-ipu3.h
+++ b/drivers/staging/media/ipu3/include/intel-ipu3.h
@@ -247,7 +247,8 @@ struct ipu3_uapi_ae_ccm {
  */
 struct ipu3_uapi_ae_config {
 	struct ipu3_uapi_ae_grid_config grid_cfg __aligned(32);
-	struct ipu3_uapi_ae_weight_elem weights[IPU3_UAPI_AE_WEIGHTS] __aligned(32);
+	struct ipu3_uapi_ae_weight_elem weights[IPU3_UAPI_AE_WEIGHTS]
+							__aligned(32);
 	struct ipu3_uapi_ae_ccm ae_ccm __aligned(32);
 } __packed;
 
-- 
2.30.2


