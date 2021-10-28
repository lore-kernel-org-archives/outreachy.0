X-GM-THRID: 7024064041486123008
X-Received: by 2002:a5d:4dc2:: with SMTP id f2mr4499987wru.181.1635417361655;
        Thu, 28 Oct 2021 03:36:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:6b08:: with SMTP id v8ls3127207wrw.3.gmail; Thu, 28 Oct
 2021 03:36:00 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxAOLzGICk7f9CJtdTaRRAfFjIN8jj3592qQ7BPU9vvBe86PBCvU53+fcn/X+hGJd2tReEb
X-Received: by 2002:adf:ded2:: with SMTP id i18mr4571838wrn.58.1635417360290;
        Thu, 28 Oct 2021 03:36:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1635417360; cv=none;
        d=google.com; s=arc-20160816;
        b=FzGDVLiJJxUOxn74f/BJSDjFbKGeW0y4mCzwaFGED7l/HX4ro02DCveun3S0f7tOHr
         HhiFb+QtQWhtwHNNMO0NCU8QQOR8CMp1AjQ/jlcz+w0JAWyTN1dRJH1DowInMw8hX8dZ
         3naXHcWAWEga87qm8jOrPuxlfYcHeoi27b1dxQQpZAWN7lsUZwBxppVbO85LJ/g7L8rm
         aA3FqEDsVhTYV2GZod5+6N8ueqEdY8G6d8PAJqlBzC2Rs24MQucMTK0Rfs6S9v00Nx4O
         YQMS0d2NKsmXfFOYI8EZa+AjuuOkcAWyL8R37Dk25B7DJKL35icV2NENF46Qs1/q/QVb
         a73Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=ryVRGAjLsxXO+6wVDsG6ZKxEGX+uqPXEwX9lKO2pYz8=;
        b=yeW7/i2HSAp6BAMow34QJmZqZYFBmZ0RmveCrPjjPdkigyOf43oe4CCaE2WLxOn7p3
         zN8vhUwnl4q1nE37nq4t6rI8KFEJbzw8qNNVMQ3bSn8zaJ8dZUPtpoqlemXQr3N1S44b
         CUTHIT3Nr/BqA0fJg/a6/OAZYadJqMv9sAQv0A8MccMZgGNgPU6kEEcKR+Av52soBlpH
         WcFjE8fXmZ88DokJKp4k31sw/HZ/IUsGxFHoU3WKDZgbOk60cuVmQTjwG8yLf7o6Ujrg
         8Td90Oq7VO6OMEkRKMr8p1Atu3FM/zhWdfSUNRhevJTkuDbUzL/4Mq8u2MjE/Y60Wfwm
         7sqg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=oTa74fFI;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::330 as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <karolinadrobnik@gmail.com>
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com. [2a00:1450:4864:20::330])
        by gmr-mx.google.com with ESMTPS id v5si30200wrv.4.2021.10.28.03.36.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Oct 2021 03:36:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::330 as permitted sender) client-ip=2a00:1450:4864:20::330;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=oTa74fFI;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::330 as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x330.google.com with SMTP id 131-20020a1c0489000000b0032cca9883b5so7592025wme.0
        for <outreachy-kernel@googlegroups.com>; Thu, 28 Oct 2021 03:36:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ryVRGAjLsxXO+6wVDsG6ZKxEGX+uqPXEwX9lKO2pYz8=;
        b=oTa74fFIMCJ+x2ePeHlgRabqX0lSx0DtIvQiGY8DPp1l/ybpqDpEkaacD1BSvl9rKj
         9rkIzQKV2A12cQg1fX7IuS3vmpnYg0GLJib6NwOaHSrPdTqbufG78wfxSN6fBpMUBLwk
         iXtzF5vqySnICSmTRBOl0ETw0+HT//jgZo1/p7YLWng3GUXiuc63Pm1XhxO4KiJmL8V+
         Lj3GDpqy4EsY3La1e7Aj6hA9yzs9wlUY7sUe8lrh1WL/sipQ+Mj3LNj59chqSeGqyiXO
         adoY+NZAyqm8JgExediOLtnAr5mVqd+jtibEEcr61BLshlHVBS2GwAz6+rRyQAt7qT66
         Kjag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ryVRGAjLsxXO+6wVDsG6ZKxEGX+uqPXEwX9lKO2pYz8=;
        b=J1FP4xIBkwtyMWNSAK9GOfzI37CsuPlZOIBzgoewokzaN71y9/qtjvwXtA/AawtUkb
         qTVcECz1TUCDFEBN+NTvDgPXcGew3kuJvt1Y/h/lCQ2pazJES8MBh5T6O48AHWebHVHa
         dzQrgpj2xIm3k6iZ5o1Vzksd3hRBsinRoFkpSWVD1CMa18eyS966re/2raUwpbUQ0Ab6
         fjh3TSfkhLZwQUskNQhCXxdEdyGe2aXKNmr2R+UOPtYU8SDRvtbqVBkguvdiq0d8m86a
         E+T7y6usxdQTaZeuwPiuqH3KoIo8leTtL96YzPc+FiSBenmxq5ILap6YCANZSuF7fiIY
         f5fg==
