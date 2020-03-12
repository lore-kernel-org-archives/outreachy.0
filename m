X-GM-THRID: 6802879895263248384
X-Received: by 2002:a37:7d2:: with SMTP id 201mr9627764qkh.146.1584039993618;
        Thu, 12 Mar 2020 12:06:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aed:2521:: with SMTP id v30ls2639860qtc.6.gmail; Thu, 12 Mar
 2020 12:06:32 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vu2IVlxQkGpTdk1iH1F25idPjoWUkl138pGM1tRleigu8Iyk64ipCRz0tYZmAY1NU5GAqS5
X-Received: by 2002:ac8:7c7:: with SMTP id m7mr1408697qth.275.1584039992070;
        Thu, 12 Mar 2020 12:06:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584039992; cv=none;
        d=google.com; s=arc-20160816;
        b=e1Vc5/6GzickkJogOZjGLMSmDv8siPV9hUCXcfgneLJNHcHOXP9F/AjVMNkvyW2j2r
         7uKYw+o2JwL0x3L7oUWOvnGbfo+b6SQDzbPPw9LhJDKS4JsYn6FLtL6PbT/TCr6Zij+M
         TOCA5qstEVgoA+Z0lsYGoH9Lqg7odUiQRkaZDw9ifxnWti+fpypOlOcqRRhEIsJa8J+T
         Rlax482+AnGHBr0sBAT6+rz3T+PeQF2K5GT1wtZSYHL7SWoOc80swCXfqOFVf2R8hRk4
         Kb8DndZvSt+H7Scm9kQiIblvy5MGYPVda7RQ0BcX8oPPIbRRIT1mI5rgHXD+qP5fmbxK
         3JCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=pLkH7aNzTn+ffTuavxH48ZCwVAjH2TVVhyanWbWsUeM=;
        b=KNNupy6v/xPaRuzyzHVvRTKMg0JnfFjATWqm1jhrxb6+tjvonlYnJgZui4OK0Bdgt+
         NqObPsU+K6Qg5gqjj+WKoOxreWmx+gYKQ3Be3k5QC6PVskfs7H2Tb9v5uKpwmUBozDcn
         /iYGu7fNjHuKTd6c5qAi1KinYdPg72t2/B7spHF/bTYclh4twNds0xTCk08zJRKB60ao
         76ClCDbT3QeUwnCnFzSMbP2TUiLCMxN3a4IYb+DA7w5NVQ6UOP36pGMWJh95eO/gH/Ip
         zC3r8S7nwVdDiYnoBuxtFwXgUXLh2jIr0TaZ+xVnQP5hQSIi09D96h4SjxVneKw79ZJD
         K9sw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ACxX5nh7;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::62a as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from mail-pl1-x62a.google.com (mail-pl1-x62a.google.com. [2607:f8b0:4864:20::62a])
        by gmr-mx.google.com with ESMTPS id e89si318131qtd.3.2020.03.12.12.06.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Mar 2020 12:06:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::62a as permitted sender) client-ip=2607:f8b0:4864:20::62a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ACxX5nh7;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::62a as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x62a.google.com with SMTP id a23so3040195plm.1
        for <outreachy-kernel@googlegroups.com>; Thu, 12 Mar 2020 12:06:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=pLkH7aNzTn+ffTuavxH48ZCwVAjH2TVVhyanWbWsUeM=;
        b=ACxX5nh7tZlKyXh0eUDIjbjM/m3FBxsNkNC1v+n4PASmrNO/O2cDc3tseVQ94CsQf9
         BdTbQImabKSYaplzhLQ1JwzfmhGkznywkpNKmJ9zLjBfMp9RNc/mc7lN1YiDj945A8RE
         +0pEqspMM2Sc9GFKr2ct9u90LBajzF34VY3HKwjdSCpKvBRAy2sMXmH2aAFFnt5Ju0LD
         qV8VqIcVxMtZEXkiAwBPbvDYlY2DoFjPqdLYyh+yz/ofZ9xE7SdAe6SMJ+8qN/dAXmr2
         oKAU+a+CaBHXgJn/krWqx+0P5l7rAPiizOGx16WHH+em4olAT4c9PeKAJKCvJRjAC2uR
         UTpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=pLkH7aNzTn+ffTuavxH48ZCwVAjH2TVVhyanWbWsUeM=;
        b=SjN4+kwZbCLkREP+AyhbhrBeuDbbp3GD+XS9oUA2KYHEq0H+duY1kgTOznNaXsufcd
         0VJYRZz/gsiun6g8OzxaL3/AHZWt+zLHrUEk1z6tWwkw8zlySY/+7BmaVvbPHpIu2M6J
         u+SMZsb1J/B3T/6PmLGyUNOk95gQvFxOM/+yeENLsWjsat2KVSogsN7fK0Rn1peu7T3l
         zqN3jDhl2Pl+cu4opf9hTrcppTGqmtjvO1wE1gcIix6MGSQBeW/DExXdBOg1A4TC6Sg5
         4hGyhunBfvhVwm26Cm7Xq5cPC0TTbsiSTzaehhc65hhoEwh40PIu2iSutbq+W7vr60Nd
         8tsg==
X-Gm-Message-State: ANhLgQ1SNGFYrqoWvsQRfW0JCU4eE4Tcr6tKe7/Cqr18sUgO2GOhCnCz
	2xBBp5zvYdwlR9uzsV+6kt8=
X-Received: by 2002:a17:90a:7f95:: with SMTP id m21mr5504179pjl.75.1584039991415;
        Thu, 12 Mar 2020 12:06:31 -0700 (PDT)
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from payal-desktop ([157.33.142.89])
        by smtp.gmail.com with ESMTPSA id a24sm6090716pfl.115.2020.03.12.12.06.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2020 12:06:30 -0700 (PDT)
From: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
To: manishc@marvell.com,
	GR-Linux-NIC-Dev@marvell.com,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
Subject: [PATCH v2 0/4] staging: qlge: remove unneeded variables
Date: Fri, 13 Mar 2020 00:36:20 +0530
Message-Id: <20200312190624.24167-1-payalskshirsagar1234@gmail.com>
X-Mailer: git-send-email 2.17.1

Remove unneeded temporary local variables from the files of drivers/staging/qlge directory.

Payal Kshirsagar (4):
  staging: qlge: qlge_main.c: remove an unneeded variable
  staging: qlge: qlge_mpi.c: remove an unneeded variable
  staging: qlge: qlge_dbg.c: remove an unneeded variable
  staging: qlge: qlge_ethtool.c: remove an unneeded variable

 drivers/staging/qlge/qlge_dbg.c     | 4 +---
 drivers/staging/qlge/qlge_ethtool.c | 4 +---
 drivers/staging/qlge/qlge_main.c    | 5 +----
 drivers/staging/qlge/qlge_mpi.c     | 5 +----
 4 files changed, 4 insertions(+), 14 delet23yjions(-)

-- 
2.17.1


