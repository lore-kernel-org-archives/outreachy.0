X-GM-THRID: 6802257334372401152
X-Received: by 2002:ac2:5198:: with SMTP id u24mr10281996lfi.137.1583773953769;
        Mon, 09 Mar 2020 10:12:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:8647:: with SMTP id i7ls1912801ljj.11.gmail; Mon, 09 Mar
 2020 10:12:32 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vteVKpXadFq7ywKAmoOkZujY2RchGXRMVldz87F/OY1rCry2FNoIMbO/H2INzamEQn0694s
X-Received: by 2002:a2e:9e19:: with SMTP id e25mr10607469ljk.179.1583773952456;
        Mon, 09 Mar 2020 10:12:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583773952; cv=none;
        d=google.com; s=arc-20160816;
        b=wWivRNQBObeHU1A4V43cUx7qHAe5FWISMmTMdHCrNGlWxAhlvMM7YIf1q1Z9tOtx93
         ixEryf6ipd4SI2IbyW3+Ivjk9QoBu3xHmVDSA1MYlPg7p6ifzxF516u0bUDFRhWz8U4F
         k8xrJF4n4CtcFE8oEWTsvWowWhHUMOIuCPJBn9BgGxciuGCdUu1VeeA6AIhssraz2I8P
         2+XEqzzay7mZ7yyRN8cLcXmae0hmvPD0OUUagmH0/To/IT0Vriij3DUn3btYSq3Lv0cx
         5ygNn2iHa61g9lKuqqiIqND/81TwxHbcYtbTwpIxShmbbDW0nlpRoVJNdLUL/hBJPPIp
         yhLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=1WqUU7MXlSk/kVuhLVwaxMSZHEpygGtldCxSzvaTZKE=;
        b=QuWLcwjSPVh9+FGuJWXXTK2jX7WAnfxpnC9QQnUksfSPXGsQbdIzBz9Dt5cYEugdNi
         2IYoX+VuuSouWpRvCQVWMhnt0UCQWuf/0X/2/oVtVA3jIlM516ZiVYx/+jdEJBsk7ZRh
         9Gv+1kBmHuad1+n6yvTSVHph7bWx7zmXdTHS20yVsVwY2CiUgBb+u1I1lnFEahnMoWu4
         B/gwcaejOwJ9LwIAM2DKT2sITOZ4Ep0q8lHVuMVUJOAcZFDxA9cfTuREswsGHko4dEF1
         NxmlfU2YBsP/JaZ+begeKa4SyiObuEXViV1OmDlz+kFn0PG6B4cq1+W6ihWfOvy6Kus9
         1Ydg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b="S/gLNJne";
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=lu@pplo.net
Return-Path: <lu@pplo.net>
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id r6si584115ljk.1.2020.03.09.10.12.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Mar 2020 10:12:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b="S/gLNJne";
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=lu@pplo.net
Received: by mail-wr1-x443.google.com with SMTP id m9so3220296wro.12
        for <outreachy-kernel@googlegroups.com>; Mon, 09 Mar 2020 10:12:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pplo.net; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=1WqUU7MXlSk/kVuhLVwaxMSZHEpygGtldCxSzvaTZKE=;
        b=S/gLNJne4PHhCsZMPLQi2rZVAhkgt1yA8vnsBtx3kpiHSyQQZqAkHd6iq/w05FKbHH
         HSIwyrSXvRJcirCL9oL2ypdahkVlCeO9ZoPPfeIDO7i0E0GDHi1BKaYfAxuO2uGqRrV+
         2BImTB4jc45LyJP6YhXul5S1HeTlhGh+gIzQk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=1WqUU7MXlSk/kVuhLVwaxMSZHEpygGtldCxSzvaTZKE=;
        b=dUcKR8XG7utagNCFkXBgR7SRxhQdkyvO35qWD6a71nW1kEP+fYSnGdOOWqpEscWbBg
         ISgL6i5wbC6mJYjm6G6HAC3yRL0WwWnxby/v9+ZfxEr/pSyiaJhxsgFuyFhmRXl31jVs
         J/xImRKlJeqMhXiL1S3OMtOsiAHJHa4t+pqiZYCsqAI00gmlfSRETdSFuljsuKKVpIzv
         fW6HTfelSXNg6pA4HJKOpIo6lSj8QUvQ6hbwaxPo2vb0X9umEX5k0+BkYVlE3q3cS8kU
         1MEkHeQNpiH8+KD9ljNAcsImfT6HiEHRU7l2SyNMo9eEtV10rnUJsVTG8vTntJsrgszc
         sXeg==
X-Gm-Message-State: ANhLgQ0qGvkIHMcuCHvDg+RXi0swOvgX/oDair71zkpEXpwPcXevr9OE
	tYThkWKnHyD3ftG2uMkbFdDLOYD7YLYrBQ==
X-Received: by 2002:a5d:4711:: with SMTP id y17mr18898249wrq.358.1583773951621;
        Mon, 09 Mar 2020 10:12:31 -0700 (PDT)
Return-Path: <lu@pplo.net>
Received: from localhost.localdomain (85.251.42.187.dyn.user.ono.com. [85.251.42.187])
        by smtp.gmail.com with ESMTPSA id j20sm201425wmj.46.2020.03.09.10.12.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2020 10:12:31 -0700 (PDT)
From: Lourdes Pedrajas <lu@pplo.net>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	perex@perex.cz
Subject: [PATCH] staging: hp: hp100.c: remove commented out code
Date: Mon,  9 Mar 2020 18:12:24 +0100
Message-Id: <20200309171224.5131-1-lu@pplo.net>
X-Mailer: git-send-email 2.17.1

Remove unused code.

Signed-off-by: Lourdes Pedrajas <lu@pplo.net>
---
 drivers/staging/hp/hp100.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/staging/hp/hp100.c b/drivers/staging/hp/hp100.c
index e2f0b58e5dfd..b89c4dcf53f5 100644
--- a/drivers/staging/hp/hp100.c
+++ b/drivers/staging/hp/hp100.c
@@ -511,12 +511,6 @@ static int hp100_probe1(struct net_device *dev, int ioaddr, u_char bus,
 	 *   0x2260 -> EISA HP, BusMaster (Shasta Chip)
 	 */
 
-#if 0
-	local_mode = 0x2270;
-	hp100_outw(0xfefe, OPTION_LSW);
-	hp100_outw(local_mode | HP100_SET_LB | HP100_SET_HB, OPTION_LSW);
-#endif
-
 	/* hp100_mode value maybe used in future by another card */
 	local_mode = hp100_mode;
 	if (local_mode < 1 || local_mode > 4)
-- 
2.17.1


