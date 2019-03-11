X-GM-THRID: 6667125588994555904
X-Received: by 2002:a65:4688:: with SMTP id h8mr7178651pgr.101.1552311142854;
        Mon, 11 Mar 2019 06:32:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:322:: with SMTP id 31ls8877359pld.1.gmail; Mon, 11
 Mar 2019 06:32:22 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyOreVhvhO61hbNMtNOZO4oPD9s/d7L/gKiiT6B3D6qcIc/3KUb99UuBXpT7YKUA0cPelBY
X-Received: by 2002:a17:902:396a:: with SMTP id e39mr10303746plg.61.1552311142055;
        Mon, 11 Mar 2019 06:32:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552311142; cv=none;
        d=google.com; s=arc-20160816;
        b=CNwoO9ABPBEonmUtycC5+rQFkkvMQslzlOrcCKOMKU3hBTVYnCzTqgm9v2YftzGStg
         2g05TLpeIW6qQ9lqVL4+Aa/mX45SdwGQ858EMv4jsCGSkiF6HM8dCukyADFSkrrpOYio
         3wvFIFMXQ9GHSj5u6Et0SmzDFyLM1tVLRUBDrY5Ud535GMvCUKDC1oxUKs+cythlybPo
         gTvqfOLngrnzJnABu10NWFy+Q6UYSkSFimDatoUjb/F9toxSf/bgfcaS4w6wPJ8s3rkR
         s4gSG8kaChdmSc2RiISDsq4HIeykSc8K48ePF1ogtu/ho+THix3AJvAGQvLMfvfFbzDc
         JJzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=p1+Vw/OA5YtijffWYGGHJ5Yd0eMc6VrHFQviEV4rjmM=;
        b=AkE07IDTYdCyzlP87Qam/trAExvsXxT6b5Fay1FA1QG5jT2axYtNoc7VBpDhei83SF
         XgfpnQRzTC7BnkDHP07fpsbAIZHbO/724E2vIy0vi7U4Up9XTjLjdEyc92Lgo47WAslH
         sa+XNSwVq33QowqMCCSxEr9CRY7F4sBQ4gzIcIqJaO8tzviZlmSXHP9JfrLhDnjr+pKU
         6d2GA9WRGVT15h52uyY6EU1pQ+6mV6JKKMOGgWGZIzh6Mw/lvhSuZ6/ZnyXW8dURMv8c
         Ex2+ltvLtwx5+ZVx1AUXUgunwe0TNu10O4ybyMnDjy2gGiwq1Zyx5KDkSswaEOcqTnPy
         xqyA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Fr5t4wl0;
       spf=pass (google.com: domain of brandonbonaby94@gmail.com designates 2607:f8b0:4864:20::d2e as permitted sender) smtp.mailfrom=brandonbonaby94@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <brandonbonaby94@gmail.com>
Received: from mail-io1-xd2e.google.com (mail-io1-xd2e.google.com. [2607:f8b0:4864:20::d2e])
        by gmr-mx.google.com with ESMTPS id z184si300129pgd.0.2019.03.11.06.32.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Mar 2019 06:32:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of brandonbonaby94@gmail.com designates 2607:f8b0:4864:20::d2e as permitted sender) client-ip=2607:f8b0:4864:20::d2e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Fr5t4wl0;
       spf=pass (google.com: domain of brandonbonaby94@gmail.com designates 2607:f8b0:4864:20::d2e as permitted sender) smtp.mailfrom=brandonbonaby94@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-io1-xd2e.google.com with SMTP id x7so4007222ioh.4
        for <outreachy-kernel@googlegroups.com>; Mon, 11 Mar 2019 06:32:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=p1+Vw/OA5YtijffWYGGHJ5Yd0eMc6VrHFQviEV4rjmM=;
        b=Fr5t4wl0rdpPAo2DIv0XBYYfvoATnahnW1WwdCLwMFNPpQB+2wQw+Y+xV/620YiY3o
         dCIaZteODP1xPLfJ/R0KUoLF798r7NuuwVYz4zupWCP+FsisuzwMdzE7kgMn3PATCQZh
         IGEu8bemlN4eqS7Ew1b+l0er6kh1swUd0B+ChYzValegyoYmYaKDzw7H8BW1yAQe/FY4
         XotscuxubjL/9QfeZ/BKzminJrqmNTXlzt3vl6QctoI7QW7gSiiX9+TQZlqxyT7UJXEu
         8GB8iR6dLjXtKnbKoAKRqPdJI6Yribx60JVIWZLGlLehOxqflmi1uQRATXO1SdVCfyrC
         ZCcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=p1+Vw/OA5YtijffWYGGHJ5Yd0eMc6VrHFQviEV4rjmM=;
        b=CjJlDO3mDY8z4Gn6wd/yjrgV86gpBZuUm2hn7SKClpZgYwBXTwqZEdPe+N6Sl5E24M
         oa1ktvyX2Rt+gjzWD+6dRJTFpKFO1eWWoRuBxoPupcOMGdek/mJV0S423zkmpkfPrPaR
         Vaz8LKWkWqVCxuhpTTyi4jXfdKDoHW1TKDbH4hq9DMjeQC+OnbFNOxPpXxwTNAG9eby+
         mdOkzZXYLFS/6vUp1ZmimI7iPig+10xU289T6nkOZGS8WUwuViuEb6AY/bO1fRj0Ug8z
         HS7CQpF22JmUI2I8/d0XG2439e9fBD1wEQPMR4KCFV392axOo7SHPnCbcaL80rn6DbMt
         im9w==
