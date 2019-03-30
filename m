X-GM-THRID: 6674273164554403840
X-Received: by 2002:a0c:9645:: with SMTP id 5mr678754qvy.56.1553975316992;
        Sat, 30 Mar 2019 12:48:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aed:22f4:: with SMTP id q49ls2807071qtc.4.gmail; Sat, 30 Mar
 2019 12:48:36 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyiyKk47Jzqo13z95j08K45XfRax5vBTnmDBYBc6rFWZMq0gKFfch0c516Wt81m1m6Y4BPb
X-Received: by 2002:aed:3b09:: with SMTP id p9mr5617924qte.55.1553975316414;
        Sat, 30 Mar 2019 12:48:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553975316; cv=none;
        d=google.com; s=arc-20160816;
        b=LAKUd54HB3t76pJPzbikElam0jRrOaTeRF2se+U5V4snf6zuakS9LNPcXT1IT//Liv
         hqXUT5VPpLtbQgc+Z2rdS2Jtw+46jn0+VLVDgQin8wbaVjcj4TlVD/slEegCOrAT0cv0
         RPLG4TpTosBWpPlbEl1BuzgwY5pkbuxVYxVfGKV6HuEFTHvI/QK8UByv0h4tlYTf4t6O
         XKDZfGXThnBOh98dHy5t8JdM7SkNBQcRIuOo9/f1Wa89knM9ES0Qlalt+7Z/mYrujnPl
         9R118T8/b6IOhq45CEHq6r3eL4F4NdKeHOQ7l2nadYRwLOLb2Anj7youCPTcbV3xzydO
         J5mg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=AchTEOKexYiCc0pLj1sF447sdHvbCu1vtvXV3g90lvs=;
        b=NQoRcGzVC/qIiPXm6G4ELxOarTg5Z12A1NceB6tcBUfYUAnfupyaOvrVaoXB/Jg+mE
         5c41P4nnm8udJkGlW+zbPb2Or2zxHeStoKmVHzU56EzsK0ny2CkW3pGJ6/Irw9lvRsFP
         Bs4HHF9ydS7cWAFmwQFs/HQfkKcKg+olcTCAewRcQtURCepWku6utg5YU7IpOqnPgReo
         BGNA+uCta2TMAbzL5ynPd6i83taXW0aESA5WlI1Yp/UTJFEGdmNiavn4M29sf6eV3zr6
         zKrBAZn29LjX4v5KW3tJiLF+FIsnIVoZG1/mo6XWz0HewZtZUQ0ymmkqoZ4WQCN8Ppog
         GBDA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=ad1c+5xy;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.244.140 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
Return-Path: <nishka.dasgupta@yahoo.com>
Received: from sonic310-20.consmr.mail.sg3.yahoo.com (sonic310-20.consmr.mail.sg3.yahoo.com. [106.10.244.140])
        by gmr-mx.google.com with ESMTPS id h186si371777qkc.1.2019.03.30.12.48.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Mar 2019 12:48:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.244.140 as permitted sender) client-ip=106.10.244.140;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=ad1c+5xy;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.244.140 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1553975313; bh=AchTEOKexYiCc0pLj1sF447sdHvbCu1vtvXV3g90lvs=; h=From:To:Cc:Subject:Date:From:Subject; b=ad1c+5xyoAB11KD2HIjN9I9jU8Tg1VzJfOHpZYVSnc1jDjSHPwGwl/92GnCYl7PY9V0vrh9f5qd+0RMChoXYVO6fSSDV36GXw4tLe/yfTJnqUyFw+Lejj0je8jhIouqyn/zOUGJsaPDfpqbM0tAGuL8FxYMGmyKXI4VyaVB+AR9AfmWcnLdyG1K1Q43rnXCjJpPkSQWabF9RXHLf9A75CS/f85oSKVsID29oW4co5iiKX5Ou2kqAj3xRMeW1WaDVYp7Ms57gnbJZQST4LjAoZYp9MJtB5zr+eVPJPl5m2wUmr0EAd0KPWzPGIsCY7LAafN/+4trVm0Ws0Jja4ipUUA==
