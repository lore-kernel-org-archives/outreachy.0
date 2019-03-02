X-GM-THRID: 6663863789016842240
X-Received: by 2002:a24:78cb:: with SMTP id p194mr6846084itc.7.1551551701677;
        Sat, 02 Mar 2019 10:35:01 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:b648:: with SMTP id d8ls3498033itj.4.gmail; Sat, 02 Mar
 2019 10:35:01 -0800 (PST)
X-Google-Smtp-Source: APXvYqzB6Ql9NLCiBXM4fnT7KtSuwVmh2wh2ujR2IqgRchJ8FR9tpV5kV7KKT8kjJkqwwGH2jC/m
X-Received: by 2002:a24:334a:: with SMTP id k71mr6819157itk.14.1551551701068;
        Sat, 02 Mar 2019 10:35:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551551701; cv=none;
        d=google.com; s=arc-20160816;
        b=Mc5rwUT5uj1MCjpYyz407OIxmg1nLwFDx/bog2c+1K5qioRe8vv+lsbhk1xcuGu++1
         IZBvE3cwr1o1CtaRBFAKbaXzAB8zSIFchnyyWzzyR9pRKFbm8SVaQcRuTk8WGf+KUAYs
         Yt3Ps8Zrl632wGufqY3hzTTqVYbfwG0Bd52ZlzNo+O4/hmqbR4eT9GBmuC+kXJQlmspJ
         IDgkSlhZ9p7zK52fueXwVmcqTiLde7mZYRBxxP4fIoGtw1fqWAUA0g0HpXmFI2Cgq3kL
         A/JioRA4UghEQ26XEQC7CZfmVdkyLfr8lbdSzGZwsSJ5QMxm73W18o4xoC57OYBd2qaP
         Zz3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=YHO55fqBqsu+l/ajs2iP5Rufps4eiqmjkRgv0eNnNvQ=;
        b=H4fadJlZ8UBd7UmdsbuzRA0CMurn4V45e2SJ0wB7aDYavDbDb3uHY9umjuBmHqa/sG
         rAp06PgGuN2NsQBrHUl0ynhASq/IewJISk9dKthFktnEMU6IGltbbNb4eFdtiQ8nL246
         4beD5JkHSvxMBhB0UpoumxKTaka5lYrHRlqrzD+09H1KT1NrbtBn5ExaSDzEpK+AR9jo
         YETbSwQ6XXqbmosOfAqhVYaAPRtZA+j9MXMfYgDgUIUJCx9kdoqqdqdFbQq2ldFLaXvC
         zKmXGD8wCeKzenikWCviIQ104IHIZUnMrLJPrxc0veiN3t07IyfIWh9VXc8OL5yEh75S
         UBWA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ET3pvBKU;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::235 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x235.google.com (mail-oi1-x235.google.com. [2607:f8b0:4864:20::235])
        by gmr-mx.google.com with ESMTPS id x22si113306ita.0.2019.03.02.10.35.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 02 Mar 2019 10:35:01 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::235 as permitted sender) client-ip=2607:f8b0:4864:20::235;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ET3pvBKU;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::235 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x235.google.com with SMTP id t206so817758oib.3
        for <outreachy-kernel@googlegroups.com>; Sat, 02 Mar 2019 10:35:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=YHO55fqBqsu+l/ajs2iP5Rufps4eiqmjkRgv0eNnNvQ=;
        b=ET3pvBKUtZRtBZGAvqkjd66PEfuTT806OQy7HEql8rZLnYhgntloEaIHQGewJPt7Bw
         yslCEb4NqQSMDewjvsEMN696FH8VMHAkTMsxRq8vLagXpTXTxo931ullzZl8JCetw+KH
         2GhTsWA1qnIUBnLdv6LYsdtwhtsJVL2xJhvofT6HcdCoW1SLVSi+SpdA1FNcLKtJKMUu
         n6RQMT15QCE8Wx7Gk5ap4a0VsiSk78g1t6L/hUAZyKgLvQCrULcGpJnLSrmnozE2VRV1
         OataJwTJfUf0PYmOmC+f4y/RYA6uaLG4IZKoYdnZMi1yeyCQsaA7MIF3JxWD2hCMaigl
         VhNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=YHO55fqBqsu+l/ajs2iP5Rufps4eiqmjkRgv0eNnNvQ=;
        b=APYMW5JRBe5aQFHyyzQ7joqzFdJBZKQTGeZAMN35LzV2atKhMSW5EQIxMon+rGRLWU
         mt2eevnUuXTgpADi1IbLzhxj5dDicSGeQqE/uqsFETzZNxMFR/NBnFUsLoGEvLeLBiHc
         8TDn344JY743QwBQk1UleacoE6gRT+qgewsAGi4p8JmwKlflFgdw+E6KFai2WYcsYklA
         whZGLGeo325BodZar7XZ2fBvByNwm/lBZhbg4KE41tmxAiHVvZMx91fqxk1pY7EMhVL6
         jAeL7TqsnhTAT1suCPSzlkQ/T30SJ+ovHlM66+FHMcwlEGr1+D4czMjwbbYeVStjK50F
         EVtA==
X-Gm-Message-State: AHQUAuaM2WLfgB8wIchfJebIAdqdSUF6Q0lLhFiTPpzaeBQj2jR+s+lS
	vSFxg/h1w1j2qAmgtYqFoNK//sMGJ8k=
X-Received: by 2002:aca:f5d7:: with SMTP id t206mr6852041oih.141.1551551700510;
        Sat, 02 Mar 2019 10:35:00 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id i5sm478349oia.46.2019.03.02.10.34.59
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 02 Mar 2019 10:34:59 -0800 (PST)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: madhumithabiw@gmail.com
Cc: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v2 2/8] Staging: vt6655: Fix line over 80 characters
Date: Sat,  2 Mar 2019 12:34:44 -0600
Message-Id: <bc34e15f3a6dd41ffa6e4fc9eceb44945198590e.1551550323.git.madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1551550323.git.madhumithabiw@gmail.com>
References: <cover.1551550323.git.madhumithabiw@gmail.com>
In-Reply-To: <cover.1551550323.git.madhumithabiw@gmail.com>
References: <cover.1551550323.git.madhumithabiw@gmail.com>

Fix the warning
WARNING: line over 80 characters

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
 drivers/staging/vt6655/card.h | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/vt6655/card.h b/drivers/staging/vt6655/card.h
index 6bbbbe1314d5..490cecf8fb9d 100644
--- a/drivers/staging/vt6655/card.h
+++ b/drivers/staging/vt6655/card.h
@@ -62,6 +62,7 @@ bool CARDbRadioPowerOn(struct vnt_private *priv);
 bool CARDbSetPhyParameter(struct vnt_private *priv, u8 bb_type);
 bool CARDbUpdateTSF(struct vnt_private *priv, unsigned char byRxRate,
 		    u64 qwBSSTimestamp);
-bool CARDbSetBeaconPeriod(struct vnt_private *priv, unsigned short wBeaconInterval);
+bool CARDbSetBeaconPeriod(struct vnt_private *priv,
+			  unsigned short wBeaconInterval);
 
 #endif /* __CARD_H__ */
-- 
2.17.1


