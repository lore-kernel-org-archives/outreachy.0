X-GM-THRID: 6331560092699197440
X-Received: by 10.66.123.74 with SMTP id ly10mr2589034pab.104.1474181211447;
        Sat, 17 Sep 2016 23:46:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.22.69 with SMTP id 66ls2719379iow.31.gmail; Sat, 17 Sep
 2016 23:46:50 -0700 (PDT)
X-Received: by 10.107.141.13 with SMTP id p13mr2612943iod.19.1474181210179;
        Sat, 17 Sep 2016 23:46:50 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id um12si3878199pab.2.2016.09.17.23.46.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Sep 2016 23:46:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id vz6so5393035pab.1
        for <outreachy-kernel@googlegroups.com>; Sat, 17 Sep 2016 23:46:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=RJpHtinLylAHHF2oOAhYq/Mc1kQ5UOOVjnuSxyK6oqk=;
        b=J7Byrv9VOh8JKXj1vL6AyS+BlLMSIydddqxgTegPQraAe60mqgSD0weSoAyUose8hA
         vHcN6s7HhcHrhzWsiMccjchh5gbCe3AGNKqyZcYMxiMdEYo+Y9QfqkQIGyYYG9FAMEWU
         sofr/2Wrz9C0gq8YKOR8xYxgZoCOVIegq3Y2X+PfV1v6Fsz1EQ6/OmQ5NF6TiEcNf4D1
         H0UEiShIyKpLaby0wxzt0lTB73T/Iw0OihaFpBgvNVgaBye+wUsEJBJdF38MCIYvLraU
         U9pdf4rqWrwFhtpOO2EN3fEnh11ra6q85rrwg6VwMAHL8OWmga3t6PVHmG6j9Ler/NLV
         6k6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=RJpHtinLylAHHF2oOAhYq/Mc1kQ5UOOVjnuSxyK6oqk=;
        b=djbi4lYhwd+NzGaNb0er5ngIHz0lqe+ZVHQE2dWsihvN00jjUH0khG84hoQSJZ1rly
         P3my9DHwBH1T3+0xDHU/V7jgYHcv9dzqlxcXIuacLEwlNWM6C3pLEr1nVEJpaWF1SoJa
         2Z2mah6075OkcMhIjfo4ecy5x2IAl6mSOZe8JQF4gkwZoOnpzNYr/AdaGy7immSqurX/
         4vxlv3MVvbgUBWfvEbiUSEEyBZXezdnlxz9kYCUCEDnBKegnPaj/EX8hZ3o8MCos9Ia/
         mxMeEig2Okoqhey678Alh+3pGJkiGSp4W4aVQaJ4adNI2PHClTHCWNUHiQ+4hY1ySovS
         eGQA==
X-Gm-Message-State: AE9vXwMegCIa9XQamIdBoQJHapdahJkR/wfr98JkQ9BS1bKYTfejnWtr031ySPIKtEoVhw==
X-Received: by 10.67.11.107 with SMTP id eh11mr7517812pad.89.1474181209969;
        Sat, 17 Sep 2016 23:46:49 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from life-desktop ([182.71.113.218])
        by smtp.gmail.com with ESMTPSA id s1sm22589968paz.47.2016.09.17.23.46.48
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Sat, 17 Sep 2016 23:46:49 -0700 (PDT)
Date: Sun, 18 Sep 2016 12:16:40 +0530
From: Anchal Jain <anchalj109@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org, jon.nettleton@gmai
Subject: [PATCH] staging: olpc_dcon: Replace a bit shift by a use of BIT.
Message-ID: <20160918064513.GA3810@life-desktop>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch replaces bit shifting on 1 with the BIT(x) macro
as it's extensively used by other function in the file olpc_dcon.h .

Signed-off-by: Anchal Jain <anchalj109@gmail.com>
---
 drivers/staging/olpc_dcon/olpc_dcon.h | 30 +++++++++++++++---------------
 1 file changed, 15 insertions(+), 15 deletions(-)

diff --git a/drivers/staging/olpc_dcon/olpc_dcon.h b/drivers/staging/olpc_dcon/olpc_dcon.h
index 215e7ec..23a48a1 100644
--- a/drivers/staging/olpc_dcon/olpc_dcon.h
+++ b/drivers/staging/olpc_dcon/olpc_dcon.h
@@ -9,18 +9,18 @@
 #define DCON_REG_ID		 0
 #define DCON_REG_MODE		 1
 
-#define MODE_PASSTHRU	(1<<0)
-#define MODE_SLEEP	(1<<1)
-#define MODE_SLEEP_AUTO	(1<<2)
-#define MODE_BL_ENABLE	(1<<3)
-#define MODE_BLANK	(1<<4)
-#define MODE_CSWIZZLE	(1<<5)
-#define MODE_COL_AA	(1<<6)
-#define MODE_MONO_LUMA	(1<<7)
-#define MODE_SCAN_INT	(1<<8)
-#define MODE_CLOCKDIV	(1<<9)
-#define MODE_DEBUG	(1<<14)
-#define MODE_SELFTEST	(1<<15)
+#define MODE_PASSTHRU	bit(0)
+#define MODE_SLEEP	bit(1)
+#define MODE_SLEEP_AUTO	bit(2)
+#define MODE_BL_ENABLE	bit(3)
+#define MODE_BLANK	bit(4)
+#define MODE_CSWIZZLE	bit(5)
+#define MODE_COL_AA	bit(6)
+#define MODE_MONO_LUMA	bit(7)
+#define MODE_SCAN_INT	bit(8)
+#define MODE_CLOCKDIV	bit(9)
+#define MODE_DEBUG	bit(14)
+#define MODE_SELFTEST	bit(15)
 
 #define DCON_REG_HRES		0x2
 #define DCON_REG_HTOTAL		0x3
@@ -35,11 +35,11 @@
 #define DCON_REG_MEM_OPT_B	0x42
 
 /* Load Delay Locked Loop (DLL) settings for clock delay */
-#define MEM_DLL_CLOCK_DELAY	(1<<0)
+#define MEM_DLL_CLOCK_DELAY	bit(0)
 /* Memory controller power down function */
-#define MEM_POWER_DOWN		(1<<8)
+#define MEM_POWER_DOWN		bit(8)
 /* Memory controller software reset */
-#define MEM_SOFT_RESET		(1<<0)
+#define MEM_SOFT_RESET		bit(0)
 
 /* Status values */
 
-- 
1.9.1


