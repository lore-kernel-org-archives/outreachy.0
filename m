X-GM-THRID: 6395846160582443008
X-Received: by 10.107.168.209 with SMTP id e78mr5403882ioj.87.1489148978762;
        Fri, 10 Mar 2017 04:29:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.95.9 with SMTP id r9ls472249itb.14.gmail; Fri, 10 Mar 2017
 04:29:38 -0800 (PST)
X-Received: by 10.99.188.2 with SMTP id q2mr9036814pge.36.1489148977968;
        Fri, 10 Mar 2017 04:29:37 -0800 (PST)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id g82si1719692pfb.5.2017.03.10.04.29.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 04:29:37 -0800 (PST)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id b5so10177881pgg.1
        for <outreachy-kernel@googlegroups.com>; Fri, 10 Mar 2017 04:29:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=FyGsOrEgLPazZSah8CVd5q/65niI+fhn/H9Pa9sqw8Y=;
        b=VBFfzaYLd2B9IYmfbITef6/YrznexstRP75WI6mgMw9Y8PPmUKnUCLWcnFgBED7Ql5
         J/LNaFvceRjWtSjDJBVNhxzOlwyj2UisDKd4hVnKv4W275b30NQmLG7Ircvbl2zVeEim
         D/B339EblldWfrDHb7bwi+H8NFw3/Y6msZPEn6QnO7N2myssFsWmueAecFMzcS73EbbO
         8fIqpwXObrQW5xVJRhwkkMO5D+ANiJccziVOVmH8T8GCdRhV7o9IxcRjiSuh2Buv4fpB
         hEpylgFjevyU3MLxGnf1K0si3B0Bb5NJU5mVTCopfcFWUy5baGGhVW7gBWsQV/vaxfso
         GZFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=FyGsOrEgLPazZSah8CVd5q/65niI+fhn/H9Pa9sqw8Y=;
        b=pv3QENe5kh2E17En9r9agN4F5WX3jI4+u5S0Mz4j8K3rHZ7/+txDW7H4MY3mo8JJfq
         1KWK7acziHQJQmsEULVtNzbFQ/yFp/bTAuqDbftN/CSRyafVtZIUpEh+2G8twXUjATVd
         aJdEZqghkGAPRKw0EfYblaHw114qMnP7rm+E6jdVfkhUCJQ1ql1X2UiBYk8WwWCjgswX
         TanBUOV+YxNYzJ6i/88f4SAknu4PjfTZyj2eeanqr1jSj3vNAXwwxdK3kkKLJiN3HLTY
         jZ9TePq7Uz+ZXg70t8MyacHd9z+a2W6QSPYTeaWSV3n5r70kynuFjUL+wK9a5M1XL2Vg
         Nosw==
X-Gm-Message-State: AMke39kN2v8nueAemCAlPZAMwemUTmePJCpgN3I8GHCUUIUss+EVX47fvw6JY3pfOFCOoA==
X-Received: by 10.99.103.133 with SMTP id b127mr20335839pgc.29.1489148977743;
        Fri, 10 Mar 2017 04:29:37 -0800 (PST)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([42.109.17.186])
        by smtp.gmail.com with ESMTPSA id c64sm18565787pfa.45.2017.03.10.04.29.24
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 04:29:37 -0800 (PST)
Date: Fri, 10 Mar 2017 17:59:04 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Forest Bond <forest@alittletooquiet.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: vt6655: baseband: Add identifier name to function
 definition argument
Message-ID: <20170310122904.GA31929@sayli-HP-15-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

The patch resolves the checkpatch warning:
WARNING: function definition argument should also have an identifier name

Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
---
 drivers/staging/vt6655/baseband.h | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/vt6655/baseband.h b/drivers/staging/vt6655/baseband.h
index c351e03..feaf2225 100644
--- a/drivers/staging/vt6655/baseband.h
+++ b/drivers/staging/vt6655/baseband.h
@@ -63,16 +63,16 @@ BBuGetFrameTime(
 	unsigned short wRate
 );
 
-void vnt_get_phy_field(struct vnt_private *, u32 frame_length,
-		       u16 tx_rate, u8 pkt_type, struct vnt_phy_field *);
+void vnt_get_phy_field(struct vnt_private *priv, u32 frame_length,
+		       u16 tx_rate, u8 pkt_type, struct vnt_phy_field *phy);
 
-bool BBbReadEmbedded(struct vnt_private *, unsigned char byBBAddr,
+bool BBbReadEmbedded(struct vnt_private *priv, unsigned char byBBAddr,
 		     unsigned char *pbyData);
-bool BBbWriteEmbedded(struct vnt_private *, unsigned char byBBAddr,
+bool BBbWriteEmbedded(struct vnt_private *priv, unsigned char byBBAddr,
 		      unsigned char byData);
 
-void BBvSetShortSlotTime(struct vnt_private *);
-void BBvSetVGAGainOffset(struct vnt_private *, unsigned char byData);
+void BBvSetShortSlotTime(struct vnt_private *priv);
+void BBvSetVGAGainOffset(struct vnt_private *priv, unsigned char byData);
 
 /* VT3253 Baseband */
 bool BBbVT3253Init(struct vnt_private *priv);
-- 
2.7.4


