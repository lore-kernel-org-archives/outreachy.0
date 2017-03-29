X-GM-THRID: 6402897717905850368
X-Received: by 10.36.107.141 with SMTP id v135mr124642itc.16.1490790803507;
        Wed, 29 Mar 2017 05:33:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.35.193 with SMTP id j184ls5469396ioj.1.gmail; Wed, 29 Mar
 2017 05:33:22 -0700 (PDT)
X-Received: by 10.99.121.143 with SMTP id u137mr74271pgc.103.1490790802729;
        Wed, 29 Mar 2017 05:33:22 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id 2si1085709pfz.1.2017.03.29.05.33.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 29 Mar 2017 05:33:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id 79so2558067pgf.0
        for <outreachy-kernel@googlegroups.com>; Wed, 29 Mar 2017 05:33:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=FsGwCWyqBUwA4ipOxcGePD28VcQhqP9CMnRWJwY6ffk=;
        b=In1NDDjem4Odb5iXCMdbrWoTXQMgDFZAVtU44EDLSYZwmCA3/9FX9YNhLjsl2GTcr+
         jdMM/wnb/67tOWqtVY0g3GAkYKhbLVkFZjOV6pTCB+VT5IHv6fuer0zi0dkhRtK+E8uU
         CDYQGj0KwtJvmy64R1JvyYhWMX/j75f6Jk1Vqk+dvBsS11Jv5fUFytANRdqMUfTl63Od
         lvo1mNfSqpvGYWUeF8NB1IqamxTXmbNBm0WFP5vUlJL+hVLvkjH6Trx/jLH/V3WtLk5V
         OKtlE/8PzBKKB5I6d6TnquAXniKvmw4GXy/FN0aUd+xWISnPUzzsJqzwNSiF/4qIVcpy
         4ehg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=FsGwCWyqBUwA4ipOxcGePD28VcQhqP9CMnRWJwY6ffk=;
        b=tg3O8Gqnx2sujLQdMOLZSwgwvrvST6aiy6PwBEyHF8ZfODrDNb+BxzkarfgMTujFV8
         LIas6BN04kOeWUbZPerz6W2yjX2ms68JR2zgsVGItHqvf6j0LhaVXgdcM4IqB6H73XNs
         bkb9T+n31CxHsyDsnI1Hue4jBOpTjZgyAKGa+0t9d9AONSlGiQoxWzbcf+RxvqfWPlpx
         cE1WBZxsOp65Yk8NFPGNTcWixhow3MYywLoFy7iLkzeNB7ogHQxaye643a0Ngix8BGIL
         KlDt3uR6YvPE/fdqtQeWgIbBJuunU77sqgIvxkAQGdJLVGZzjBZEYQfclJJm4tBlO7HL
         0ATw==
X-Gm-Message-State: AFeK/H0oIc1U4dKYjFjN+i3gzsnBIOeWDuUORuK/0j0zf3juCZLVZt+tKg5tsrmjk8nVWQ==
X-Received: by 10.84.129.195 with SMTP id b61mr299534plb.83.1490790802543;
        Wed, 29 Mar 2017 05:33:22 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id h71sm13510244pfj.65.2017.03.29.05.33.21
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 29 Mar 2017 05:33:22 -0700 (PDT)
From: simran singhal <singhalsimran0@gmail.com>
To: jic23@kernel.org
Cc: knaack.h@gmx.de,
	lars@metafoo.de,
	pmeerw@pmeerw.net,
	linux-iio@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 2/4] iio: imu: st_lsm6dsx: Replace ternary operator with min macro
Date: Wed, 29 Mar 2017 18:03:09 +0530
Message-Id: <1490790791-5694-3-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1490790791-5694-1-git-send-email-singhalsimran0@gmail.com>
References: <1490790791-5694-1-git-send-email-singhalsimran0@gmail.com>

Use macro min() to get the minimum of two values for brevity and
readability.

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 drivers/iio/humidity/hts221_core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/iio/humidity/hts221_core.c b/drivers/iio/humidity/hts221_core.c
index 3f3ef4a1..f98240a 100644
--- a/drivers/iio/humidity/hts221_core.c
+++ b/drivers/iio/humidity/hts221_core.c
@@ -206,7 +206,7 @@ int hts221_config_drdy(struct hts221_hw *hw, bool enable)
 	err = hts221_write_with_mask(hw, HTS221_REG_CNTRL3_ADDR,
 				     HTS221_DRDY_MASK, val);
 
-	return err < 0 ? err : 0;
+	return min(err, 0);
 }
 
 static int hts221_update_odr(struct hts221_hw *hw, u8 odr)
-- 
2.7.4


