X-GM-THRID: 6615419425157808128
X-Received: by 2002:a24:4d51:: with SMTP id l78-v6mr14190169itb.16.1540272362319;
        Mon, 22 Oct 2018 22:26:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:660c:b10:: with SMTP id f16ls573781itk.9.canary-gmail;
 Mon, 22 Oct 2018 22:26:01 -0700 (PDT)
X-Google-Smtp-Source: ACcGV60rgskLyi0ySD77NU8DTzdJFZTVU6VhO0Ep9fCuq/n5liti2V6Iyx2kDM1aTtqmvj7IMnVR
X-Received: by 2002:a24:5695:: with SMTP id o143-v6mr14015521itb.19.1540272361502;
        Mon, 22 Oct 2018 22:26:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540272361; cv=none;
        d=google.com; s=arc-20160816;
        b=HjHUGFa9eO3LVkOA8mswEn/+5wPsmAsdg6USPO3VOM2kwxknn1eIPfHb8VYGRJV2Lq
         KD2HnM45zsLAHgvmXOjHHOXMJrdyyiztnpS++wRZS376vBD+S16J4MxC/qRDc1Fa9Ngs
         sCxAn1TVGvWxZFw0kR1ma55es5Y+E1fz1jpBO8yq7wqCiVp4wsv/JdZaLP+x31mNfC2E
         Kp/qR3S0vfBXy+eyHQdMl1Kg1Ell/Veb+eFyVFoTrD8if6Rc4/83TPXdMBAvKNFyjoDY
         nsvDhdETUF78rnXXjNRZEpRTONEA+xxijLuOjmuz4LBbkEk0Om3j2+1JgunCDqHmUXSo
         1IQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature;
        bh=5SLXFo+flH/k+E0k8U5kcPa+9QVUJuSBK6v6YtVdsvA=;
        b=CjlqrvwgVlxljrtEXyWEWu+81/vEZQiXk71h/8sJe13+6Aub6AQgSeGiy165LT9kN+
         WQo+eM7ZlbN2meO6sEG4s8f27yek4qMsZ6WWN1BANlsUxFsSaKMpZJ26jft0jdzcVBCb
         XTcfSy97qL1k6hAyB9/CmlrEDrftZReX2/LA/A0NxkL+tunIMsD3PEXrDi6O2/ef/PAC
         KRrks4Iy6MVc75Z0kvj5TKD7uLlJUDb/sAwWGjQwTpa0awWp3LwfNCU+efnqJEy1pTg7
         dtz2SaC9kYsCsAmBpBaW307ynEPBjFEj7djugVjmJ4DTEtWRvAxtNzUiSF8gORPmj9Gn
         1AWg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TiuZ9nUV;
       spf=pass (google.com: domain of turnerzdp@gmail.com designates 2607:f8b0:4864:20::144 as permitted sender) smtp.mailfrom=turnerzdp@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <turnerzdp@gmail.com>
