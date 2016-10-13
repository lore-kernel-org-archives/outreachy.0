X-GM-THRID: 6340866735627829248
X-Received: by 10.129.162.205 with SMTP id z196mr1372899ywg.113.1476350504946;
        Thu, 13 Oct 2016 02:21:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.11.162 with SMTP id 34ls2033784iol.13.gmail; Thu, 13 Oct
 2016 02:21:44 -0700 (PDT)
X-Received: by 10.98.35.78 with SMTP id j75mr1448184pfj.18.1476350504076;
        Thu, 13 Oct 2016 02:21:44 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from mail-lf0-x243.google.com (mail-lf0-x243.google.com. [2a00:1450:4010:c07::243])
        by gmr-mx.google.com with ESMTPS id p70si1542607vkd.0.2016.10.13.02.21.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 13 Oct 2016 02:21:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:4010:c07::243 as permitted sender) client-ip=2a00:1450:4010:c07::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:4010:c07::243 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x243.google.com with SMTP id x23so5904756lfi.1
        for <outreachy-kernel@googlegroups.com>; Thu, 13 Oct 2016 02:21:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=Zqzjmtfu5F5s45UWWWdMNGb+Q+tn01jflZvnCFz382o=;
        b=nyGcloO8KfuE1yhwCBbmzaS5mbJNwzEAAG0IEzljtdiqDrb9czOpgOto9SraAAvxCg
         irYj0h+pIFXZERxanaDqLhOaTrbiKv91u6lNCT5nptq8sh7F0iQKEZZHT9Xd9kk9CXQW
         QwpUl/uWNaoDzuWsD3ZD49FTgUbvCa7pOfa9BZLeUc1Im8yl7LMxwyYHN6C+DgkLY14F
         sHX6u8M7K1TP182QjNsOszqFqhZ6npMz6792MCCdBQgL4+3EgRaqL0YeylHLlK5vtYSo
         ZOM4wgyzovFrCochWLKObfQ2K40kCcD7/I8chocJ6rGprRa7CQkF8cHfpYTr6Nf6rh6C
         JUww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Zqzjmtfu5F5s45UWWWdMNGb+Q+tn01jflZvnCFz382o=;
        b=MqAZ5X5RQgR1sjzsW9OlVLLSej4Gw4Rzqp5C6EmCTD+1Z7JTN5fOhPZKDafrJObhzJ
         qRfxE8aTjFjbYKz4sRndDNi64HrkhMVTbQ+0pjkACu+Uy1AbkWksfm8KRAFCe3C6WO6U
         /G+SvjYP2Fa4MjnyqO4zoc/i41n+CbNwNIeL0lp1KiAXKteX4PzcTtFQEzRrI2Hh4Yul
         /6oWST6bWvUMfdChXzH4T1knbw2Z2gzUiquMiMhi6gbzBdXQCeDQiklXcFxlktnA62YD
         HP9xS4vzQ+oyIms0OJ7aum03miKykWnUO/hgzLhXXOBBzgZghHfwS8yt6JiMpB9ktmjM
         sGWA==
X-Gm-Message-State: AA6/9RkmGdVV9aI/3keAldCFHSvPApZCD6seUBkbzeX8CZgEYvHBnEo1XfCXDy9bQKnb0g==
X-Received: by 10.28.103.7 with SMTP id b7mr1479456wmc.48.1476350503361;
        Thu, 13 Oct 2016 02:21:43 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from domino-MS-16Y1 ([93.122.248.0])
        by smtp.gmail.com with ESMTPSA id pe5sm20970087wjb.15.2016.10.13.02.21.42
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 13 Oct 2016 02:21:42 -0700 (PDT)
Date: Thu, 13 Oct 2016 12:21:41 +0300
From: Mihaela Muraru <mihaela.muraru21@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] Staging: rtl8188eu: hal: Compress return logic into one
 line
Message-ID: <20161013092141.GA7984@domino-MS-16Y1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Simplify function returns by merging assignment and return into
one command line.
Found with Coccinelle
@@
expression e, ret;
@@

-ret =
+return
        e;
-return ret;

Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>

---
Changes in v2:
	- apply patch to the file.
---
 drivers/staging/rtl8188eu/hal/phy.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/phy.c b/drivers/staging/rtl8188eu/hal/phy.c
index 5192ef7..a1c1a52 100644
--- a/drivers/staging/rtl8188eu/hal/phy.c
+++ b/drivers/staging/rtl8188eu/hal/phy.c
@@ -44,8 +44,7 @@ u32 phy_query_bb_reg(struct adapter *adapt, u32 regaddr, u32 bitmask)
 
 	original_value = usb_read32(adapt, regaddr);
 	bit_shift = cal_bit_shift(bitmask);
-	return_value = (original_value & bitmask) >> bit_shift;
-	return return_value;
+	return (original_value & bitmask) >> bit_shift;
 }
 
 void phy_set_bb_reg(struct adapter *adapt, u32 regaddr, u32 bitmask, u32 data)
@@ -123,8 +122,7 @@ u32 rtw_hal_read_rfreg(struct adapter *adapt, enum rf_radio_path rf_path,
 
 	original_value = rf_serial_read(adapt, rf_path, reg_addr);
 	bit_shift =  cal_bit_shift(bit_mask);
-	readback_value = (original_value & bit_mask) >> bit_shift;
-	return readback_value;
+	return (original_value & bit_mask) >> bit_shift;
 }
 
 void phy_set_rf_reg(struct adapter *adapt, enum rf_radio_path rf_path,
-- 
2.7.4


