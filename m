X-GM-THRID: 6673442126229929984
X-Received: by 2002:a5d:9a0d:: with SMTP id s13mr6089971iol.26.1553922820016;
        Fri, 29 Mar 2019 22:13:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:80c6:: with SMTP id h6ls1635522ior.2.gmail; Fri, 29 Mar
 2019 22:13:39 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxhqGDwszRfYVvleEec5y1XfFlqsQFlsDKiESeHOPArTlDIoFUEKqRnCwQyPtlTiiV55nxK
X-Received: by 2002:a6b:bc06:: with SMTP id m6mr5469099iof.18.1553922819496;
        Fri, 29 Mar 2019 22:13:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553922819; cv=none;
        d=google.com; s=arc-20160816;
        b=Ilhqrdg2IeRr/9XUVj50blDWWXHX5/xgP3UmxRGbcNOhkc+BbBGQEzmihcY42f3LAe
         OOKri/2mZ1u9nBMbgZH5AqBXSpDm5WisK/vhaZZ/wzgYNeFMqhYBbVG66SpI47kQ0jpL
         rqJ2Uy4hiZpflfyjwpwWM9ahz+mIdyM2p/eN5DrCNIrRSq3ZQg7DmnHczjzGe3VvtMeP
         vF5Ih977U1xD7+tB4xGRMfo0mzt6QNP54GcyFMOzINvebRbf+iohYOa5Q0iH+vrPF5Rr
         N3NNJTqe1pC9dP38+r4vJrqTRuHiggYi+xisYvYdkMpiZiA2c2E1+ILEBmfgpZb2t2T9
         YTpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=2vAz8bNaqITCkhOREg5ApVQmmVNY3SZQLJePKFiBHV0=;
        b=gcBR0rOABVwiM6yrTydTBj6Ql2BMxxU2B82zIZgniWjcULfn7Lcm/1DdaWN1KVwddR
         9FaEWnUVz2VEdxkmF62x68knE0O9wVcmo6Sz7cU6ErL6JWBt0EP548p7rY5Dz7l8+Wdf
         ruc2EYCvjQl5I3cHws8KCs/lqsMNy+3e/o2IjGeqUJxk4/ISmdR5RKZc4AlmSWaPs1hu
         rRIt0Qd36S4e/TwsF6WC/otO7UcR6sn05cGav14KOCuEi1lscbKos4x8AhXDb4RTptFw
         qwFmNXoPIZuDR2j6pqRNLBhbPbdhKV9bA96xgY0Hja2YblKqkabDjvZv8s+Bu7arn+1i
         x1pw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ju0ZYy8B;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id x26si216716iog.4.2019.03.29.22.13.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Mar 2019 22:13:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ju0ZYy8B;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x543.google.com with SMTP id b12so2187717pgk.0
        for <outreachy-kernel@googlegroups.com>; Fri, 29 Mar 2019 22:13:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=2vAz8bNaqITCkhOREg5ApVQmmVNY3SZQLJePKFiBHV0=;
        b=Ju0ZYy8BgXJCa3amYz4kfprrIedAepnIjLkHi0nNeBfDJNLlOKDPjKseOvxSa6FfJY
         W/6geDWA2T3n+leR3rBORTuRQbfosFUalf4vjeOn9ha2z9U4TeEPg1iA22WUavhnEIkZ
         Su/hUL9gg2eRmFJO+rPhkR6MFSG9Eac7Mi0bRXE6C6m7KpT+uyFdU1RcCAN658frvq46
         YpjfJzaN+gB4wq/ARTXjVBytyD1Wqmm/sOSsan2u2zRA9BXvA2wWf6KBpQvj4qfqoHzl
         ZyUPMgMA4x26dxaGoBNAZT03Tvw0BNOmKA1h3+7s3++8CrKm2gT9vcZ8TDASBjondPuH
         bjkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=2vAz8bNaqITCkhOREg5ApVQmmVNY3SZQLJePKFiBHV0=;
        b=GPfoPefQEODwYT1lkn2RcKmErvj0nMAqKIddpJTmmxZ8FX9ApBz610mYQLyew7U0GE
         RqUSEYilyP86eJmSQxyTBhgwKg++FKP1I7p11V1Hl9dLqwamuncfBAEJuvnIWY+qDbcv
         trjCnui0GxE5A7Fu+sCcTw38R8cC0kGr8xYKo/pwKjXv/QDDF9Kryxdc9Gl7JGxtGA7t
         dnFw1ynvyize98b4216bAR6QDPOifC8OychGBBfUVDgyA1PRZaZruqXksE4/vuoQS1yb
         wbLZpsIyoimqpRKpSuX96r7slDGeq+EBKEYlUnaKZVVBdrhIzQ4Nq7cLprHWL2XUUEZB
         573w==
X-Gm-Message-State: APjAAAVIVnW1fJx1fRrGwqOQ5/b0ejuFXjRhnJePNDdg3NLnAiZQdu1p
	K7mg+DRdwWwhM7D4VdfRmTOQF9pd
X-Received: by 2002:a63:db10:: with SMTP id e16mr11001879pgg.142.1553922818610;
        Fri, 29 Mar 2019 22:13:38 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([49.35.4.242])
        by smtp.gmail.com with ESMTPSA id o2sm4864557pgq.29.2019.03.29.22.13.36
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 29 Mar 2019 22:13:38 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [Outreachy kernel] [PATCH 7/8] staging: rtl8723bs: core: rtw_ieee80211.c: Remove unnecessary parentheses
Date: Sat, 30 Mar 2019 10:42:46 +0530
Message-Id: <d68e1b7a452a758591a47deb5879eaa957173264.1553921776.git.payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1553921776.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1553921776.git.payal.s.kshirsagar.98@gmail.com>
In-Reply-To: <cover.1553921776.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1553921776.git.payal.s.kshirsagar.98@gmail.com>

Challenge suggested by coccinelle.
Remove unnecessary parentheses around expressions.

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_ieee80211.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_ieee80211.c b/drivers/staging/rtl8723bs/core/rtw_ieee80211.c
index ac203c0..aaf2743 100644
--- a/drivers/staging/rtl8723bs/core/rtw_ieee80211.c
+++ b/drivers/staging/rtl8723bs/core/rtw_ieee80211.c
@@ -114,7 +114,7 @@ u8 *rtw_set_fixed_ie(unsigned char *pbuf, unsigned int len, unsigned char *sourc
 {
 	memcpy((void *)pbuf, (void *)source, len);
 	*frlen = *frlen + len;
-	return (pbuf + len);
+	return pbuf + len;
 }
 
 /*  rtw_set_ie will update frame length */
@@ -136,7 +136,7 @@ u8 *rtw_set_ie
 
 	*frlen = *frlen + (len + 2);
 
-	return (pbuf + len + 2);
+	return pbuf + len + 2;
 }
 
 /*----------------------------------------------------------------------------
@@ -706,7 +706,7 @@ int rtw_get_sec_ie(u8 *in_ie, uint in_len, u8 *rsn_ie, u16 *rsn_len, u8 *wpa_ie,
 		}
 	}
 
-	return (*rsn_len + *wpa_len);
+	return *rsn_len + *wpa_len;
 }
 
 u8 rtw_is_wps_ie(u8 *ie_ptr, uint *wps_ielen)
-- 
2.7.4


