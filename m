X-GM-THRID: 6340866735627829248
X-Received: by 10.157.16.7 with SMTP id h7mr1888385ote.149.1476372454492;
        Thu, 13 Oct 2016 08:27:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.24.75 with SMTP id t11ls6115612ott.34.gmail; Thu, 13 Oct
 2016 08:27:34 -0700 (PDT)
X-Received: by 10.157.48.115 with SMTP id w48mr1844725otd.139.1476372454047;
        Thu, 13 Oct 2016 08:27:34 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from mail-lf0-x242.google.com (mail-lf0-x242.google.com. [2a00:1450:4010:c07::242])
        by gmr-mx.google.com with ESMTPS id t8si2059880vkb.2.2016.10.13.08.27.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 13 Oct 2016 08:27:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:4010:c07::242 as permitted sender) client-ip=2a00:1450:4010:c07::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:4010:c07::242 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x242.google.com with SMTP id x79so13257928lff.2
        for <outreachy-kernel@googlegroups.com>; Thu, 13 Oct 2016 08:27:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=astB1+BQRsqXjJjHVXPwu+tU2IzJfzeSWWnoXPyFjGw=;
        b=KwgwSUrNq3jkmXm+0hAjApXPzUeHcv+4XMNaUhjurl/LlM53eUdHRVbYo1Pk/Vm2pG
         hdBIS9huZi13ryc4TEYj6VHq7Ft7il19Lff+CIBHt4U8QUHR0uX7sI3cGId4edi8F8VQ
         a47m4bmsfnFBRkoRhPd7wpZ/dJ7+NpPJIbX3AjHJrQn/imU/XGHmSAIC20kV174/w9hU
         oZvq+iqmjbUUaWrGhtLSqHFHgpjjRkUCcd2dbd1QPOyXUOmn4LmiSG3BgMh4gaph0H2h
         ZG1olxcc9I6d1pc8dPV8JumHf5XcduKFzwgFEnsPkSjrS0DvZ64umJi6RJmQyCY6sIIz
         WNHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=astB1+BQRsqXjJjHVXPwu+tU2IzJfzeSWWnoXPyFjGw=;
        b=SFUAWlF5xFFl49aFozBUgFi7IYwwsWlcqPOpg9K1G61Y7lGon5a8fn28hPPSy2AQiR
         F/bcRumIPyMhY4BQAJXhSdIYrKwgiJYcdK1KdMoXFr0QOfeOAw4l9KB8Xc9na5WPQrsC
         Krmv8hi5zPDFFJ3i8Dbu26laY+i276U6i5SeQBXzPWATW4z6HNKjFWfaYAXFkLKoKACE
         LsXVcr2wsMc7StotF8OAAxgJ7iPtbOQoqIWo4ORHd1Zpk8fwhrBawrUpwhrECXd1FfUj
         B8tylievsYV7TvUH+cdKlAOJoI5Da64OyaXPMELLDiZKGqs5UPaigd7f0GsJgvVZ71Eh
         mH9Q==
X-Gm-Message-State: AA6/9RmHvNTJFQIHtmqA27w/s3Vj2KRx60mtNh6wm78jgM/++wDysocCO0w5xtaOfPnrzw==
X-Received: by 10.28.225.138 with SMTP id y132mr2526584wmg.38.1476372453572;
        Thu, 13 Oct 2016 08:27:33 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from domino-MS-16Y1 ([93.122.248.0])
        by smtp.gmail.com with ESMTPSA id us3sm23318434wjb.32.2016.10.13.08.27.32
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 13 Oct 2016 08:27:33 -0700 (PDT)
Date: Thu, 13 Oct 2016 18:27:31 +0300
From: Mihaela Muraru <mihaela.muraru21@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH V3] Staging: rtl8188eu: hal: Compress return logic into one
 line
Message-ID: <20161013152731.GA15463@domino-MS-16Y1>
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
Changes in v3:
	- delete unnecesarry return variable.
---
 drivers/staging/rtl8188eu/hal/phy.c | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/phy.c b/drivers/staging/rtl8188eu/hal/phy.c
index 5192ef7..2f45933 100644
--- a/drivers/staging/rtl8188eu/hal/phy.c
+++ b/drivers/staging/rtl8188eu/hal/phy.c
@@ -40,12 +40,11 @@ static u32 cal_bit_shift(u32 bitmask)
 
 u32 phy_query_bb_reg(struct adapter *adapt, u32 regaddr, u32 bitmask)
 {
-	u32 return_value = 0, original_value, bit_shift;
+	u32 original_value, bit_shift;
 
 	original_value = usb_read32(adapt, regaddr);
 	bit_shift = cal_bit_shift(bitmask);
-	return_value = (original_value & bitmask) >> bit_shift;
-	return return_value;
+	return (original_value & bitmask) >> bit_shift;
 }
 
 void phy_set_bb_reg(struct adapter *adapt, u32 regaddr, u32 bitmask, u32 data)
@@ -119,12 +118,11 @@ static void rf_serial_write(struct adapter *adapt,
 u32 rtw_hal_read_rfreg(struct adapter *adapt, enum rf_radio_path rf_path,
 		     u32 reg_addr, u32 bit_mask)
 {
-	u32 original_value, readback_value, bit_shift;
+	u32 original_value, bit_shift;
 
 	original_value = rf_serial_read(adapt, rf_path, reg_addr);
 	bit_shift =  cal_bit_shift(bit_mask);
-	readback_value = (original_value & bit_mask) >> bit_shift;
-	return readback_value;
+	return (original_value & bit_mask) >> bit_shift;
 }
 
 void phy_set_rf_reg(struct adapter *adapt, enum rf_radio_path rf_path,
-- 
2.7.4


