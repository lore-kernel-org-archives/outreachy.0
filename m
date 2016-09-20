X-GM-THRID: 6332305916536291328
X-Received: by 10.157.5.211 with SMTP id 77mr877253otd.60.1474354862147;
        Tue, 20 Sep 2016 00:01:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.15.42 with SMTP id 39ls1246802ott.0.gmail; Tue, 20 Sep
 2016 00:01:01 -0700 (PDT)
X-Received: by 10.157.51.3 with SMTP id f3mr857902otc.30.1474354861869;
        Tue, 20 Sep 2016 00:01:01 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id z4si5785621pam.0.2016.09.20.00.01.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Sep 2016 00:01:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id hi10so488925pac.2
        for <outreachy-kernel@googlegroups.com>; Tue, 20 Sep 2016 00:01:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=LvYvJxtaiUNkePyMG1fJDZ2fPnpFm/9TO+I8xDteMew=;
        b=Mc+eQZOPZmq0Ifw703ixn6qp6pbfj5fHEV5RAw42GnL+8PR7m34upLRtdoIxVf+N79
         qhKO1/4GJAM4yoGiNevkSATmP62wHCoOX0thgrV2q0wJ6ZQJf6/2duTOjML7avvkUmty
         DEpxO13u3rc7yd+1SaNcPJ4kx6XL2P7TUHj+Yqn/gLvo+SHtM4UNXyvwzLm9ou4B+F3p
         hU22FCSHXs0pGehmUSObRa6G8Mr7/FZL/07LQ1U9LOk4xzJ4qjTRvGY9wp3ROeADONcn
         HyBICqmrvhJK3mQvztblrayA+Hf3WaHgIRPBxBzvykeFmqSjNYYbHVn9fxvNDJ3zSl/O
         dtyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=LvYvJxtaiUNkePyMG1fJDZ2fPnpFm/9TO+I8xDteMew=;
        b=dAkDQrUHQNmr22Zrruinsc0z3FwomkMtf8nzQI8EJYzMOhFAXkQ51Aavjunv1UO80c
         AVNEbdQjIrgqbu4MkxL2h9lCGtvEgfiziXckgU5xjGWXN1OdQaBQfuNFl3VovRdGeYps
         bdtFubTJ1F3K2uZlueJHv2oEBhdscjBwNHlf1925KIG+Y65U9ZI2/4OfA2VjVJYvwyHh
         Kzjdgxd+gsdDI2tlCPsU+/x3S0ULSSz5VCFjlSqSF2W96AubgHRJ0VpZVemWHPN8YM8p
         q8i5300TKATZyut+uEuW/U5N1OxNeS4C6SlV42rQAPFAPw157Gcnu6x/hL5XWR6bP30v
         fl8g==
X-Gm-Message-State: AE9vXwPGVI2UH6mG4vVYNSKV77tt84fYmSO+WAvqxrIBECJNeJlunLVRfHfyrMvnfcRqSg==
X-Received: by 10.66.150.202 with SMTP id uk10mr52199148pab.10.1474354861589;
        Tue, 20 Sep 2016 00:01:01 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-DK ([203.215.121.124])
        by smtp.gmail.com with ESMTPSA id z12sm60442690pfk.53.2016.09.20.00.01.00
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 20 Sep 2016 00:01:01 -0700 (PDT)
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: mchebab@kernel.org,
	gregkh@linuxfoundation.org,
	Eva Rachel Retuya <eraretuya@gmail.com>
Subject: [PATCH] staging: media: cxd2099: replace printk with dev_info
Date: Tue, 20 Sep 2016 15:00:49 +0800
Message-Id: <1474354849-8970-1-git-send-email-eraretuya@gmail.com>
X-Mailer: git-send-email 2.7.4

Use dev_info() instead of printk(). Majority of the conversion was done
previously on this commit:
011b2aa [media] staging/media: Use dev_ printks in cxd2099/cxd2099.[ch]

Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>
---
 drivers/staging/media/cxd2099/cxd2099.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/cxd2099/cxd2099.c b/drivers/staging/media/cxd2099/cxd2099.c
index 692ba3e..fedeb3c 100644
--- a/drivers/staging/media/cxd2099/cxd2099.c
+++ b/drivers/staging/media/cxd2099/cxd2099.c
@@ -660,7 +660,7 @@ static int write_data(struct dvb_ca_en50221 *ca, int slot, u8 *ebuf, int ecount)
 	struct cxd *ci = ca->data;
 
 	mutex_lock(&ci->lock);
-	printk(kern_INFO "write_data %d\n", ecount);
+	dev_info(&ci->i2c->dev, "write_data %d\n", ecount);
 	write_reg(ci, 0x0d, ecount>>8);
 	write_reg(ci, 0x0e, ecount&0xff);
 	write_block(ci, 0x11, ebuf, ecount);
-- 
2.7.4


