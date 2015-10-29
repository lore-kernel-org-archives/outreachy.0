X-GM-THRID: 6210868560555671552
X-Received: by 10.129.4.203 with SMTP id 194mr42009526ywe.33.1446080524443;
        Wed, 28 Oct 2015 18:02:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.108.232 with SMTP id hn8ls31609obb.12.gmail; Wed, 28 Oct
 2015 18:02:03 -0700 (PDT)
X-Received: by 10.182.95.101 with SMTP id dj5mr30368078obb.13.1446080523953;
        Wed, 28 Oct 2015 18:02:03 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-pa0-x235.google.com (mail-pa0-x235.google.com. [2607:f8b0:400e:c03::235])
        by gmr-mx.google.com with ESMTPS id vy6si5130323pbc.1.2015.10.28.18.02.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Oct 2015 18:02:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) client-ip=2607:f8b0:400e:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) smtp.mailfrom=ksenija.stanojevic@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x235.google.com with SMTP id hk11so22210611pad.1
        for <outreachy-kernel@googlegroups.com>; Wed, 28 Oct 2015 18:02:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=DjxEt6vLBx81uyRXYG/2rG9MA1obRrX8S1ngzD+OKbU=;
        b=RO4JI3Kdvb5+xiWSLg5TxvtxpWCAWN1OtDikU/4kbDRO6aI2qhnfUu9xbMmo7pKhrn
         W+ZvfWvP+Q3Ttgxi4S+66A9+qOUQbUjEYeVEg8BD82Mhqt3xgSbc1QQk8qyuIYLNjRtj
         hUDGyVO1wBKjWgMWYtdhGOMjq0o8Zs56wWKJFqnkB0cpfkHXn/AktlJx1ADIGeVp83sp
         jEb296lfbPOqk+dwGLsXQs/KwAxJ7A7e+35XP3mtOW+dn0CF1iYuZ0WlpD8IKhtORvmF
         9tPesKipsvHpZQ7bKqyllphV++WpRCj+egYCsBt+4buJcgwJhCYE0ClmW2BKuOWxzNHy
         aC8Q==
X-Received: by 10.68.163.69 with SMTP id yg5mr37485022pbb.157.1446080523827;
        Wed, 28 Oct 2015 18:02:03 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (ip68-108-246-21.sb.sd.cox.net. [68.108.246.21])
        by smtp.gmail.com with ESMTPSA id ey17sm47841312pac.26.2015.10.28.18.02.02
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 28 Oct 2015 18:02:03 -0700 (PDT)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH] Staging: comedi: Fix sparse endian warning
Date: Wed, 28 Oct 2015 18:01:55 -0700
Message-Id: <1446080515-29734-1-git-send-email-ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1

Fix following sparse warning:
warning: cast to restricted __le16

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
 drivers/staging/comedi/drivers/das16.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/comedi/drivers/das16.c b/drivers/staging/comedi/drivers/das16.c
index 056bca9..fd8e0b7 100644
--- a/drivers/staging/comedi/drivers/das16.c
+++ b/drivers/staging/comedi/drivers/das16.c
@@ -801,9 +801,10 @@ static void das16_ai_munge(struct comedi_device *dev,
 	unsigned short *data = array;
 	unsigned int num_samples = comedi_bytes_to_samples(s, num_bytes);
 	unsigned int i;
+	__le16 *buf = array;
 
 	for (i = 0; i < num_samples; i++) {
-		data[i] = le16_to_cpu(data[i]);
+		data[i] = le16_to_cpu(buf[i]);
 		if (s->maxdata == 0x0fff)
 			data[i] >>= 4;
 		data[i] &= s->maxdata;
-- 
1.9.1


