X-GM-THRID: 6463137391711354880
X-Received: by 10.129.159.193 with SMTP id w184mr425145ywg.182.1504816438922;
        Thu, 07 Sep 2017 13:33:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.162.193 with SMTP id l184ls1971796ioe.15.gmail; Thu, 07
 Sep 2017 13:33:58 -0700 (PDT)
X-Received: by 10.200.5.7 with SMTP id u7mr324565qtg.62.1504816438119;
        Thu, 07 Sep 2017 13:33:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504816438; cv=none;
        d=google.com; s=arc-20160816;
        b=GZegbraJ27eh6So8fD01KlKjvLprT7qrhu/BQNtt4wrb30iU+P8z0KwKntnLeILPKz
         SXjGrHr+3OOpNHA+sEwML6jWDTKCDeXHsxC0ASHIzKF7OF5ZHC/fiX1hNGDlZ3g2hn/C
         QR2RMrvNkOw2AOe/m4iyDJaPw3m4BOIMKd2iRkAA1X1SXagZpswSYwdKnmQxHw2Su28R
         Bjs+wtkjRYXlLDaS/NAOChD8VvaCT3ilRAAiQof3hwyglfPoid5oICTERxwzAHvpktm8
         SqXRrsFyZI41csuDtviXsHBUls9Yx1b37HCYF3O5pRS0CQjbtav2eQ74LAPHzYcMeSH8
         ZvAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=Pa9mrbdQHZhFWRiEsua1bLiYJPEpvPOAPg8Pg09UiBs=;
        b=nh1NVMABUuoHmDGV/nlcNxl+UB00YG0JlXLAk5I0IN2yqHswqxp7y1CTaL25xaV9CB
         Jidnipe/oUSLhYAoSvNNVQvMIXA8W6aI5j1KB3lQrtMsyTKv70MGlcWR1xE8HxhQiySr
         dpzApoNeATK8VoFwQxMy/tO0H1iBPEVS+zrpl/dxOUy5XLsFoXysjqVVGh3ZsJEo72WP
         22eKSeLnmBH/hmwwul7jWpqNLWRaxAFE3XgFcXcTyn0JDJR2X6AepRozoYH/kD5lE2dg
         VixXJcGy/Cu8UhHkWKRi44zi9RWAfZZ77RzAngIUKKhc+DR14LybvRI2inTwjG3pMQ41
         VW3w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uu+fYMtq;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <harshasharmaiitr@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id k76si61899pfb.5.2017.09.07.13.33.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 Sep 2017 13:33:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uu+fYMtq;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id v5so371375pgn.4
        for <outreachy-kernel@googlegroups.com>; Thu, 07 Sep 2017 13:33:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=Pa9mrbdQHZhFWRiEsua1bLiYJPEpvPOAPg8Pg09UiBs=;
        b=uu+fYMtqmcFfw9fkARwQR7fY9wr+iZEJ1z8rnI/xAi5y9/yxWVroDY+eIM9b2pFOY1
         N0cg09oiNFJ3ufukbAwpnUokwFxkRXImKvOvhQe5uGHvP/sccgCIXBzWU6sL+2Ys/cRa
         GfvYKIV9jZMWt5cqGtwM3X7IB7VxQXlHCszRXwFHPIIBMJHNOJWYR3pmt8+C4koKVP1M
         VV00z/ln3Wsc22pm65Mo/tIKxlSWFI+i/8rwx6HQAZqNvoDUR5pZe+1Y7LZqb32x0z5+
         C1jJN11T25G+kvCuQuORmAPCQDByl9mxQl7sIXeo2iFQmtnpmjJuLwSjVNBtBKagrl74
         1FWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Pa9mrbdQHZhFWRiEsua1bLiYJPEpvPOAPg8Pg09UiBs=;
        b=UMDcqQJgdJR31RRXT5ivs0wfBYBidjnb4nwTyGbNZ0IERNCpJwFMWvqx5EHXCUbPKW
         5O7TRd2RFFvkbtPD17KtlgYDlfkShKpia9G3soNe2RuO8AYdg0nGhPD2OaJGDfeNMyA1
         dSR36DKjGES9lgdZL2l+qjykRFvaJBe6PwGhKyDuv+Vdh9M+4CuYM4YIZcIf08VlhTKE
         aXl+kCQbQyGpkKaWc5TalFYQm2P1KWwSe7sXQiQrmdtQBXto3kPh+LyrCzyogAcv96P8
         YbEegNNrJ5xnykTVdQtH78gBSisyEu4X4f8YAKP6BPdDBZG/qsk6AhZfvAjHd/hJP0WV
         advg==
X-Gm-Message-State: AHPjjUitYtDeML3+TU3WYvLuHDswdXqBIpY8vcETzGHnL52649QXtP9y
	2Ycejef44wxztw==
X-Google-Smtp-Source: ADKCNb7UWZ5Bba02yg05FVo2/dnrUF/8DlcbOdTczeLEJlDSohzXMa6zUUSWHn56e+D1GfsMJi6FQg==
X-Received: by 10.98.133.194 with SMTP id m63mr680131pfk.44.1504816437784;
        Thu, 07 Sep 2017 13:33:57 -0700 (PDT)
Return-Path: <harshasharmaiitr@gmail.com>
Received: from harryPotter.iitr.ernet.in ([103.37.201.122])
        by smtp.gmail.com with ESMTPSA id v71sm639910pfa.45.2017.09.07.13.33.55
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 07 Sep 2017 13:33:57 -0700 (PDT)
From: harsha <harshasharmaiitr@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	harsha <harshasharmaiitr@gmail.com>
Subject: [PATCH] Staging:pi433:pi433_if.c:Fixes minor typo errors
Date: Fri,  8 Sep 2017 02:01:56 +0530
Message-Id: <1504816316-9331-1-git-send-email-harshasharmaiitr@gmail.com>
X-Mailer: git-send-email 1.9.1

Fixes checkpatch warning -- "occured" and "succesfully" are misspelled

Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
---
 drivers/staging/pi433/pi433_if.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/pi433/pi433_if.c b/drivers/staging/pi433/pi433_if.c
index 6b9b7df..6a10478 100644
--- a/drivers/staging/pi433/pi433_if.c
+++ b/drivers/staging/pi433/pi433_if.c
@@ -473,7 +473,7 @@ struct pi433_instance {
 	}
 
 
-	/* rx done, wait was interrupted or error occured */
+	/* rx done, wait was interrupted or error occurred */
 abort:
 	dev->interrupt_rx_allowed = true;
 	SET_CHECKED(rf69_set_mode(dev->spi, standby));
@@ -1033,7 +1033,7 @@ static int setup_GPIOs(struct pi433_device *device)
 		if (retval)
 			return retval;
 
-		dev_dbg(&device->spi->dev, "%s succesfully configured", name);
+		dev_dbg(&device->spi->dev, "%s successfully configured", name);
 	}
 
 	return 0;
-- 
1.9.1


