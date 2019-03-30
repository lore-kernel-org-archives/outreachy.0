X-GM-THRID: 6674191522051653632
X-Received: by 2002:a1f:9010:: with SMTP id s16mr4369842vkd.12.1553956307493;
        Sat, 30 Mar 2019 07:31:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:6805:: with SMTP id d5ls1114904vsc.4.gmail; Sat, 30 Mar
 2019 07:31:46 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzwT02WtPRJ/aJ6L6wunWA/k6JCjS5sge8oScYSHOukPI5nC59G7mwJ9gjd6ptBFy3mU8v+
X-Received: by 2002:a67:1c82:: with SMTP id c124mr5319635vsc.13.1553956306846;
        Sat, 30 Mar 2019 07:31:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553956306; cv=none;
        d=google.com; s=arc-20160816;
        b=eXcwpU52o6VjWMxdOsAB/8U5jleUi2C68UyJREQD1pGTTo4qV6B31PrxkKWFl6ZaHD
         35Dy/JSNYDwAnAwudoagsDRvOInVCrovPimhWoNTKd8nSKuzaLhEcmH9khmUGbIpl9yv
         4gXnE0Q0gavzgQz/66hBQ6Bprwz1Yhl0S4bteTI4MOm/zKXg3UOkwfvk3luL7rtNWEv1
         fuW+kjWiErOOEZR+mt49JtYeVhE7NfHnlmezuedPH95nR/vy3RbcQle7H8TjsVC4SkJX
         m6DNYf9VT3xIM6chLpRceME8otJY8sojH9hB6SAbtAjkoEaHxPSl34qzxmtDGbWlHL23
         a8uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=aYpNEoTXNNlSTL3poG5xfTGB4ZIXHixFifX1A1AvK0U=;
        b=l39OdV7pSnUzFz1zmveH9cJXTKcfBe47ebHaTgvsK6xAEEPvmM8EIRb9AYv4F+gxKA
         kY/RJNKdt+vEOY2mT5VakQluxBLeDsterM65bW3s2locuAv0fQftHlCwFrAO/LTC6uAh
         oRGXow5/qXAZj2ubLF61XNIy3eogy7OCEAlY1JwKU1vjciaHWHyY2r698OZZcl88TfmN
         e5JE3SWBvywKw+F5GpRc1w2ZRw1Xk+lfsSbba5ckPS85Thijuw4yQ6cnKwlij1R3KFpx
         dwlYGQSC/Cz4aXAyIMAiVgYJuzdRVm1t7rj3wUo+erjAghCdfFIiX5XpWxXRkkX9RjG8
         nAJw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jk51HZSb;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::62d as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com. [2607:f8b0:4864:20::62d])
        by gmr-mx.google.com with ESMTPS id k68si329977vkg.5.2019.03.30.07.31.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Mar 2019 07:31:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::62d as permitted sender) client-ip=2607:f8b0:4864:20::62d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jk51HZSb;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::62d as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x62d.google.com with SMTP id bf11so2345295plb.12
        for <outreachy-kernel@googlegroups.com>; Sat, 30 Mar 2019 07:31:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=aYpNEoTXNNlSTL3poG5xfTGB4ZIXHixFifX1A1AvK0U=;
        b=jk51HZSb49dRNA/zOH42uaueN5mD8lZ2H1fB9IQ/QALktgCAm96X7qmiFGvDDTWBSX
         Iu9a8zlNyGoXnUxerqbCTBZpWcqU60m3gCkjiodiRBOLvKaKUijdIifSJg3jf6eKIlfQ
         M1FlXhZv/lrjB6hvTAFFyXoaeJZCTOF4cjnNDHho0+3E7NGJKfaZJ/d1YxkkBgYHByzI
         rus+4yze3cqQ2R4nPvJtsmz2iiAsph74mNrkVOJ5oQmp00F8UyaPtVi9bi9Vjmv1Z/s8
         gXnUhDpYHLE1/2bPSUPKwKF3arndBj1QJ1IXrpiJ5ji0aMYuZoVw0hia0FjHH2cHjFC8
         PLsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=aYpNEoTXNNlSTL3poG5xfTGB4ZIXHixFifX1A1AvK0U=;
        b=H2aBe0HcGbx85h4PT9uILsX5Nv3XYOhCF70ZofCJFwgAR9ISigVIzQMmdzTYPEHpAS
         ahszJfA5haMsgbpLl7RIAB6SZtRV1ktgWEE2mFU0BbcaO1TR2K2WYPpvKyXZpyqH99+P
         lD8ijhaBYIdPIsE4l7CiItpod1BC85X4ixqF+xokaq6rC2DirZ0xNzRzlsXfa2BWYvkT
         1XQkLIZl+SvzIKBaXN6QcLtuu49kW/eZa9RDejfd1nUWRWu16xfl4W4ofZkaYvGg4Akb
         Tyufp8egchZ8jk6G3YLhPBZkald4ZgGkzVTbewd5SbFp81jmXBjUEhplR8bnJGoRM/9A
         SU3w==
X-Gm-Message-State: APjAAAUYGDu62+CURdPWaQUKA+0uv1Vet9YbjemMnPq7D91OzW0P7/7t
	Q0E+LHOglL64lDj/6EDZB+jBW1ya
X-Received: by 2002:a17:902:8a84:: with SMTP id p4mr53672949plo.2.1553956305666;
        Sat, 30 Mar 2019 07:31:45 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([157.33.140.226])
        by smtp.gmail.com with ESMTPSA id i1sm13330453pgc.63.2019.03.30.07.31.42
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 30 Mar 2019 07:31:44 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [Outreachy kernel] [PATCH 0/5] Compress two lines into one line
Date: Sat, 30 Mar 2019 20:01:25 +0530
Message-Id: <cover.1553955183.git.payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4

Challenge suggested by coccinelle.
This patchset compresses two lines into one line and removes unnecessary variables.

Payal Kshirsagar (5):
  staging: rtl8723bs: core: rtw_efuse.c: Compress two lines into one
    line
  staging: rtl8723bs: core: rtw_cmd.c: Compress two lines into one line
  staging: rtl8723bs: hal: hal_com.c: Compress two lines into one line
  staging: rtl8723bs: core: rtw_pwrctrl.c: Compress two lines into one
    line
  staging: rtl8723bs: core: rtw_mlme.c: Compress two lines into one line

 drivers/staging/rtl8723bs/core/rtw_cmd.c     | 10 ++-------
 drivers/staging/rtl8723bs/core/rtw_efuse.c   | 33 +++++++++-------------------
 drivers/staging/rtl8723bs/core/rtw_mlme.c    |  5 +----
 drivers/staging/rtl8723bs/core/rtw_pwrctrl.c |  7 +-----
 drivers/staging/rtl8723bs/hal/hal_com.c      |  5 +----
 5 files changed, 15 insertions(+), 45 deletions(-)

-- 
2.7.4


