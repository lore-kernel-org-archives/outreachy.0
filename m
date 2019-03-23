X-GM-THRID: 6670934867500335104
X-Received: by 2002:a17:906:f44:: with SMTP id h4mr6855945ejj.4.1553300767894;
        Fri, 22 Mar 2019 17:26:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:453:: with SMTP id e19ls1926325eja.9.gmail; Fri, 22
 Mar 2019 17:26:07 -0700 (PDT)
X-Google-Smtp-Source: APXvYqywA9H/MURwuqFfSF/QBpHUnUkd6amrObOwZE4FH6JxxbckqAj5zHXcsMoJ+ujeVU+0lfqg
X-Received: by 2002:a17:906:b742:: with SMTP id fx2mr7089004ejb.6.1553300767007;
        Fri, 22 Mar 2019 17:26:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553300767; cv=none;
        d=google.com; s=arc-20160816;
        b=UuEpxsZY9oQ6vfq7ZewhP70rolDSzwZcdIc0cuJwLgCQCkfLYu3fz+rf8ErhhO0iI3
         IoKd1O321FqJKy+KaWOb6Q9vN6YpEvitIzGKDTsayONPH2uHJSdtWe+OhRRkalJp4VH+
         MAD4Coavx8+Mzpz8TSBV75vuQ+fjiaqVCIePBA+206XK9cW+daOt5q7tbWVLfXJ23W/w
         Ywia9+N8DENUaNb2Jg8zShImsUMvGmzwwI4n2NsmrLuwmdKGOwCBQ3fch9zKjfHkj4ux
         sZ5cVHSThsOErzhLPO+tZG2hi7zbHxIgZ1RPM5xdICSWv7Z0jWs2JTFXWwfO1X41oyX+
         mieQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=4aBffobzEytteLhCmDWb4K3o1Zu7GVEljf0e8K4xrik=;
        b=H6y2zEStRWcGEpbkktPYlvsVsk9UH5rYP8QzzonkWNmzr8PkX1uWZbEMQA70Opvi33
         CyElnW7fjfrB09qiLRHI9tOWrOcS1H3fS52L/YM5luR+TK/s6WaOysEMyMro9vYZaX1/
         QZC98k2up7HBaCzcoccHbyMvG7urpE0wC/CSd3ohf8nsGry2ZRHGnBfpD0iyKA7ttiOy
         TUOOhgfRAKDCq1/pXfmCTw+JXAOFbzQaAGcPNgWYL8ibcJ1qYR/KA2oDPtOoUQo1xNI6
         nMZO2JnpUZtCCXU9VfDK/1w33YEG9/h+0Njit84qAJro5dEJsddmkRmCAgy0ePq/dnSC
         xaWA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LoWDW1qj;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id r37si374625edd.2.2019.03.22.17.26.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Mar 2019 17:26:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LoWDW1qj;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x443.google.com with SMTP id o1so4081938wrs.13
        for <outreachy-kernel@googlegroups.com>; Fri, 22 Mar 2019 17:26:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=4aBffobzEytteLhCmDWb4K3o1Zu7GVEljf0e8K4xrik=;
        b=LoWDW1qjQ7wHA0jARgZTms6bobmFD2KWPfKtXCxej+5N25/TEfIpsSOI1OAKNeHPW7
         Dnm0HpqLndnApUJlUvu6pu57ciG+D17iFeWYvR2xg9AipRCaHolcIPxQMMd8o8JztPB5
         sAU5+T1t6CLwxC3iJiMCTSRO14DoxWMkegOUPwYSaXdh3N9pCO7ajFu99z0ejTaBAWXe
         ETu+ADc4tODP2Z49ikO7jQtfe44Hf68kJbkZG9Mml9VzYBw2oyeYDA4yDx0Nvf1N0x9/
         N3WhFY4c2PLgNFIVD1jX3YGgo43oCsSPFwu2xtN2ssG2ZY2SrKO49eyxxmquSWsJQJnI
         UdOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=4aBffobzEytteLhCmDWb4K3o1Zu7GVEljf0e8K4xrik=;
        b=igmbsyim8cYMqM3fSG3jkfhfEAqbr+zZyL8HYC4hUqBYSzUwBEr4KjkHPnw+LQ9W+D
         GFvbhvtN3F1DHRCpJZ4WLexRt1b0aIxrnrEhTfcjGVh8R7Je4Tv6Cnu09km/z8rOVW5I
         x+CJps1Ba7+tCitSKC+uWBgwoPyCBKZSvPAZXDngMkPoGcCbUfST1Xrfs7U15XUAOvCX
         IzYbbW8sTA4PoaZlRFl7TglD4Ei+YrS3N657eE8GwX8q10ui9z37o5QQwoyxMoWog8pu
         6zA4ZvUS6U+iJ9a2hQt4UVpcHd7287CToDq1xm3BCEtIDtjq9z+Wh0o8EMJgKaLj1EoA
         GU6g==
X-Gm-Message-State: APjAAAVLQwIycwUcK3wdOB4b7EIHZpSoCJl+XwrklIO7Epkgi9ZGnwhz
	M+akCHHQAQWnT5YKXFhxY4JJO4A=
X-Received: by 2002:adf:f088:: with SMTP id n8mr8769065wro.112.1553300766614;
        Fri, 22 Mar 2019 17:26:06 -0700 (PDT)
Return-Path: <jbi.octave@gmail.com>
Received: from localhost.localdomain (82-71-36-177.dsl.in-addr.zen.co.uk. [82.71.36.177])
        by smtp.gmail.com with ESMTPSA id h2sm8566390wro.11.2019.03.22.17.26.05
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 22 Mar 2019 17:26:06 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH resend] staging: pi433: break line after comparison operator to fix checkpatch warning
Date: Sat, 23 Mar 2019 00:25:55 +0000
Message-Id: <20190323002555.5280-1-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

 Break line after comparison operator to solve checkpatch.pl warning:
"WARNING: line over 80 characters".

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 drivers/staging/pi433/pi433_if.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/pi433/pi433_if.c b/drivers/staging/pi433/pi433_if.c
index b2314636dc89..f537722395c6 100644
--- a/drivers/staging/pi433/pi433_if.c
+++ b/drivers/staging/pi433/pi433_if.c
@@ -479,7 +479,8 @@ pi433_receive(void *data)
 	/* length byte enabled? */
 	if (dev->rx_cfg.enable_length_byte == OPTION_ON) {
 		retval = wait_event_interruptible(dev->fifo_wait_queue,
-						  dev->free_in_fifo < FIFO_SIZE);
+						  dev->free_in_fifo <
+						  FIFO_SIZE);
 		if (retval) /* wait was interrupted */
 			goto abort;
 
@@ -500,7 +501,8 @@ pi433_receive(void *data)
 		bytes_total--;
 
 		retval = wait_event_interruptible(dev->fifo_wait_queue,
-						  dev->free_in_fifo < FIFO_SIZE);
+						  dev->free_in_fifo <
+						  FIFO_SIZE);
 		if (retval) /* wait was interrupted */
 			goto abort;
 
@@ -513,7 +515,8 @@ pi433_receive(void *data)
 	while (dev->rx_position < bytes_total) {
 		if (!rf69_get_flag(dev->spi, payload_ready)) {
 			retval = wait_event_interruptible(dev->fifo_wait_queue,
-							  dev->free_in_fifo < FIFO_SIZE);
+							  dev->free_in_fifo <
+							  FIFO_SIZE);
 			if (retval) /* wait was interrupted */
 				goto abort;
 		}
-- 
2.20.1


