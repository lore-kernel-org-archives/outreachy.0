X-GM-THRID: 6329929865196732416
X-Received: by 10.66.246.197 with SMTP id xy5mr3168966pac.47.1473879537073;
        Wed, 14 Sep 2016 11:58:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.3.83 with SMTP id e80ls565480ite.0.gmail; Wed, 14 Sep 2016
 11:58:56 -0700 (PDT)
X-Received: by 10.66.85.104 with SMTP id g8mr3176692paz.33.1473879536625;
        Wed, 14 Sep 2016 11:58:56 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id um12si1452543pab.2.2016.09.14.11.58.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Sep 2016 11:58:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id n24so1138242pfb.3
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Sep 2016 11:58:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=pPBnuUOl9dAhLln8KakC9L/ogZTGdDv3pvt9TJzi9XY=;
        b=Rg/ftDEKUPzywl5JQx4L3rUuWZo4/Yb5YcoZDWsjnQ32CfXUHBK0g+uv4Q1srZwcK0
         Qmj0GsEJXOkYpUUs1/m/g8tvkY2wcLaI3EAR9FU3/A6G30zMPvyigrygXXFP3c4zfXvJ
         PQdJ8sVJbIj5ZmnShbZm1xwQUE5bzuo6jkUUeoxY44Y8RfDr/pKNAYU3GNHidkTlzKFk
         IWH8UHvrVWtXh/5+ec84E0WLuYP2nzF+C949F2GpzrNok6dK6SDrbpU92zMe1X1LzxTm
         3WnhED4E+UuZqnf48YiA0oJzQzfwlkoQUrwTQJQbNYg/BQF9XP+cKJySDjkBe0KnJKQT
         OgoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=pPBnuUOl9dAhLln8KakC9L/ogZTGdDv3pvt9TJzi9XY=;
        b=HFejbl4Jm1POMbm1gQs51kPKU1MkFd1K0E8GwY+P2GN84YIJ1v6jkVaLejTvuhLAFW
         3PcPrCVg96woasJY21pBAJdahqrsuLOUoHKgvovVHFgJIyp+v2zzvXGbd6hPYH1fPVaC
         7GxE2tY6T3AxKTHW0ZQrCvlxA5RAtuWCYT0dSQ+Rc1akLWi/xKd4yHwRnlcX2WgnpvcB
         WnW9r3SK2NwB/r8mK2TlGjA6g4H0xeCNB7KwJ7L1OE3ipdEID6s2a8dPOg4DHfosJeaA
         3v9hMikML5EQRKUgLDn9upMjUaliRjtJqPDAR+zd9Tf28GBW1Q/8BYgKNB/plPIfDHlY
         QRKw==
X-Gm-Message-State: AE9vXwPR+Xe9m2pHORc9hojc3YbX4jF965QzLihUgP9vZUCplwecQFQS6G05E3jWdCnWNA==
X-Received: by 10.98.99.67 with SMTP id x64mr7327753pfb.26.1473879536457;
        Wed, 14 Sep 2016 11:58:56 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id xp7sm7187027pac.27.2016.09.14.11.58.53
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 14 Sep 2016 11:58:55 -0700 (PDT)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH v4] staging: octeon: remove multiple blank lines
Date: Thu, 15 Sep 2016 00:28:01 +0530
Message-Id: <20160914185801.12327-1-gs051095@gmail.com>
X-Mailer: git-send-email 2.9.2

Fixes the checkpatch issue Please don't use multiple blank lines.
---
Changes in v4
	-Make the commit message follow protocol by putting v3 commit
	 subject before v2.

Changes in v3
        - Make the commit message more clearer. Also, fixed the subject
	  mistake in v2.

Changes in v2
	- Change the commit subject to :Correcting the commit
	  message. Fixes the checkpatch issue Please don't use multiple
	  blank lines.

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 drivers/staging/octeon/ethernet.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/octeon/ethernet.c b/drivers/staging/octeon/ethernet.c
index 0bd5c18..ec8e424 100644
--- a/drivers/staging/octeon/ethernet.c
+++ b/drivers/staging/octeon/ethernet.c
@@ -686,7 +686,6 @@ static int cvm_oct_probe(struct platform_device *pdev)
 		return -EINVAL;
 	}
 
-
 	cvm_oct_configure_common_hw();
 
 	cvmx_helper_initialize_packet_io_global();
@@ -929,7 +928,6 @@ static int cvm_oct_remove(struct platform_device *pdev)
 		}
 	}
 
-
 	cvmx_pko_shutdown();
 
 	cvmx_ipd_free_ptr();
-- 
2.9.2

base-commit: 45e35b5041a07a4cdf122ba8280e61cdba4f1092

