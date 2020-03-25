X-GM-THRID: 6807884729429262336
X-Received: by 2002:a50:85c6:: with SMTP id q6mr2949045edh.347.1585146440268;
        Wed, 25 Mar 2020 07:27:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:6bd2:: with SMTP id t18ls1117522ejs.7.gmail; Wed, 25
 Mar 2020 07:27:18 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vt/ai2nheP78c62GVF53ZzjaCCYx14c/SfBX2xH4Q4oEbmDXN5VocgAJDDSTIXtlYeuEpvU
X-Received: by 2002:a17:906:4e16:: with SMTP id z22mr3398456eju.363.1585146438441;
        Wed, 25 Mar 2020 07:27:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585146438; cv=none;
        d=google.com; s=arc-20160816;
        b=Cocx/eGluAPBRwoe5lYNQbVWYOxWGTU6UmlHshUvkzn+iLZbBg7moWHnUmdNonDKa1
         t29lY/BJKETKYvXWTVKC1bTus0ezczSdaK+OJMlKvUNMJOjZD2yaJmaM/ekzBkzQ84GQ
         A+T09wV8kU13AKWIV5EYAOUsG1tqgZMuY9XEIUYu1thT2+R+yz/VoTMIkyWEjmbk/139
         j3DZvpB9zhrwJlITSaGUXs53wNbgQ5+Z4uKSNk6afeJqiNMzv9CGGOLT6o7gfje3EewU
         6YdDYgUg97qACwhQLw41IJ0kBS/xKZwo/XH6cVCGvytGNdnvevLFuoANsOhc+YBxiXRM
         LNTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=7q/BEMgs+n9XOD1luasw7JsHjkMvdsXjJPkmql/6khs=;
        b=tObQy78K/zJtZfUNwyzn9RysP7p3odR0bLDNjR0X6TLYu1JjHeBOWoObsQ6XTqcjFk
         iJTxVVTYhvV4WdHlsZ655jm/pzJJZ3mm5Jz5WVZBbxqOP40rFvx3CPoURdaEVnkk0YN6
         ZytuDTpPK7qlNTT/BQVQdMoxwoq3CflQWoRSlECBzc/tdqNkrqHzjR5GfMTvp2e25FM3
         r+j13dzvLPgxKZa7ACjsk6nHx7Wbzcxynt0nARw44VUyAfTUHiC2V95AJ3q2pE2V5yF8
         OK3984fdtYERtNKn96v+BfUOGhVous7Ad/OJgwQSMx/brHhIWhKxkAU5Z+4RKaBmJWbC
         fM+w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fYSQe1F3;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jane.pnx9@gmail.com>
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id w13si197182edv.2.2020.03.25.07.27.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Mar 2020 07:27:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fYSQe1F3;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x441.google.com with SMTP id h9so3346191wrc.8
        for <outreachy-kernel@googlegroups.com>; Wed, 25 Mar 2020 07:27:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=7q/BEMgs+n9XOD1luasw7JsHjkMvdsXjJPkmql/6khs=;
        b=fYSQe1F3bXgLhrjnPN4u9Bf9DT9xt/zevrC0pyBcKsLcvaQvSq+iuSkM4A459yKlzI
         TAxiH3itvITLi1VrXfZ+4Cehbir2zu3uHJZdHJ7l18QCkZK2iPPe7cLf9NLSE3vHa4rL
         W9RcrpQiABIXWpGIy9gxH2/o+rRRawNVSWG9BvN+9Ym+e4OKevyIFMbFnXInvHjwr19+
         lLK8zHChYbN67xqle7PvJFecWBBWoAJJA5+OtJPIKPI+J5DbA0J+ekPFxR7Rc1LYcjjZ
         FThr7hS2rt6Si2E2wFKIc2efOor0jAPnt5wRKhpGL2N1MBRLFnFgSSqNFNSSY+LB8PFz
         uffA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=7q/BEMgs+n9XOD1luasw7JsHjkMvdsXjJPkmql/6khs=;
        b=SkdoyFLBTDAFUqq90XPl01FeL0yoZ74qmiGJUdBui8WC66LKiIhf6Cnpb0SJBhpwSN
         xA3qaAtIvpzT2pFbLt/7OuS9HLkbAEp/DtkDMNgnN/TAWlpvoUN6uKWO3azRiC6Dp5vS
         Wa7rYTli7UEdlptoJhglJu3gHObDepBEkNuVoXSjRpABaQux/asVRq5yfERF2WLEJIlm
         OZsi6PaBgJTat7dLYD3612U1R6rJU7TkVhCo+PyVLWWaSO8KoMv21EaKNK+IB+K+4rxR
         +YD050LzleTw/c4eaOKeAoO78LfY7TJpZhO8Gk8CFAR28Gm4Gi1HHCdT03MFRK9JgYGj
         PopA==
X-Gm-Message-State: ANhLgQ0sYW3tBqt5jv5MTG18UfuzlWRI0aw8Kt+8PlmMYFSZ5iy709cF
	1p0PU34URCcw/I+0SmTa5eY=
X-Received: by 2002:adf:f503:: with SMTP id q3mr3760250wro.135.1585146438144;
        Wed, 25 Mar 2020 07:27:18 -0700 (PDT)
Return-Path: <jane.pnx9@gmail.com>
Received: from localhost.localdomain ([197.34.86.140])
        by smtp.gmail.com with ESMTPSA id b7sm13098778wrn.67.2020.03.25.07.26.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Mar 2020 07:27:17 -0700 (PDT)
From: Sam Muhammed <jane.pnx9@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Cc: Sam Muhammed <jane.pnx9@gmail.com>
Subject: [PATCH v2 0/7] Staging: kpc2000: kpc_dma: Clear Misc Checkpatch.pl WARNINGS.
Date: Wed, 25 Mar 2020 10:26:35 -0400
Message-Id: <cover.1585143581.git.jane.pnx9@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This driver has multiple WARNINGS and CHECKS,
Changes been made to match coding style and standards.
Modifications:
	- Remove Comparison to NULL.
	- Proper usage of kzalloc().
	- Reformat single statement blocks.
	- Including preferred header.
	- Using the proper SPDK comment style.
	- Using kcalloc instead of kzalloc with multiply.
	- Putting spaces around operators.

Changes in v2:
	- Adding a new patch to the series:
	    Patch #6: Use kcalloc over kzalloc.
	- Recovering alignment of code that a patch
	  messed up in the previous revision:
	    Patch #7: Use spaces around operators.

Sam Muhammed (7):
  Staging: kpc2000: kpc_dma: Remove comparison to NULL.
  Staging: kpc2000: kpc_dma: Use sizeof(*var) in kzalloc().
  Staging: kpc2000: kpc_dma: Remove unnecessary braces.
  Staging: kpc2000: kpc_dma: Include the preferred header.
  Staging: kpc2000: kpc_dma: Use the SPDK comment style.
  Staging: kpc2000: kpc_dma: Use kcalloc over kzalloc.
  Staging: kpc2000: kpc_dma: Use spaces around operators.

 drivers/staging/kpc2000/kpc_dma/dma.c         |  9 ++--
 drivers/staging/kpc2000/kpc_dma/fileops.c     | 49 +++++++++----------
 .../staging/kpc2000/kpc_dma/kpc_dma_driver.c  |  9 ++--
 .../staging/kpc2000/kpc_dma/kpc_dma_driver.h  |  4 +-
 4 files changed, 34 insertions(+), 37 deletions(-)

---
2.20.1


