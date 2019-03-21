X-GM-THRID: 6670726051308503040
X-Received: by 2002:a62:1d53:: with SMTP id d80mr15276pfd.23.1553159273429;
        Thu, 21 Mar 2019 02:07:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:5788:: with SMTP id i8ls2123045pfj.0.gmail; Thu, 21 Mar
 2019 02:07:52 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyW+bpCnNV7aCgwGCIykvbjAbFHeD/OOs+bZk/vscbINqBG0bn0PrcBmemjNWwOB3SJ70pC
X-Received: by 2002:a63:7444:: with SMTP id e4mr127382pgn.89.1553159272692;
        Thu, 21 Mar 2019 02:07:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553159272; cv=none;
        d=google.com; s=arc-20160816;
        b=OaRqtcgyNWViKkJKlEycqKUwtT3XpILk+9vvAfezN0A7f00mb3CLo11rqf/oIS7qe1
         1GP/jBOoyXzKUERPjZarZVjHSv8wF/TnvMOxgYBk8j5pUjVaKgTEALFOPtcVVpuXat6F
         PRv/e/dwfOdVpS2cHf1rwEgYR3wHWoDyhQ36dDbIrxA/BotPj0orLn8iGuIBmO8ocY5t
         jqW9q4d7+qtimg1JPh23Ckin1AjUNO2i7ygrz2Q9/ezopsmTTn6ZKl8RapsVhQyD7a00
         /DRVvdw6cuzxc7Hdjg5A3ISON6RjH7Ol5/Ny9c4SG+ZkUgrswjQVfpW5SXjtE99/H7lm
         uwMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=gaZ0cKcXIldCof4TzxpQBTcFuCSRBpNmU89aIYMmgaM=;
        b=xwmW+h8vpjxLYrDZkRX+TRGhQvqHAxClJaMt2V8WajRYKE9r61m9sGy1KlG+uvM1xU
         xzlyzfQXMquPwzHBeIERfsBmefMJmyJv54Drv1Lw8sbriLxlG3s+BggCusw6tYnJiQbo
         jvUwrTk0/kStEivzL/EWGSm+bPmTdivOAtN0GtvM6YMN8nuIZ9LsFe/UBCQbz9MjDIgu
         Pmzq27CsP6ibJDzhYpts5UBhGZFtrTkN1F6QNrtFDJf9JAISog2UsFzmML3jr/XE6LtZ
         mwse/t8LxQFy9M0DdGneqS8Hl6r2pfVOl+z7ToMfKfwo9p8fuVuXYo+eBGx7GCWmoZeJ
         rsog==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=S1eZcGZA;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id e71si258408pfc.1.2019.03.21.02.07.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 02:07:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=S1eZcGZA;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x441.google.com with SMTP id a3so3867774pff.11
        for <outreachy-kernel@googlegroups.com>; Thu, 21 Mar 2019 02:07:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=gaZ0cKcXIldCof4TzxpQBTcFuCSRBpNmU89aIYMmgaM=;
        b=S1eZcGZApYM9yyPurI4fbYiKJDEoz3vZdpgSdGun0fanf9dmCI8MkQEYK6ORzLlTE+
         RyxhgzUTEsFY24GlslA9InZSxQmC1sZTc3z9ANM6cf7whAPYoGy+wWOPcRBr0Gi6SpRN
         vH1C+CsE5KVgmFl6dqua/zR7lvXS8aEX0KglQc2155KywSnneaRTBmIZRBoXlmpaGxYp
         rxLUhIWScFzuDvAoCH8geYqloM3XC1sRx3LgyWnIH8uaddGUHUijkJRYI9i01Jf0bAVU
         /a8mj0N9CTNVKP03xlhkinziVzLJvNQtZEhYaohtroyv1JGZT7QKMR2VlZ6Ds4AJj4qB
         /vsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=gaZ0cKcXIldCof4TzxpQBTcFuCSRBpNmU89aIYMmgaM=;
        b=RUlQwtU/BXCYwp67eaXEeLeOgk4xB3xDhDHfzFh4cKGf/99XCEr/xKYfJ4ZBYv/UX0
         o0wqC5XAc56n1SYYhDEmMrpCJsrAQqYMPBakQrNgJeXh37IPMpUz//rXxFYBp55WCA4V
         W7tefkBBE7NJmzd92YuWAnj/WvWxEwk67fXws6h64jwTss4eFVFYi6S/5LVT46JebYGw
         bZFRrsouuRqigdXpBRSprEWpi7qbGUKw09o2dl18Vz2Vp6mw7VwvqNXXNl9u7PnalezU
         5dxVgfg6QtgXGnSOGzf248Drc+XDroVK7y1uVszpPbJmbjxWfGGsEPiUXv58nO3tEOkZ
         HAsw==
X-Gm-Message-State: APjAAAVEwMfLc6XtGm41Oxk7nmpo5bnez+pmJzNP2qLN4h1eqs8ds/8e
	zsF2ymKYD0kC0e741kbUybTlfEfw
X-Received: by 2002:a63:fb16:: with SMTP id o22mr2274042pgh.209.1553159272161;
        Thu, 21 Mar 2019 02:07:52 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([157.33.215.204])
        by smtp.gmail.com with ESMTPSA id z21sm7156099pfa.81.2019.03.21.02.07.49
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 21 Mar 2019 02:07:51 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [PATCH v3] [Outreachy kernel] staging: vt6655: spaces around operators
Date: Thu, 21 Mar 2019 14:37:37 +0530
Message-Id: <1553159257-3568-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4

Add spaces around operators

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>

In v1, prefer spaces around operator.
In v2, 'prefer' changed to 'add'
and in v3, changes are mentioned.
---
 drivers/staging/vt6655/device_main.c |  2 +-
 drivers/staging/vt6655/rf.c          | 26 ++++++++++++--------------
 2 files changed, 13 insertions(+), 15 deletions(-)

diff --git a/drivers/staging/vt6655/device_main.c b/drivers/staging/vt6655/device_main.c
index b370985..866d794 100644
--- a/drivers/staging/vt6655/device_main.c
+++ b/drivers/staging/vt6655/device_main.c
@@ -592,7 +592,7 @@ static int device_init_rd1_ring(struct vnt_private *priv)
 			goto err_free_rd;
 		}
 
-		desc->next = &priv->aRD1Ring[(i+1) % priv->opts.rx_descs1];
+		desc->next = &priv->aRD1Ring[(i + 1) % priv->opts.rx_descs1];
 		desc->next_desc = cpu_to_le32(curr + sizeof(struct vnt_rx_desc));
 	}

-- 
2.7.4


