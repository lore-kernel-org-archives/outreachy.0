X-GM-THRID: 6252667491219144704
X-Received: by 10.140.143.200 with SMTP id 191mr7739104qhp.3.1455812596203;
        Thu, 18 Feb 2016 08:23:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.93.36 with SMTP id c33ls4474232qge.30.gmail; Thu, 18 Feb
 2016 08:23:14 -0800 (PST)
X-Received: by 10.129.125.215 with SMTP id y206mr7578522ywc.54.1455812594684;
        Thu, 18 Feb 2016 08:23:14 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-ig0-x229.google.com (mail-ig0-x229.google.com. [2607:f8b0:4001:c05::229])
        by gmr-mx.google.com with ESMTPS id k15si215337igt.3.2016.02.18.08.23.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Feb 2016 08:23:14 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c05::229 as permitted sender) client-ip=2607:f8b0:4001:c05::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c05::229 as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ig0-x229.google.com with SMTP id hb3so15932427igb.0
        for <outreachy-kernel@googlegroups.com>; Thu, 18 Feb 2016 08:23:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=Fcht7n1ZNfQc/B3fJTt0h6F1ENlIgQUMex1uwsVtez0=;
        b=yXfP05VulmCj8a9l9XApYyK6gNR2vyBRUigSEjmXGHYC4tMdj2QOK5kKW+h3CUbOKV
         GS5WQqoQhOB+ib9+QtvVHHES/hpHV/HONX8oy8ecFw5JitSIB3ZRmdGdeyN2Z/McmLPv
         3R3faFG9Ka0pMiqI5ImNztPHiApP0R2JzmYp+x4N03AF4AnoIDgUeQE+uunXGzR4Fcnh
         QCIU3Sf8Bnr9wBJ4qXTZigNFWIAIXKjrK+mu7wR6LlyjoMtbiMAquD7EImjAWmRIaIxF
         2luVYfdu2rTc3V/iAomofV1E5j4g0iluskmtKR5yJ/KK4vd2R01VT51nC0VgCS8Dv6mJ
         hNtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Fcht7n1ZNfQc/B3fJTt0h6F1ENlIgQUMex1uwsVtez0=;
        b=KvQTKkKYzMrAR88azVovIOeFWQhA/WTo9+7t5mRja+KLH0nuDw5L+/9HXO6R7/edZx
         u4/meV5gIBK0dIFXG1g2Pq5l1QwTFTCi0sRBHxrzHUs85hgfs4tu7VTCacNmoPR1CiH1
         id4N77Sapn73qIhrCKt1UrGkqKfh48wpf95htavEzxqayAA4Oxu6zsXLHhLUPKk5LLiZ
         BAqe45xpQ2exwWUpkCNS4ydxmln8Dq31+zUcU+ANHXY87/QxYYEyXhKXdf4RinOXodWt
         dTua4ZaHJCGGvQrd9TXszeUsDKVk8qhlyv3Ct0reKFrVxkYXYgdCCgxtTLWifBF+7VP0
         6lEQ==
X-Gm-Message-State: AG10YOT1RafXhHc8/fpsC/jsFOp8VfBHTdJSILONq13fQ0JQ2EeWIkYlX92Rp3UCU5/9uQ==
X-Received: by 10.50.30.134 with SMTP id s6mr3955923igh.36.1455812594548;
        Thu, 18 Feb 2016 08:23:14 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id v29sm3752127iov.11.2016.02.18.08.23.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Feb 2016 08:23:14 -0800 (PST)
Date: Thu, 18 Feb 2016 16:22:29 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: iio: accel: Remove unnecessary else after goto in
 if block
Message-ID: <20160218212229.GA6562@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch removes the unnecessary else following an if block with a
goto statement.

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
 drivers/staging/iio/accel/sca3000_core.c | 3 +--
 drivers/staging/iio/accel/sca3000_ring.c | 3 +--
 2 files changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/iio/accel/sca3000_core.c b/drivers/staging/iio/accel/sca3000_core.c
index 02e930c..a8f533a 100644
--- a/drivers/staging/iio/accel/sca3000_core.c
+++ b/drivers/staging/iio/accel/sca3000_core.c
@@ -216,8 +216,7 @@ static int sca3000_read_ctrl_reg(struct sca3000_state *st,
 	ret = sca3000_read_data_short(st, SCA3000_REG_ADDR_CTRL_DATA, 1);
 	if (ret)
 		goto error_ret;
-	else
-		return st->rx[0];
+	return st->rx[0];
 error_ret:
 	return ret;
 }
diff --git a/drivers/staging/iio/accel/sca3000_ring.c b/drivers/staging/iio/accel/sca3000_ring.c
index 1920dc60..d1cb9b9 100644
--- a/drivers/staging/iio/accel/sca3000_ring.c
+++ b/drivers/staging/iio/accel/sca3000_ring.c
@@ -99,8 +99,7 @@ static int sca3000_read_first_n_hw_rb(struct iio_buffer *r,
 	ret = sca3000_read_data_short(st, SCA3000_REG_ADDR_BUF_COUNT, 1);
 	if (ret)
 		goto error_ret;
-	else
-		num_available = st->rx[0];
+	num_available = st->rx[0];
 	/*
 	 * num_available is the total number of samples available
 	 * i.e. number of time points * number of channels.
-- 
2.5.0


