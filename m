X-GM-THRID: 6634615271359250432
X-Received: by 2002:aca:ed17:: with SMTP id l23mr581318oih.48.1544741744492;
        Thu, 13 Dec 2018 14:55:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:bea:: with SMTP id 97ls2422351oth.8.gmail; Thu, 13 Dec
 2018 14:55:43 -0800 (PST)
X-Google-Smtp-Source: AFSGD/XHfns1QXr6wyZyIn/DHIouQw3FPC78ixRWZ14dMQ2aLrAnA4vJ95JyM4COu/O6YykHvX3V
X-Received: by 2002:a9d:4803:: with SMTP id c3mr601653otf.2.1544741743860;
        Thu, 13 Dec 2018 14:55:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1544741743; cv=none;
        d=google.com; s=arc-20160816;
        b=dIUZLvKApHvPz95OGhyEaUPtu7cRfyBogEGMm2ntG6msNL+mHh49koUX2mthJFeryu
         QCnhio/CtRmfMHsGXL/aAWMj7LRWKe/90OOtAZKS4wI5Mog7RvsrePRiRYopfewJGnst
         289Swu54XMk7HEa+BW/SvMPGV0iWuO3exmY9r1pxQKO+S/WKtVJAEJoY/wVIFBHu69sN
         LyppgJNkXGi9UIxBSp0i6h5/W6HjYaH5bNrOB4hFv47k/60HfG7p+zzlwg+9G6/mkgvt
         NOICAg4HHiUzQWU5XUHAhtKsGjoYKKETRHvO5AZ3KgXkRftFXpcvSkoi36CBOr8Jp3jH
         t96A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=FlmgjsOljKHoCliMfpygHF2ImS5ElP2rgSghsY1VUG4=;
        b=XOtrzwiH2XhTayR3KCvxsyd9uuEhqnbguoOd0o6IBLHuXH1F/msZ0pe1d671glK9SM
         xWC8uYFH2a+Vls8zoV6FbfVCrSymS3pQeIEA+ZJ99rlCqVybrgG3xQXaelyM8JxESwqj
         8a3UEHopcft9Aa4oBR2CabwMlQlc1fJ5y04zCHoTIZnj8pjYrQ1tlSALkWul/Oio4I3S
         v48/uYLP3brlFn/GkO5WLZRuP2GAB4Cig1Q9EdCt3fNEMuyEG4L4Telharxwtf+L1XFW
         85aQBOS/DPtnf2k6pCkS7vnfgv2UmKkB1RgS8H52ChnLRfmsJ0Wjo9FPZJF0ZlwOCqLs
         Q4cQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WJmU4cXa;
       spf=pass (google.com: domain of shayenneluzmoura@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=shayenneluzmoura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <shayenneluzmoura@gmail.com>
Received: from mail-qt1-x842.google.com (mail-qt1-x842.google.com. [2607:f8b0:4864:20::842])
        by gmr-mx.google.com with ESMTPS id 17si92607otj.4.2018.12.13.14.55.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 13 Dec 2018 14:55:43 -0800 (PST)
Received-SPF: pass (google.com: domain of shayenneluzmoura@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) client-ip=2607:f8b0:4864:20::842;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WJmU4cXa;
       spf=pass (google.com: domain of shayenneluzmoura@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=shayenneluzmoura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x842.google.com with SMTP id k12so4182721qtf.7
        for <outreachy-kernel@googlegroups.com>; Thu, 13 Dec 2018 14:55:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=FlmgjsOljKHoCliMfpygHF2ImS5ElP2rgSghsY1VUG4=;
        b=WJmU4cXa0SW769aIk9PD188enT2/HNUcJX2GpnuZiILCQOlhh4g1qR1PqNmjn4vd+b
         mvxokEgskfZpD7IbSwnBWmmVfjxtu07gyNv4LjVfNDIOEDH4HrUQ4WHRnofcSGmFr5rZ
         t6P0U3EphYSWspgpBthiTCUX5cPnm6kKZIxLW00O8QlEU5IgKGmGE4Bf+YtwZBfnNyxe
         ndqjWBZY2e3I2TP4YVMQJtBX1chDyEtSzUt35qDHLPXtvv20YMjop4hyKsHq+JEKjk2F
         RrVCo7Hq5n6lv/E1q7NbF4wgO/Bo5XoeyIglFgp1Kr8lTYDJ87nOf0hKXA/KHKqGEzBe
         bNfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=FlmgjsOljKHoCliMfpygHF2ImS5ElP2rgSghsY1VUG4=;
        b=joDBwt5bqITQne5dEsi+zPTf87iAlSkrae1gp7KGKkMJN0/pxaRxakbmWGEvM83oyW
         l68wqrra8U0t7zVLGtzHGv1qri+SBwpewOq0n7vepnvwDORVL9mchjRP7OAPGLOtgZeu
         Ih5jarGhuAjWx7ahA6YWUBEUAes49RayWLQw7BSOLFH1RU2ndKUO+jUSLb1KBfSF2mMD
         L4Tvui3il470BwQ9F4r28F36JnXftDYmjJyRf166osNmPcUseFbhlKXxPMRCgY0Y/BF0
         Mjx1pYxm5JhPj0t1Bbgx4S8TDZLddDNE1OCDpq8j2SZ9TEh0QddPMyy7IZIZo5Qoo8i7
         Rhjg==
X-Gm-Message-State: AA+aEWZp/szHhpajQHPZ9Kbakh/dtz0uwwIFDc/2wmc87LGtvttFOYfw
	L2MjITrxtjAZwtBDB0+rzXY=
X-Received: by 2002:a0c:9144:: with SMTP id q62mr643242qvq.87.1544741743495;
        Thu, 13 Dec 2018 14:55:43 -0800 (PST)
Return-Path: <shayenneluzmoura@gmail.com>
Received: from smtp.gmail.com ([143.107.45.1])
        by smtp.gmail.com with ESMTPSA id m68sm1723068qte.49.2018.12.13.14.55.40
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 13 Dec 2018 14:55:42 -0800 (PST)
Date: Thu, 13 Dec 2018 20:55:37 -0200
From: Shayenne da Luz Moura <shayenneluzmoura@gmail.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <maxime.ripard@bootlin.com>,
	Sean Paul <sean@poorly.run>, David Airlie <airlied@linux.ie>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH] drm: Remove complete task from TODO documentation
Message-ID: <20181213225537.nq4dwidn6tma33iv@smtp.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20171215

This patch remove the follow complete task from TODO documentation:

  drm_mode_config.crtc_idr is misnamed, since it contains all KMS object.
  Should be renamed to drm_mode_config.object_idr.

Signed-off-by: Shayenne da Luz Moura <shayenneluzmoura@gmail.com>
---
 Documentation/gpu/todo.rst | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/Documentation/gpu/todo.rst b/Documentation/gpu/todo.rst
index 14191b64446d..41da7b06195c 100644
--- a/Documentation/gpu/todo.rst
+++ b/Documentation/gpu/todo.rst
@@ -354,9 +354,6 @@ KMS cleanups
 
 Some of these date from the very introduction of KMS in 2008 ...
 
-- drm_mode_config.crtc_idr is misnamed, since it contains all KMS object. Should
-  be renamed to drm_mode_config.object_idr.
-
 - drm_display_mode doesn't need to be derived from drm_mode_object. That's
   leftovers from older (never merged into upstream) KMS designs where modes
   where set using their ID, including support to add/remove modes.
-- 
2.19.2


