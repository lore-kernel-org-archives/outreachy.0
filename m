X-GM-THRID: 6802570683700215808
X-Received: by 2002:a19:4c08:: with SMTP id z8mr7294153lfa.95.1583846911371;
        Tue, 10 Mar 2020 06:28:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:b5d9:: with SMTP id g25ls2444456ljn.9.gmail; Tue, 10 Mar
 2020 06:28:29 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvKsAJA6OqkWhjmlbtP/bB0cRBznxitATVJyv0OjoWMYwkG0VJ6TWH2t/dQGW+ovPT7N67k
X-Received: by 2002:a2e:9b94:: with SMTP id z20mr2989008lji.147.1583846909833;
        Tue, 10 Mar 2020 06:28:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583846909; cv=none;
        d=google.com; s=arc-20160816;
        b=S0oYX7IUCHgzUvmxHvfc56uJP5UseiiR0CzCKEbahmfDKUts34Q8zp0qFAuQJ+GdvN
         MdqD2hIVqblT/3MfF/viWuNNaoEV/7bPK3RP6l4MeU6AFTxIw+TmZYaRjQAxh2rwIZmk
         r6RZykRrO8i1jMdqafTMpy4qqFGqmvbWdD+cFL+wP52QdZnXwdWEiumtAvJd7FdjrY0s
         sbW91tFCW8EzbKYeCiDSaYgshO8iCqysBiMMIflD0K8NZhxA/iDSRR/JoLubtn1P4D97
         01ZDG0IBug4UydOidVP5E0RzDo1qkVQeIanPfDLlAQLtpUs+XdybfXw7hsLizioPpXoA
         RcQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=6ijpdpyyfgFVa6yPZsSq3+PkNqFl1t23TpFXB4WcLZg=;
        b=ZPxjc7id7Sm8schRz80sNHSnQkDd5w4ZdkuQknkf+yAxdiJzWqgh6g/gHQBbbR91Zk
         5qYLhywn+jio+B6rm6XLb+0Yzh9XeESZ3k9Z0WGleGpMXA4IrKCihM5vuoRoItSLT4/0
         0pGsb4mi0oaWjZJQnYye1x9hwvdIOGyXJqpIPpLn/O3Hpu18mY6W01BlYTqo9G6qyHOc
         M3AiWzx8R/jYP26MA0RqUqbI88AEsnB+CmSPhFG2I29HH7znLVx5+d6BQYMczyelTRvR
         bufFlPX7/1wgnHXXBOaW8BuyM1nsIhUrOtd0QpGHvU8roaPbrTx6ZTN0HHa+u8E3ZJnp
         f7NA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=kmKeI6is;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::433 as permitted sender) smtp.mailfrom=lu@pplo.net
Return-Path: <lu@pplo.net>
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com. [2a00:1450:4864:20::433])
        by gmr-mx.google.com with ESMTPS id c15si145733ljn.3.2020.03.10.06.28.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Mar 2020 06:28:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::433 as permitted sender) client-ip=2a00:1450:4864:20::433;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=kmKeI6is;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::433 as permitted sender) smtp.mailfrom=lu@pplo.net
Received: by mail-wr1-x433.google.com with SMTP id z15so15899566wrl.1
        for <outreachy-kernel@googlegroups.com>; Tue, 10 Mar 2020 06:28:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pplo.net; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=6ijpdpyyfgFVa6yPZsSq3+PkNqFl1t23TpFXB4WcLZg=;
        b=kmKeI6isVmUCK94LMasR+yYXttGyxWpGhSQjS9FsxUaYkMn6qDTHSk2KznDFuwOHsE
         PzK5YWWemN+A/YgUBjNxH84KZ5bJwN+EYegkt3q4hyvaWOI5WW5Sdl6pFZZf/E13fpzg
         cgRBwqFvaZUC2fxfpWqA+6pwux3zxTGyHDeKE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=6ijpdpyyfgFVa6yPZsSq3+PkNqFl1t23TpFXB4WcLZg=;
        b=UgAg5tp4G+KOPDByk1jXo23SVCO4ZkZD08shh4bbCP1L3oSy7iav19uMyi3ROBP/Ru
         gBin0Bj9g4p68mz9OCmzLW/IzQve/JcD53F/yuwg22tCOZGY10kw7wJMDTjUYcq3wkbN
         QpAJ10FtozasczREvwvED2nRxn0E0G5ypgIc+yL4WKOjy4V0Cq2/ScWCMxq1bD+DMry0
         IfyMVI+xisVgfNJ6xAAr2rpILjAv30zmyBAwobHIgO0qslDcrUbaPT29CSW9WAX2NeKw
         wvO2Iu7g4QD9wj6pXC5Qq45EW/zLHBR8my54RLyL14ykJtNLqV+xkqKn+dMNKWMOfai6
         4OuQ==
X-Gm-Message-State: ANhLgQ39RTCuSwbMtr6YJXYb6pUQxcsbUmMOOj2MrzW/i1wQNVz4bmuw
	VdQyd2BO5yRfFAQFjwr3uc5pYl8xtV7aPg==
X-Received: by 2002:adf:e74e:: with SMTP id c14mr28687790wrn.128.1583846909050;
        Tue, 10 Mar 2020 06:28:29 -0700 (PDT)
Return-Path: <lu@pplo.net>
Received: from localhost.localdomain (85.251.42.187.dyn.user.ono.com. [85.251.42.187])
        by smtp.gmail.com with ESMTPSA id u17sm3871275wmj.47.2020.03.10.06.28.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2020 06:28:28 -0700 (PDT)
From: Lourdes Pedrajas <lu@pplo.net>
To: outreachy-kernel@googlegroups.com
Cc: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org
Subject: [PATCH 1/2] staging: vt6655: power.c: Remove setting ATIM Window in PSvEnablePowerSaving()
Date: Tue, 10 Mar 2020 14:28:13 +0100
Message-Id: <20200310132814.8269-2-lu@pplo.net>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200310132814.8269-1-lu@pplo.net>
References: <20200310132814.8269-1-lu@pplo.net>

Every time priv->op_mode is not NL80211_IFTYPE_ADHOC it sets ATIM Window, but
this feature it is marked TODO in 2014 and did go untouched since 2015.

Signed-off-by: Lourdes Pedrajas <lu@pplo.net>
---
 drivers/staging/vt6655/power.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/staging/vt6655/power.c b/drivers/staging/vt6655/power.c
index bfd598a93b04..a68ec527679a 100644
--- a/drivers/staging/vt6655/power.c
+++ b/drivers/staging/vt6655/power.c
@@ -58,11 +58,6 @@ void PSvEnablePowerSaving(struct vnt_private *priv,
 	if (priv->op_mode != NL80211_IFTYPE_ADHOC) {
 		/* set AID */
 		VNSvOutPortW(priv->PortOffset + MAC_REG_AIDATIM, wAID);
-	} else {
-		/* set ATIM Window */
-#if 0 /* TODO atim window */
-		MACvWriteATIMW(priv->PortOffset, pMgmt->wCurrATIMWindow);
-#endif
 	}
 	/* Set AutoSleep */
 	MACvRegBitsOn(priv->PortOffset, MAC_REG_PSCFG, PSCFG_AUTOSLEEP);
-- 
2.17.1


