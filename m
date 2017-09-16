X-GM-THRID: 6466274870368927744
X-Received: by 10.99.110.3 with SMTP id j3mr16509847pgc.121.1505546940229;
        Sat, 16 Sep 2017 00:29:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.84.140 with SMTP id t134ls2395867ita.14.gmail; Sat, 16 Sep
 2017 00:28:59 -0700 (PDT)
X-Received: by 10.13.214.69 with SMTP id y66mr17887663ywd.119.1505546939477;
        Sat, 16 Sep 2017 00:28:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505546939; cv=none;
        d=google.com; s=arc-20160816;
        b=xvF5Q6U6IgqBYLXSkkVklzemx0aitBW5jVTi+m51qpQNC3I5zUks3B2XtcbRqYrvIk
         KTfP7LLIvpdEWB15zIlk2WQTIeNSTST+vUvrltLgSiRX2davyZCw4DiMhcyNeLDnR8QH
         WiUpMhyCCfY4ehV0XzZ3KRtLcCBdBOhJTTxeYzDEurVrEvSumbWplPsg4xS+W+2aZq3u
         DDXQKctqUa7x0EdHUBIr0who6hbvP/BFSu+mfjvTOdr5AUH/lzuCXENJClDggfleywTf
         I0bNvj4K3by8q7lB9GGWSjjk+wLfkPHljZDRRH6FPdI7yjHIEMbTUUVlKJA2YED7Vj7r
         inQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=JCsgZrEWpChc8/XFGYhrd15/JBtjdhHkiVh86zjhiss=;
        b=CGgDqa4dYycMGtxrQqP09Y6yN1/bAcy+yBLc2CDrj5c5bNeLu0wEuJCyxf4CT8ZfyU
         0z4j4PcZjpjF4Ot/dH+CtI3uVfvuTwzMds8PMSSuAoK7NHmsHnb9NbrLivkFBONgbfB7
         9k3G/CyhSZ6KKTutM9AauH3CZ/D6hMgC4yK+NEd44hRZRtq66REY02rU4gH4SUmsdv4D
         qo6P/Z8oQrmAiNwv7VEUkDtXxe6sC6M2iyucIlIy10z602Vm2IVmvKP7DbHDJCqCNQm0
         mEU/mQvqSaqmu9VYrbDf1xsl4FyKG/892QZNp8qOYDlodyP4Kx2kPpxLzO5DjB4eqPca
         oDiw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Qv9tqpY0;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id f189si253341pfa.1.2017.09.16.00.28.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Sep 2017 00:28:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Qv9tqpY0;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id j16so2438858pga.2
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Sep 2017 00:28:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=JCsgZrEWpChc8/XFGYhrd15/JBtjdhHkiVh86zjhiss=;
        b=Qv9tqpY0PJNqW1VMSKrwfaRc3RAZWouBkHmevoW+vVh4qWwo/hqOYft1qgr5a6ifWc
         FHi4e1/XNGoluwSm89ROsQYu2pjmqDiL2bCisGjQ+CIROqRIDdviW8ihHGvexo52gdjg
         b/SMMkDLGI0Q8g5AT+jca/gxfrq5Vd0BIRxl4LT3OyGKi52NDSiz0DhmDpz2dMlCUHDB
         YWg8DoDaklXuQRPfuiUIYtRGIvZRIZX07CSWw22gQCopI3LbbJuAj54ivo5SeorqyJ4N
         /dh4G9446hjOACsw/YxstNCVue0qCO7x2d6AUYMu/UrtqGJP7nHyZneQ0jPmFcBEwgfI
         LHkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=JCsgZrEWpChc8/XFGYhrd15/JBtjdhHkiVh86zjhiss=;
        b=ULZ09DAt27pHfaGEi3Yz2JFpcXfOPsYg6AzZMuZ5k9pGWMQnOlPwRN8igqdi9L4mPY
         0ZpTuDlJ4QMI9D7AXFB1H8Bzae/dIVX4TBCH2B8p4CJHZ/ZEa4eplzN5z7eY/KSoYx7F
         rcCg20Yg1xXb8zTRW9y5rBqGhHyWQ2dhQeKnHT1FysKKxBuAT6LUBfu+4V/YURPzh/c+
         R1U9Brx72UYX9repU8lVSsMmF5FRUSdYGJGmqwAvHkFm0WzrtS5NIbynIoNlJ8W6hj4V
         gd2ZegZjxWp8c2WmJx2UmIuxkzHYRiVxFsY3LjrxVd0e3jsBMXjCLQBum12LG0uNn0jG
         MWWg==
X-Gm-Message-State: AHPjjUgvgtC9z3Od/lQpIB0Ow33emiEfo9GSn4nS58by0LLn3B+I8wgi
	Je0FFTwuyTB0fg==
X-Google-Smtp-Source: ADKCNb7kXftlZ5RU2uUBtfZjv9YwzJ/DTcgmQD5eR+VwC6FiyaROtUZ0kYOgFdDepQArJYYpHwWHfA==
X-Received: by 10.84.129.131 with SMTP id b3mr31002398plb.337.1505546939215;
        Sat, 16 Sep 2017 00:28:59 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([27.56.167.173])
        by smtp.gmail.com with ESMTPSA id 64sm5183596pge.44.2017.09.16.00.28.58
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 16 Sep 2017 00:28:58 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH] staging: rtl8188eu: fix space between function name and '('
Date: Sat, 16 Sep 2017 12:58:54 +0530
Message-Id: <1505546934-16977-1-git-send-email-aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4

This patch fixes checkpatch.pl warning:
WARNING: space prohibited between function name and open parenthesis '('

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
 drivers/staging/rtl8188eu/include/osdep_intf.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8188eu/include/osdep_intf.h b/drivers/staging/rtl8188eu/include/osdep_intf.h
index 97d3d85..f1fb3d5 100644
--- a/drivers/staging/rtl8188eu/include/osdep_intf.h
+++ b/drivers/staging/rtl8188eu/include/osdep_intf.h
@@ -26,7 +26,7 @@ u8 rtw_init_drv_sw(struct adapter *padapter);
 u8 rtw_free_drv_sw(struct adapter *padapter);
 u8 rtw_reset_drv_sw(struct adapter *padapter);
 
-void rtw_stop_drv_threads (struct adapter *padapter);
+void rtw_stop_drv_threads(struct adapter *padapter);
 void rtw_cancel_all_timer(struct adapter *padapter);
 
 int rtw_ioctl(struct net_device *dev, struct ifreq *rq, int cmd);
-- 
2.7.4


