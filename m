X-GM-THRID: 6660411535314124800
X-Received: by 2002:a62:9654:: with SMTP id c81mr14369490pfe.89.1550748080393;
        Thu, 21 Feb 2019 03:21:20 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:294a:: with SMTP id g68ls1295750plb.6.gmail; Thu, 21
 Feb 2019 03:21:19 -0800 (PST)
X-Google-Smtp-Source: AHgI3IaBg/g/UG+FuJvCWT86ooGR12vd3g4i67/F2/CZFIOgSMTur8OV7Z3fC4gJf3dTNkv6vwnI
X-Received: by 2002:a17:902:ba88:: with SMTP id k8mr9165513pls.39.1550748079695;
        Thu, 21 Feb 2019 03:21:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550748079; cv=none;
        d=google.com; s=arc-20160816;
        b=fpbwlOobt7erjzQHFbuFp1OUDorhBVF1Wbop84jW8OntHv2ZoQ3cKatLFlzQr7D/rd
         Oc+DV3Kh4IXyL30INpOaNHFXsOMgbXS66Wk0DtwErsK9MAwolie7sP8lq1GOP/dR8Z6+
         29lI2jOxMVjdg0ycajZ1k9ytTFA0fDL3iyqDQ7hus2+3yrk4LsrEv1nMGi/Iv+pcwDaL
         pNVg9pF6qt34TUfh05OZ/tEtGNp/GT3CZSxYKIiiqlia/D1MkliAqYntE1CnyjWMAVtB
         18U1VWqLg5k/JSDiTtjnX2+4gPOy/i3zFyZ84L6NZPDyrTvNCON/y++D1Bnt01DMfRJN
         DJUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=tfGdygzk6kYF9lfaqkLrocTFrG/0lGBXqdV6mIHOPIA=;
        b=kEImOnFABQuz8Go5dqluLRR4ZSnf+HtXs1IuDnsE4iYMR25ld1mayxmL972tG/Xw/d
         mM66Eiwpqdz8HcRnwwXkb4ab7kvhq8Eao0IZbIYAar5BzLqJG7BguZsjPcdjq9KA3ONB
         WU6yN0iaYxFKXNYzzc5FMFwFR8QWIzkZJR9B42Npr3MxnUdn8JgRJnOO1RDPn6VA2F/D
         f8tfdZ6IpZgxNO8WpohdmOOd5B0roLKWzZglq+g49LUfgW6lBBLlR/IwNYonZGTBnLWb
         SZapYEEAoI94C4p/sUVCCb7PAZwDvSm3q6O5M2FBLgZAf/cTRryleo6RiWbygTernPko
         l1Fw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=E74yHTFH;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id 23si1040873pgc.4.2019.02.21.03.21.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Feb 2019 03:21:19 -0800 (PST)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=E74yHTFH;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x441.google.com with SMTP id i20so3180536pfo.6
        for <outreachy-kernel@googlegroups.com>; Thu, 21 Feb 2019 03:21:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=tfGdygzk6kYF9lfaqkLrocTFrG/0lGBXqdV6mIHOPIA=;
        b=E74yHTFH8Y7Bge0SXvgxun6GjZpQV+w1Dx+udOsStdSBS2JcAGm57aAoso44ckilfB
         uSjCIj5TthKHID8CtAGEs9XQFbKKYnPuC2Yxist53CidYbIIbED174xudiU+zwPDPPAm
         Nx5oWdaxXgzHyDXLcfl5CfZ8IU0JtKKYctovo3GvY4bDyRrszdriBSlTpE3g+m8PrSfs
         Fv+Z8FmMVgONtGAJbKBGyJTxthq8yiBsT605zjegmDytwbAfKst4w+09fbyzhICodqHK
         0mz3LJgK3YRf8aBZq7Ajj9tSdtkxNd1zvrBcNRhzOA6aipRZT9AswbwBkL9MgM2Y2wo5
         ylMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=tfGdygzk6kYF9lfaqkLrocTFrG/0lGBXqdV6mIHOPIA=;
        b=Qxxfxc8pMG1FMZTECyG5ilaarPnqXrpCsExg2oV6UCtNY9dQa02hBJ1vcBU10vqXNX
         Z2RUK0jIyOFLfNpZ1o3YcsYtRjpESP2YvQz8+r2WOffqpDQgnpLUVMEP9k8WxCu0dv1H
         9LCMv7ZonaBBWUsbDDI9LXkFa3yqfB4IZ+rqGakAcm8XyLlEVRn8uEa2030RlbVbBlei
         AHw5f039t2Ajh2N6TIfoP9eVi+ZvTtjS2suQfzQIIQVgZ5v9cgWc+kWpJC5uTE0ug4Cl
         RVYOzlh08RTv2uZ1LNm4PSwK2FIbnHPIZnDYInoTOp//BeUGUXyjb87Aqh/MTGwdXQOD
         mhHQ==
X-Gm-Message-State: AHQUAuZHmEJP6OkWWA3ZtUfmoC9CJaEDA9hGkRsoCxKkPZnZos1FpmEd
	Bu7xHzHEOirvyw9H2zCuJ7m5+LvVtvI=
X-Received: by 2002:a62:b608:: with SMTP id j8mr41044613pff.183.1550748079391;
        Thu, 21 Feb 2019 03:21:19 -0800 (PST)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from bhanusree-MacBookAir ([183.83.84.116])
        by smtp.gmail.com with ESMTPSA id b68sm40899182pfc.128.2019.02.21.03.21.18
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 21 Feb 2019 03:21:18 -0800 (PST)
Date: Thu, 21 Feb 2019 16:51:16 +0530
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 4/4] Staging: netlogic: Add SPDX License Identifier
Message-ID: <20190221112116.GA29140@bhanusree-MacBookAir>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

adds the SPDX GPL-2.0 license identifier which solves the checkpatch.pl warning
Issue found with checkpatch.pl warning:
"WARNING: Missing or malformed SPDX-License-Identifier tag in line 1"

Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
---
 drivers/staging/netlogic/platform_net.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/netlogic/platform_net.c b/drivers/staging/netlogic/platform_net.c
index abf4c71ee66b..3886c99c1f68 100644
--- a/drivers/staging/netlogic/platform_net.c
+++ b/drivers/staging/netlogic/platform_net.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright (c) 2003-2012 Broadcom Corporation
  * All Rights Reserved
-- 
2.17.1


