X-GM-THRID: 6252275562391273472
X-Received: by 10.28.47.140 with SMTP id v134mr2808944wmv.3.1455721357092;
        Wed, 17 Feb 2016 07:02:37 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.21.234 with SMTP id 97ls4364952qgl.23.gmail; Wed, 17 Feb
 2016 07:02:36 -0800 (PST)
X-Received: by 10.129.83.85 with SMTP id h82mr1851982ywb.18.1455721356116;
        Wed, 17 Feb 2016 07:02:36 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pa0-x22a.google.com (mail-pa0-x22a.google.com. [2607:f8b0:400e:c03::22a])
        by gmr-mx.google.com with ESMTPS id yd9si245961pab.1.2016.02.17.07.02.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Feb 2016 07:02:36 -0800 (PST)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) client-ip=2607:f8b0:400e:c03::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22a.google.com with SMTP id fl4so12650502pad.0
        for <outreachy-kernel@googlegroups.com>; Wed, 17 Feb 2016 07:02:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=C2IrxsCZiF85k2rfv0e4gRKVrsoxoulwFluqVfzgz/w=;
        b=YqmBkdUPQwuTvY6Fb9RVWOv/8vPskA8nudQ40mofmlacUfw8CTXMcXDKTHTA51lLIA
         4ggMPS1D5twNbL7PSjC+342sgH5lC3dHprX0Gs8MnSh2t2Ob8TfDZ9Gs1G6Yh2wKndoW
         YssanZRVtIFL6Va5OQ27umOUBtKkF5zuCjXty9AMxwrgVnvVWiiaL8/p03G+S3EHTkPP
         eV6Q01JvQd6R75hMDe1Jl7lBDHhu4WHb0qs7NRw0dtxlmMfd+lNIrznnOi9sQTw8DQ84
         nOR/wT9O0dxIqpJY0DTZHIgYbPLjgdmPsN69gNaenzWOK/Z4jH0Eb7HZZeK3QPc0k0BA
         xJXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=C2IrxsCZiF85k2rfv0e4gRKVrsoxoulwFluqVfzgz/w=;
        b=i/eRz0Q7N0/wPjdINy1GKnJMiBmKOneAeKmnQWPQTYZs0DqAz+BmgLiY1DW8tPC+GF
         iUH7VwGsCJK/7wOleV7ItMJrK5W1rMxrLHtb3TrbEhYvI4QRoGuEMbIGN9BYWKIS88zB
         iZp6RoPqvNiIR5bIKdt9rhtl0X1pe5uISyvSVK8cPC3CDJELc5bvfEHXmS5LoQrsdVEt
         wUcUfK1wAii8aKWWq+GDV01Al4hCn2Su6g/FQMkE+PYOuYJRlLuTSnOGUAwLwz6AiebD
         PDTtGI9/obXHxyRLYK4ADG7yUL0fsdn84JjLQxTPM/NxM1GpLtESz3bjSiz2+R0fu/ti
         LPyw==
X-Gm-Message-State: AG10YORr5FT7pQMRUT3uQKc8y2STbofSmWVbxGVXwaC6HKqsCq7/6MlpYzdfIcsPo3AJcA==
X-Received: by 10.66.101.2 with SMTP id fc2mr2759048pab.96.1455721355993;
        Wed, 17 Feb 2016 07:02:35 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-Mint ([103.14.62.168])
        by smtp.gmail.com with ESMTPSA id r62sm3457668pfr.26.2016.02.17.07.02.35
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 17 Feb 2016 07:02:35 -0800 (PST)
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Eva Rachel Retuya <eraretuya@gmail.com>
Subject: [PATCH 4/5] staging: iio: tsl2x7x_core: add spaces around operators
Date: Wed, 17 Feb 2016 23:02:16 +0800
Message-Id: <1455721337-31883-5-git-send-email-eraretuya@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1455721337-31883-1-git-send-email-eraretuya@gmail.com>
References: <1455721337-31883-1-git-send-email-eraretuya@gmail.com>

Address the checkpatch check by adding the necessary whitespace around
operators:

CHECK: spaces preferred around that '/' (ctx:VxV)

Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>
---
 drivers/staging/iio/light/tsl2x7x_core.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/iio/light/tsl2x7x_core.c b/drivers/staging/iio/light/tsl2x7x_core.c
index 5d9d8b6..9de6670 100644
--- a/drivers/staging/iio/light/tsl2x7x_core.c
+++ b/drivers/staging/iio/light/tsl2x7x_core.c
@@ -854,7 +854,7 @@ void tsl2x7x_prox_calculate(int *data, int length,
 		tmp = data[i] - statP->mean;
 		sample_sum += tmp * tmp;
 	}
-	statP->stddev = int_sqrt((long)sample_sum)/length;
+	statP->stddev = int_sqrt((long)sample_sum) / length;
 }
 
 /**
@@ -1192,7 +1192,7 @@ static ssize_t tsl2x7x_luxtable_store(struct device *dev,
 {
 	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 	struct tsl2X7X_chip *chip = iio_priv(indio_dev);
-	int value[ARRAY_SIZE(chip->tsl2x7x_device_lux)*3 + 1];
+	int value[ARRAY_SIZE(chip->tsl2x7x_device_lux) * 3 + 1];
 	int n;
 
 	get_options(buf, ARRAY_SIZE(value), value);
-- 
1.9.1


