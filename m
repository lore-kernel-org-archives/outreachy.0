X-GM-THRID: 6261600967580450816
X-Received: by 10.140.29.183 with SMTP id b52mr14932754qgb.8.1457892583618;
        Sun, 13 Mar 2016 11:09:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.96.230 with SMTP id k93ls3625509qge.78.gmail; Sun, 13 Mar
 2016 11:09:43 -0700 (PDT)
X-Received: by 10.31.9.78 with SMTP id 75mr15264135vkj.9.1457892583029;
        Sun, 13 Mar 2016 11:09:43 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from mail-qk0-x231.google.com (mail-qk0-x231.google.com. [2607:f8b0:400d:c09::231])
        by gmr-mx.google.com with ESMTPS id k13si947683ywe.1.2016.03.13.11.09.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 13 Mar 2016 11:09:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400d:c09::231 as permitted sender) client-ip=2607:f8b0:400d:c09::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400d:c09::231 as permitted sender) smtp.mailfrom=juliana.orod@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x231.google.com with SMTP id o6so67159120qkc.2
        for <outreachy-kernel@googlegroups.com>; Sun, 13 Mar 2016 11:09:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=sxKgTtzIS7RNzheYjSqpibAvldqw5XbVrKvQ0YFNuL0=;
        b=fdNQr9g8URdzYhaOmC/8sy1Yjk9mKZIBthrRG1OMU7gYqEGAiIPAw9NztsqOw0Stm2
         S53xEJgU54xlzJQW2QsK55qgCHDB4YdW5yG47C1pYVOdlj2/qSTycWGvsqlt97fk6c3w
         qzQ3OAM7obJbq9Gjf2H0xQ0G12MwQIHVXjYhBVeM4fvsSxZ5yIK8TiVRGnlabTjp0z0I
         5yqWCKAvFhEaJ4K+lvBq/VeO6JwaMgGqO23fSV5+sfI4zTwblxJZuBwunyo+IEYDH9X1
         V7gtvVXbdxG74jdH+FN2E7J5wtECaZ5uyAAkVW7hAsiicc1h/YBLf7v40Wa7N2QjQe97
         oxUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=sxKgTtzIS7RNzheYjSqpibAvldqw5XbVrKvQ0YFNuL0=;
        b=faFvYpi3aBvjS2CUQemyuleSIM5X+XdM9wLkbPKJ7sYZ1b92mLTeMhN6tyHK0yHU6t
         HRD1pR9Ks7KxnUljyZgJtOq+TfjBQOlGpBh5IPhQSIxfBwoHLWJDg6+iWXKYpvq4l5LS
         CnB+SXiZaGhjIq7kAoCAngTg9/Qs4dSoxeB0sQtZL9qJIOMz1Z2UGc/U0R7cPXGgp1yz
         2xer1pzvnRVlaZfB/+00Cm6ivbxpCdASQeotza10ecpyGzkMKc3UFFViRZ954tzeEDE5
         iKYkVEAE426v8j5BfkRYFokS/MopLviesgpQaygEU3fXMB7ftoYmHQBL9OAk8HjnnrAQ
         zBPA==
X-Gm-Message-State: AD7BkJKYOfxW64Xu6M6FERiIDdXy86NpuBix5gSD37mBfo2hZfqH8Q5pzeD+fdEaMgF5YA==
X-Received: by 10.55.71.76 with SMTP id u73mr25738878qka.6.1457892582728;
        Sun, 13 Mar 2016 11:09:42 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from spock ([191.191.241.196])
        by smtp.gmail.com with ESMTPSA id 64sm8537704qhf.40.2016.03.13.11.09.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 13 Mar 2016 11:09:42 -0700 (PDT)
Date: Sun, 13 Mar 2016 15:07:30 -0300
From: Juliana Rodrigues <juliana.orod@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8712: hal_init.c: fix comment block code style
Message-ID: <20160313180730.GA2240@spock>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch fixes several warnings caused by
malformed comments on hal_init.c and found by
checkpatch.pl.

Signed-off-by: Juliana Rodrigues <juliana.orod@gmail.com>
---
 drivers/staging/rtl8712/hal_init.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8712/hal_init.c b/drivers/staging/rtl8712/hal_init.c
index 8008efe..37fe0a4 100644
--- a/drivers/staging/rtl8712/hal_init.c
+++ b/drivers/staging/rtl8712/hal_init.c
@@ -297,7 +297,8 @@ static u8 rtl8712_dl_fw(struct _adapter *padapter)
 
 		tmp8 = r8712_read8(padapter, 0x1025000A);
 		if (tmp8 & BIT(4)) /* When boot from EEPROM,
-				    & FW need more time to read EEPROM */
+				    * & FW need more time to read EEPROM
+				    */
 			i = 60;
 		else			/* boot from EFUSE */
 			i = 30;
@@ -332,7 +333,8 @@ uint rtl8712_hal_init(struct _adapter *padapter)
 		    r8712_read32(padapter, RCR));
 	val32 = r8712_read32(padapter, RCR);
 	r8712_write32(padapter, RCR, (val32 | BIT(26))); /* Enable RX TCP
-							    Checksum offload */
+							  * Checksum offload
+							  */
 	netdev_info(padapter->pnetdev, "2 RCR=0x%x\n",
 		    r8712_read32(padapter, RCR));
 	val32 = r8712_read32(padapter, RCR);
@@ -346,7 +348,8 @@ uint rtl8712_hal_init(struct _adapter *padapter)
 	r8712_write8(padapter, 0x102500BD, r8712_read8(padapter, 0x102500BD) |
 	       BIT(7)); /* enable usb rx aggregation */
 	r8712_write8(padapter, 0x102500D9, 1); /* TH=1 => means that invalidate
-						*  usb rx aggregation */
+						*  usb rx aggregation
+						*/
 	r8712_write8(padapter, 0x1025FE5B, 0x04); /* 1.7ms/4 */
 	/* Fix the RX FIFO issue(USB error) */
 	r8712_write8(padapter, 0x1025fe5C, r8712_read8(padapter, 0x1025fe5C)
@@ -367,7 +370,8 @@ uint rtl8712_hal_deinit(struct _adapter *padapter)
 	r8712_write8(padapter, SYS_FUNC_EN + 1, 0x70);
 	r8712_write8(padapter, PMC_FSM, 0x06);  /* Enable Loader Data Keep */
 	r8712_write8(padapter, SYS_ISO_CTRL, 0xF9); /* Isolation signals from
-						     * CORE, PLL */
+						     * CORE, PLL
+						     */
 	r8712_write8(padapter, SYS_ISO_CTRL + 1, 0xe8); /* Enable EFUSE 1.2V */
 	r8712_write8(padapter, AFE_PLL_CTRL, 0x00); /* Disable AFE PLL. */
 	r8712_write8(padapter, LDOA15_CTRL, 0x54);  /* Disable A15V */
-- 
2.7.2


