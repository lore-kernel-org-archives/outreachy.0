X-GM-THRID: 6949956774560530432
X-Received: by 2002:a05:651c:105a:: with SMTP id x26mr5384624ljm.158.1618162909945;
        Sun, 11 Apr 2021 10:41:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6512:3b95:: with SMTP id g21ls666232lfv.1.gmail; Sun, 11
 Apr 2021 10:41:48 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzKuq5+dePinmKyxjVCGPg1wIO6quyyx3SFGcopivOxpTAHtsC8sLckmH7yq3gFh3xglzf7
X-Received: by 2002:a05:6512:3d8d:: with SMTP id k13mr3268905lfv.494.1618162908344;
        Sun, 11 Apr 2021 10:41:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618162908; cv=none;
        d=google.com; s=arc-20160816;
        b=Mo0qta79luBsKR11q0Zb/ePK7sK5S1+WfCMB3R8fuHItxtlgmhYN+ZFWUcupud6qrC
         iZFL5vKyEzxk/QFw6yW4gtj8VnnSDXHMHlDComfxKj/2flAxjbGbL07R/zdGlBU+WboF
         pvt19v/U0mG2ZD6VyD9wNFt3kFm7lxdLXmCe9poIBrLrNV2d59yx1LKmnpbBuGK+bx76
         DxutmGWUT9lcWBBHvCtkDWJhco0VePU2rvC4i/O1BD2kF48QlOV2jY4a/P/gczjBUWpI
         Rdf08eCmj3LJmSlpLwnVz/dWgtINdBgM+4z4pMaaZ/MnT3+53rH/vmg4JcC63XdaYuNK
         mwdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=u9+q96TK9VMf/Mx9e4OxGt+pQceSuNr0TnGIlmL4TBw=;
        b=hXvXQTCLzKNLlwd5Clics/B8VJdKS+K8XIo4wg9OeN+1I/R28xHDiV5yRjUnwDUN4Y
         m5AtnpQEhgq4H6x7v+6oEUoDB6yBwvJTRnvAqvvPoHwV3oQhd8CwSPaF6KsHDw3745JS
         zKcooJl84IOs/uMQfOJwXjEC27gJ1j1RkdGbsC5EglpdwULBF0ADNKAML7EkyO/NAjQ3
         qNT0nQ6fWFHAIKW2lBWBVAACuaQqsPNL97VDUQ+JSIEQ/SBYVe9TaoXE5w1A4oKxdc6/
         pvuv5q3sBUVGdpCOmhL3S78dyxTdMeo7JxugLovwr58W2v7msegRxQI4DJLRL/APEeVQ
         2wyw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SLXnMCA6;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::631 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com. [2a00:1450:4864:20::631])
        by gmr-mx.google.com with ESMTPS id p5si554807lfd.4.2021.04.11.10.41.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 11 Apr 2021 10:41:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::631 as permitted sender) client-ip=2a00:1450:4864:20::631;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SLXnMCA6;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::631 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ej1-x631.google.com with SMTP id w23so657127ejb.9
        for <outreachy-kernel@googlegroups.com>; Sun, 11 Apr 2021 10:41:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=u9+q96TK9VMf/Mx9e4OxGt+pQceSuNr0TnGIlmL4TBw=;
        b=SLXnMCA6lSvQ/t3X22xC8QjMk3XgUQWveaJOgAHqeosdtLKAT3sEAh+qTDI4eCw0UP
         EFXK8S0qwufXkGzUOFxzEfrtvrO0Y7C3qWuGIHamFVGHw6PlWtZpKjdcE4y7K+oPC4C3
         7pfvay3HYuNPlTcpq3+2LiJoRbyHKOAvzGI587fTFJT7hq/ctBNrUFMX5qhBmToMlg3R
         hbRUKENMA6wp2SWlPc7ja/OoXKI0LQbctAwyp8DFzPYECNJfhFwWsgy/ytDOS6GtFmBb
         7WxkHhcP1zP6EDArdo/v9DBWUNd2HPWCVrfTQ0Q/MV8IBwKnIzCvdBRjbKFhmCIkEri0
         XYhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=u9+q96TK9VMf/Mx9e4OxGt+pQceSuNr0TnGIlmL4TBw=;
        b=mZmwfYKgpJ3nYwv4/Z39Zp/YVeyLSVJAXmZ0Grr/LUAc2bpD7bAgHxQiD++A8hUcVq
         xnTr8jRshQltenjANxUfNXxXzVEObUqfUZYuDH6wu50eEA7CgMlGPYN0iztpGzFi35vb
         /4b/D9DmaR5q2dn8bDXRgexAdeQj7msKnxr8kbQV3Wu8hrddFpCdcnj7j1FdtorwGm0E
         d5O+3MCl2eE4VQQ7B7e2ohtSzccVbvL7VhZ46eJzGCr908GSNTJnbQn4rufxtlSKGrFk
         r151Ls+6l68oNdnaQxp8DyGbLt8vhEPVvIjjU5Sr/qTQp2lrJUO5gN8wp5hytOp5F4a4
         gSKw==
X-Gm-Message-State: AOAM531T/D2ParfzPHMX9Sa9fXn7SkcFP3ER7eWp2uDQ4fVDjmfflC1q
	esLcfILnYFVq9rI+bUEvk87RJgd+9vHAYKBz
X-Received: by 2002:a17:906:c0c8:: with SMTP id bn8mr23728409ejb.445.1618162907860;
        Sun, 11 Apr 2021 10:41:47 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from localhost.localdomain (host-95-237-55-30.retail.telecomitalia.it. [95.237.55.30])
        by smtp.gmail.com with ESMTPSA id cy5sm5166359edb.46.2021.04.11.10.41.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Apr 2021 10:41:47 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Subject: [Outreachy kernel] [PATCH] staging: rtl8192u: Remove variable set but not used
Date: Sun, 11 Apr 2021 19:41:43 +0200
Message-Id: <20210411174143.31618-1-fmdefrancesco@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove variable "int ret" which is instantiated but not used.

Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
---
 drivers/staging/rtl8192u/r8192U_core.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/rtl8192u/r8192U_core.c b/drivers/staging/rtl8192u/r8192U_core.c
index f48186a89fa1..30055de66239 100644
--- a/drivers/staging/rtl8192u/r8192U_core.c
+++ b/drivers/staging/rtl8192u/r8192U_core.c
@@ -902,7 +902,6 @@ static void rtl8192_hard_data_xmit(struct sk_buff *skb, struct net_device *dev,
 				   int rate)
 {
 	struct r8192_priv *priv = (struct r8192_priv *)ieee80211_priv(dev);
-	int ret;
 	unsigned long flags;
 	struct cb_desc *tcb_desc = (struct cb_desc *)(skb->cb + MAX_DEV_ADDR_SIZE);
 	u8 queue_index = tcb_desc->queue_index;
-- 
2.31.1