X-YMail-OSG: tHx8oYoVM1lDBQYuEYtnenzq15FjIZ26S9B_Vm5loEhxVO1wtmTXFrC1leKluXv
 rRLpS17mrSeyxszfC4olzPd1MGtYbf2IlEC1JPioGcot62.w5Z8udJJZi4CvPnVhmJKLywseR_7W
 gv.4IKCavaqb5.f.lXVtVEcE_kTOUzQGTNpuS.GwAlOI_6cOrJPymhRpAigQ2GO0b1UTHqqBuDyG
 ZRTel89SkOTwZ7N.MV3ljBWDi1w7VgwrxgRSlP.XqxYmcX8hr6JG_.XLOqr6LkPRmGeFkAGvjz1Q
 peKw6hrO6EBw.vf8M2CXlqVA..TvEkiLOAZtzsgIxczzp8BTn7l9SnGX9o1fw7meP.2EQY6liUEY
 2rzBgT8_SMA.7LXQOaAbb9aL3KYAMLrgAFHK7VtdDCpevr_kJZU76rFtJwRi0pJ0lyySLnlRBCcx
 TrwOT2HW43vllPZgo56tBe_6TA4pJs7icCMSaHFtqkgkShVxuUSsI0EtqBzuQXGtWBfDTAWfTteA
 xiaNUnqM4H0.4pHPTGajxK.Sh3nsgaM2PzXJJAyNJwEDDN0d_1Z03C55QbOroq8QddhGyrCXkpmM
 kby90JyQP7Z4xNHuEuCH29Ym1dpBicFfmNeds2ElkBOnGqP5XsdcLiozrJLgbGpTaeaQn9vaphhg
 BnABz1das2o8r.aQZcWfnVDGr0aWaZ71.AUs7etGt5KpQWQSKnc1oxUdtegUUbqiqdy7owRgzZ1m
 cYS6fMyma91hXb8s9l36aRI7MUXFQB64unbnxYfOg.px1SC7kw33Kv0hlWQf3CSE0xziCHsGyv0C
 ag8SpodNefUP45usxUChGMNxetcpHl1_hQGG8zuVGOFuFC_BYgCWJSSpoOOwzDcZDa4xcx0JQzIu
 9IGPC7MX6Ewt3FUnoiACnpHU1qy0uDUH0wlZGv4CTT4NIBy5ql_3dhGh0Dfn.Osnjhut.TnwrKMr
 df0j..wpnQR5e9J7BApnN8OBAwQNMpWEmuHYIfg5.AkYAkbZmZZ3M0kS3TP2fcA963o2WmEGZUkw
 c41X_9.ktvgzZIKqI7srRYW2O9.rRWyCTOTg2xxRQO5BxCbtlSWD3ju85y62wN3g6rK.NAhbemTi
 nr1uS
Received: from sonic.gate.mail.ne1.yahoo.com by sonic310.consmr.mail.sg3.yahoo.com with HTTP; Sat, 30 Mar 2019 19:48:33 +0000
Received: from 125.22.40.140 (EHLO localhost.localdomain) ([125.22.40.140])
          by smtp402.mail.sg3.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID 4169e42607ad1b6e520f12a77586a4df;
          Sat, 30 Mar 2019 19:48:32 +0000 (UTC)
From: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
Subject: [PATCH 0/2 v6] staging: rtlwifi: phydm: Simplify expressions
Date: Sun, 31 Mar 2019 01:18:14 +0530
Message-Id: <cover.1553974929.git.nishka.dasgupta@yahoo.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Simplify expressions to make code more readable.

Nishka Dasgupta (2):
  staging: rtlwifi: phydm: Move operator to left hand side
  staging: rtlwifi: phydm: Move function arguments to previous line

 drivers/staging/rtlwifi/phydm/phydm_debug.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

-- 
Changes in v6:
- Split the patch into two.

2.19.1


