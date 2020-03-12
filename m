X-GM-THRID: 6803293292760924160
X-Received: by 2002:a05:600c:218f:: with SMTP id e15mr6607868wme.152.1584039840832;
        Thu, 12 Mar 2020 12:04:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:93:: with SMTP id 141ls3323491wma.1.canary-gmail; Thu,
 12 Mar 2020 12:03:59 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vv15UXB4ZpyGhaHVBwDfxz9kWDF58zNQpvwlOQGsMosSjGWw60MYdlrBpOxLgferovCdDlq
X-Received: by 2002:a1c:e257:: with SMTP id z84mr6539025wmg.91.1584039839562;
        Thu, 12 Mar 2020 12:03:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584039839; cv=none;
        d=google.com; s=arc-20160816;
        b=x6z6G/JoEZEfeSrcYEPk/9shid0V78+UNnpE7JDnx8gaz9plROkz1WRukNRfOzfocL
         XDI97m1VAcnvGsP9DKKQEQLLnVnV6U/oBdikmjcvrkV+KGG6+cC10gNFYIg+bPEJwyQY
         1rqVEZUYUup3fHxRi8AlJPOnVZTrcz5RtG4c6MS/9e0nrwQtb5KrjTaCFJU1kYs5X8YS
         zPftg6N1mL3ekmfi/G7RDJHdK+wPiTjvAWopJ5XUiSuDfHVo7vq+cxGr6fqa+bqluwyD
         q3cJO8jJXJb4pVko4HshwJDIc32vqQvMzoMVckwrhnzu0bxsU5PJNqUJjPybhIbMwFuG
         8yHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=zqsC/ouOjNyX3oAdVQyhvjxcqCym2PJ47dVMMY9nBUs=;
        b=i8+WESA9rV1Mk/ZsL1w8rouUSfEgnmLDfaHaBODbWSIyEoVyP8w0jtW8CnLvhXiCRe
         3d6pBKKzrIr9IiTZhvkPY25+YwIkTWpYlDQRNpvFFfAZojmY+xXVHc5iklZesyeTMm73
         5BZTtbQYayn0sWqWsPOzuh/imU/ZLa6ls7r96MxCf9K/Hx2aWzLb12DHBbDKC/kV1sGV
         KfmzXdTjyzaxTxQVO+nzKEgdmein2oS7K+MwB98g3WAXADOieXauNjRrWmaM1pvhzz53
         TTh44+14jP0ZVVixYoDrapn0jsNJ+x1D3AnYdZVJFnEpoFH4BxBYND9LboRHIL8+eSd5
         u2YA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=TrTIdluv;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=lu@pplo.net
Return-Path: <lu@pplo.net>
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com. [2a00:1450:4864:20::342])
        by gmr-mx.google.com with ESMTPS id i19si382866wml.0.2020.03.12.12.03.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Mar 2020 12:03:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::342 as permitted sender) client-ip=2a00:1450:4864:20::342;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=TrTIdluv;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=lu@pplo.net
Received: by mail-wm1-x342.google.com with SMTP id n8so7309351wmc.4
        for <outreachy-kernel@googlegroups.com>; Thu, 12 Mar 2020 12:03:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pplo.net; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=zqsC/ouOjNyX3oAdVQyhvjxcqCym2PJ47dVMMY9nBUs=;
        b=TrTIdluvoT6zdb2azLg7i69sTZ8tWLjQqJyrFFGLxktG/m2u8jLUEN5thiR9Jnphtt
         uVvdHAoijF3T16E5W3BVfRXU/LIabyhtKWsPTXY/6mEcJYtgwFjRBKpscAPMihyUg4ck
         M/NOrwcqDIHSUlOeZVWxPvCM6HJC4hdZ16hC4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=zqsC/ouOjNyX3oAdVQyhvjxcqCym2PJ47dVMMY9nBUs=;
        b=oLILzenFxj86cj4eOvMOcai8CfD5a2HhPD2jyDHYbbapuKCzxzTTSIRym8SffKNpaH
         lhl2W+3NKDSPxTymYTjPXIx+RY7yJAnI86ChWricb3arKT6/mtSsaJ3+FwIjAlGrkcsK
         e6qPqfHugOeBK4nVEtpPkQA/An8gi6fToEGnz/15rY+xjR1BcsXpo0BKoSuVvg0FxVkg
         IehDtdVN0FHsxtUzt1G2W0/8k03vc1AUHMTW249fi0BuwMuaZ2x0iSRU7aBlWWp62/Dx
         D4ycBDBfZONEozurnwdsgZ97ADYJ07BMxDYXb5Qvl/Nc74AjgSB+zAZIRdq8xdaSouXE
         22GQ==
X-Gm-Message-State: ANhLgQ0QCa1aSop/Elnr+JRPEVq9J00v1Pm+k/tA5Sr1MbYWq73q7BlP
	0HTxtX7ISN8Pkh3J37fUfBdiX5aKzvqV5A==
X-Received: by 2002:a7b:ce0d:: with SMTP id m13mr6002269wmc.135.1584039838873;
        Thu, 12 Mar 2020 12:03:58 -0700 (PDT)
Return-Path: <lu@pplo.net>
Received: from localhost.localdomain (85.251.42.187.dyn.user.ono.com. [85.251.42.187])
        by smtp.gmail.com with ESMTPSA id d18sm13539275wrq.22.2020.03.12.12.03.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2020 12:03:57 -0700 (PDT)
From: Lourdes Pedrajas <lu@pplo.net>
To: outreachy-kernel@googlegroups.com,
	gregkh@linuxfoundation.org,
	vireshk@kernel.org,
	johan@kernel.org,
	elder@kernel.org
Cc: Lourdes Pedrajas <lu@pplo.net>
Subject: [PATCH v2] staging: greybus: i2c: remove unused pointers
Date: Thu, 12 Mar 2020 20:03:49 +0100
Message-Id: <20200312190349.7892-1-lu@pplo.net>
X-Mailer: git-send-email 2.17.1

Remove unused pointers in gb_i2c_algorithm structure and gb_i2c_probe()
function, as they are not touched since 2014.

Suggested-by: Johan Hovold <johan@kernel.org>
Signed-off-by: Lourdes Pedrajas <lu@pplo.net>
---
Changes since v1:
- Corrections in log message

 drivers/staging/greybus/i2c.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/greybus/i2c.c b/drivers/staging/greybus/i2c.c
index c48fa1de89b0..de2f6516da09 100644
--- a/drivers/staging/greybus/i2c.c
+++ b/drivers/staging/greybus/i2c.c
@@ -224,7 +224,6 @@ static u32 gb_i2c_functionality(struct i2c_adapter *adap)
 
 static const struct i2c_algorithm gb_i2c_algorithm = {
 	.master_xfer	= gb_i2c_master_xfer,
-	/* .smbus_xfer	= gb_i2c_smbus_xfer, */
 	.functionality	= gb_i2c_functionality,
 };
 
@@ -267,7 +266,6 @@ static int gb_i2c_probe(struct gbphy_device *gbphy_dev,
 	adapter->owner = THIS_MODULE;
 	adapter->class = I2C_CLASS_HWMON | I2C_CLASS_SPD;
 	adapter->algo = &gb_i2c_algorithm;
-	/* adapter->algo_data = what? */
 
 	adapter->dev.parent = &gbphy_dev->dev;
 	snprintf(adapter->name, sizeof(adapter->name), "Greybus i2c adapter");
-- 
2.17.1


