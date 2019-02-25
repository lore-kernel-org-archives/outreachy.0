X-GM-THRID: 6660473635314073600
X-Received: by 2002:a17:902:e686:: with SMTP id cn6mr5884704plb.83.1551110727711;
        Mon, 25 Feb 2019 08:05:27 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:467:: with SMTP id 94ls7194845ple.8.gmail; Mon, 25
 Feb 2019 08:05:27 -0800 (PST)
X-Google-Smtp-Source: AHgI3IZGxOgHJp17Ok4fp8RAUw4LJuIZaDW0gEpWCZ3GVyuL50/sPyXx5IhgBDmqc34hS3bFzQD4
X-Received: by 2002:a17:902:380c:: with SMTP id l12mr5835823plc.11.1551110727058;
        Mon, 25 Feb 2019 08:05:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551110727; cv=none;
        d=google.com; s=arc-20160816;
        b=KRgAKHrEyGDVaF52Cx8gqRB5Urp+QySLOwANtS5BPa+QeyOqFb+dJdae0uScmg9BBH
         oSwxZNeQrI9b7AxgJm+EBw5J+riyEqJjXDx9PbpnDi5FxfinKuI7mXIFcuWcRHkz1Vio
         qT3a73w0Qt6IbFFVjZwNKikyJ3NetwLWU5RM/2IG8d93zkqTInGb22MCu0kS82SQzZGS
         /P5tqKoAg7KvuxCyNLmp37/iUZu+14nU6hFZou4qwUiymlZIDBJB1QAVpRu0P/AadBYi
         v1486d4WAxmjucb7z3mekSIRlb29jIuaOg2LdwUCFu5Df0+QG/RkgB4vUCPgdjJugaso
         QPeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=ENRxoQNZ3mDI4Ic6lJjjcetn53xUO2wiYUDVzKde9ok=;
        b=Yf6Mak4k5YCeE0Tl4YoT2wYDg16YZ6s8neQEqKkBtzzQSK/J76ey9GUyX8uTUCrD6K
         7u4/foQhIW//42jue8f8k86SJfg+p6/kvHpt7v2nugmFQgn8/0NgeuOVc23VfRl9DcwL
         YUSscuuAui0ZPAVEwkdKwiyiW2pmDtNV+M8jOU3Py6zv0teBWTK71oDxU6VpFHItbNER
         78Fql1PoIgdaUHiJSyCAEBDDOhfrWSS02ZVeIAgD64hqH20vPLbASDvVcFflxn/RVLxi
         lhoJBe013UbVDWDJqZlLzRito5MB1v50Z+osP0A5c+PlNg9+gzOHShliRv/3tIywD20M
         sE6A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=g4U9SqJ6;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::531 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pg1-x531.google.com (mail-pg1-x531.google.com. [2607:f8b0:4864:20::531])
        by gmr-mx.google.com with ESMTPS id f79si604116pff.4.2019.02.25.08.05.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Feb 2019 08:05:27 -0800 (PST)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::531 as permitted sender) client-ip=2607:f8b0:4864:20::531;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=g4U9SqJ6;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::531 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x531.google.com with SMTP id b2so4682170pgl.9
        for <outreachy-kernel@googlegroups.com>; Mon, 25 Feb 2019 08:05:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=ENRxoQNZ3mDI4Ic6lJjjcetn53xUO2wiYUDVzKde9ok=;
        b=g4U9SqJ6C+jWfG1x2nod9YDiKdBHU2KfwJ/WspPD9uKC0sgLU+lw2pzON7i8thGLKD
         kqNN31zZazSsjTHIUMx/TJwlL063ZfTAZXNP1dJmiEwX6EMArkIcn8wu+toYougBrS7R
         vDeQtB9BlVBp/VauVJAUmF/Rvq6Xnvhr1UyF63oe2XXon82PLFIKht4vU+uX4jwDDCFG
         jpS/1Pt2Y8ehgkinSeNh0IyLFG6Sw5g4sHEBMNgcehaLkUo0i7L8ugHv+dcksI6yXj+i
         lHLvvmfnlcX/ry++mUGSliKFK6S9ohsLMdql/hO0lWBNFKnFXL3xm7a3HG8KLG9TTVrL
         YJ1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=ENRxoQNZ3mDI4Ic6lJjjcetn53xUO2wiYUDVzKde9ok=;
        b=FAAG9Mfix2GRAnT9rkmFHCvzasYEqk5O4FOnDGlsA75As9ffcpNsas5t4ZuVIJFUh+
         8ZIRfr2mouOWSgEMRdufDdnh40esRaNZQ81q36c9JYNRdSIp6mmFBi9oZOCXU++cKNWf
         tGf1pMRr3xIpUG6BojPTilmcvORTLW/LbyjrpLO78Nb/n2LtP92rUY92oLK6jk5r0rIS
         ecjMDXHF2D6yzkiuPwEzysqJz8TFbjwKQv2bM1dFL1F9AChcZSZzJaH5QATMYO+QLWNb
         4JgR7d+wjwnkRWIeI0UmfMXkpVJYWRyhqMqInUwhVs30zCpd2m8snuAWiCDRttzn5keA
         Z6vw==
X-Gm-Message-State: AHQUAuZc2uhOGdtGEXsZ/qcuAB554ZDkzJW+NfZXacBHH7v92YCgTu3/
	Ssu9rra4sVs45v+/rOTQNn6qHl8KumM=
X-Received: by 2002:a63:9149:: with SMTP id l70mr19685584pge.65.1551110726528;
        Mon, 25 Feb 2019 08:05:26 -0800 (PST)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from localhost.localdomain ([183.83.84.116])
        by smtp.googlemail.com with ESMTPSA id f15sm2509274pfa.11.2019.02.25.08.05.24
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Feb 2019 08:05:25 -0800 (PST)
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v3 0/2] Staging: fbtft: Fix Various Checkpatch issues
Date: Mon, 25 Feb 2019 21:35:09 +0530
Message-Id: <20190225160511.10837-1-bhanusreemahesh@gmail.com>
X-Mailer: git-send-email 2.17.1

This series cleans the following checkpatch.pl issues:

CHECK: Extra blank line not required before closing brace '}'
WARNING:line over 80 characters

v2:
 [PATCH 1/2]: Commit log is made imperative
 [PATCH 2/2]: Commit log is made imperative
v3:
 [PATCH 2/2]: Commit log modified

Bhanusree Pola (2):
  Staging: fbtft: Extra blank line not required before '}'
  Staging: fbtft: Fix line over 80 characters

 drivers/staging/fbtft/fbtft-core.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

-- 
2.17.1


