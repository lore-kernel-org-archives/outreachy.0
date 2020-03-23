X-GM-THRID: 6807521221589073920
X-Received: by 2002:a05:600c:2101:: with SMTP id u1mr1504449wml.136.1584999552001;
        Mon, 23 Mar 2020 14:39:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:f5cc:: with SMTP id k12ls2627216wrp.6.gmail; Mon, 23 Mar
 2020 14:39:11 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsOSJisQmDc2mFOR/rrRMmsbjkZHADQ+pgkRMXDKSnFM2L16mTRyI7/BFD+KarPRoBjft7V
X-Received: by 2002:a5d:55c4:: with SMTP id i4mr33530659wrw.170.1584999550924;
        Mon, 23 Mar 2020 14:39:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584999550; cv=none;
        d=google.com; s=arc-20160816;
        b=LA+m30bsxSgoMynzFjd32kylgl0psW/ntYqQNNVsGqQAFFspRie3T7CeXiddyXAOZA
         DoY67vQi4/ve3ZCgnBol9p7RtJ+71qvTnjFp7NGAZrbxsYCNjvFlD62FO9pN9kRBN2FB
         s8ECEZ9VyjwTM8tmzSmMnrCSia49mcuyW/MwgDBkNBIu+d200RDC1YcPrT99h6U+PbVp
         mmJoI1Lpwl3IUrYLnE8Ms1SoJmXClv4XMmcZNgAVWps3twESS+Tnl865iz0PcnQd3Jgf
         u5vRmnXTAycfVC/huX8o9LCH2YAwI1ZuIQUg1/20z6d8rkkcFVaTRUKGfIGgwIVx0jvs
         gDBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=MG56zfMC5NiWOqJhvWCpvR44Yd3DrkphsrcBFPcD7vo=;
        b=p3V1XPZ492xxpIz4ihE4iKzUKH8uZIB2VRn4A9AEVJu7p1PeM7EpbkuiuvEcis1mTZ
         kC2549D4sX/WPZzZ5paI41A/aooh7kd3LX1nEcm8VLhQOb+ym+puYEIkbSjgEnA5/emQ
         8/LcUQsE9/nA5rmInBxKxnaYESkE+VDqTZa7LfkaKcX+bPZFzhQqlHzTGss/R1fomjUq
         D7+FZ5dY1F/3KoQdZvIIbmC/SniQOYvlNPAr2FSCz/q+j/ZATdO1evIM7FmdxBoVfazi
         4TDfXLLb7yNThpaEZw6FLYsvP7Y2dNBadZhxd8K8yjTM5uiEm4mjXCv/46i0Zuc0HQDz
         B2tQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lSBAK4sX;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jane.pnx9@gmail.com>
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com. [2a00:1450:4864:20::342])
        by gmr-mx.google.com with ESMTPS id q76si37314wme.1.2020.03.23.14.39.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Mar 2020 14:39:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) client-ip=2a00:1450:4864:20::342;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lSBAK4sX;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x342.google.com with SMTP id a81so1198064wmf.5
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Mar 2020 14:39:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=MG56zfMC5NiWOqJhvWCpvR44Yd3DrkphsrcBFPcD7vo=;
        b=lSBAK4sXN9xF9Ht+FgdmdbCIiUPeza+8cqQR7lng1hyP0eVSLu/e0gGEvihymlXtQ0
         IPvRenNL9nNmHbf5QUMftt7tz9FRCBokzF0PqAsPFa7AUf16pRBFQd8CwSWu76RFjga5
         WZQDym3eqNBaIQ19uGeYenkxJ2ABSIRgMc0Dd3OE0aLSHSprhFdFJx0+cPb6Ejt0+/Lo
         ARH1SHE6Zk3+vWlYj0oemtfIoHMed5IULNbjgLc1UsdrdaDytimUU9ztUYMoqJBrNm7y
         mloY9HoX3vsHCXgXYM3Ymy+atqruGUTXkI2iawP7JCcJK4tNpx6yb0N3LF1j1HFmZBSt
         DNtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=MG56zfMC5NiWOqJhvWCpvR44Yd3DrkphsrcBFPcD7vo=;
        b=CnumBHsbl2XbIE+mNrIn7zDaNi9STltvClZ5zFIJLlvbhbccrJ4S+kGMdIEy+JDNh3
         58/5PoOQSAFbQl22xtxqUVRnBXwAYfYu+eYbZdDItqki9vwcx6+U62Y4ha+UDvD8nKlk
         6BamJcJdS3YODAAM9GEIo9I3t31NCo4053bE5jSSGT1mLnfZVZnEj39qiyQpQNd8bdYJ
         c/EIi2+v4luL2z49bhJpzczFDQh2Ixs4Lpl3N/Ke7TwbVGXExtLMQiqru8rsOwd/4RDs
         pVKzGbFh5qkGcn1UswXQM1w3Lx9pI8vwlJiLpVhkVfl6Stsie700G76zasW1KBdKQ5DP
         pmWQ==
X-Gm-Message-State: ANhLgQ2HAgcFgNQvY9FpdZK1qyyoNHjOpJ44ZvqJc/nJBtu5SXYucXLW
	TMHafPCZxVQuIxV35YPQoeE=
X-Received: by 2002:a1c:147:: with SMTP id 68mr1576906wmb.28.1584999550612;
        Mon, 23 Mar 2020 14:39:10 -0700 (PDT)
Return-Path: <jane.pnx9@gmail.com>
Received: from localhost.localdomain ([197.34.98.222])
        by smtp.gmail.com with ESMTPSA id w9sm2844816wrk.18.2020.03.23.14.39.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Mar 2020 14:39:10 -0700 (PDT)
From: Sam Muhammed <jane.pnx9@gmail.com>
To: William Hubbs <w.d.hubbs@gmail.com>,
	Chris Brannon <chris@the-brannons.com>,
	Kirk Reiser <kirk@reisers.ca>,
	Samuel Thibault <samuel.thibault@ens-lyon.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Cc: Sam Muhammed <jane.pnx9@gmail.com>
Subject: [PATCH 2/3] Staging: speakup: Use sizeof(*var) in kmalloc().
Date: Mon, 23 Mar 2020 17:38:44 -0400
Message-Id: <19494bdab5709693126e0c0ee14b179a3b601207.1584997290.git.jane.pnx9@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1584997290.git.jane.pnx9@gmail.com>
References: <cover.1584997290.git.jane.pnx9@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Modifying struct allocation in kmalloc() to match the
coding standards.

Checkpatch.pl CHECK: Prefer kmalloc(sizeof(*ldisc_data)...)
over kmalloc(sizeof(struct spk_ldisc_data)...)

Signed-off-by: Sam Muhammed <jane.pnx9@gmail.com>
---
 drivers/staging/speakup/spk_ttyio.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/speakup/spk_ttyio.c b/drivers/staging/speakup/spk_ttyio.c
index 5a9eff08cb96..9b95f77f9265 100644
--- a/drivers/staging/speakup/spk_ttyio.c
+++ b/drivers/staging/speakup/spk_ttyio.c
@@ -51,7 +51,7 @@ static int spk_ttyio_ldisc_open(struct tty_struct *tty)
 		return -EOPNOTSUPP;
 	speakup_tty = tty;

-	ldisc_data = kmalloc(sizeof(struct spk_ldisc_data), GFP_KERNEL);
+	ldisc_data = kmalloc(sizeof(*ldisc_data), GFP_KERNEL);
 	if (!ldisc_data)
 		return -ENOMEM;

---
2.20.1


