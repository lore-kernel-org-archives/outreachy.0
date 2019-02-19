X-GM-THRID: 6659597331609944064
X-Received: by 2002:a0c:950d:: with SMTP id l13mr15322365qvl.20.1550558333102;
        Mon, 18 Feb 2019 22:38:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:4ed8:: with SMTP id c207ls7565866qkb.1.gmail; Mon, 18
 Feb 2019 22:38:52 -0800 (PST)
X-Google-Smtp-Source: AHgI3IZHj0Vanf7c6c+Wuyxz6l2uF+BTpyyoKXBiQO6O/Na4HBbov6joqqNKlT4HuygCft/yPjkg
X-Received: by 2002:ae9:e704:: with SMTP id m4mr16145211qka.52.1550558332466;
        Mon, 18 Feb 2019 22:38:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550558332; cv=none;
        d=google.com; s=arc-20160816;
        b=rFPXZeoQE2j1KtHxzlBwPKpkRaWMNLZI3m1lNe4V6qvkDuwgp4E4yCvdkXkXKDy95z
         Vo5e9kzsgLOV1SmHWEQyFVJExziqV1qimlqFYV/YIY3y4fU3seL3ifnuy07J9voExBxz
         JcYKWCNgiiwh0hjy6zIWsbbe+kT+S9Y6+nq8QfZH5u7dduJ4z+nJEQWhGHCKTInCPdzY
         LAoU9bNTSsxis23tsrMxbDmzKXC68ZGcnKnvoj9lVh2RrMbHV23kfnhMoA8HYYMqVNtq
         18+gDLGzv9Wio4d2QLZ3ZPYR97e/nWSqaTNiCGp8xqIQLMppTuZgpxKkOJczXZuwxyIL
         /LJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=tnsXw3K+UAIaAoQS2ZVROfH4r7yV6VdpIgTsQ5y8udE=;
        b=SQqx9WvsVBROsvim0TgxkjdXLGGf5nt+QLb0ZDCdITekASc4UG7CJ1lfHaSMJkSkTe
         /N7GunmuXxClVzUaDkSUUQ0IB0ociHbaaBOarelZnHAD9UnFBwMwhd42Zx88IE+iW1NS
         Z/vy9ZnA4RDXowCjEgZogsz/CMRIuCsPbosv6iLyuH53yFKoksGYZYY74r0BYE7+vTWB
         SBi5mgKp8aY+LbY0RIxiA9V0z3JoUBP+KFDtHBEyqUbfTiK5pxhe3TCOvIRAoXmF1XPn
         HIB0Zj8GgF5LHkV3VSuL3h2vXtH1RQ6ps9Um6k88B30itbDFnhbcXKRksdtBUiWsh2jE
         NHAw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ER3YDfDS;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id g23si136244qtg.4.2019.02.18.22.38.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Feb 2019 22:38:52 -0800 (PST)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ER3YDfDS;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id s22so9751215pfh.4
        for <outreachy-kernel@googlegroups.com>; Mon, 18 Feb 2019 22:38:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=tnsXw3K+UAIaAoQS2ZVROfH4r7yV6VdpIgTsQ5y8udE=;
        b=ER3YDfDS4lCuT6zOuYy7LktezqiwPLASE4U2sOcVPgl6XAKNH2bPBseUZVUf++cCVj
         vqgg5KvcBXtTZhfQZM+IQ2AMNLjkC1pJDN+cytGJACgjuoEuagE8gQkTZCIjyS5T3M8V
         S5iY1sCiF5qglbDsReI5sPLYbFoK8rwNNmpz12mJsXx/aAXvje8e5vLvQ3+Gmm6IrJD+
         zbtLn+rF0NdHNpPHTlitUIh2a7Y+94w2mBMiTqEbPcS0dzvQbSDoTMo+uc1lOjlNoEZ2
         e21LZKvuJzUl3aRpgirVSQ0TLjYNBQeCPxBB9hEDSkswvtw1MjZd6UJ3MHpGdHjT7XSa
         JmdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=tnsXw3K+UAIaAoQS2ZVROfH4r7yV6VdpIgTsQ5y8udE=;
        b=PbjJ34LIhgP3+swmTVtaJBN8EMjX/lBupKZhYOA2kuOQbNGoHr4Ef5cZHmEEpAN2tV
         oQTBZEtZSrcDsJUeH1I/4g4sLwAmwl5KMPP8vpzYfzKIti0Dvj8TTe0JfCscq7Zn8H5C
         UtCSFzHWXLimCk2NU+WL/euiHKeLQkZTUQQ+ZoN7neeV5kpEovmI1+98x0x2B/rXt3mQ
         D6ff8G06JcxfGMT/rjhxWYhjVNKE5fZGUxmZ/5Bt8kOFc5ROKsinD1JFzoIq280djSDd
         KCmgsKFO6RROejEc5rVH+f3SYr0LzRT1xCHaretAqQx4eGJtimCnJEzhGEL17EyjXOPn
         v/KQ==
X-Gm-Message-State: AHQUAua5GIn1o5aFuAvqqvl7E4u0h0OwXWOTwQ3Sd9L7rvhn7ODUONA6
	JaycsZ7Tp2RS3PcHWlneGCU=
X-Received: by 2002:a62:9913:: with SMTP id d19mr27997423pfe.107.1550558331607;
        Mon, 18 Feb 2019 22:38:51 -0800 (PST)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from bhanusree-MacBookAir ([183.83.84.116])
        by smtp.gmail.com with ESMTPSA id o26sm11069769pfk.139.2019.02.18.22.38.50
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 18 Feb 2019 22:38:50 -0800 (PST)
Date: Tue, 19 Feb 2019 12:08:48 +0530
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Matthias Brugger <matthias.bgg@gmail.com>
Subject: [Outreachy Kernel][PATCH]staging:mt7621-mmc: Prefer using BIT macro
Message-ID: <20190219063848.GA2994@bhanusree-MacBookAir>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Use BIT(x) instead of (1<<x), reported by checkpatch.pl.

Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
---
 drivers/staging/mt7621-mmc/mt6575_sd.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/mt7621-mmc/mt6575_sd.h b/drivers/staging/mt7621-mmc/mt6575_sd.h
index 4e287c140acb..038a484a9476 100644
--- a/drivers/staging/mt7621-mmc/mt6575_sd.h
+++ b/drivers/staging/mt7621-mmc/mt6575_sd.h
@@ -363,7 +363,7 @@ enum {
 #define MSDC_CKGEN_MSDC_DLY_SEL   (0x1F << 10)
 #define MSDC_INT_DAT_LATCH_CK_SEL  (0x7 << 7)
 #define MSDC_CKGEN_MSDC_CK_SEL     (0x1 << 6)
-#define CARD_READY_FOR_DATA             (1 << 8)
+#define CARD_READY_FOR_DATA		BIT(8)
 #define CARD_CURRENT_STATE(x)           ((x & 0x00001E00) >> 9)
 
 /*--------------------------------------------------------------------------*/
-- 
2.17.1


