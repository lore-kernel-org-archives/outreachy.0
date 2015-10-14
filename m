X-GM-THRID: 6205578387969277952
X-Received: by 10.182.89.129 with SMTP id bo1mr3967696obb.4.1444848810503;
        Wed, 14 Oct 2015 11:53:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.9.76 with SMTP id j73ls274589ioi.12.gmail; Wed, 14 Oct
 2015 11:53:30 -0700 (PDT)
X-Received: by 10.107.14.196 with SMTP id 187mr4478988ioo.24.1444848689163;
        Wed, 14 Oct 2015 11:51:29 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x234.google.com (mail-pa0-x234.google.com. [2607:f8b0:400e:c03::234])
        by gmr-mx.google.com with ESMTPS id zg1si1066342pbb.2.2015.10.14.11.51.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 11:51:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) client-ip=2607:f8b0:400e:c03::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x234.google.com with SMTP id ur7so12694277pab.3
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Oct 2015 11:51:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=TCVN+ZZWnXd9QvR4kiSa3Eex31gd1sSOY+tpQrk1o4k=;
        b=GbIlF3Oe7kr+SK+a1EX98Afzxdkysf43Ov+OKAERKk1TD/G/YELBTJTSDvSUCmBvv5
         NkreIuKbX/VzWT5d/00nQJFVhy2sgyA4JgJURa4x8x9gOpPgXYft4akAIrqqxMSrZlOS
         t5ObZr7rTwPakdu4sEkr2YF7Kqq2BDuOX+dnDKp1KOfXDVixlLtqp6NjjsaJxsnxesYm
         jzJ/UT5I6dSgb3M+BDaEgxfBwk6/M0jDX8mqjBY+sPCEHfav7iONlxoenHxh+VB2reaK
         1fC8yQ8bdYFtaIuXZp1ITULZ35bW4rrSdRC2ws3Ufyg8/hAXqyeNJU3tQFpOflP82O55
         axUw==
X-Received: by 10.66.217.138 with SMTP id oy10mr5047339pac.149.1444848689030;
        Wed, 14 Oct 2015 11:51:29 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id ch3sm11008834pbb.18.2015.10.14.11.51.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 11:51:27 -0700 (PDT)
Date: Thu, 15 Oct 2015 00:21:11 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: rtl8188eu: rf_cfg: Remove useless cast
Message-ID: <20151014185111.GA29205@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Type conversion of variables can be done by compiler implicitly so,
explicit conversions should be removed.
Semantic patch used:
@@
type T;
T e;
identifier x;
@@

* T x = (T)e;

Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
---
 drivers/staging/rtl8188eu/hal/rf_cfg.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8188eu/hal/rf_cfg.c b/drivers/staging/rtl8188eu/hal/rf_cfg.c
index 954cade..067649a 100644
--- a/drivers/staging/rtl8188eu/hal/rf_cfg.c
+++ b/drivers/staging/rtl8188eu/hal/rf_cfg.c
@@ -188,7 +188,7 @@ static void rtl8188e_config_rf_reg(struct adapter *adapt,
 	u32 addr, u32 data)
 {
 	u32 content = 0x1000; /*RF Content: radio_a_txt*/
-	u32 maskforphyset = (u32)(content & 0xE000);
+	u32 maskforphyset = content & 0xE000;
 
 	rtl_rfreg_delay(adapt, RF90_PATH_A, addr | maskforphyset,
 			RFREG_OFFSET_MASK,
-- 
2.1.0