Received: from mail-it1-x144.google.com (mail-it1-x144.google.com. [2607:f8b0:4864:20::144])
        by gmr-mx.google.com with ESMTPS id n8-v6si3869iop.4.2018.10.22.22.26.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Oct 2018 22:26:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of turnerzdp@gmail.com designates 2607:f8b0:4864:20::144 as permitted sender) client-ip=2607:f8b0:4864:20::144;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TiuZ9nUV;
       spf=pass (google.com: domain of turnerzdp@gmail.com designates 2607:f8b0:4864:20::144 as permitted sender) smtp.mailfrom=turnerzdp@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-it1-x144.google.com with SMTP id c23-v6so438915itd.5
        for <outreachy-kernel@googlegroups.com>; Mon, 22 Oct 2018 22:26:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=5SLXFo+flH/k+E0k8U5kcPa+9QVUJuSBK6v6YtVdsvA=;
        b=TiuZ9nUV7P860mTnds3oZs+cOKak2eTfyR4/dhxPJImpNwplFZZE57KySJJvtOwQq8
         UeU27/SXyJwHJon4eRYGDRwiT5+JFgncBLVAiElEsLvD5ULcTS1c/1T9KNKhJo8te7OC
         Mw/jOCQ4BZ5ZWNbRGf/vEWpJEeeefP7JvpwAQUqGUFsSOq9KZaEjVQ3ApXKyvjv+bqxX
         5VOJlf/nuaMeNVkFptOYjkpr4ZqV18wlvxvNqkMJVPrYrUwSiMQ5uD8ToNH01Gyuu5Sw
         v82rVvdE7Q/BgcBTXyWaIXoHpXLJVmqMKPb5d6dMWax7ExRqeZrxLcBu3Vn1jI66MKMO
         /sXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=5SLXFo+flH/k+E0k8U5kcPa+9QVUJuSBK6v6YtVdsvA=;
        b=MKhr6J+9EuxjgM9k5s5utSqDOvp+qp92AAIpTmgXw2iTXXDiLdFvDMLrZBVQ9tFwWv
         ii8eDgCPR/4Wjvy2D3buJMpFfUy6RGXbvUsPfOrCBV//vWt2AUcPa0DMQB0M+3EmzOao
         QQ025OZ23EVPvB7+5sT0sjZA4AE4rjniz/WC8FWn7Oo6BOZMPP4lySlFL1rVoe5aJw26
         OdQ5ZKvHY3nxC4ABRtWoz8k8dGKsvr4z/8k3dyV0MNjQTANGhHsKfg6SaCr0s31Vomlt
         k17RmUnTISrISFi2K4ZL/ezKgOeW9Yz3ykrD9l2bcMeGLRDnGuB3zXEwh+S/vJg1f4r/
         UZaA==
X-Gm-Message-State: ABuFfogCXnmJag8uPCiOxImAPUBJf1A/p4npAwWShz6WYNCxLpLAafnp
	5QLW/yD+eAY5d39X5Lz1v1SfMicOVfQ=
X-Received: by 2002:a02:711a:: with SMTP id n26-v6mr35616698jac.91.1540272361108;
        Mon, 22 Oct 2018 22:26:01 -0700 (PDT)
Return-Path: <turnerzdp@gmail.com>
Received: from venus ([2601:285:300:e6d0:b8aa:85e3:42c7:79a7])
        by smtp.gmail.com with ESMTPSA id f15-v6sm244930ita.16.2018.10.22.22.26.00
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 22 Oct 2018 22:26:00 -0700 (PDT)
Date: Mon, 22 Oct 2018 23:25:59 -0600
From: Zach Turner <turnerzdp@gmail.com>
To: gregkh@linuxfoundation.org, hwentland@gmail.com,
	manasi.d.navare@intel.com, daniel.vetter@ffwl.ch,
	outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8192e: Add SPDX-License-Identifier - Style
Message-ID: <20181023052559.GA12944@venus>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Add SPDX-License-Identifier tag to the start of the file. This is
a coding style change which should not impact runtime code execution.

Signed-off-by: Zach Turner <turnerzdp@gmail.com>
---
 drivers/staging/rtl8192e/rtllib_crypt_ccmp.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtllib_crypt_ccmp.c b/drivers/staging/rtl8192e/rtllib_crypt_ccmp.c
index bc45cf098b04..8cfc2a1a5c48 100644
--- a/drivers/staging/rtl8192e/rtllib_crypt_ccmp.c
+++ b/drivers/staging/rtl8192e/rtllib_crypt_ccmp.c
@@ -1,5 +1,5 @@
-/*
- * Host AP crypt: host-based CCMP encryption implementation for Host AP driver
+// SPDX-License-Identifier: GPL-2.0-or-later
+/* Host AP crypt: host-based CCMP encryption implementation for Host AP driver
  *
  * Copyright (c) 2003-2004, Jouni Malinen <jkmaline@cc.hut.fi>
  *
-- 
2.17.1


