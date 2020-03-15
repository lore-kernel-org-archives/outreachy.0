X-GM-THRID: 6803435195586314240
X-Received: by 2002:a63:7e52:: with SMTP id o18mr24928010pgn.46.1584315758143;
        Sun, 15 Mar 2020 16:42:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:bb93:: with SMTP id m19ls8463371pls.6.gmail; Sun, 15
 Mar 2020 16:42:36 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvs3g8ejILd3YOrca4xiQmJdzNyPNjZYhUJIUshQK+TlMsM0PkAUpk1wCR5gQq2rWNQVRBx
X-Received: by 2002:a17:90b:1a8b:: with SMTP id ng11mr22388318pjb.194.1584315756916;
        Sun, 15 Mar 2020 16:42:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584315756; cv=none;
        d=google.com; s=arc-20160816;
        b=PasY4I3skEkYpitCSqaC7j1RGrzO2AZBG7eihQkWxAJ6TG4/mT8kK0ZoYJmloJf7qr
         q1idj2n0Sd7orp73kuKbkGwm5kfODsZrHnpo6IJ+eZqE6q9ryePkut2YHZ+MemIJSsWU
         jmfdeTVWTJE8eO5PEc8hPhR6Qso3crv0zvXtFdemTIslMECCQuDlrqhZjsStMOSHgrpx
         7qvokYcZqRs5cX2r/xe8HheOrITWSu9OqHvBRbWuTDefG/NiVqymv/epq7R064S1iePB
         5DLLNP4nHtM1K65o519G9bi5EaGvAXbXnbGo86syIenqhFXXfh6ZRK2ypuHK9wA6RnfT
         xYIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature;
        bh=OiYFiN7r5PZBfEI5nNvWaJtuVilNOB3Hezn8WfxUlVo=;
        b=r303vnv2cgbl9W6WkALeDHgfWv3+C6c74miUKpvnyi7pU5D5AiEWe00X2SF1oBAEcD
         A3sEAcFwQTY/wgUASV3/qoxL2SEqn/3vx6F+I+a4k7nemrCifGJzOh9+sNHsI+ViXat/
         oIi5E5m6DY1TJzJx1nAGhP/kLo0tto8TSDN7J0r5SfNiGHw+xqmqpJYkXoViHzG0NnpU
         9iHbMUVF46ct82qP4h8uF5mhJSrYcsc5rV1axVpvNR5oErPiygbbva6g4Kdc3MlUjGYs
         gSqmLLhLGSmTCAyajOx5Y2bn5vXdgJB7CuJIalfpVzu+cPjzjVQm0TZ/4hJWqCYPu1dQ
         C71A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QmHRNCH3;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id q2si1344462pjv.3.2020.03.15.16.42.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 15 Mar 2020 16:42:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QmHRNCH3;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x542.google.com with SMTP id x7so8643729pgh.5
        for <outreachy-kernel@googlegroups.com>; Sun, 15 Mar 2020 16:42:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=OiYFiN7r5PZBfEI5nNvWaJtuVilNOB3Hezn8WfxUlVo=;
        b=QmHRNCH3fR9/V1cTODSFZ+yCWAAyRmoG+6aqHeLXvx/qYvCnvutgZfI4Kq/gBFKkrs
         mzNjOJP50QE6Xb1JGqgwdKeZHEk0iFTfl89f20KNpmAaG69q3ALQtxI9fJNKdcCIXAAI
         xBel9+8zT8hPNXlibldvNIYtACWuLHJsbDCaw/CGI3SyKH+EVQqvenUB1zHlJ8swDnTR
         Ak3bzG4yZlHmxnQuPxUhPc31uD/Naea8sIvnoMJIgpb+XcGgqsxsrdqx4sf/At19nfXz
         Acj+Wgo1qibL2k9rc25GHZhftFI4RQrDtACTkG0JUd+g8A1VsbqJRLDfuwBqZN58otj3
         OkWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=OiYFiN7r5PZBfEI5nNvWaJtuVilNOB3Hezn8WfxUlVo=;
        b=p5SMMv6RXGtQbkKMqK+c2vdAIPl/a1kIxYugGm+xmNAnmagB0ZInx6zegtEgKkd9CS
         sqbr2fGn3kau92KaN0iLZNNQrB0bnhqz7VA30EGqmq4RIgArdYd84p9XMkH8ziQfMNoW
         +T9FA/1+H9dZn0FVizf6TJKO9IcamOTjhKVjLn8tPTcm9+hdpV+AdsZjJ7JAjbWqM9pI
         AfrHgkwd9k8btAPbghxAIvMZOULHLVzjzZ/gIU2mIcYbhNM3JKgYxaxna5EfMy037uII
         3bGsUMPDXkZ0u4THDmPWtT3LihowgH6gBAMCm5wUidaFePqjfdCfIVmIDiLgzR3B1CmY
         opnA==
X-Gm-Message-State: ANhLgQ1PuAN2hddGJ+8cqjl/R/ZSSixzEZXuj1PREtIpvdAb5ZIzTV/w
	b8b9v7Y/5CeKd3y/m4Rb0Ck1bPqS
X-Received: by 2002:a62:8247:: with SMTP id w68mr25578674pfd.146.1584315756366;
        Sun, 15 Mar 2020 16:42:36 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from deeUbuntu ([103.241.225.138])
        by smtp.gmail.com with ESMTPSA id y207sm14430136pfb.189.2020.03.15.16.42.34
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 15 Mar 2020 16:42:36 -0700 (PDT)
Date: Mon, 16 Mar 2020 05:12:32 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
	daniel.baluta@gmail.com, kieran.bingham@ideasonboard.com
Subject: [PATCH 4/4] staging: fbtft: Avoid potential precedence issues
Message-ID: <5c8520a5c3da453460608deee9a25232d52f4513.1584314604.git.mh12gx2825@gmail.com>
References: <cover.1584314603.git.mh12gx2825@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1584314603.git.mh12gx2825@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

Put parentheses around uses of macro parameters to avoid possible
precedence issues. Problem detected by checkpatch.

Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
---
 drivers/staging/fbtft/fbtft.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/fbtft/fbtft.h b/drivers/staging/fbtft/fbtft.h
index 81da30f4062e..76f8c090a837 100644
--- a/drivers/staging/fbtft/fbtft.h
+++ b/drivers/staging/fbtft/fbtft.h
@@ -406,8 +406,8 @@ do {                                                         \
 
 #define fbtft_par_dbg(level, par, format, arg...)            \
 do {                                                         \
-	if (unlikely(par->debug & level))                    \
-		dev_info(par->info->device, format, ##arg);  \
+	if (unlikely((par)->debug & (level)))                    \
+		dev_info((par)->info->device, format, ##arg);  \
 } while (0)
 
 #define fbtft_par_dbg_hex(level, par, dev, type, buf, num, format, arg...) \
-- 
2.17.1


