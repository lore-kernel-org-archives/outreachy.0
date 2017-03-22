X-GM-THRID: 6400145922202796032
X-Received: by 10.157.2.69 with SMTP id 63mr17879465otb.4.1490150094317;
        Tue, 21 Mar 2017 19:34:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.13.8 with SMTP id 8ls303144ion.18.gmail; Tue, 21 Mar 2017
 19:34:53 -0700 (PDT)
X-Received: by 10.99.114.19 with SMTP id n19mr13681184pgc.164.1490150093417;
        Tue, 21 Mar 2017 19:34:53 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id y203si1941pfb.0.2017.03.21.19.34.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Mar 2017 19:34:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id p189so19042144pfp.0
        for <outreachy-kernel@googlegroups.com>; Tue, 21 Mar 2017 19:34:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=5agpzVmMxndwORZGbQLlY8E7RsrpsrtUmB1baAG9cVQ=;
        b=CZFTN+Go7ml8cH9uCkkS9oAzjV7PvyYpnSiAXyKBi+2TR0OYg9NeZGm0OYX4W36owM
         p2XX5vC+v1yWJ6b/wmbAd629o3rDFjk6mfINeYLf6LIS7pVLpU522F1IF1j/F06rfJX/
         A1mM+FyHHto3VI6r1Itgl4HSna/UvBCB96zBeMBZR4xnPJiIY0eBRnALrKAuwpCVwXg8
         MYf8V6DYphUurZPfLp98SZtsUOMowMC1nRGRqPKxoXJ5wQnCpjIMDY6OWDRgKbdIHo0U
         7hj04i8NamY0F8lGqDxnkMcQ6eVGlTERDcAMAIecMdCwhrz6KpnUD+Dwlf0NrerLBt/e
         PasQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=5agpzVmMxndwORZGbQLlY8E7RsrpsrtUmB1baAG9cVQ=;
        b=NG/YK+c197NHSTM5aX9wdq9dvRAgRTkwkFoZ5R1877dSkGJWZPvWyt/WWYn3EERZ9w
         pcrp+Z/KgkNMXCjdzl5HTPV9skTFyQR1+gm8nfk2qYe7cS/Ah8Z24UMqbTWjI6boIwC7
         YFx15BUJcb0x2vXLF/YcMNJbILVto2H48vXime2+3Js/GO5h654Yz3AgXHeqVStER8r/
         rzmQlrsn/b/lHJHR/MX1j0vYyzmLkYcFhd6qes8KUjuhv7dMRYNq5STOuRM2sXHSQQrV
         S2IpElpiRsDQsDvbpbgnte62mDYKADQHnqFYU/LfQfVCoSZqRf6XZKw5d3BIegid0URv
         eFQw==
X-Gm-Message-State: AFeK/H14lEXaizmjcu11JQncE7vr1BRp067oBXu0w+4wu+ekEbU68zGUPKOsfnxMwJo9cg==
X-Received: by 10.84.137.165 with SMTP id 34mr186756pln.125.1490150092834;
        Tue, 21 Mar 2017 19:34:52 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id v4sm9593pfb.36.2017.03.21.19.34.50
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 21 Mar 2017 19:34:51 -0700 (PDT)
Date: Wed, 22 Mar 2017 08:04:47 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rts5208: Replace a bit shift by a use of BIT.
Message-ID: <20170322023447.GA10464@arushi-HP-Pavilion-Notebook>
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
 drivers/staging/rts5208/rtsx_chip.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rts5208/rtsx_chip.c b/drivers/staging/rts5208/rtsx_chip.c
index 3511157a2c78..06a61800b71a 100644
--- a/drivers/staging/rts5208/rtsx_chip.c
+++ b/drivers/staging/rts5208/rtsx_chip.c
@@ -1490,7 +1490,7 @@ int rtsx_write_register(struct rtsx_chip *chip, u16 addr, u8 mask, u8 data)
 
 	for (i = 0; i < MAX_RW_REG_CNT; i++) {
 		val = rtsx_readl(chip, RTSX_HAIMR);
-		if ((val & (1 << 31)) == 0) {
+		if ((val & (BIT(31))) == 0) {
 			if (data != (u8)val) {
 				rtsx_trace(chip);
 				return STATUS_FAIL;
@@ -1518,7 +1518,7 @@ int rtsx_read_register(struct rtsx_chip *chip, u16 addr, u8 *data)
 
 	for (i = 0; i < MAX_RW_REG_CNT; i++) {
 		val = rtsx_readl(chip, RTSX_HAIMR);
-		if ((val & (1 << 31)) == 0)
+		if ((val & (BIT(31))) == 0)
 			break;
 	}
 
-- 
2.11.0


