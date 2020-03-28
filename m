X-GM-THRID: 6809045974031269888
X-Received: by 2002:aa7:c504:: with SMTP id o4mr1601482edq.375.1585354556636;
        Fri, 27 Mar 2020 17:15:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6402:c08:: with SMTP id co8ls7764262edb.9.gmail; Fri, 27
 Mar 2020 17:15:55 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsSaoRdJGwtr2I7UpjmPCm0MqpbAVASEvNbezSr7h4fVYpj9PAKr49fzveCzCRHJwZbCk1+
X-Received: by 2002:a50:a693:: with SMTP id e19mr1664292edc.303.1585354555285;
        Fri, 27 Mar 2020 17:15:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585354555; cv=none;
        d=google.com; s=arc-20160816;
        b=pecbYa5nKQgw8PZXUecWaLmfyWGfZKLUbfWKR26v6ZW5AC1TmA5rX2Kj8vOzkaCP97
         evRvG8+Ta87byv5HQMWuu+SuE8JEezCpgWq0AG+y/p5egdrGB2Twx30hKX1M24fUDmWZ
         a6tiwmMcC7AosdIm9Kciw0A9hVQZWurdvi4KSy8njrnHPbZywf7C3Ge50Vn+4VPZ1OoR
         YhIa4OuFSDEa1B8LuLPViEje1g1y8x5D247JsR48IWNKVQjGW4NA7pjuIGus79IXIzOO
         zvEzEG1qZHM9/Pe84f07q1ojsOmDY2IHVbi5ywPpEiOwL4Pt5w2ed6RjedHow/yS908B
         Sh8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=3Jm33igXAxUdVj+j7uuKvn05Kc5ORWgLZQk1HY9T2hE=;
        b=jaoc8W8gmVnOYR+ZXAZ5Z9UwRzk+vb1PvWajSaY4v6nuIcXODyt7HEb21NsNpucvz4
         QW05SrKMjvLkY+LeZhpsWc6BD5ZBSZVCwTYCxehBZVuTypae5fIHjt3aiiR6jJivIThe
         TaRQsWG3ukbpJ/pvDSHKG5XAKx8tLlHop2Rwnfgj6hLVNt622d0ltAlTsfvCqlN/etFv
         MPQVLTajOifgG+aPvC06ymVAOi+GjrY5+hlVAbW3CkwqizNIUbIRg/nivVXUER8PCuUV
         LQkFCCJ6yuKC8jhv476sJqWMO8Ivpr9eYiYoFmyxaJYHNq2Y+53kkyfj5UWZb58C97N7
         HAeg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lv1YMlsm;
       spf=pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=gokcekuler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <gokcekuler@gmail.com>
Received: from mail-lj1-x244.google.com (mail-lj1-x244.google.com. [2a00:1450:4864:20::244])
        by gmr-mx.google.com with ESMTPS id c21si376832edj.0.2020.03.27.17.15.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Mar 2020 17:15:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::244 as permitted sender) client-ip=2a00:1450:4864:20::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lv1YMlsm;
       spf=pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=gokcekuler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lj1-x244.google.com with SMTP id k21so12072760ljh.2
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Mar 2020 17:15:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=3Jm33igXAxUdVj+j7uuKvn05Kc5ORWgLZQk1HY9T2hE=;
        b=lv1YMlsmJhVLto3ywXOHftoo9x5hoEfqQLoowJ4O4k/8YtcDXO9ndzWUs4MVIJAd4u
         l7R2d8PvV6ZW7bFusGfNykWOIudwgl9LqfwGAWzqfVkfLyhkEVjzw2nx54bKvV80088M
         GbrgEq0az6uUYN/BDSuUUwcsFlXsE7Ah5wgvJc13DcT6FyfWtmPlRmQRTnn1ZYuE6L4+
         Acd73O2cjMcPIpP/m7+37RphMsxqjdxR7Fx4IzB7pzvPC/EAzZ/Vhu70Lljctm4AS6iW
         6EIpqdIt2A+3ayr6IaMKvnN44hMF/5Zkr0hCIeEpYp5bhemgy1tfkT3pzgA7BDkjHz3Y
         vy2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=3Jm33igXAxUdVj+j7uuKvn05Kc5ORWgLZQk1HY9T2hE=;
        b=X4QROmTO7v2tWmIAXyJgeozr03dJOPuH6mRlR17XoOZzwMG1/4kah/puGj0DZmBVE4
         8rXW6mIN19MLDQ6ATegnSnbLbIWDXGoB3DpQr1xJmPmigCNSDLIpV4ExJfT6WlzZfbih
         Qk+UNb92FFBHvVLYpejDxEAuOsJ/re4u81jagX0xgVipxKgKG5wcUXG1vSYK0lQHlH9O
         5qlrpIgsM3gw6iMCZuoER96NGfqG4fmuykVtU5gDVax2wQJVgkniRv6X0tJtVeQa2TX5
         0WekG0OkTZhDfWQi6ptscSlbWNpM3mTN6dkIt5RGH7ElhPn67EAH/lwha0+Ow9X9zHAX
         A0TA==
X-Gm-Message-State: AGi0Pub99+QXxXnOj+os+NPG4CgOok9AUgcHyyPYgKk6C9twHc4XgzKo
	wDxNU80BrP7pXPS+8mA4Rk3/gaelCVY=
X-Received: by 2002:a2e:9d98:: with SMTP id c24mr781755ljj.137.1585354554797;
        Fri, 27 Mar 2020 17:15:54 -0700 (PDT)
Return-Path: <gokcekuler@gmail.com>
Received: from siyah2 ([88.241.65.149])
        by smtp.gmail.com with ESMTPSA id 28sm3629055lfp.8.2020.03.27.17.15.53
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 27 Mar 2020 17:15:54 -0700 (PDT)
Date: Sat, 28 Mar 2020 03:15:52 +0300
From: Gokce Kuler <gokcekuler@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH] staging: sm750fb: line over 80 characters
Message-ID: <20200328001552.GA14914@siyah2>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Line is split from comma and add bottom line for 80 characters rule.

Signed-off-by: Gokce Kuler <gokcekuler@gmail.com>
---
 drivers/staging/sm750fb/sm750.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/sm750fb/sm750.c b/drivers/staging/sm750fb/sm750.c
index 8f305c9..092f1c6 100644
--- a/drivers/staging/sm750fb/sm750.c
+++ b/drivers/staging/sm750fb/sm750.c
@@ -711,7 +711,9 @@ static int sm750fb_set_drv(struct lynxfb_par *par)
 		} else {
 			output->paths = sm750_crt;
 			crtc->channel = sm750_primary;
-			/* not consider of padding stuffs for oScreen,need fix */
+			/* not consider of padding stuffs for oScreen,
+			 * need fix
+			 */
 			crtc->oScreen = sm750_dev->vidmem_size >> 1;
 			crtc->vScreen = sm750_dev->pvMem + crtc->oScreen;
 		}
-- 
2.7.4


