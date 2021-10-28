X-GM-THRID: 7024064041486123008
X-Received: by 2002:a2e:553:: with SMTP id 80mr3778597ljf.459.1635417363217;
        Thu, 28 Oct 2021 03:36:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:651c:508:: with SMTP id o8ls538041ljp.0.gmail; Thu, 28
 Oct 2021 03:36:01 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwSgvGS2VT1Bs8zA6kFHeDnNBhB7EY2Uw8FH3AUjkecoKFGrNOoYT/f25Ctx1sZpBFSLa6q
X-Received: by 2002:a2e:7205:: with SMTP id n5mr3796709ljc.65.1635417361674;
        Thu, 28 Oct 2021 03:36:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1635417361; cv=none;
        d=google.com; s=arc-20160816;
        b=BuyKfpbW/fLccAhwOv9wDuo/E7Q6I4T1/MQ3JEdQUVgbDXahhFyRVrPGs6GX1jEyaK
         ac8c/FKMG8d+A1Ksv0hrN81brJujEDs9ZOPnu7CifF+ftTAoJ+ke6EePq5PNiiRRjBsC
         Vdm4Kuxu0HsvKC1QZ3qfTDmRc8oqONC2gwIz0aWeI7v5tX0x27YajlQtYs03UbHPt4Rn
         eXywRUH3R1w9zQpz/dQZopJWQ9MU9ZdLmP/tjgg7yjES2XYNCq/6mWzbzVMp5s+XP6aZ
         l+IHNO/yxMnqb+QMftPbeSqz+gdO6BbFon1xCNbr+q6feFZvQVXuJraJnEcFosSz/iID
         X6xg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=57jrsqHmJG3XduSsdkS6puAAy8HJeI7z6m7TmMyYW+g=;
        b=efWGOcIY468H1Rr9mcKy++mJrFcTyU1j8jbIkS352on5vZZM76pqsDz2DTtRwpdXb8
         vMqPJX8qT/Q54GGZ/u3rVbPKz9WKNTwxm+WQy/64LMwCailWkaPKbchiTqQHLfHgedwh
         aBZSzSxcW43Q+EyzhZ/kBtKjaUDjNB1XcngGQxqNS3o5NifDbmPdnea+WCs/lSaX3Sas
         2aV0L6PSDsdI9BESugfR3N/wGO7HxnVhXDDB4ufD5gIwN5izuQXkD0OPyQ0s+qEWjjCq
         iaXOVfT4dzNLyAI2o/9rtqEuE0/ksdVT9zfCaSzrJdbOVJaHdL0+9W90VVUlmTQNgIZS
         99Cg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=aWiCs+Xn;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::336 as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <karolinadrobnik@gmail.com>
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com. [2a00:1450:4864:20::336])
        by gmr-mx.google.com with ESMTPS id f20si153124ljn.4.2021.10.28.03.36.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Oct 2021 03:36:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::336 as permitted sender) client-ip=2a00:1450:4864:20::336;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=aWiCs+Xn;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::336 as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x336.google.com with SMTP id v127so5281140wme.5
        for <outreachy-kernel@googlegroups.com>; Thu, 28 Oct 2021 03:36:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=57jrsqHmJG3XduSsdkS6puAAy8HJeI7z6m7TmMyYW+g=;
        b=aWiCs+Xn1Hutl4fQQCHwuZkWzIv5Vr9egCcMdniw98K87gxzW27JDelUGRSAxn0Mbh
         s2IAq0xKqJxKEGUJ/f+4mbCInjyFi7ps33WI+IscYACNqsf4s/GytYgHHOpeZUFOhzXp
         8+t5GalbQe3AAEjzvx/qVd8KyJEc68Qi2drTRic6IIc5C+kDU+PgAtoXoUcm838xVL1y
         HNEADG+5mT2xL4ZBDfMddoOwANUxcpXj+Qxk0IcwIMO4SCFSfoWSUp+Cie+rO9ivjqaP
         t+3tUPCZxZhugfNa3P/rQqyKT2wrRKh1/1e7ya03oIGAdM8l2zdXay949h7iPhLF7tET
         R2lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=57jrsqHmJG3XduSsdkS6puAAy8HJeI7z6m7TmMyYW+g=;
        b=Jj2ysHvpAh9qBfzkHejRQGh0g8mEx9RzSefXG+fRSVaW+9jSgC/pkyczEXTm2dqsU6
         N4h/p2yTb4LBHZCmSoPg+eTLaa3UL6kF1Y+ZYZP/54c5DbBNlOMay9DbK0SAO2L4F8wm
         ELLwrfICJgIzhlgUe81cl8/DXTabpk7uVp4yPp43cnitDPFBHtcbhHoWqfTzOJHu2Ukj
         3IqeEkrOxiB9/xKHSi00KgU9OyBfHXeApHieno6mbWs++j3qJNLraMu9MstL6zHc0g+o
         kdbb2oKl5qccMJGzOICpnuhtzmjK1VyfRus8ZIKrFYXnm10IFY2AftYeLfpn2eSNSWSe
         fySw==
