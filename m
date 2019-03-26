X-GM-THRID: 6672752996979310592
X-Received: by 2002:a17:902:d710:: with SMTP id w16mr310350ply.134.1553621377329;
        Tue, 26 Mar 2019 10:29:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:3d81:: with SMTP id k123ls3201994pga.0.gmail; Tue, 26
 Mar 2019 10:29:36 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxy8HJ4IVqkcHTVpNVzh6pnk88edhl4zIVf5UvMokJEquYqcaROmvDK+8znnwlOx7gvjCQ3
X-Received: by 2002:a63:5955:: with SMTP id j21mr220174pgm.128.1553621376813;
        Tue, 26 Mar 2019 10:29:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553621376; cv=none;
        d=google.com; s=arc-20160816;
        b=Vd1/cZ1OR2DqC4XPsJLGf1DAe/6n6qgdYJQmHoz4pWzNCwYwUrFhvOwW1nb8nboODS
         uPqFKHHOwj0O43YAM2VXm1MNpLHFEYeDgq9umMDul1uROq6FlXp6RcDHS3Hj/HrVoyPw
         i3agEr7cPD/QZV7aOVqLy9bVO34mspnBynQco+owk+miPwo1U3j9xtA8dJnW4G/ABwgp
         KbGNkkS8F5lAMX/WfxFZFpNUY5GQVljCaWQcCzttzmsq23eZ0Pi3P4eLOaozZ4BaiEu2
         sOdogi9oAcG8gLiqfORL2VcHT+bycBiH62H+YC7Klitu3Y/MZHQrnd0dWZqHzMK0bEUK
         T+UA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=avitPKM/59GxzhYvdcMXuZDxdFWYRP6XU6dIYnSxoz4=;
        b=yf9+qINH7Nbu7jxzgh8FESPMemBiMAGLU5bhV2ydAe0Bf+honuASB+97M8ZfLDc/nf
         t3H/HDFVbvgtvgMGEdNEOHowa1mJ/vHsZDDBKHkidxRh+QbArTjVtK1EY7WGI+8ZHk/L
         I76Tx9IuPnWyvQ3PtUn8DQbJJE8sp1eO6sEKAySqDlXaQNUjpE1FuwPK4BItcGHB2sD2
         dTo6gndXxjGoIZKAeVx+Lp8dosskFMWFij362aYG2V8BquOFVB3sFK5tP9/wPDJmof67
         iV9fVJoHKhfNjFgoGoW9GdFTBeUycJaKIPFgl5gnVp2xIyiiXflX4dkT37poUsTKvmWs
         GtYw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nWm9935n;
       spf=pass (google.com: domain of brandonbonaby94@gmail.com designates 2607:f8b0:4864:20::d44 as permitted sender) smtp.mailfrom=brandonbonaby94@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <brandonbonaby94@gmail.com>
Received: from mail-io1-xd44.google.com (mail-io1-xd44.google.com. [2607:f8b0:4864:20::d44])
        by gmr-mx.google.com with ESMTPS id b19si1082272pls.5.2019.03.26.10.29.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Mar 2019 10:29:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of brandonbonaby94@gmail.com designates 2607:f8b0:4864:20::d44 as permitted sender) client-ip=2607:f8b0:4864:20::d44;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nWm9935n;
       spf=pass (google.com: domain of brandonbonaby94@gmail.com designates 2607:f8b0:4864:20::d44 as permitted sender) smtp.mailfrom=brandonbonaby94@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-io1-xd44.google.com with SMTP id p16so11555376iod.2
        for <outreachy-kernel@googlegroups.com>; Tue, 26 Mar 2019 10:29:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=avitPKM/59GxzhYvdcMXuZDxdFWYRP6XU6dIYnSxoz4=;
        b=nWm9935nPOksQrYrAiEQQek584yuseNcL/hrH8RgKYO/+mLOGVbNDUl3tqP/2B/MyV
         Xctnz+XuzZyC2DPePnM9x9gWU9FvQhjBY6u8zmvWznDcUMHEwReJ7NVJvo6TXaLKrBDL
         wZ31N/WvkCtP4b3eK3RgVA9GEc1NV/zA53e4QHumv9PbxEZTBNOFqTdb4yv5uPrVjbG/
         vmu/zg0YoS2dtvnLqAp7idAe6IflWHipbxxYFGuE8QiXbqpcfjnbH5+ERUmv3OCB2laK
         uTBCSaH56YURXMcsEu/tenJh2uoIs62DmKPp78Mruc+jEUFlkmMUQBSryFIJZitGKmSt
         ujvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=avitPKM/59GxzhYvdcMXuZDxdFWYRP6XU6dIYnSxoz4=;
        b=gcpwrD//vExLvYLSFzj7TZWNL91xByYDFwW/GbEtCu/NTbwoobGf3mOJAIicrkQfX9
         x/iuDNryPER1o3gwcAf5V2ojebK8cxxQo7vdLDBnmEmcrCnVycSkfttwoeEwtS8COPQk
         kMl1YxAxZJMUqsEsvzVrtglEV9lgjCSc2c440KQVnZ4boZPFR1DQis6ODikFhqFkljZK
         quWK2lSY6SDTDuAwcM/MARHcAVadTdG88qaQJLI7ZMdQoJUGutbU8UdLzi+r5w99w3Ry
         owaABRgevoILdvT8LCXCtSFogaSpB/MIMsDZh8K77gi2PbSKuILv7G3ZwUR/F6x7x79x
         9UPw==
