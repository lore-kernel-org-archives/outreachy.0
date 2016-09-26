X-GM-THRID: 6334764587884216320
X-Received: by 10.157.20.155 with SMTP id d27mr206958ote.13.1474927316314;
        Mon, 26 Sep 2016 15:01:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.38.213 with SMTP id i21ls1229258otd.8.gmail; Mon, 26 Sep
 2016 15:01:55 -0700 (PDT)
X-Received: by 10.13.200.69 with SMTP id k66mr5928307ywd.116.1474927315964;
        Mon, 26 Sep 2016 15:01:55 -0700 (PDT)
Return-Path: <gnudevliz@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id 7si5005444pfw.1.2016.09.26.15.01.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Sep 2016 15:01:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of gnudevliz@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gnudevliz@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=gnudevliz@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id 21so9684412pfy.1
        for <outreachy-kernel@googlegroups.com>; Mon, 26 Sep 2016 15:01:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=FkL4EblysrJAR7bV+gIhqFdHDUqzzAvilIRcaS7aZRQ=;
        b=RNDdkslNWI+v5VSarxmi5aJwrwv7rM5i5ol/AlWwF1F/p+416J60mVYAsnRmSUSA9q
         IJoWz5obrcQ7zNtRGaAJOJe1BeY0S7LIx+vcazkosIwZbkkkAykwyeVE8wPU4yLXcJ2p
         +4fPechVkMKgC44fJA8GFi90cehfS95vqRfyt3B1YMCsX7879/Tp1DHPbWjMng5WM1Ti
         irXbWIPNHfBgObjJqtv5WfZMO7yIM1XCyic8qDghKgAEOul43+WNqFfcjYwR+CUelpOc
         pbpFT1ZQZOU5BUYbFIIkp0IsDN+w/fU8Fj4MPtBiaW0dg59ydfV4bBhBfgtaKF4Keb3h
         ZOaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=FkL4EblysrJAR7bV+gIhqFdHDUqzzAvilIRcaS7aZRQ=;
        b=SCMVrZipbbkjbqScEr5SGOC1I54DiiBHKkA1pMbdfWOjJpEkd6iw6xUpp9HD6nwH0P
         pEaMj0FsB7fh3Ktq7DHcV/qQPuzp7NTxLmDZZhhG//buqehGGx6pgbujmhoqoRcuPajt
         joCNJxL0vMPQQfNTaWkX9jcnLD6PacIBeRn3ADIILml8QVcIYhhJYgl8wPLNmfNYNp0Z
         iekK/5iZPzk3difrKAk+TcuvHVzy9pQaL/KMPOiFru9orcMj0LquJRArQNqqZRLXswtA
         WGGDIc/Ep9cILQY1ybC6fOzD9yYSKNxk/dXquz4vREtj8O++WNjbxGdC4aafljjFw7+p
         cU+g==
X-Gm-Message-State: AE9vXwOAAohO7vtpXw8r/iypAAxV6AEWXqiRwetPXsLO3vLWcwXsV8aqJLizm+BtpixoaQ==
X-Received: by 10.98.93.204 with SMTP id n73mr41661314pfj.87.1474927315607;
        Mon, 26 Sep 2016 15:01:55 -0700 (PDT)
Return-Path: <gnudevliz@gmail.com>
Received: from localhost ([2601:644:300:fd6b:4e0f:6eff:fe69:e9ea])
        by smtp.gmail.com with ESMTPSA id y190sm27101623pfg.39.2016.09.26.15.01.54
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Sep 2016 15:01:55 -0700 (PDT)
Date: Mon, 26 Sep 2016 15:01:53 -0700
From: Elizabeth Ferdman <gnudevliz@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: amsfield22@gmail.com, daniel.baluta@intel.com,
	sudipm.mukherjee@gmail.com, teddy.wang@siliconmotion.com,
	gregkh@linuxfoundation.org
Subject: [PATCH] staging: sm750fb: Refactor camelCase macro
Message-ID: <20160926220150.GA2273@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch refactors a camelcase macro roundedDiv to rounded_div. Error found by checkpatch.

Signed-off-by: Elizabeth Ferdman <gnudevliz@gmail.com>
---
 drivers/staging/sm750fb/ddk750_chip.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
index f557b6d..81df4c4 100644
--- a/drivers/staging/sm750fb/ddk750_chip.c
+++ b/drivers/staging/sm750fb/ddk750_chip.c
@@ -7,7 +7,7 @@
 #include "ddk750_power.h"
 
 /* n / d + 1 / 2 = (2n + d) / 2d */
-#define roundedDiv(num, denom)	((2 * (num) + (denom)) / (2 * (denom)))
+#define rounded_div(num, denom)	((2 * (num) + (denom)) / (2 * (denom)))
 #define MHz(x) ((x) * 1000000)
 
 logical_chip_type_t getChipType(void)
@@ -102,7 +102,7 @@ static void setMemoryClock(unsigned int frequency)
 			frequency = MHz(336);
 
 		/* Calculate the divisor */
-		divisor = roundedDiv(get_mxclk_freq(), frequency);
+		divisor = rounded_div(get_mxclk_freq(), frequency);
 
 		/* Set the corresponding divisor in the register. */
 		reg = PEEK32(CURRENT_GATE) & ~CURRENT_GATE_M2XCLK_MASK;
@@ -152,7 +152,7 @@ static void setMasterClock(unsigned int frequency)
 			frequency = MHz(190);
 
 		/* Calculate the divisor */
-		divisor = roundedDiv(get_mxclk_freq(), frequency);
+		divisor = rounded_div(get_mxclk_freq(), frequency);
 
 		/* Set the corresponding divisor in the register. */
 		reg = PEEK32(CURRENT_GATE) & ~CURRENT_GATE_MCLK_MASK;
-- 
2.1.4


