X-GM-THRID: 6807884729429262336
X-Received: by 2002:adf:e611:: with SMTP id p17mr3709184wrm.212.1585146451752;
        Wed, 25 Mar 2020 07:27:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:f2cf:: with SMTP id d15ls859108wrp.8.gmail; Wed, 25 Mar
 2020 07:27:30 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsAtnV6uPQy59b7rjhfgiMEZIDNRqm/Qyo60rhqXRAN0lVNGgxvcfC2+IjJNmMQ7lXvGc6G
X-Received: by 2002:adf:ab12:: with SMTP id q18mr3867214wrc.148.1585146450419;
        Wed, 25 Mar 2020 07:27:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585146450; cv=none;
        d=google.com; s=arc-20160816;
        b=ZuAmQSibq5WrKErc21PmFY1PKIutRPfIcQylXr23w3oYYDn1n0gtLUkMpFzkHuENRd
         qLxNL5DJFA9Fc1Ov+Jk1Pd5/o7DaDDgEWvMSmF71js/YSb5ai46Q0wpZIzJ8o35TG01/
         xfWhI/tkonSyzriElPwCPryplHoPWRM2f+BI/eX6Rcsl7krXbHQLAnDoj7Elm5lvfBLP
         CByiNibgzG7iPPEkI2FLja5J1NdpmRY94RXb5Pv3TwSk8QSCcy0ULC6GQIqKY0x+pWFN
         Yfws0/6hAVM6uMHj8Q0NbezVsX/ZZa5xDwpEnH1sza/ReWqnLynWV44eQ2edzFsU5pe4
         GdPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=5W0Krd5at7NVIhS9x7nP8yz2YuP980pUwnCJvWmjbaQ=;
        b=Gis4+AiHWJtEhoGRO7d4+5KeXYm7aTEjGDrAl5KOSBSfPi4gO4y6mxaToCjjW5Lg97
         /BBfKNpnJePWNnua8FCx7EJH5f0Z/lDErHSgIdTbE6jJ4lDW4G1KgpoyTMN+K1fyKWGk
         wQ4SM2F/+gOm4LXVcofa/mL/lgyfIZnHpdkW6N7YdwZUeukm3w0x6IpXG8vF6Pc0IWBe
         9IsTTEOevW5NRhrKOLM6EvbWxFaijLOOuk+6lN22cLg4+NWEz+4zw8WUtaXwuhvZKFdX
         qm/U9m4O1CuQlFpm7gnpJZQyRaw+NYUmJfGTTr6EWIeEhhUpOZuahrDncsD9QdxLW2AJ
         H0Bg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YJC0cTdo;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jane.pnx9@gmail.com>
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id v12si1258527wrp.5.2020.03.25.07.27.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Mar 2020 07:27:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YJC0cTdo;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x442.google.com with SMTP id 65so3404371wrl.1
        for <outreachy-kernel@googlegroups.com>; Wed, 25 Mar 2020 07:27:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=5W0Krd5at7NVIhS9x7nP8yz2YuP980pUwnCJvWmjbaQ=;
        b=YJC0cTdotuInHvsIfIwFf9qofcUXIJIwkE0iaUWxzkQmc1O8sjC9HZlAECyDo2JV/G
         0p181+03lzcJVNwN5MPW/ZQKFiMzJAZuoX4PyP5fdeqXmesbeVXcHhZlUPsM6WDWkXac
         +032eW6Is/qtM8rvmTck664ZS4CoBax4BohW5UqmfShuqE76dSnz4jaHErm7dc5mCeEw
         p+1cGSAP95qMjivy6x7bbTw5pGjFp8bC+WTrFD6XFfQ97oRyOifs7X5MiaBVXhZCZbXI
         YgUetNj/+zdM1/K0NSJCNYEg+49EUk96kPIa/TgzSMI5mHQVfDaqmafmOkfz0bBNRi9v
         6hQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=5W0Krd5at7NVIhS9x7nP8yz2YuP980pUwnCJvWmjbaQ=;
        b=EDShwwnF3FMacgUHVJyQpJhQmiMdJAFrLOXYcsgClUBc2mVnw3/hvXgxTTsC/bMPZC
         YyxMmd4suctUr/4RNymh/2CSEpamcLpWX3hav7LgbtQSFAmYoOA8uUkKRKCs430yJwHx
         8K3Egfo4FAh1RjJ9JudmT0Cnd+RT/xmW57u3NgKO6NLVDj8+5GeZWz1x5CuiVTEC4OHY
         Bpxmgwlc1HUtHoW6LtZWdpOHNEoF028cDzr8WHLbTBjlilxQu7eRswr7HR1jhnmZyYqL
         2v7qmIMUcMTuiOU+r5MSvqNmuGMflZ/1BDZTxVKlPbkU3X1rQFCwndU1EfKvcinP5X/9
         kjtg==
X-Gm-Message-State: ANhLgQ28QNumzhU7k3Q4EIhocM1DHKQFy95MntXcAizsnwEcUl67jcUZ
	8xW8OOoP/VV2pOm1tXhIa54=
X-Received: by 2002:adf:bb45:: with SMTP id x5mr3421124wrg.388.1585146450130;
        Wed, 25 Mar 2020 07:27:30 -0700 (PDT)
Return-Path: <jane.pnx9@gmail.com>
Received: from localhost.localdomain ([197.34.86.140])
        by smtp.gmail.com with ESMTPSA id b7sm13098778wrn.67.2020.03.25.07.27.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Mar 2020 07:27:29 -0700 (PDT)
From: Sam Muhammed <jane.pnx9@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Cc: Sam Muhammed <jane.pnx9@gmail.com>
Subject: [PATCH v2 4/7] Staging: kpc2000: kpc_dma: Include the preferred header.
Date: Wed, 25 Mar 2020 10:26:39 -0400
Message-Id: <c7a824c3a2ddc5f44bd89504b8c03a328d69f81d.1585143581.git.jane.pnx9@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1585143581.git.jane.pnx9@gmail.com>
References: <cover.1585143581.git.jane.pnx9@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

<linux/io.h> is the preferred header to include
instead of <asm/io.h>.

Checkpatch.pl WARNING:
Use #include <linux/io.h> instead of <asm/io.h>

Signed-off-by: Sam Muhammed <jane.pnx9@gmail.com>
---
Changes in v2:
- None.

 drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c b/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c
index bc81afb6ade2..0bdd345cc8c8 100644
--- a/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c
+++ b/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c
@@ -2,7 +2,7 @@
 #include <linux/init.h>
 #include <linux/module.h>
 #include <linux/types.h>
-#include <asm/io.h>
+#include <linux/io.h>
 #include <linux/export.h>
 #include <linux/slab.h>
 #include <linux/platform_device.h>
---
2.20.1


