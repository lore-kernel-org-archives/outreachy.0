X-GM-THRID: 6395629856318554112
X-Received: by 10.25.210.146 with SMTP id j140mr4418222lfg.10.1489415371288;
        Mon, 13 Mar 2017 07:29:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.5.71 with SMTP id 68ls1518286ljf.34.gmail; Mon, 13 Mar 2017
 07:29:30 -0700 (PDT)
X-Received: by 10.46.80.1 with SMTP id e1mr5354555ljb.10.1489415370537;
        Mon, 13 Mar 2017 07:29:30 -0700 (PDT)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wm0-x241.google.com (mail-wm0-x241.google.com. [2a00:1450:400c:c09::241])
        by gmr-mx.google.com with ESMTPS id y19si4258wmd.0.2017.03.13.07.29.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Mar 2017 07:29:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) client-ip=2a00:1450:400c:c09::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x241.google.com with SMTP id z63so10147838wmg.2
        for <outreachy-kernel@googlegroups.com>; Mon, 13 Mar 2017 07:29:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=hztj31TVT5j9TRdvXCm25P/dULAiJ8D0Bdnxv9x52M8=;
        b=gHLj2swFPS4kScTgsCpXX3ssp3qsA8ow4yanqeBBOI6kjEDMJUUShkiHKmf9MZ8dJY
         F8A5xFkf0K0tuskaJsHC3f2H0Ivipg7UEn0Twa0AhIKpL132MSZG+4UZ23ZtTRWkDZbH
         5oC4Dwb+ihIJLiCAoYu1SF6K9ClyWQeWPIjZ6/llNiYHl2BhlOWY3ynAnFiwkeySMdNf
         QXQR7+ieOhDR1sC9ehVS0PLsz8ZEXxWj30s+e/i14U46BOPkpuurcTysgrxuOvGGtO9p
         A/brxEbRCTw1bgqFT9WV8wIbSrXO64Bct5Y6g0COwMpjXnPH67CTAVddF1vDVRwHOwYx
         MGrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=hztj31TVT5j9TRdvXCm25P/dULAiJ8D0Bdnxv9x52M8=;
        b=H2oRaQU9YZW96dvWzpbyDdoTZkoZLH4lUf+/gViSrsn1xRgQ3UYF/TPWpEVab4aXB0
         U4PDjiZOUi7d7x2Ff6ic2w+SY3fMOk/1x06ph+TV9IL/iQbEE7OtI/Cy32nDLp0IY0Ma
         CL0vZoumOwnQ7NXyFiMoSj1bfejj7zNpDB08R74oJCssvrLKNTDD4F1VFhEhQjP0e195
         e8v+HI/GgFcz7n29IenQNYbugJbXvmf5PlWUI5n5zeSEueLzmfhng9om7aU+Cbk6bBOp
         EUlR4aSQOOalKS2Fo1ClpPgxK+pDmm0cXHo416UiJnRwCzHWBdnV0CwHeewGpgwrhHyp
         h0Tg==
X-Gm-Message-State: AFeK/H1Sg+W5P+gxZ7oubLjTVfvu5B3ijJ9IsVatdCXavIFfi7swjlM+N2Fd36Zl9bhYWA==
X-Received: by 10.28.7.13 with SMTP id 13mr10517381wmh.16.1489415370306;
        Mon, 13 Mar 2017 07:29:30 -0700 (PDT)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([141.85.228.77])
        by smtp.gmail.com with ESMTPSA id w30sm25294098wrb.5.2017.03.13.07.29.29
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 13 Mar 2017 07:29:29 -0700 (PDT)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: aditya.shankar@microchip.com,
	ganesh.krishna@microchip.com,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH v3 0/3] staging: wilc1000: Improve code readability
Date: Mon, 13 Mar 2017 16:29:23 +0200
Message-Id: <20170313142926.12262-1-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3

Improve code readability in wilc_spi_read_int function
in wilc_spi.c file.

Tamara Diaconita (3):
  staging: wilc1000: Declare variables to top of function
  staging: wilc1000: Correct name of variables
  staging: wilc1000: Remove unnecessary brackets

 drivers/staging/wilc1000/wilc_spi.c | 50 ++++++++++++++++---------------------
 1 file changed, 22 insertions(+), 28 deletions(-)

--
I am going to wait to see these patches in the staging tree, then
resend additional patches for this driver.

Changes since v2:
*Add driver name in the subject of the cover letter.

Changes since v1:
**Change the patches order.
 
2.9.3


