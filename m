X-GM-THRID: 6952150809139216384
X-Received: by 2002:a05:6512:3681:: with SMTP id d1mr3495256lfs.495.1618673747078;
        Sat, 17 Apr 2021 08:35:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6512:c22:: with SMTP id z34ls3729754lfu.2.gmail; Sat, 17
 Apr 2021 08:35:45 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy2BDqw2Ve0cLFgXFr9uEalwZFv8wW7KdzbPBHMJOAIL7c9gCT4IK1SS8uKjZ8RdqznP+8H
X-Received: by 2002:a19:7b0e:: with SMTP id w14mr6817605lfc.468.1618673745458;
        Sat, 17 Apr 2021 08:35:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618673745; cv=none;
        d=google.com; s=arc-20160816;
        b=jinx5s7ZccC+Zc6lcUhqY2ELQMUSfL8nuXmk4JODOA2V4yBYTfn7+3USapsZwJk3nk
         N4w3aSPFn81aKvXCmjivga6cNkCepZ0P7/Jt/3ePbZqudJ4qA7KZhTUYJxwbt86yPpLJ
         YMhyVGW+yAufQ9fEH/e/elPA9E8aOUgn6il3N/xZGzou+1RCaZ3FBtcVmcAuHaeUVW2r
         kUHBSVlax3r1VyZH2qc9HTqywJ5iGxOIOs2GITSPErijXC8fj0I3UUae8FZ1TWbHHopF
         tCuXHyWq14S4p+Pd4Qxa+T/LOdEr0TXtAqKk7EWhM89FLgJZ9Ha/d0Jdz4cdIJdZ0YfQ
         dz7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=95k7us3S0EVfXXTef/Cp2MnyUY4IkdXtTZcLiNqfFkw=;
        b=wft1mvwSS5m/FjEFQlEfMxy7HxpO1OMxlXRHayQMpKq3QChPmGvWOWuo6dg3ZyXZoY
         iNevmqU2rNk0K1OTXmI6VvzZVd67WvflDrblaa+rS+8KjkgCW1mWyY7HX5pVF0ouo6CX
         yGRGq6GtwOfl/dWbo/HL7dsO5C0j3MjYnlpb/7hrm+l8IpBl4Lefygggh1F3a8VDJspv
         svSnxRKsJzPvHGprfDs0BquEwQbGAsN9VAirhzX4rd/eJ3HIYJT9yzsPgWpiH318AesY
         BF5cHj6pizTfEgiywkKAqameuxyzVwv9zXlHqrYON8c2z2JxTHEPuxDhXbFiYY8rc7On
         k+3g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=P90KopaV;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52e as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com. [2a00:1450:4864:20::52e])
        by gmr-mx.google.com with ESMTPS id v3si556715lfp.0.2021.04.17.08.35.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 17 Apr 2021 08:35:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52e as permitted sender) client-ip=2a00:1450:4864:20::52e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=P90KopaV;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52e as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x52e.google.com with SMTP id d21so15584706edv.9
        for <outreachy-kernel@googlegroups.com>; Sat, 17 Apr 2021 08:35:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=95k7us3S0EVfXXTef/Cp2MnyUY4IkdXtTZcLiNqfFkw=;
        b=P90KopaV22vpZbHNYLrl8cx61pnUeDJXZaqv2xJVGGI9X9sOqH2GwpNVc48J1gbQUo
         ngTvIDx9hTuGxl06vNYjLTaKVdQojITh1dwEuo+LhVaYFNUciRqAY0N/dkg3jpUTAcBu
         vrl1jKb1vISr+KVpIOde3BTVDvzZ86iV4ouNew/lpv+dP36PRWrBM1A3S4WA83w+YPA+
         hJyCd2uvcFwQt6b+Mu3ZctmPNBXuIuIybJMkHwr+zSKUfj5gKbitDM6xt9aX7BBpjLLb
         7NXf0OM77TGsq8Jzn6dqMBPK1B7w6PTJlQuighiCLSNh+fAkbYi8aa2pMjBeEGULNoyC
         xR0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=95k7us3S0EVfXXTef/Cp2MnyUY4IkdXtTZcLiNqfFkw=;
        b=kutZZJdL+RpF2lUeC7owwTPCZg9/OKko4cv0H+OUxtuk85Ykb5cMgYU+bBtUeCL8lH
         hsu6YvVHA3ojHRIeGcHusEptmLWxUuh6fh+kf5sF7Sd2+x/0Of0c0BLY3XeRosX11p1P
         AZfyf7DiPghMNTNb3DFSbrMpQWM6ckFU4dSjowR7vqrSgjdSPhTaaiDWFxlVr1n6oqgy
         gqEMQddxr/EgEV5ytJAiXd57b7VbF42DjaAyPNbOMWNyUtH9g8J+1cIwqwCcBMB1bbr+
         +HP/Cf71FpV9xhT2dV1zo5HvI2H/+ZsIKqD/Z7veZnKVnEwsD09LOvD7k94QcuemL+E4
         r0UQ==
X-Gm-Message-State: AOAM533YKfF2LpoV/uXvN75uhs3s7F1WJI8Y3ouIsOgH3IL9MqolBPeZ
	lOLRvV3Wshg2p6zdIDwG8sgAVQSAaI3zuSwS
X-Received: by 2002:a50:ee88:: with SMTP id f8mr16346181edr.69.1618673744809;
        Sat, 17 Apr 2021 08:35:44 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from linux.local (host-95-237-55-30.retail.telecomitalia.it. [95.237.55.30])
        by smtp.gmail.com with ESMTPSA id x9sm8396491edv.22.2021.04.17.08.35.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Apr 2021 08:35:44 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: outreachy-kernel@googlegroups.com,
	dri-devel@lists.freedesktop.org,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@linux.ie>,
	Daniel Vetter <daniel@ffwll.ch>
Cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Subject: [PATCH Resend] drm/drm_bufs.c: In switch, add break in default case
Date: Sat, 17 Apr 2021 17:35:40 +0200
Message-Id: <20210417153540.22017-1-fmdefrancesco@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Added a 'break' in the default case of a switch selection statement.

Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
---
 drivers/gpu/drm/drm_bufs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/drm_bufs.c b/drivers/gpu/drm/drm_bufs.c
index e3d77dfefb0a..fc40aa0adf73 100644
--- a/drivers/gpu/drm/drm_bufs.c
+++ b/drivers/gpu/drm/drm_bufs.c
@@ -79,7 +79,7 @@ static struct drm_map_list *drm_find_matching_map(struct drm_device *dev,
 				return entry;
 			break;
 		default: /* Make gcc happy */
-			;
+			break;
 		}
 		if (entry->map->offset == map->offset)
 			return entry;
-- 
2.31.1


