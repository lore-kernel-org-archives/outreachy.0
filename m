X-GM-THRID: 6388128141195345920
X-Received: by 10.36.131.131 with SMTP id d125mr1695689ite.38.1487351986963;
        Fri, 17 Feb 2017 09:19:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.56.105 with SMTP id r38ls5071765otd.15.gmail; Fri, 17 Feb
 2017 09:19:46 -0800 (PST)
X-Received: by 10.157.16.98 with SMTP id o31mr2706399oto.7.1487351986547;
        Fri, 17 Feb 2017 09:19:46 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id z73si850803pfa.2.2017.02.17.09.19.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 17 Feb 2017 09:19:46 -0800 (PST)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id v184so5405339pgv.1
        for <outreachy-kernel@googlegroups.com>; Fri, 17 Feb 2017 09:19:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=37Y6NpMrt+8AT7ZHdpJhEqmMTO4QNlcYMk3lIAlc1io=;
        b=PQxb1SuW02DAWOflKFyyERm1pm5TCqQq1FxXKmcOKtENPPGDKF/PTJ62TMXCBi5MTR
         1g8UWQ+ltXxf8cp7/3h3RlHIeuD0lGxUy2R14pyDuvsfL21iIuHJipBarEGyzsgG/EfB
         vFr6NhVKJS5s+4pZOkuH4orcI3DsEJWcOWe/Y51EiHidW3pMa5TM8KUdLf9TwU/adxz0
         a+hvICqgOlalR+IsOb6p4ra3GbowfrBnpAZjqbonTNkLDhGo/CA6HEpwuhr1LipwffEM
         CylhGE6skNUn9LaFdjpS/KpqbOrvyuq0uAz5Er7BjsItaYn45yEiP7LhS7da33AKE3uB
         2I7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=37Y6NpMrt+8AT7ZHdpJhEqmMTO4QNlcYMk3lIAlc1io=;
        b=N3farMwt2gWDeyaUw0pFaK1MMncTRk78MqvFXS3YMHj2oBNpcUlXaNy8qEUOC6fKil
         yrJh4CWyWs9Yv/uBxQX/x+qZgtGVKkQiSiskvKe6LUSQcbMrFBTHhqtCBVkpLP5DAWyx
         09aaw4mWgYGZ2ZIJnEFZ6B+HH1OAcvThL6zc6Mi+LJ8ZNVr5PlHzvw6EMwRBER0ESVK3
         vYDQJJ3F7xDKrcZKAa51zaY5qfj9MCuJ1R/NTRnqqsUZuurRqA05lNFoUePEgtuQ+/PA
         9byMYOkbuLEfGwsy4GpPe6J7c2cUzKDJwgSgw4d9Mcz4SCAs3IMJub79lULXHw4HanzG
         QyhQ==
X-Gm-Message-State: AMke39mMFI9GARJqjCKFjCH9pbVwJbxjr8mNoIz2CLjdpN5oKqWHwsnLiKlymxOKcPTnjQ==
X-Received: by 10.84.241.76 with SMTP id u12mr12859095plm.107.1487351986336;
        Fri, 17 Feb 2017 09:19:46 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id l3sm20907106pgn.10.2017.02.17.09.19.43
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 17 Feb 2017 09:19:45 -0800 (PST)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: lars@metafoo.de,
	Michael.Hennerich@analog.com,
	jic23@kernel.org,
	knaack.h@gmx.de,
	pmeerw@pmeerw.net,
	gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH] staging: iio: compress return logic
Date: Fri, 17 Feb 2017 22:47:21 +0530
Message-Id: <1487351841-6639-1-git-send-email-gs051095@gmail.com>
X-Mailer: git-send-email 2.7.4

Simplify function returns by merging assignment and return.
Found with Coccinelle.

Semantic patch:
@@
local idexpression ret;
expression e;
@@

-ret =
+return
     e;
-return ret;

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 drivers/staging/iio/meter/ade7854.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/iio/meter/ade7854.c b/drivers/staging/iio/meter/ade7854.c
index e8007f0..c6cffc1 100644
--- a/drivers/staging/iio/meter/ade7854.c
+++ b/drivers/staging/iio/meter/ade7854.c
@@ -426,9 +426,7 @@ static int ade7854_set_irq(struct device *dev, bool enable)
 	else
 		irqen &= ~BIT(17);
 
-	ret = st->write_reg_32(dev, ADE7854_MASK0, irqen);
-
-	return ret;
+	return st->write_reg_32(dev, ADE7854_MASK0, irqen);
 }
 
 static int ade7854_initial_setup(struct iio_dev *indio_dev)
-- 
2.7.4