X-Gm-Message-State: AOAM5326yMaBwMB6So4yWfczSQ8zvJRAt/kf6amW/UxZXNC/tKkieu/S
	CZrNyWG0P0vWTFRfeSORKbjLD6d3KDBqrPft
X-Received: by 2002:a1c:6a06:: with SMTP id f6mr3624563wmc.153.1635417360026;
        Thu, 28 Oct 2021 03:36:00 -0700 (PDT)
Return-Path: <karolinadrobnik@gmail.com>
Received: from localhost.localdomain ([2a01:4b00:f411:e700:e085:8cb7:7bf6:5d62])
        by smtp.gmail.com with ESMTPSA id 13sm3768083wrz.38.2021.10.28.03.35.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Oct 2021 03:35:59 -0700 (PDT)
From: Karolina Drobnik <karolinadrobnik@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	forest@alittletooquiet.net,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Karolina Drobnik <karolinadrobnik@gmail.com>
Subject: [PATCH 4/7] staging: vt6655: Introduce `data` temporary variable
Date: Thu, 28 Oct 2021 11:35:34 +0100
Message-Id: <dc72a4c3539aed70569f66396ed3b51818bc2aea.1635415820.git.karolinadrobnik@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1635415820.git.karolinadrobnik@gmail.com>
References: <cover.1635415820.git.karolinadrobnik@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add a variable to store initialization tables. Use this variable
in AL2230 initialization.

Signed-off-by: Karolina Drobnik <karolinadrobnik@gmail.com>
---
 drivers/staging/vt6655/rf.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/vt6655/rf.c b/drivers/staging/vt6655/rf.c
index ea74701917e5..afd202ea3356 100644
--- a/drivers/staging/vt6655/rf.c
+++ b/drivers/staging/vt6655/rf.c
@@ -684,6 +684,7 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char rf_type,
 	unsigned short idx = MISCFIFO_SYNDATA_IDX;
 	unsigned char init_count = 0;
 	unsigned char sleep_count = 0;
+	const unsigned long *data;
 
 	VNSvOutPortW(iobase + MAC_REG_MISCFFNDEX, 0);
 	switch (rf_type) {
@@ -699,8 +700,9 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char rf_type,
 		if (init_count > (MISCFIFO_SYNDATASIZE - sleep_count))
 			return false;
 
+		data = al2230_init_table;
 		for (i = 0; i < CB_AL2230_INIT_SEQ; i++)
-			MACvSetMISCFifo(priv, idx++, al2230_init_table[i]);
+			MACvSetMISCFifo(priv, idx++, *(data++));
 
 		MACvSetMISCFifo(priv, idx++, al2230_channel_table0[channel - 1]);
 		MACvSetMISCFifo(priv, idx++, al2230_channel_table1[channel - 1]);
-- 
2.30.2