X-Gm-Message-State: APjAAAXk2NqYROwP+bJr1m2BXPdcxlaLOY8w9zQ072a5bSyHiS9odUSU
	R8sSxkL2OBKqmSYE0AqlH+QB5NKfp3Ew
X-Received: by 2002:a5e:981a:: with SMTP id s26mr3267453ioj.90.1553621376419;
        Tue, 26 Mar 2019 10:29:36 -0700 (PDT)
Return-Path: <brandonbonaby94@gmail.com>
Received: from branx011-Vostro-430 ([2607:fea8:29a0:ff5:413e:2bc:a081:9d66])
        by smtp.gmail.com with ESMTPSA id b15sm6039072ios.25.2019.03.26.10.29.35
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 26 Mar 2019 10:29:35 -0700 (PDT)
From: Branden Bonaby <brandonbonaby94@gmail.com>
To: gregkh@linuxfoundation.org
Cc: Branden Bonaby <brandonbonaby94@gmail.com>,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 1/3] staging: rtl8712: remove unnecessary parentheses
Date: Tue, 26 Mar 2019 13:29:28 -0400
Message-Id: <8047503b26a706d8d7a83f12da245af879135644.1553619382.git.brandonbonaby94@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1553619382.git.brandonbonaby94@gmail.com>
References: <cover.1553619382.git.brandonbonaby94@gmail.com>
In-Reply-To: <cover.1553619382.git.brandonbonaby94@gmail.com>
References: <cover.1553619382.git.brandonbonaby94@gmail.com>

Remove unnecessary parentheses in rtl8712_xmit.c.
Reported by checkpatch.

Signed-off-by: Branden Bonaby <brandonbonaby94@gmail.com>
---
 drivers/staging/rtl8712/rtl8712_xmit.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl8712_xmit.c b/drivers/staging/rtl8712/rtl8712_xmit.c
index aa6fb516f398..d8ff4ba0cfa0 100644
--- a/drivers/staging/rtl8712/rtl8712_xmit.c
+++ b/drivers/staging/rtl8712/rtl8712_xmit.c
@@ -60,20 +60,20 @@ int r8712_txframes_sta_ac_pending(struct _adapter *padapter,
 	switch (priority) {
 	case 1:
 	case 2:
-		ptxservq = &(psta->sta_xmitpriv.bk_q);
+		ptxservq = &psta->sta_xmitpriv.bk_q;
 		break;
 	case 4:
 	case 5:
-		ptxservq = &(psta->sta_xmitpriv.vi_q);
+		ptxservq = &psta->sta_xmitpriv.vi_q;
 		break;
 	case 6:
 	case 7:
-		ptxservq = &(psta->sta_xmitpriv.vo_q);
+		ptxservq = &psta->sta_xmitpriv.vo_q;
 		break;
 	case 0:
 	case 3:
 	default:
-		ptxservq = &(psta->sta_xmitpriv.be_q);
+		ptxservq = &psta->sta_xmitpriv.be_q;
 	break;
 	}
 	return ptxservq->qcnt;
@@ -269,7 +269,7 @@ u8 r8712_construct_txaggr_cmd_hdr(struct xmit_buf *pxmitbuf)
 	struct xmit_frame *pxmitframe = (struct xmit_frame *)
 		pxmitbuf->priv_data;
 	struct _adapter *padapter = pxmitframe->padapter;
-	struct cmd_priv *pcmdpriv = &(padapter->cmdpriv);
+	struct cmd_priv *pcmdpriv = &padapter->cmdpriv;
 	struct cmd_hdr *pcmd_hdr = (struct cmd_hdr  *)
 		(pxmitbuf->pbuf + TXDESC_SIZE);
 
-- 
2.17.1


