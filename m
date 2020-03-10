X-GM-THRID: 6802571997822844928
X-Received: by 2002:a19:98a:: with SMTP id 132mr7167373lfj.171.1583847219702;
        Tue, 10 Mar 2020 06:33:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:a58b:: with SMTP id m11ls2456401ljp.0.gmail; Tue, 10 Mar
 2020 06:33:38 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsvyd1QFFwbfdev/nkuSinJnKRu4Y5PPObK2eWAlwfOIbj7+dq9mD9GXgsarxL476zIJF8l
X-Received: by 2002:a2e:7d02:: with SMTP id y2mr8982018ljc.62.1583847217941;
        Tue, 10 Mar 2020 06:33:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583847217; cv=none;
        d=google.com; s=arc-20160816;
        b=qYWioaB3HuiQm1b2LfHv0u3CZ3oNr1X2yPztk7ZmzBxy9P7PKdRas4mbXf2M0z2+RQ
         9AeV6o+mwVtrsDnwU/44Q0k8B+eemqp6Ui1+5rYR+o7vPcu3gZIkEbpLTGDDE24wQMES
         qmI/ASXpKZogHSquyFAd8EYEnaDvVc3Q1Qn+m44LB94GxY1eAaYxUelyuXFGiOvPkRnO
         wFg6iqgwbfOj5bir6t42Fnw5mK5TzjygWFggnmfeIt4KEpqQkucHxYPSV5/DMcG2EGT5
         yQFpL8dlFKKC5dwjJwuN68w+r77Oxn/1Q9yo+KVseXECLn4CzgJOOONnYnReeV0vGyQX
         wR6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=4LUrmGstzTweMklgAelu4ljhBa90Xh/HUDk8h/5M5B8=;
        b=OYomb8Z6xD95tTLEwIdbUop3ZBChxIMGkWy/vsghTTZiQVNfpW3V9Y/+hIZGgz185R
         8rPngH9qTh0j4QBpXLisNVKJF87fU4GoFIajwMjwiYEhyBET9CVZOcHumWSyAz+/RAmc
         xrPzszTYXEnG6y8xfr3TZPLX3eXxia/PsaIHzGrEqrfzi5L3KqQy8G8VttyY77ZsTReG
         CBgx+87wJ5nFs4U0Yh5hp0BOFjYd8w14aPZ2lP9o7mbSO5pUsOypYh4bGb3wZWZzl+bO
         /XXSGzEk1E5RdzwDJQCpWDduafKsaV9LfxZg6T3VImel9kanGWlzXw3+lFm9l9wc/pZf
         W7YA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=F0qmS5R4;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=lu@pplo.net
Return-Path: <lu@pplo.net>
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com. [2a00:1450:4864:20::342])
        by gmr-mx.google.com with ESMTPS id m11si411279ljj.2.2020.03.10.06.33.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Mar 2020 06:33:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::342 as permitted sender) client-ip=2a00:1450:4864:20::342;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=F0qmS5R4;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=lu@pplo.net
Received: by mail-wm1-x342.google.com with SMTP id x3so787726wmj.1
        for <outreachy-kernel@googlegroups.com>; Tue, 10 Mar 2020 06:33:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pplo.net; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=4LUrmGstzTweMklgAelu4ljhBa90Xh/HUDk8h/5M5B8=;
        b=F0qmS5R4qJ858H4JQxDeOB4Qscbs5UBMJicj+5c/PTTkw9wvfbWhH/RPFZD4BVoVtz
         fpnPt/uUBDd3TqS0Q1+A2wl0RlRSbAhmqkvBpJPrN5dug1FywYRNZ9zaELUxO/CmceoT
         OwjehBzRW0bBdWxPB41qdi5Ck8ODN4sZcNKWw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=4LUrmGstzTweMklgAelu4ljhBa90Xh/HUDk8h/5M5B8=;
        b=P0cpRSslnY/sgyk2/LqYzs1WNYOiEI4PltiI1tIgQpBLt5xXiMaICftCMEIZDRgRFk
         BNrhIWOUppEwLyAUkfktzExeKAqTf52ItPcA8Z5o3I8PXjk1BL+W6wkEEkUtDa2N6tm1
         5PMj+42xs6MgkDrY2hICT3qHQvIrGUkz+71fvO2qISCjjHuFyn/I9XHk+CjWmYbar1fe
         BBJkFkrSlhzCFgTgAIe1HkIMIVpMs6nZaC1FKo6fgeKbYARrLNx8ZSV9P1mHENibD9KH
         VqsDzVNu030o3tyunK5VrdQE9hAY3EmtHoHmTFA1fWS14tOy/2dOzpPLTKrcExqMjAVz
         hy3Q==
X-Gm-Message-State: ANhLgQ3Kwwc81eJ+6jnShYkjkFxvXW/rMWmfAxUua0h+Oo/wMUMqSJf9
	15vEnw5FiP/0mML5w3xSYDWk4YBqjy08OA==
X-Received: by 2002:a05:600c:286:: with SMTP id 6mr2315622wmk.56.1583847217087;
        Tue, 10 Mar 2020 06:33:37 -0700 (PDT)
Return-Path: <lu@pplo.net>
Received: from localhost.localdomain (85.251.42.187.dyn.user.ono.com. [85.251.42.187])
        by smtp.gmail.com with ESMTPSA id f4sm10462018wrt.24.2020.03.10.06.33.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2020 06:33:36 -0700 (PDT)
From: Lourdes Pedrajas <lu@pplo.net>
To: outreachy-kernel@googlegroups.com
Cc: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org
Subject: [PATCH 2/2] staging: exfat: exfat_super.c: code reformatting for improved readability
Date: Tue, 10 Mar 2020 14:33:09 +0100
Message-Id: <20200310133309.8332-3-lu@pplo.net>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200310133309.8332-1-lu@pplo.net>
References: <20200310133309.8332-1-lu@pplo.net>

Improve line grouping for better understanding the course of action and where
every comment belongs to.

Signed-off-by: Lourdes Pedrajas <lu@pplo.net>
---
 drivers/staging/vt6655/power.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/staging/vt6655/power.c b/drivers/staging/vt6655/power.c
index a68ec527679a..6b0407694e54 100644
--- a/drivers/staging/vt6655/power.c
+++ b/drivers/staging/vt6655/power.c
@@ -59,8 +59,10 @@ void PSvEnablePowerSaving(struct vnt_private *priv,
 		/* set AID */
 		VNSvOutPortW(priv->PortOffset + MAC_REG_AIDATIM, wAID);
 	}
+
 	/* Set AutoSleep */
 	MACvRegBitsOn(priv->PortOffset, MAC_REG_PSCFG, PSCFG_AUTOSLEEP);
+
 	/* Set HWUTSF */
 	MACvRegBitsOn(priv->PortOffset, MAC_REG_TFTCTL, TFTCTL_HWUTSF);
 
@@ -96,10 +98,13 @@ void PSvDisablePowerSaving(struct vnt_private *priv)
 {
 	/* disable power saving hw function */
 	MACbPSWakeup(priv);
+
 	/* clear AutoSleep */
 	MACvRegBitsOff(priv->PortOffset, MAC_REG_PSCFG, PSCFG_AUTOSLEEP);
+
 	/* clear HWUTSF */
 	MACvRegBitsOff(priv->PortOffset, MAC_REG_TFTCTL, TFTCTL_HWUTSF);
+
 	/* set always listen beacon */
 	MACvRegBitsOn(priv->PortOffset, MAC_REG_PSCTL, PSCTL_ALBCN);
 
-- 
2.17.1


