X-GM-THRID: 6662713846690480128
X-Received: by 2002:a05:6830:2113:: with SMTP id i19mr3153627otc.9.1551300647504;
        Wed, 27 Feb 2019 12:50:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6830:114f:: with SMTP id x15ls1615085otq.3.gmail; Wed,
 27 Feb 2019 12:50:46 -0800 (PST)
X-Google-Smtp-Source: AHgI3IY5ciOf3G6gIWIwsG7YNgbJgETHQmzf7wUIY1qwr7sqdedLfOd/V3mx/kkbFSiq7ko08om4
X-Received: by 2002:a9d:6c58:: with SMTP id g24mr3060030otq.10.1551300646499;
        Wed, 27 Feb 2019 12:50:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551300646; cv=none;
        d=google.com; s=arc-20160816;
        b=03cJRjOzLa44tDEFQJaPFV3PfCshRqfMnUtHMN6GhHEfC0Y9AgMMQcfv+6aPeY2ISI
         E8HLjMGTa6nJv8a5oRyItgSciIkprutf3PGr7o7anAfDcZwOqpjNEtq8L1s9VFeyoXGt
         8w1Pm4ms58KTK1Wqidp6qrWq9yJaEVkRdTt94jl4boPehZDxNc5r6IFe63LqdrcrMD2C
         e4K+e9eI4XBZBNyvyzp50HyUcri+nRaD7kj1fp18glm7iBWPkf9n5t1y1pe8SCb8lhpa
         43T6x7mHLkyMotuIZIuiYHqNF5BfrtGGcNg7O0p5e4EPffLF22N/eQVk7j7cLq0yO4aN
         KxTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=jGYr3urRnvPxrzoyUN0dGaB6AHYqPOnbY1ZKyctNi9I=;
        b=LXUdYD29UOBLDa/P/yodaoWBytxzrQ8BG9W0KkGwR+Qh16MqhoVRFlz5b+CnQhBLr3
         Xe5M2f5/zyVBxyr130chPWI3EP/9izseguKQZB0EtaCTz4XNBjCcSs97vo1AGraKZlDy
         DKQpInso2d7GlMNXmNR6fD8qhbTM+p0msQGg/zol4n5Tkq+SicVdER59qa27YEVIyzxJ
         weaiSSJB8Q5xYJh9v5IykZwV8OxHlZpjapW07Voq0YNiGOpr0RCXwoMM1+r3ReQHcpEF
         4+57FhhhQv0AYfwc3qKMAE6t8Y4NsG/bpYyiiY7YhMweSTFazg14S9sZX31iR7BNVOol
         8ZiA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Eo34wjM8;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x241.google.com (mail-oi1-x241.google.com. [2607:f8b0:4864:20::241])
        by gmr-mx.google.com with ESMTPS id 135si954268oia.1.2019.02.27.12.50.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Feb 2019 12:50:46 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) client-ip=2607:f8b0:4864:20::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Eo34wjM8;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x241.google.com with SMTP id t206so14650448oib.3
        for <outreachy-kernel@googlegroups.com>; Wed, 27 Feb 2019 12:50:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=jGYr3urRnvPxrzoyUN0dGaB6AHYqPOnbY1ZKyctNi9I=;
        b=Eo34wjM8xm2HhFhl/f8gkUW/kOZjFUeQ7acw5FnZiDF13VtrS0mSKn5v3emDPodHsu
         kbdSCF/ukzuK5i2hqni5kxs3RY8dPUZPCOOWEug0pnn4JH82SCfm4YzJ16aLYdyP3hU8
         3nkKEJnjlQV27ztp7FZDPy9ygQNm7fhIpIMeAPUE2fbq+iZAfasazO3aLSHj/8cfVY1z
         2v3KoZqAdOQ153w/+KtS3NNlAXXW+R7OnT3+uc3W9EzVK6G7k4l9eVH3DN+9UTQhen5u
         99SkxayOpOXJNzgkY0smsdMvQriOKR8o7kmuBEmfohPJHIWQcTOSMuF+zkMZoMvxRR1I
         6AiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=jGYr3urRnvPxrzoyUN0dGaB6AHYqPOnbY1ZKyctNi9I=;
        b=eUJ4flDb/6sF9LLZwtbAkd+GRo9/zaaiMlLS9wIsyhBl4CmeqKev2ytAiFpgVj8iWL
         BEvCjyXvIlvHgKL7FOdIwjhupUvQoMTQTDakiMVIHfLL82raIHh452/bF1sr5zQOgMRQ
         MpqF6SGGsNQJzCM7e4lSwxF3xWUasIkH5MgBF+HYS0a0tLJV+jgptImnl8dTbCUoUcKK
         6f1dkJHZmtOpiRakIHDouLNfYjrQGUctrVaBA+66rjlDNu3g+F9gwpCOhw9ZBvxKE/22
         5wZn6sgV7dY2j+L2lH7JjnFXWlt2MSpubewozztVB15ch42skyvfCR2h0p+4M7OoqlQp
         oPlg==
X-Gm-Message-State: AHQUAuZ3c5EakZoVd7o2qpQglvjXhXA2gEgjfy+bTV2Cldg739feo5xA
	z4Qo/K8VpCRBPhrAlNzi2s4qsvTJaEJIYQ==
X-Received: by 2002:aca:7503:: with SMTP id q3mr812069oic.76.1551300646150;
        Wed, 27 Feb 2019 12:50:46 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id h205sm7061498oib.11.2019.02.27.12.50.43
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 27 Feb 2019 12:50:44 -0800 (PST)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH v4] Staging: vt6655: Alignment of function declaration
Date: Wed, 27 Feb 2019 14:50:40 -0600
Message-Id: <20190227205040.9881-1-madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1

Align function arguments and function type to improve readability.

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
Changes in v4-
- Log message and git diff are matching. Change is made on code in
Greg's tree

Changes in v3-
- Included driver name in subject line

Changes in v2-
- Modified subject line and commit log
---
 drivers/staging/vt6655/card.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/staging/vt6655/card.c b/drivers/staging/vt6655/card.c
index 52e9e6b90b56..3226dbaab3bb 100644
--- a/drivers/staging/vt6655/card.c
+++ b/drivers/staging/vt6655/card.c
@@ -506,10 +506,7 @@ bool CARDbRadioPowerOn(struct vnt_private *priv)
 	return bResult;
 }
 
-void
-CARDvSafeResetTx(
-	struct vnt_private *priv
-)
+void CARDvSafeResetTx(struct vnt_private *priv)
 {
 	unsigned int uu;
 	struct vnt_tx_desc *pCurrTD;
-- 
2.17.1


