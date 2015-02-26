X-GM-THRID: 3783863042048
X-Received: by 10.180.8.67 with SMTP id p3mr3798583wia.7.1424964999980;
        Thu, 26 Feb 2015 07:36:39 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.115.140 with SMTP id jo12ls53322lab.19.gmail; Thu, 26 Feb
 2015 07:36:39 -0800 (PST)
X-Received: by 10.112.199.69 with SMTP id ji5mr1404294lbc.0.1424964999405;
        Thu, 26 Feb 2015 07:36:39 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-we0-x230.google.com (mail-we0-x230.google.com. [2a00:1450:400c:c03::230])
        by gmr-mx.google.com with ESMTPS id by11si1619417wib.1.2015.02.26.07.36.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 07:36:39 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c03::230 as permitted sender) client-ip=2a00:1450:400c:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c03::230 as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x230.google.com with SMTP id w55so11939108wes.4
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Feb 2015 07:36:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=JHggGDuvtxJaLX2rSuZBYppKpArjFwlBG5Wo8nQOChE=;
        b=r5K4hhYBVvF2OnHh3WLHVwrUZ1IXZ1cg+E2HoKk1oF4ixPasskZUtyk6E1q7abDJ0x
         NZUVq3H1legDKQA3hblU+foxt29HZfB9o7Z12qOGPQmcVJAwlkDzHTOuZIBOKC8Qftkz
         Pm4ILGcRO2ZYkRgqU+0l84EDMvx++CdU6glcYzK+ayd2XUkWO5wn+IRS8P9U5kCn8pWe
         pWGPrvFbzt/n1ntPh+n+hLhCz5KBjf5pmUbV5Q6TUaJIPWOTeAhoHcRlSC6oC3vgix8r
         TNZck3HYg0n1I4Isu8gEmE58vJcj0ZDNc5qPtwt7NgtW7f0q8AsLzMBDGF32f7VRa3pL
         7uCw==
X-Received: by 10.194.60.19 with SMTP id d19mr6490128wjr.133.1424964999277;
        Thu, 26 Feb 2015 07:36:39 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneensa-VirtualBox ([79.170.54.248])
        by mx.google.com with ESMTPSA id ch6sm1942325wjc.3.2015.02.26.07.36.38
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 07:36:38 -0800 (PST)
Received: by haneensa-VirtualBox (Postfix, from userid 1000)
	id 194FB6337A; Thu, 26 Feb 2015 18:36:36 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH 1/2] Staging: iio: Add blank line after declaration
Date: Thu, 26 Feb 2015 18:36:34 +0300
Message-Id: <1424964994-8609-1-git-send-email-hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1424964811-8548-1-git-send-email-hamohammed.sa@gmail.com>
References: <1424964811-8548-1-git-send-email-hamohammed.sa@gmail.com>

This patch fixes missing blank line after declaration issue addressed by
checkpatch.pl.

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
 drivers/iio/accel/mma8452.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/iio/accel/mma8452.c b/drivers/iio/accel/mma8452.c
index 5b80657..221c9d2 100644
--- a/drivers/iio/accel/mma8452.c
+++ b/drivers/iio/accel/mma8452.c
@@ -75,6 +75,7 @@ static int mma8452_drdy(struct mma8452_data *data)
 static int mma8452_read(struct mma8452_data *data, __be16 buf[3])
 {
 	int ret = mma8452_drdy(data);
+
 	if (ret < 0)
 		return ret;
 	return i2c_smbus_read_i2c_block_data(data->client,
-- 
1.9.1


