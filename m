X-GM-THRID: 6400147740050849792
X-Received: by 10.157.8.97 with SMTP id 88mr17423023oty.143.1490150517788;
        Tue, 21 Mar 2017 19:41:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.11.120 with SMTP id p53ls785511otd.7.gmail; Tue, 21 Mar
 2017 19:41:57 -0700 (PDT)
X-Received: by 10.13.228.196 with SMTP id n187mr11228872ywe.87.1490150517182;
        Tue, 21 Mar 2017 19:41:57 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id 2si3961pfz.1.2017.03.21.19.41.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Mar 2017 19:41:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id g2so28066931pge.2
        for <outreachy-kernel@googlegroups.com>; Tue, 21 Mar 2017 19:41:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=92QrF/IePiwaZ/3EQS4jCt6WierhfPs1wjzjG8JihfU=;
        b=rEbOZ3+loO0GUD0yYBHy1G7crsUVMc2aOmUkTZhsg/+S98OdNmqJ2Myz8z1cQ065U4
         qHXZBsNhnbBouMZDQA7W3877RNmE3rFgqegXCmE5gOu0fZm+/ih5AOsY0MK5aP/TZ6gF
         48QuDUebcIMsqKgJ6W3ryxarA5eQr9N8DqltMOkxUIEWHjcSpZj9pft1d98SWK8pgOiq
         LIlxAAgSsWgi/fQYEJsnr+yZ7OhBdq+En7d7LhkaRqPAt3grfsbqXkomhY7s0pY2OmkM
         Z+ZqfNYRrJGAV+fpeX1Enop0kNmkegWaQUcT9I6gkOG9ePLf7MI1X8QlS/T7egvqr05w
         FPbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=92QrF/IePiwaZ/3EQS4jCt6WierhfPs1wjzjG8JihfU=;
        b=oZ4YluJyr1gNwJpIgQy+kz+NgAXb2O8gwWSAVkeMddP45erFQNworodejysPW/CGq3
         ISx6D+/rpYw5ZCcZNaRoiqIirD2Il0ga588AxES2frTntGhUm4iJUuWTh86dcu2FDP49
         6aL6FmeE4+M6xgqHdI6HfR0C+AWrs4q0kpOZZX6gb1+890tdIua8tYoms6ng/GaeW5Fm
         RwOlSdBcXVgPyHZVSql4ciHI6mnQoVwh7TB45cwOHtRNlnOlRb/h6VCpHwsEHXxUkNE7
         NBpeu09BOdhl/R/PvzzXg0/eC4QM4t44uXeH1iNHgniE/Lu/rQWzQMP2LAQ+oKsrxaAI
         HfcQ==
X-Gm-Message-State: AFeK/H3PHIgYHtroOywYIbnUXl0j+lRacnBap9hxv0FaClU0/x7zd2YC+Raz8dcjm7heLg==
X-Received: by 10.98.99.196 with SMTP id x187mr42828674pfb.168.1490150516949;
        Tue, 21 Mar 2017 19:41:56 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id q64sm19077pfi.69.2017.03.21.19.41.55
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 21 Mar 2017 19:41:55 -0700 (PDT)
Date: Wed, 22 Mar 2017 08:11:52 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: sudipm.mukherjee@gmail.com
Cc: Teddy Wang <teddy.wang@siliconmotion.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-fbdev@vger.kernel.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: sm750fb: Replace a bit shift by a use of BIT.
Message-ID: <20170322024152.GA12064@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch replaces bit shifting on 1 with the BIT(x) macro.
This was done with coccinelle:
@@
constant c;
@@

-1 << c
+BIT(c)

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 drivers/staging/sm750fb/ddk750_chip.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
index 5e4bfb601cea..112ee4182a0a 100644
--- a/drivers/staging/sm750fb/ddk750_chip.c
+++ b/drivers/staging/sm750fb/ddk750_chip.c
@@ -44,7 +44,7 @@ static unsigned int get_mxclk_freq(void)
 	OD = (pll_reg & PLL_CTRL_OD_MASK) >> PLL_CTRL_OD_SHIFT;
 	POD = (pll_reg & PLL_CTRL_POD_MASK) >> PLL_CTRL_POD_SHIFT;
 
-	return DEFAULT_INPUT_CLOCK * M / N / (1 << OD) / (1 << POD);
+	return DEFAULT_INPUT_CLOCK * M / N / (BIT(OD)) / (BIT(POD));
 }
 
 /*
-- 
2.11.0


