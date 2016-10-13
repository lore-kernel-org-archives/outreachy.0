X-GM-THRID: 6340866735627829248
X-Received: by 10.157.49.79 with SMTP id v15mr1251804otd.27.1476348083728;
        Thu, 13 Oct 2016 01:41:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.43.80 with SMTP id f16ls5747329otd.28.gmail; Thu, 13 Oct
 2016 01:41:23 -0700 (PDT)
X-Received: by 10.157.0.100 with SMTP id 91mr1508686ota.60.1476348083383;
        Thu, 13 Oct 2016 01:41:23 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from mail-qk0-x243.google.com (mail-qk0-x243.google.com. [2607:f8b0:400d:c09::243])
        by gmr-mx.google.com with ESMTPS id p74si348815ywp.6.2016.10.13.01.41.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 13 Oct 2016 01:41:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of mihaela.muraru21@gmail.com designates 2607:f8b0:400d:c09::243 as permitted sender) client-ip=2607:f8b0:400d:c09::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2607:f8b0:400d:c09::243 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x243.google.com with SMTP id f128so4670936qkb.0
        for <outreachy-kernel@googlegroups.com>; Thu, 13 Oct 2016 01:41:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=q4QnB7oo+LTvyBa96+nH/jrtYz9zwIMekqIhIRwyuUk=;
        b=u+mtgC1sJzlj65tf6TMIJZ+YdXHsx7HJKvfyb6jJ8mqe3r4VlL5zgFXuShvJDOUGTk
         mONn6IM2MRPlqmUyCq6C8i+83T40+BvCIZtd0JnNHhGG8EyTTpG7NoeAFe56/DFlLFvv
         bvOf9MZ2Aa0JHPV5/b0+8a852OpOsgQxAphFfyBvmPIVhTt9RmJmzYOOrcCCzYFxiNBh
         jEXscv/Nlw9jE3tfFsH7YHo/oRHJsppUUYSytFH6xGJi2yLfOzy72RdcI8BOf7ax61Nm
         qQPQDkstijYL/zujwgtD7g7u+uUzc4HSkzB4cafMTf3Zescr6TtbhHa74KIO+G0rzacn
         2c1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=q4QnB7oo+LTvyBa96+nH/jrtYz9zwIMekqIhIRwyuUk=;
        b=SYlREKnbpINRo4QTPC6YzhvvpDESovXYos6NXmYjIXqFEvdZ2+CZXKTmyNq+IigzS7
         t0WkD7rSB2Xsw1eWE13VR0MOcMrGUDBojWr8LG45/NBiFuowq8l8CzeeVJlOTvaOkD2L
         dZk147JL5o2XklTB6iekxmMbyGMqgfRwFtHp74F0s5O9yNGRVtTia0n0YlTEg750WKSh
         b4/zVPSyIN9w2TLPRBQ+fNx3n6/M6pVGiHeFhOYP6FVgeuFoosaLXXLVNooqOjNEey0c
         O8VWSJEARx2xfP+W/mUozIr95HlOUhVOcIh09zjsOgve8z6GMJAXs90uHe8jhGnFLAR6
         32WQ==
X-Gm-Message-State: AA6/9Rn9HX2hqu2zUcuwkkZ3fUpVdzo5d4rsNyR9g4zTgqrBdvpnxC3qID0t9HNkf8ETQw==
X-Received: by 10.194.80.74 with SMTP id p10mr6176839wjx.121.1476348082841;
        Thu, 13 Oct 2016 01:41:22 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from domino-MS-16Y1 ([93.122.248.0])
        by smtp.gmail.com with ESMTPSA id c7sm20677070wjk.19.2016.10.13.01.41.21
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 13 Oct 2016 01:41:22 -0700 (PDT)
Date: Thu, 13 Oct 2016 11:41:20 +0300
From: Mihaela Muraru <mihaela.muraru21@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: rtl8188eu: hal: Compress return logic into one line
Message-ID: <20161013084120.GA6373@domino-MS-16Y1>
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
 ret.out | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)
 create mode 100644 ret.out

diff --git a/ret.out b/ret.out
new file mode 100644
index 0000000..fd4d380
--- /dev/null
+++ b/ret.out
@@ -0,0 +1,22 @@
+--- /home/domino/git/kernels/staging/drivers/staging/rtl8188eu/hal/phy.c
++++ /tmp/cocci-output-5790-5d9d37-phy.c
+@@ -44,8 +44,7 @@ u32 phy_query_bb_reg(struct adapter *ada
+ 
+ 	original_value = usb_read32(adapt, regaddr);
+ 	bit_shift = cal_bit_shift(bitmask);
+-	return_value = (original_value & bitmask) >> bit_shift;
+-	return return_value;
++	return (original_value & bitmask) >> bit_shift;
+ }
+ 
+ void phy_set_bb_reg(struct adapter *adapt, u32 regaddr, u32 bitmask, u32 data)
+@@ -123,8 +122,7 @@ u32 rtw_hal_read_rfreg(struct adapter *a
+ 
+ 	original_value = rf_serial_read(adapt, rf_path, reg_addr);
+ 	bit_shift =  cal_bit_shift(bit_mask);
+-	readback_value = (original_value & bit_mask) >> bit_shift;
+-	return readback_value;
++	return (original_value & bit_mask) >> bit_shift;
+ }
+ 
+ void phy_set_rf_reg(struct adapter *adapt, enum rf_radio_path rf_path,
-- 
2.7.4


