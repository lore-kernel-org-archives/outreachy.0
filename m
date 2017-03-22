X-GM-THRID: 6400145922202796032
X-Received: by 10.107.17.163 with SMTP id 35mr10139316ior.98.1490188684377;
        Wed, 22 Mar 2017 06:18:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.4.119 with SMTP id 110ls1829869otc.44.gmail; Wed, 22 Mar
 2017 06:18:03 -0700 (PDT)
X-Received: by 10.129.137.193 with SMTP id z184mr4852651ywf.80.1490188683971;
        Wed, 22 Mar 2017 06:18:03 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id y90si343546pfa.6.2017.03.22.06.18.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 22 Mar 2017 06:18:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id p189so21302725pfp.0
        for <outreachy-kernel@googlegroups.com>; Wed, 22 Mar 2017 06:18:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=tQToWdqKwjQEltlyACvRcE55todTmR/kp/RhiYZ8DFc=;
        b=ZuRhPbN26yTxiW/0c11TzMYCiub76Esjn2t5o6r4ATfZWqws2FH3rDhwLSfxvWAxVC
         Wz6lbDJyIBzkH8ZCJRiwGE9F8BerbgXUiZug4Pgg0pnnOfBHKiKEqZd5uq2IRbkzdzNQ
         bJyfo7l45Nc91hs/1TwPY06WQfjgi92ArYSR28YtgMjn55Hz+XDRaCeCEPlPnfP6+4ny
         JNdDpUbrAapM4NFYS4YBk10FvJpGq/ZcFuRMi3xSz9QEhs6drEzS2afnVcqHsTHLSnqV
         051wMamlM2CRO5yOA+3S8OHlfUXUKB0MAClXlL5HwSEBPyqPU5KhcaX7TPA3JIDmgzwn
         pOlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=tQToWdqKwjQEltlyACvRcE55todTmR/kp/RhiYZ8DFc=;
        b=DZaOt0tmm4O6cIaQW02XeuO8zhgY3l0Ec+0DI+Pjmo+yUOUB6W8IXe1M9Qkzj4C4h1
         2MhL/W8zpah7jSqH1KDAg6ZkLX7rL9/I95bozGVquYcwlE2OddONJeOaVsWPvfxEg5Hu
         W6QfUeecqwEiLP1aTWIEraK1/KEjYDpgSHfJLGzFfC8//Owr8IiGZCt8tEPjW0VK1zQk
         BFQzP1EYeRbwKwn2W7RUpaVUpGvC7ZkElCSvSw4+DgT+mfXPaPqtwm7K+rHG/8Z5OWTy
         PmL2rY1vd3Lg0FLLMLQeH7tJvrVDLGmVXvAkCBlu5LzNQwnDVcLnTSGpIaCTlCoCrrO2
         9IsQ==
X-Gm-Message-State: AFeK/H3oKYbX06Z8dt+g6BGvURRBhUsPaOJd8K5muqn7cQZE8/Bx9i1wkhKUHtUXiB6lrw==
X-Received: by 10.84.177.36 with SMTP id w33mr54607237plb.105.1490188683727;
        Wed, 22 Mar 2017 06:18:03 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id p77sm4107113pfj.99.2017.03.22.06.18.01
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 22 Mar 2017 06:18:02 -0700 (PDT)
Date: Wed, 22 Mar 2017 18:47:57 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: rts5208: Replace a bit shift by a use of BIT.
Message-ID: <20170322131757.GA5335@arushi-HP-Pavilion-Notebook>
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
changes in v2
 - remove the unnecessary parenthesis.

 drivers/staging/rts5208/rtsx_chip.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rts5208/rtsx_chip.c b/drivers/staging/rts5208/rtsx_chip.c
index 3511157a2c78..7f4107bffe31 100644
--- a/drivers/staging/rts5208/rtsx_chip.c
+++ b/drivers/staging/rts5208/rtsx_chip.c
@@ -1490,7 +1490,7 @@ int rtsx_write_register(struct rtsx_chip *chip, u16 addr, u8 mask, u8 data)
 
 	for (i = 0; i < MAX_RW_REG_CNT; i++) {
 		val = rtsx_readl(chip, RTSX_HAIMR);
-		if ((val & (1 << 31)) == 0) {
+		if ((val & BIT(31)) == 0) {
 			if (data != (u8)val) {
 				rtsx_trace(chip);
 				return STATUS_FAIL;
@@ -1518,7 +1518,7 @@ int rtsx_read_register(struct rtsx_chip *chip, u16 addr, u8 *data)
 
 	for (i = 0; i < MAX_RW_REG_CNT; i++) {
 		val = rtsx_readl(chip, RTSX_HAIMR);
-		if ((val & (1 << 31)) == 0)
+		if ((val & BIT(31)) == 0)
 			break;
 	}
 
-- 
2.11.0


