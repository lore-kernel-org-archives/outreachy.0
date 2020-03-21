X-GM-THRID: 6806450213185650688
X-Received: by 2002:a05:600c:d4:: with SMTP id u20mr12781429wmm.169.1584750184724;
        Fri, 20 Mar 2020 17:23:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:f3ca:: with SMTP id g10ls3237489wrp.11.gmail; Fri, 20
 Mar 2020 17:23:03 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuI1gxF6XSKjOYh2682mLpl47V817jcE2r0X9Oi0YVBIffQQ4kDjxNDnYRUpXLR0uGvcFa2
X-Received: by 2002:adf:afd4:: with SMTP id y20mr14986408wrd.57.1584750183478;
        Fri, 20 Mar 2020 17:23:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584750183; cv=none;
        d=google.com; s=arc-20160816;
        b=eINwVTAi+s3W2I624gcABnkoYJjcCnCptyluMMu/DQWJon5N10CjQf2Yh1/pnbZLDM
         40si4gpO6MInugIMntwLBV6J7m5+Tt+cyI40MkIks6Vd9z4SmWk609VIzAmANTleE9yi
         j0g5BG4E1GmscjcIYBCz2jR74gmjYp2MMBqmrUcWnne3mk3Y6XHS9rwP23p8WhstXqYG
         xrU6LEU2k8x0WTv2L40+SWomDsIuYuFxfB1SvcYtkOiRYVrqcsW2C5yiXbvhlc8yPaee
         5jKksu8N4cZjvJPfOolbqeChgJudZWues1/qDXHgXzlTGE0UO0tgAgBr9g7YvNFXJpk7
         G7cw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=y6/+2iEBcU4fSzM8D+TqpHlfv6wgVeDBPiUyMgz9P3o=;
        b=vX9Gx1gbgwGXH/2Oi4zitNPkezfbsAqTxLvklw1JsApWfpYdAFpYcnUhUAl5cn2Elj
         wLHZfZaKqu9cTkcI0/C9iQiKXiTJ+t4O74aAN+y3J6tQulycibDvpYVR6VUPeEMbkD9b
         S48a0Gg7tzimDWAWH8wTAAmvF9kH1+ndjGpQ5Ho15h9Nxh6vna1bsjgFp1otyyVZrtly
         /LU2L4J/3lUJ0LdcBtN9uSOn3whbk8QW1CH/lFF8uv5r/Gl3B3sR6HwwEW/O5cnQqA/n
         UTfN4QQUT879cvJLD5RG7VJyzFEBpyOUJIcfk4xsCwBVIkbsAPZiqeBQKkv4+73vUz4n
         6fWw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AIUnuCTS;
       spf=pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=gokcekuler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <gokcekuler@gmail.com>
Received: from mail-lj1-x243.google.com (mail-lj1-x243.google.com. [2a00:1450:4864:20::243])
        by gmr-mx.google.com with ESMTPS id x12si481227wmk.1.2020.03.20.17.23.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Mar 2020 17:23:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::243 as permitted sender) client-ip=2a00:1450:4864:20::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AIUnuCTS;
       spf=pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=gokcekuler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lj1-x243.google.com with SMTP id u15so8094897lji.10
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Mar 2020 17:23:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=y6/+2iEBcU4fSzM8D+TqpHlfv6wgVeDBPiUyMgz9P3o=;
        b=AIUnuCTSYCqvS1DCEHyCm1WuanOqTZPPGCO0+NTgRPRozCfaafWZOyX2FcMZSFIr10
         857Hy8R2RSLPZHr+KkzVkfbmpjcjJCXaMXxyv0/ahlsYbGNNj//UvXavntq44tDwQiFC
         1czmiW98bxJkOs2s6z5qqwNMfD0wVLaqAWhsqAvq1B4jnVVO0Fkqygyy2XWam98MfupU
         pQksqnz0spXN4toFfTiSNgDv/PO4r7d8Ytm0071SkDl9zI31X3z/KRgx0K/Frjh/hYi2
         tMoPG9lnyf4MFcrFtpEopP0YKthey9lQO0D4wP0tCNET0KMsBSLBkH7cUlJxuKWV94Yy
         1W3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=y6/+2iEBcU4fSzM8D+TqpHlfv6wgVeDBPiUyMgz9P3o=;
        b=gWVuq4IfI55hC/HwsGqGwQanE/M5LKoaPaJVYJo4o5LexGZLoU4+q82T6H4NANMSXT
         6R2WzQeqLNmrkCNQQ2pvkzM3z7PlOstMzN7GY0jKUXilBvA5mmuCFDRyaWhqiWCC3iWl
         dm0pll0umL9Jtfuy9MOpfzpQ0ealLLpwJa/LA3RU1YPcpU5bomrncDT9qBDR62p6o9ax
         FybABi0EqLk1vK2cHBGfR+mJLkjwVB8w0ynQDs0gsjOEo79m/+++kTAQvfvOegi5RRIi
         ldq4/xI9H7gIcWu11+oovvi8FV9b09jC+x8p2+lU2jL4JLIftMOwzSHUKUk5yCwswNTq
         jomQ==
X-Gm-Message-State: ANhLgQ0D8baGQxF0Uy7Tq6MASRqLvDXQo8BpvoUqioELgcR8b+FvlT5G
	YXh+N9swC9swLcxvyznGLnjjuCu7QtM=
X-Received: by 2002:a2e:9b07:: with SMTP id u7mr7250423lji.265.1584750182886;
        Fri, 20 Mar 2020 17:23:02 -0700 (PDT)
Return-Path: <gokcekuler@gmail.com>
Received: from siyah2 ([88.241.68.50])
        by smtp.gmail.com with ESMTPSA id d1sm4310260lfc.3.2020.03.20.17.23.01
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 20 Mar 2020 17:23:02 -0700 (PDT)
Date: Sat, 21 Mar 2020 03:22:59 +0300
From: Gokce Kuler <gokcekuler@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH] staging: ks7010: rearrange line exceeding 80 characters
Message-ID: <20200321002259.GA12633@siyah2>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Moved to the bottom line after == operator for it exceeds 80 character

Signed-off-by: Gokce Kuler <gokcekuler@gmail.com>
---
 drivers/staging/ks7010/ks_hostif.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/ks7010/ks_hostif.c b/drivers/staging/ks7010/ks_hostif.c
index 2666f9e..7ed8300 100644
--- a/drivers/staging/ks7010/ks_hostif.c
+++ b/drivers/staging/ks7010/ks_hostif.c
@@ -1953,8 +1953,10 @@ static void hostif_sme_power_mgmt_set(struct ks_wlan_private *priv)
 		mode = (priv->reg.operation_mode == MODE_INFRASTRUCTURE) ?
 			POWER_SAVE : POWER_ACTIVE;
 		wake_up = 0;
-		receive_dtims = (priv->reg.operation_mode == MODE_INFRASTRUCTURE &&
-				 priv->reg.power_mgmt == POWER_MGMT_SAVE2);
+		receive_dtims = (priv->reg.operation_mode ==
+			       	 MODE_INFRASTRUCTURE &&
+				 priv->reg.power_mgmt ==
+				 POWER_MGMT_SAVE2);
 	}
 
 	hostif_power_mgmt_request(priv, mode, wake_up, receive_dtims);
-- 
2.7.4


