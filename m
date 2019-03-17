X-GM-THRID: 6669000631583244288
X-Received: by 2002:a24:2f03:: with SMTP id j3mr7313469itj.2.1552820173106;
        Sun, 17 Mar 2019 03:56:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a02:31a:: with SMTP id y26ls2674979jad.1.gmail; Sun, 17 Mar
 2019 03:56:12 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwKQ3Vddg4tCx7EN0IDWXGeXjDL/hvyLkvn7HrGRbjO7qlG+GJaKazQJrzj/cGwiey7V8og
X-Received: by 2002:a02:f52:: with SMTP id h79mr7402231jad.3.1552820172674;
        Sun, 17 Mar 2019 03:56:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552820172; cv=none;
        d=google.com; s=arc-20160816;
        b=hOsNCsJmewEBrTzFNQ7PXOebX18XbSmJWGQJQDoC2d0bR+sZmIM3nZ9CPz8TCQOAYA
         aDW7x8QqasSAUnD0qc4cVi6jrWDbln6q7IbbCooPwqQMoGgrcdNwBmkm2msg3yoPkxo8
         jYCmaH/8btYvO7OgjH5WgE8YngPfliIJ+K17wdlY/W1kEi1DMFE2TMuDsGT0vzlIvH3L
         OTmoXAn6REeYfEjZKWkNgWQaxej/IW+plgiJHPKc4dN8VIWIuJ41FcQLpkusUcaNdzw3
         r8htRrVDFvlLdb3dtcOt4fxVPUORs2AmSFpA/2WeEnnVn0qIDiEdUERA+IpNZ52UHXQz
         BZJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=8MUppbPKHVSNn2cxus51Nk/TAEzXannd32sfiKEMBdM=;
        b=mtVTVgsGu5Eb8XlxFK6im6Fm+pzvW8/TOMGkH4tDDdDNe/fcNg80X1ODOEeDESKQzj
         qfbOBLScw2ATnh++N56sNmmyaixUOCR3Cupo0IDxXEM0bLLMaCwRxbLvCJYruUoE75jv
         /BLR2G8nyYvo5+FmgIJJLOFy/+meCfyRitsC1EtOwfZ3iUil2F+6wCpCa8XRiiMWa+TJ
         GHx8LN63CzZSaMLa06W8iKdojG5XMYqKKF86Xty4IGfu4W/pzWZjSov4OLhduOfBGVQI
         scJtAlyzj33DXQ5J+DK4OBdqYt3tFjFOByvUvnzGvV6yNMhO5A3M7U4HSnf2jUK95G/U
         Eqpw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=h6fSsmrM;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::434 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pf1-x434.google.com (mail-pf1-x434.google.com. [2607:f8b0:4864:20::434])
        by gmr-mx.google.com with ESMTPS id f19si347577iol.4.2019.03.17.03.56.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 03:56:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::434 as permitted sender) client-ip=2607:f8b0:4864:20::434;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=h6fSsmrM;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::434 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x434.google.com with SMTP id a3so9303496pff.11
        for <outreachy-kernel@googlegroups.com>; Sun, 17 Mar 2019 03:56:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=8MUppbPKHVSNn2cxus51Nk/TAEzXannd32sfiKEMBdM=;
        b=h6fSsmrMzgL8ZVGNpINv2we1okqGPwKamMfunHJjx0T63Z6w9spYr33g5oppU3T15Z
         SLPZQj6/b2FYfRjSWRA+osxtr5dBPJFcTYFXEKLePhxmxy7RBtsn5rmKGS18iLgMtR5v
         QsAs+97ZaIJVf6rN42AGK+flte7gnWtZS3uAATaOh0dZ/k5VQxUoEKr0fMsB2srZwXaK
         6UhWC1Rh8fSaUM1cALVvLUByxjcJzFfjmmnI7rVG+5bRls0ubsq2oWyU2kXgzxSBiDjb
         sk19RLiq+alJK0LYBHgubbo7v2zetPgP4FdXKoopQ+0wbdslSFRqXl/qPFpM10Bo3bBO
         /wEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=8MUppbPKHVSNn2cxus51Nk/TAEzXannd32sfiKEMBdM=;
        b=Zjo0xJ4jpOMh3lN+XOdqB8sQKKLedqiTrIQn9qS4xIqW9SyESQkppjXMMQW8+OEMmO
         JiUMF2NLNqXcTkgWUQGIx2yduNjOQoikQ7lB3R6CJkiA3zs6q0w4BwZheVKfOO3HDaHC
         34WZO2SnRKQuPpt5sTdvy63swGFXsIb/v3Q/qJUcQ+mPJgJAQE/zOxraJHZEEFxxeq3U
         /rs3wmI8r/dfLRlMDiXVK535yVUPMhbYxNnoC1AurDB2hSWhILpTjKm0oEXwTNpgdQfT
         pSBQ6+jjOysMZrB4mkIKSBmK+lgHL9Q7BgxZjFWpFUNPPIUmVAzTTS55LxaoVpH/3r4v
         u5dw==
X-Gm-Message-State: APjAAAVuEXnxgGqtcFIN2HEEgOG7o1CJKUzRtbaEiBlHp9eyIHZ4dy0f
	LJ05FzlSZufPtngwM+2l8czrEO0BcLs=
X-Received: by 2002:a62:f24e:: with SMTP id y14mr1174085pfl.209.1552820172070;
        Sun, 17 Mar 2019 03:56:12 -0700 (PDT)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from localhost.localdomain ([183.83.84.116])
        by smtp.googlemail.com with ESMTPSA id e63sm10278924pfa.116.2019.03.17.03.56.10
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 03:56:11 -0700 (PDT)
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH v5 0/2] Staging: mt7621-mmc: Remove ret.cocci warnings
Date: Sun, 17 Mar 2019 16:25:53 +0530
Message-Id: <20190317105555.5162-1-bhanusreemahesh@gmail.com>
X-Mailer: git-send-email 2.17.1

This patch series does the following:
[PATCH 1/2]:clears the ret.cocci warnings and removes unused locl
variables.
[PATCH 2/2]:Modifies the data type of the function for all possible
values.

v2:
 -dropped patch series and did all the changes in same patch as the
first patch introduced the problem.
-Commit log modified.

v3:
 PATCH[1/2] Commit log modified.
 PATCH[2/2] included to modify the data type of the function for all possible
values by maintaing the alignment of parenthesis.

v4:
 PATCH[2/2] commit log modified.

v5:
 PATCH[2/2] Subject line modified.

Bhanusree Pola (2):
  Staging: mt7621-mmc: Fix ret.cooci warnings
  Staging: mt7621-mmc: Modify the return type for all possible values

 drivers/staging/mt7621-mmc/sd.c | 20 +++++++++-----------
 1 file changed, 9 insertions(+), 11 deletions(-)

-- 
2.17.1


