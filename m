X-GM-THRID: 6806661932796346368
X-Received: by 2002:a17:902:9a4c:: with SMTP id x12mr12639101plv.297.1584799478744;
        Sat, 21 Mar 2020 07:04:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:b58e:: with SMTP id a14ls3421528pls.5.gmail; Sat, 21
 Mar 2020 07:04:37 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvxQIwaVjxVdGK/wa4SU/ArJTtsxsF34ECU6Luf8W7ni4nB9/8EAY5Vqlxz0Cn+9q5B604E
X-Received: by 2002:a17:902:a5c6:: with SMTP id t6mr12768572plq.323.1584799477176;
        Sat, 21 Mar 2020 07:04:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584799477; cv=none;
        d=google.com; s=arc-20160816;
        b=JbC5nqFIQap1wR1g3Z/ELvwTx4BNDmmEbPwsmL3d9fXAI2sN/6BH9QHsvga9xTtSTK
         4NE/+RT5ckkrfpr5XaQxZZMXBHynrebpKZhL3xK7sGdViOr3Bqsd0lFs7A80N0T6b2Sh
         h0TCYQI7HVXxR9xpZyJxAls6bMhVdh+HxlMWX7GOq81pcOQif8q9A0FDw4A8mt0sZ5KB
         /rqFKD4s/VbaU1oXZRFbQL0xxe5NhwGlzkgG4ldUHxc3R9aWCpeSW5yLeUJx7ENPqFZb
         cw/3qnUbYsXUfaIYj/yxxYiU+nLVuUGlcTPxD+NFG1Fxn0lE5tljKBMURB6mAOCaF3mm
         Mg0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature;
        bh=J9eGr1XRuuMVhT4BB0OXqzh8ZUNEQwk5lWfXIehE4RU=;
        b=tl5yNCntDWmCXl7k0sfqYwaQdPpbWJJEXs1/TgVTOPlajgPk6aPLtPYKj2MzpSjLmw
         rsvMh/1hWcsWB1Gr0TwQQmd8zOqv1qojGz187+dMf5XV4oEflnIf4E1uhOhEtdCx1QvV
         jN5aeMGv6e4LfDKGORPiphGfqedre4Lv27oXQ8KE7BvMotaMQfm9DEeobP2TQ2pWvBcw
         fGpCnBvUgwoFMnbFyKdvQNmEALkpJeDBOWGw+ImUDOMQDj7xVKq2m71/dF5WcVdQAtiK
         JpaieyYku4BEXMI71164oraTuKVRnfFLT0l643oDJM5mJ01Np0bHbLP23aybYo/409iA
         saaQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=skHcS7F3;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id 188si677783pfb.1.2020.03.21.07.04.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 21 Mar 2020 07:04:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=skHcS7F3;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1044.google.com with SMTP id np9so3778988pjb.4
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Mar 2020 07:04:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=J9eGr1XRuuMVhT4BB0OXqzh8ZUNEQwk5lWfXIehE4RU=;
        b=skHcS7F3YJWvMX4rRiycVWZ7L8rACzYJkh6R1+nulg0+KzXQS2OcNPrqfQjZgnJGVX
         +O1jF/a7lmk/2Uqx76M+eoKLfgwz2chvOz0q68gUN3liu3cBVVSKVgSSCX8scFOxnzhB
         im1AMBM/pu+fA1VJbHiqLkgAnLuurIahr8G/2YOAUeZg32wzUuFpofhTcffvbDRBhMMH
         Lyb/7HhK1tsbzfAraKZ+jmap7FQCec8AI7vfPZF84S1hr1fKn9JmguxcTK+YOfCM+Rou
         HFBedKFyAGEapSfaHZsKonbU4NdBwAw1T5GQfkgyXvwWqT2dh3J4Yfpfj9IYRYb6EZIx
         0qIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=J9eGr1XRuuMVhT4BB0OXqzh8ZUNEQwk5lWfXIehE4RU=;
        b=WajQ3EFHP/qz8s4vW2UIq5HS7+og+pydo6PN5HxgV5+QIj8XwJHJO+DRB/xM7rQN0y
         OkYTPJFrP0gAoS5wcEMRjXfMD4TEj3gCZLNZvCdfZdfdHxq6l7I05QOmcm2++gXZrevq
         ajrtQfBWS3C94UWWTz81jUiRNRmRwDTbXJ+gSbV268T5Qa83xAVHzKXirsaGzlcQlCCA
         El0p1+R2H+OpbktrlZFi7bVMKrxW8n2HzbjFTeVIjK9wZHwud+9aL4RkXZ8SOQIvUMIA
         Ycv9Fll3mRZkiepGhpjyeHhhTQzZHh1I3IVKXxe7Cri4HWbres0klnUad1yZyNzNt9NM
         Xj5g==
X-Gm-Message-State: ANhLgQ0W1Db5TiZMX5hd1u2iPL0rW9cQdimppRVvtbWI6fo/U6FVy4yz
	WjWn7rK1VaZYplDiTbxtZ0/Y8ynqGSI=
X-Received: by 2002:a17:902:7b87:: with SMTP id w7mr14025772pll.214.1584799476391;
        Sat, 21 Mar 2020 07:04:36 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from simran-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id g2sm1257540pfh.193.2020.03.21.07.04.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 Mar 2020 07:04:35 -0700 (PDT)
Date: Sat, 21 Mar 2020 19:34:31 +0530
From: Simran Singhal <singhalsimran0@gmail.com>
To: gregkh@linuxfoundation.org, jeremy@azazel.net,
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: kpc2000: Removing multiple blank lines
Message-ID: <20200321140430.GA18933@simran-Inspiron-5558>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

This patch fixes the checkpatch warning by removing multiple blank
lines.
CHECK: Please don't use multiple blank lines

Signed-off-by: Simran Singhal <singhalsimran0@gmail.com>
---
 drivers/staging/kpc2000/kpc2000/pcie.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/kpc2000/kpc2000/pcie.h b/drivers/staging/kpc2000/kpc2000/pcie.h
index cb815c30faa4..f1fc91b4c704 100644
--- a/drivers/staging/kpc2000/kpc2000/pcie.h
+++ b/drivers/staging/kpc2000/kpc2000/pcie.h
@@ -6,7 +6,6 @@
 #include "../kpc.h"
 #include "dma_common_defs.h"
 
-
 /*      System Register Map (BAR 1, Start Addr 0)
  *
  *  BAR Size:
-- 
2.17.1