X-Gm-Message-State: AOAM53317alrUa6+LmEnhjvFK8qvwu/aaBtafTJJr+I5JTttgW87LwkW
	tz1xYJyaTh/limJP9bn0bv+H0+MuJCWFIAUR
X-Received: by 2002:a1c:750b:: with SMTP id o11mr3543917wmc.5.1635417361472;
        Thu, 28 Oct 2021 03:36:01 -0700 (PDT)
Return-Path: <karolinadrobnik@gmail.com>
Received: from localhost.localdomain ([2a01:4b00:f411:e700:e085:8cb7:7bf6:5d62])
        by smtp.gmail.com with ESMTPSA id 13sm3768083wrz.38.2021.10.28.03.36.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Oct 2021 03:36:01 -0700 (PDT)
From: Karolina Drobnik <karolinadrobnik@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	forest@alittletooquiet.net,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Karolina Drobnik <karolinadrobnik@gmail.com>
Subject: [PATCH 5/7] staging: vt6655: Rewrite conditional in AL7320 initialization
Date: Thu, 28 Oct 2021 11:35:35 +0100
Message-Id: <948406a3e7d23f1cdf866aa4448d9428bdd32512.1635415820.git.karolinadrobnik@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1635415820.git.karolinadrobnik@gmail.com>
References: <cover.1635415820.git.karolinadrobnik@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Use conditional operator to determine which table for AL7320
initialization should be used. Use `data` temporary value to
store this value.

Signed-off-by: Karolina Drobnik <karolinadrobnik@gmail.com>
---
 drivers/staging/vt6655/rf.c | 11 ++++-------
 1 file changed, 4 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/vt6655/rf.c b/drivers/staging/vt6655/rf.c
index afd202ea3356..af4eb7eb8e7d 100644
--- a/drivers/staging/vt6655/rf.c
+++ b/drivers/staging/vt6655/rf.c
@@ -716,13 +716,10 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char rf_type,
 		if (init_count > (MISCFIFO_SYNDATASIZE - sleep_count))
 			return false;
 
-		if (channel <= CB_MAX_CHANNEL_24G) {
-			for (i = 0; i < CB_AL7230_INIT_SEQ; i++)
-				MACvSetMISCFifo(priv, idx++, al7230_init_table[i]);
-		} else {
-			for (i = 0; i < CB_AL7230_INIT_SEQ; i++)
-				MACvSetMISCFifo(priv, idx++, al7230_init_table_a_mode[i]);
-		}
+		data = (channel <= CB_MAX_CHANNEL_24G) ?
+			al7230_init_table : al7230_init_table_a_mode;
+		for (i = 0; i < CB_AL7230_INIT_SEQ; i++)
+			MACvSetMISCFifo(priv, idx++, *(data++));
 
 		MACvSetMISCFifo(priv, idx++, al7230_channel_table0[channel - 1]);
 		MACvSetMISCFifo(priv, idx++, al7230_channel_table1[channel - 1]);
-- 
2.30.2