X-Gm-Message-State: APjAAAXoB6LB6Orb7gbNmsliy0DGXGXSFba1+DzdXBDo2dsUCmyKzUeC
	BTsPUxdFSIDBG3LFAlRnWm8jRmgDNwDb
X-Received: by 2002:a5d:9709:: with SMTP id h9mr15604236iol.184.1552311141535;
        Mon, 11 Mar 2019 06:32:21 -0700 (PDT)
Return-Path: <brandonbonaby94@gmail.com>
Received: from branx011-Vostro-430 ([2607:fea8:29a0:ff5:d93d:e73d:b219:4764])
        by smtp.gmail.com with ESMTPSA id a16sm8210201itc.27.2019.03.11.06.32.20
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 11 Mar 2019 06:32:20 -0700 (PDT)
From: Branden Bonaby <brandonbonaby94@gmail.com>
To: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org
Cc: Branden Bonaby <brandonbonaby94@gmail.com>,
	outreachy-kernel@googlegroups.com
Subject: [Outreachy Kernel] [Patch] staging: vt6655: line over 80 characters
Date: Mon, 11 Mar 2019 09:31:57 -0400
Message-Id: <20190311133157.431-1-brandonbonaby94@gmail.com>
X-Mailer: git-send-email 2.17.1

Move function arguments that go over the 80 characters a line limit to a new line.
"WARNING: line over 80 characters".

Signed-off-by: Branden Bonaby <brandonbonaby94@gmail.com>
---
 drivers/staging/vt6655/card.h | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/vt6655/card.h b/drivers/staging/vt6655/card.h
index d71022aa3f86..f422fb3c78bd 100644
--- a/drivers/staging/vt6655/card.h
+++ b/drivers/staging/vt6655/card.h
@@ -44,7 +44,8 @@ struct vnt_private;
 void CARDvSetRSPINF(struct vnt_private *priv, u8 bb_type);
 void CARDvUpdateBasicTopRate(struct vnt_private *priv);
 bool CARDbIsOFDMinBasicRate(struct vnt_private *priv);
-void CARDvSetLoopbackMode(struct vnt_private *priv, unsigned short wLoopbackMode);
+void CARDvSetLoopbackMode(struct vnt_private *priv,
+			   unsigned short wLoopbackMode);
 bool CARDbSoftwareReset(struct vnt_private *priv);
 void CARDvSetFirstNextTBTT(struct vnt_private *priv,
 			   unsigned short wBeaconInterval);
@@ -61,6 +62,7 @@ bool CARDbRadioPowerOn(struct vnt_private *priv);
 bool CARDbSetPhyParameter(struct vnt_private *priv, u8 bb_type);
 bool CARDbUpdateTSF(struct vnt_private *priv, unsigned char byRxRate,
 		    u64 qwBSSTimestamp);
-bool CARDbSetBeaconPeriod(struct vnt_private *priv, unsigned short wBeaconInterval);
+bool CARDbSetBeaconPeriod(struct vnt_private *priv,
+			   unsigned short wBeaconInterval);
 
 #endif /* __CARD_H__ */
-- 
2.17.1


