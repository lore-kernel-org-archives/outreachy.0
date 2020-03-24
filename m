X-GM-THRID: 6807884729429262336
X-Received: by 2002:a1c:e341:: with SMTP id a62mr8237458wmh.121.1585084198033;
        Tue, 24 Mar 2020 14:09:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:4b07:: with SMTP id y7ls77256wma.2.canary-gmail; Tue, 24
 Mar 2020 14:09:56 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtbFp6URBt6/0DNvFcxONvZJZZWQFAVkDAZ088GKk8HkxQRu8y90WR2M3ZaNc8e/WHMsL9b
X-Received: by 2002:a1c:9d0b:: with SMTP id g11mr7987065wme.77.1585084196702;
        Tue, 24 Mar 2020 14:09:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585084196; cv=none;
        d=google.com; s=arc-20160816;
        b=eSd2yf0xi1CmBbO0rYs9Z6Hae9M8/zYl8O2r511bhwGyxydUCRfV4GOwGlfBdyVQj9
         NVPh+aTOEw1okdy4Kwiq4dRZqGyXynDxF3DmN+ON5VIKQkxRlGdhkfvZBZWS1SXZ34H9
         zhnfECGeHaERsUGvYZXIZ5MWhAVwyGpkjwhW6CyvmObgPu8A6oFCtQBEU81FZA8ne+4z
         65EOcriN60qUhqvwamkwB8w2O4rVCUrD46oj86XaULmmNVh/u6T05WB+FqTBuEKRkj4F
         JLBcsEqGxjdA06GNyN3E/CTFqd1RchHezP/3zoLvAvfpsMgnVOoxpqJ3xdtu9D/PNynG
         yUrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=CIjAYGBajLm19eFWLk5a7zVzJed9JQpC6kaBm3VHB48=;
        b=D3gF47da53atkSjv3ubWTe0bTDcG1SORJFQtizuoIF6Svc+P9rUhm72uK2LnP75OR0
         YlcpOPRKX5Yc0T3gw2bB7a05L8yjCMFOAsKgypJQzZsWav1ZHHeZJ90vnj+L/T8UIdTI
         GFIUbYY9P9E0xhVtis5zfxZOWA8xEIPEOn1aqaPlLJrb6E3deO8y3N4LB92MuwIkDCHG
         g2V9A6B1Td/x0ULDw6kq7LSxqPD479JNAotisBewZj3+zwt0O1+YWz84OAGc7LIImqMN
         Fq7dgOAzZjkGvaV7/X1pr969oke6yv5T3jncN6F9W4wk/1q+BQh6WWIbP6PDH2m3/PO6
         YQBg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uB9bvbXW;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jane.pnx9@gmail.com>
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id d6si316421wrq.3.2020.03.24.14.09.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Mar 2020 14:09:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uB9bvbXW;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x443.google.com with SMTP id m17so252572wrw.11
        for <outreachy-kernel@googlegroups.com>; Tue, 24 Mar 2020 14:09:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=CIjAYGBajLm19eFWLk5a7zVzJed9JQpC6kaBm3VHB48=;
        b=uB9bvbXW1v25uK+w0wOP9Yh4MP5hXJRTSIKfqttWP+F57Ba+U/whNCXFFYaQEWFUQX
         YL7DwHy1USv9ff4rd2M30VWW/nxpeRwgQ0+nLlOyKYpWSZ9WSC3BiDYbOjtZ2OrDY12I
         zQ9hEJObc9/obNBFkk3WFM8QqxDInp1YpgmgcweDJe2X1zGOF/5YUJJ/5DLajR+M+U0a
         b9UGGc8/IinYL3sGTpZeovTS5sBAufHVeloU5e8RgIb3XSIiBR/T3vT5mklP725l8zEM
         hugeQcysiDrA1NxjST35wb8YbukEvlrmTErBUX7cJNAhR9bCWng0CpXV9nK5AjfNrcBE
         0B5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=CIjAYGBajLm19eFWLk5a7zVzJed9JQpC6kaBm3VHB48=;
        b=S72OSLQylLUEsCULDqB3zJ1+n3JB2zmaHzMh0092ad1oUfkAyZKKuTNBn/ODt/CNND
         zuA32nHeol+dY9+gR1Gbp2r0v1Kh3qegyic8Z4lvgWwY2hyGfTgEmjiDiZVhKXY2M3aR
         1jjKJfNJASLdfITZjePYdHJrd6Ym5dqjeiJ0ei/U5tM+w7WyFTbODEJe4t6lj7DwYW56
         UTHShfTdtLUkdm/aeYY5IZ81b9/stIjgntr0CLaC7HtRtfrNn8JcXz1LVKKGxvlrlz/X
         Z1foJnZhSK7PgP08+FmB10JgRz+abq26C79pdEfEiLRJ384EMAKZEeDTAnJICbMmteKg
         yIfA==
X-Gm-Message-State: ANhLgQ1ZdhaukEeDlVYo2jWiFgfozXUASTFPQPzp2Mh6PG2k5BkIhXht
	4E976ngAkDNktPNiH/NoaHA=
X-Received: by 2002:adf:ef0b:: with SMTP id e11mr40755590wro.115.1585084196420;
        Tue, 24 Mar 2020 14:09:56 -0700 (PDT)
Return-Path: <jane.pnx9@gmail.com>
Received: from localhost.localdomain ([197.34.93.161])
        by smtp.gmail.com with ESMTPSA id t16sm27758455wra.17.2020.03.24.14.09.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Mar 2020 14:09:56 -0700 (PDT)
From: Sam Muhammed <jane.pnx9@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Cc: Sam Muhammed <jane.pnx9@gmail.com>
Subject: [PATCH 5/6] Staging: kpc2000: kpc_dma: Include the preferred header.
Date: Tue, 24 Mar 2020 17:09:18 -0400
Message-Id: <d0172ecd51f016e9658af1062cac949616665a09.1585082158.git.jane.pnx9@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1585082157.git.jane.pnx9@gmail.com>
References: <cover.1585082157.git.jane.pnx9@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

<linux/io.h> is the preferred header to include
instead of <asm/io.h>.

Checkpatch.pl WARNING:
Use #include <linux/io.h> instead of <asm/io.h>

Signed-off-by: Sam Muhammed <jane.pnx9@gmail.com>
---
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

