X-GM-THRID: 6672385186959720448
X-Received: by 2002:a2e:8794:: with SMTP id n20mr9717997lji.76.1553535740646;
        Mon, 25 Mar 2019 10:42:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac2:5289:: with SMTP id q9ls1653293lfm.2.gmail; Mon, 25 Mar
 2019 10:42:19 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwLeQ1sWYGkWfekx5LdqjPebrdHK3HlSia+thPuHnbqU5zJoOhrv4LqKI7dva3bqnJcw+Bg
X-Received: by 2002:ac2:55ba:: with SMTP id y26mr13048068lfg.145.1553535739633;
        Mon, 25 Mar 2019 10:42:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553535739; cv=none;
        d=google.com; s=arc-20160816;
        b=nMa09Jo6QAMYEqIZiRMgo1HTEcVycgpXGLkekh5yTPgfbreOvXvm5/DaEQySbskMpd
         W+EpDuj4UqLRfndN3YlJ/BjoLwskAnTTZYyEDxOn2Cfpq3VIZk8l7xUXKO5ojANq0Vur
         vhopLL/uqR4GznBfvy4JjiIgbjYSGMlS+46cxhTWjDXsIKKTwS09Xl36PLkKmqjMp2Bc
         LusWhpjzNJXFJ5SH+7nYL4CozCuUaTSHkNHijXHzU9ri5UVv/kQfCpjWm2AtCe/iQAN+
         XEePXBmaa2/tO5TrN3flRAtyQrDrib1ApFDM00nl/wGg/VhqiuZJd6KaDqmIY6qd/CzV
         C3hA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=ZmpI1FjM38gfcs47wdwvlfQpCjZ8PhqXwXMXMjRSFWQ=;
        b=b+TCZc5+jc0BNujDawOwYF90hGp0lPDE9wq5UqPIfJLFKF6I5RnCO+ULGO6BhRHyRb
         YLMj4fYRmNhR/GTSw6kn1VW6miCIZDlFL5CVc3TxOa7lvVFlforPqj77vzQ3ewZb9nNw
         B3du8BjT5SDMayG7SGIndYkV5ZsiW7qvHu6DRRH6/nQSNpPh7D5nkr/e8ruUwassM77R
         ZE3vYz9GYt2shp8eDXmj7l9D02gTqWqnaFTz5h+KhnrNC6GXAfP/tZdKTjON4KkRmb6u
         CA5C4XNcN701r2HdjIRairykcl8bmv1DgKc+37lZJqJpOc5xM4MVmo1zZyuBlNK/kM1a
         LsrA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hUbQqrPd;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::332 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com. [2a00:1450:4864:20::332])
        by gmr-mx.google.com with ESMTPS id o16si289395lji.0.2019.03.25.10.42.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Mar 2019 10:42:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::332 as permitted sender) client-ip=2a00:1450:4864:20::332;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hUbQqrPd;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::332 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x332.google.com with SMTP id y197so10077967wmd.0
        for <outreachy-kernel@googlegroups.com>; Mon, 25 Mar 2019 10:42:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ZmpI1FjM38gfcs47wdwvlfQpCjZ8PhqXwXMXMjRSFWQ=;
        b=hUbQqrPdjkCx3J+CdDy7DnWvoPFFLOsC0KfbQ2Tf8C4zDBuisYR4vRL+kenZuFeC/F
         jcPOo11bSata4dHGWQh2+PiMCH7fRwfCNCzLpQxPnxkyljtiHFaKVaUtSyqHvxQyqUHa
         YOAoW7mQEVAVdaMA+3l0vUv9/bKChnHvKEtLnSsAYf/L3nnlMR4q1LzDdAXFr2Pmo/+c
         AlYxTNjRF74YFzvIO+0eieKaY3i0LAcq0VLe9A4tS82FRXYOuN7uKBNj0COAaNbEHl46
         bb3xHBUZLR0T8nkN3p48hw+2BhNl/3QWYwTx07QFZE/BtND3zV5ieG2hQCuHMT6rYe5c
         4AyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ZmpI1FjM38gfcs47wdwvlfQpCjZ8PhqXwXMXMjRSFWQ=;
        b=lGpTfS+DpPKOrSzDLF/81DqkeuukeZMvWeRvE1QWBzCBCVUkCMMaWrlcN9ogbGYP/3
         346W9qBZJKDUD7JbnWDXKgyWRnL62QH2Fk/HCl4F7wyDSF3xII1aebZsRf+aU9L3zpxr
         FzGels3kIIH98DQMdB9q+WncqP0a0Omk+WOLssbZKYYnrJLbR3Ws8iZzBZhf5ZodpXOx
         Xpj64A/jU73Yjoyr4H4K5GGObSCVaxtooxDY7IPjEF+l6P7nZ2kBDh6nyDuDbkYD3LuL
         k3SFZj4fh8S2zVgJYXd+d1NfQWHvh2VA4DnTYELoT1VbxoijYdPudbgWImrM4opl2tGS
         0RCQ==
X-Gm-Message-State: APjAAAXYQ3uXLUvdmlKOaGPWJ8vQZ6Vf+81KYeDldyuDUrkRROCD3giI
	YqrvEGHUBfgCI2w9zbKIUg==
X-Received: by 2002:a05:600c:2309:: with SMTP id 9mr12781956wmo.52.1553535739235;
        Mon, 25 Mar 2019 10:42:19 -0700 (PDT)
Return-Path: <jbi.octave@gmail.com>
Received: from ninjatsu.public.libraries.mcc ([91.235.65.22])
        by smtp.gmail.com with ESMTPSA id y3sm11630524wmi.27.2019.03.25.10.42.17
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 25 Mar 2019 10:42:18 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
To: gregkh@linuxfoundation.org
Cc: mchehab@kernel.org,
	outreachy-kernel@googlegroups.com,
	jules.octave@outlook.com
Subject: [PATCH 2/2] staging: tegra-vde: remove unnecessary boilerplate license identifier text
Date: Mon, 25 Mar 2019 17:42:06 +0000
Message-Id: <20190325174206.16626-3-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190325174206.16626-1-jbi.octave@gmail.com>
References: <20190325174206.16626-1-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove unnecessary boilerplate license identifier text.

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 drivers/staging/media/tegra-vde/tegra-vde.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/staging/media/tegra-vde/tegra-vde.c b/drivers/staging/media/tegra-vde/tegra-vde.c
index 8adf1c011bff..a5020dbf6eef 100644
--- a/drivers/staging/media/tegra-vde/tegra-vde.c
+++ b/drivers/staging/media/tegra-vde/tegra-vde.c
@@ -4,10 +4,6 @@
  *
  * Copyright (C) 2016-2017 Dmitry Osipenko <digetx@gmail.com>
  *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License
- * as published by the Free Software Foundation; either version
- * 2 of the License, or (at your option) any later version.
  */
 
 #include <linux/clk.h>
-- 
2.20.1


