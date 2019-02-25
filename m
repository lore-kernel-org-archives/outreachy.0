X-GM-THRID: 6662079194667679744
X-Received: by 2002:a50:eb05:: with SMTP id y5mr2379656edp.5.1551136186768;
        Mon, 25 Feb 2019 15:09:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:ae9d:: with SMTP id e29ls2891606edd.4.gmail; Mon, 25 Feb
 2019 15:09:46 -0800 (PST)
X-Google-Smtp-Source: AHgI3Ia8T5x5mnnyJmYKgztVtiDIabw26IlEDioP62gntJScgiunfw/MUg2HxsuHXM8OVccJMSOr
X-Received: by 2002:a50:b361:: with SMTP id r30mr1220832edd.8.1551136185985;
        Mon, 25 Feb 2019 15:09:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551136185; cv=none;
        d=google.com; s=arc-20160816;
        b=07aMiJQpkopHGIsrkwdL3nbJsb1f57Vx+8XyX/tHafvkdYBsSPf8ccZXAj/1FeSEbW
         h6raVpVL3nt2uKyMenqRfcqclG+vDUoOS+g/7a9mWMF8Aupu1WfuujJorFHjIM7dFHgp
         FepG5uhvm7Qz+oJiSdMofAwLpEvFDO1LLh0SAhAVcoRxoPgA3Yvkbq85aINP4R9MyYJF
         by8xwjHtdcmg1fhnmpxz5Zncs9OEETm8oX8jem6jo7BK9XOZRu+JZzNoQoal+y5k+aDe
         pK2rzMj2JRmLEa32S26hw0IsARRJ/519Y4FRm6w0H57JYMD039soI/dFyO4dDp4QmyJl
         jJzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=I8jhrOAgQYQHbxRMkOpmin2GJLxbGR4aU0mrGaUw0J4=;
        b=uWScnT1vbWs3hObUURqPArB7XUovq35NU6MdZ0PR3OotiXb3Bx8zdzlWsZdoIbUSQj
         I43UyavoCdaaP24jzNnp0AxQDIO5KYBP2M8xHsU86wA2kU3zOOCU2wHYh93Y6GBqfZtR
         6fsBleWIGosJpajGiPXoyHDHcRMQ0jmv3lTyRZCY9cQDXGf3mhBQIhIV2XcUQBBEUe/M
         +HHSvIradssemYS1fqxzgGYAYLHoZ6o7KTpFhFfFXFfb6JC/eZg2NnXnRHtEYiYYf2rW
         g+UzR8+ED/6is/hZmN9XFnfj3pbDafJ6KW7wEZMmjiUsGqrlF8EZbPi5rHtf8UOeAa03
         TR0w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LkQN9N+j;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id r37si142171edd.2.2019.02.25.15.09.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Feb 2019 15:09:45 -0800 (PST)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LkQN9N+j;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x442.google.com with SMTP id w2so11787418wrt.11
        for <outreachy-kernel@googlegroups.com>; Mon, 25 Feb 2019 15:09:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=I8jhrOAgQYQHbxRMkOpmin2GJLxbGR4aU0mrGaUw0J4=;
        b=LkQN9N+j/dvP4pddRw4SAPH6rn3ByuJ5+YqiiFeKTFiIaYnbaUZIRuc4KoVIUodCGJ
         LwrkTge5c0xieOOvY+ZV+7C1yyMjA1JLZsZ+NFlFEYEjFhoJEPA/mhD7OFmXuHAZ8g1f
         mX23Le/1F3+gm5CtpyPp3SkZ7YAFPmgHlCML3ALfSCMwf91lVuemeaqi+nvZPWlSEOi8
         YVej5TVcAOcwQ6NEmhqSFZ13yFA4Vc71aE4FPEjW4UMRd9BgRJROx1aRVDDXq27lBysw
         Sv7pbRRz4cIvWYaK9JQAXlAgFPDgfSQpYxNiCbkWXIsHHBr9/N6kniQVsYjTonxuw6Vg
         Vacw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=I8jhrOAgQYQHbxRMkOpmin2GJLxbGR4aU0mrGaUw0J4=;
        b=hk8qSocw3YZRLgROSD85LxWHE8mxUixRKJrk9P3B3w6k8Jo5FCy3N/kerhYEn4Q3LP
         cSsScq9w6WgOmnCAFrInzaf5jEhAlqIfVLS0fz0WBXfGyWjbuSqfBUOJpLrZeDdKUzMm
         ufRmwiyuidFGhUIiHclNLUehW3AzUaMnELNx9ihqVHU6ssR42TYMQm+M/DzSZqC7qaUr
         QfwBLRBmaqwdXb5+MaWtgFMpKCUPSflAo5sg0/rrpmcHxqeIENtXwR9vRXG6r0KK+rTu
         nq4kznw+dG7YKg1+q5DzGoimK0OXSowccl41TAdrnI30uvPXY9GAEEgS1kFYsZCV6WXZ
         ajPg==
X-Gm-Message-State: AHQUAuYLv+8cBPHNTQQcJNn/l9mnmX5JEqYCvqvddlzM9ljkJovb8x4t
	djN+Vr1C7OcPel1Ayr+pkw==
X-Received: by 2002:adf:9103:: with SMTP id j3mr14035649wrj.236.1551136185487;
        Mon, 25 Feb 2019 15:09:45 -0800 (PST)
Return-Path: <jbi.octave@gmail.com>
Received: from localhost.localdomain (cpc102034-bagu16-2-0-cust471.1-3.cable.virginm.net. [81.97.71.216])
        by smtp.gmail.com with ESMTPSA id c1sm17075746wrw.7.2019.02.25.15.09.44
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 25 Feb 2019 15:09:44 -0800 (PST)
From: Jules Irenge <jbi.octave@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: mt7621-eth: add SPDX GPL-2.0 license identifier ---added punctuation to v1 changelog text
Date: Mon, 25 Feb 2019 23:09:29 +0000
Message-Id: <20190225230929.3861-1-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add SPDX GPL-2.0 license to fix missing SPDX warning
 reported by checkpatch.pl.

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 drivers/staging/mt7621-eth/ethtool.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/mt7621-eth/ethtool.h b/drivers/staging/mt7621-eth/ethtool.h
index 40b4cf011660..d0e97ae0d82e 100644
--- a/drivers/staging/mt7621-eth/ethtool.h
+++ b/drivers/staging/mt7621-eth/ethtool.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*   This program is free software; you can redistribute it and/or modify
  *   it under the terms of the GNU General Public License as published by
  *   the Free Software Foundation; version 2 of the License
-- 
2.20.1


