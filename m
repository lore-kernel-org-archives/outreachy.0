X-GM-THRID: 6674500883205586944
X-Received: by 2002:aca:3a88:: with SMTP id h130mr1549876oia.5.1554028336059;
        Sun, 31 Mar 2019 03:32:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:4255:: with SMTP id p82ls1294538oia.4.gmail; Sun, 31 Mar
 2019 03:32:15 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxynQTy27E/IhZ9XBluOppID3PD9gyBVm4ZTtnf3W9Cy44D6YGLcibNlckzU/3TgMt+Yu01
X-Received: by 2002:aca:6045:: with SMTP id u66mr5353772oib.8.1554028335298;
        Sun, 31 Mar 2019 03:32:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554028335; cv=none;
        d=google.com; s=arc-20160816;
        b=HoVhuyrRzWN1ksBFqeLDuTNW/H1ZpW28nLOPobm1UdMPd3t/KbVrENACzg3gZyLyn0
         rZmNc0Jy34ppQzt6Ps4rMCN/RoLlunU7uy+39MGXIersHa8hXj8s6AzW+M0SFNiemerY
         Am9prJ+WuX1awld68nFBtgHFyZMf8gOJZ9FaPqqLjgY34wNtOT63C9qs4zZN2dL25MNG
         q2auqNFgJhuDdq8wgK5Mi+bVs2Za5ZXZNq/EZ5JWJQoaMfeDhiE0IxTshLJkDth3wzNB
         DQ6X6zMYSpL3HrnmoOhc7oezes0Ht+g7zJtPcFcCGRx7QyHyW7Xg+WrpCcMxpH2M27A/
         E9IA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=Exlr8zkpTt01yfDjS0Euq0CYaGN/QPcLSfJEYeB0jAQ=;
        b=Z4MdozF1F79b6Vn7JmC2RLnIidHitT0Z9xCG8dGqP/qaXvoY685beFun481RMboTcr
         t+YCYRzcgTlQaJCpLeY8O/JqNMYS3jsJiOzNPCnzksXb3+eBshIFfNxhd7rqGqn4oY02
         HsVI5B/ATeOhGjzVv5lSufn3BExpSdmHe/DrQPct6vcwFV2V77WKu4L83bfnLTxcQwf8
         DEd77kBl8qFDvp4kvGozIJNiH22V4vFrlvM0qrWkYSX0BN/92pd07zuBkZlto1KHbimL
         nfjP8pjtqMObyO8zjf7Hf1kKarCx8pCEon19JhSm4+pk4BJySK4iUHECOdzZeZY8x5tg
         6a7Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JvO5odyl;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::629 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pl1-x629.google.com (mail-pl1-x629.google.com. [2607:f8b0:4864:20::629])
        by gmr-mx.google.com with ESMTPS id q205si296105oih.1.2019.03.31.03.32.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 31 Mar 2019 03:32:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::629 as permitted sender) client-ip=2607:f8b0:4864:20::629;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JvO5odyl;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::629 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x629.google.com with SMTP id m10so3053726plt.10
        for <outreachy-kernel@googlegroups.com>; Sun, 31 Mar 2019 03:32:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=Exlr8zkpTt01yfDjS0Euq0CYaGN/QPcLSfJEYeB0jAQ=;
        b=JvO5odylJx6uwlQqtYku+z8pKl60fgeAbDouqddrte4rcK5YzAREyLpEpcEx+80bHp
         6yDnCxGC+5du7X0VsN9kzX/3d/FY32qbART+6xuYzcYdc3vPdDbleJ3YfgMCOPbovCCo
         xpFIHt0jxrlbKcu0V0WMPfbBERARPHWTa7qtxhNSxEz/bnrUXhEHgu1wAj6beTMoLn2t
         +xGkWy1FziKituBPyKhH+ieGEqPnOQP0jxO/Sj4j+shBo7mP4759Q0jxkYCdM+oeoYVb
         ukk8aYdWsJVPhKjZS29Lu4I9kNCajxy55hDZ3Im6hPiwAjqwAvKV00kQowqDVGyQKmED
         EBdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Exlr8zkpTt01yfDjS0Euq0CYaGN/QPcLSfJEYeB0jAQ=;
        b=R9sUmscDZaz7BspQcmIEjwyLj7zTxhVTJoqE3uLHmsIPCXGcqXgoSfhfFsMFrpBzGy
         8YBfFf6QKUuODzrMgxl2EkgdJM3pMsXT/O2x/C+JwMDVeYWw4+p2Lvqi7acbcmVz4CV2
         TIxB9nyzfVIDeOkXZqGUOrcsso3QW5Duh3LpjBiaGfsv973Ns9c6X+xDdyAVqJIrT0ha
         RvEB+UVpHKlc8tKfAqYmOisORU3UMGOCObv7ngGUDh5iXoW3iTjnW/c7Vy5XMAArYYTl
         rpO7pg/9WYdpQ/dLLmqsn5Rj3rhiK2h0QIf5k0anw0QbFBT9rtEK+X6un0io4XzPpGyM
         1EOA==
X-Gm-Message-State: APjAAAVBHYbCxWxKdAOvZrIGabWaPSlI8jWlpdwCIxLIGbQ+qtSGROZ4
	MBPjMneYiq5ix0kfYt/gREGCmk+ru+8=
X-Received: by 2002:a17:902:703:: with SMTP id 3mr24620267pli.224.1554028334677;
        Sun, 31 Mar 2019 03:32:14 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from sanjana-Inspiron-5570.domain.name ([123.201.105.95])
        by smtp.googlemail.com with ESMTPSA id 8sm15658360pfs.50.2019.03.31.03.32.12
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 31 Mar 2019 03:32:13 -0700 (PDT)
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/6] staging: comedi: Prefer using BIT macro in various files.
Date: Sun, 31 Mar 2019 16:02:04 +0530
Message-Id: <20190331103204.21358-1-sanjana99reddy99@gmail.com>
X-Mailer: git-send-email 2.17.1

This patchset does the following.
1. Replace bit assignment with macro

Sanjana Sanikommu (6):
  staging: comedi: das08: Prefer using the BIT macro
  staging: comedi: Prefer using the BIT macro
  staging: comedi: Prefer using the BIT macro
  staging: comedi: Prefer using the BIT macro
  staging: comedi: Prefer using the BIT macro
  staging: comedi: Prefer using the BIT macro

 drivers/staging/comedi/drivers/amplc_pci230.c  | 2 +-
 drivers/staging/comedi/drivers/das08.c         | 4 ++--
 drivers/staging/comedi/drivers/dyna_pci10xx.c  | 2 +-
 drivers/staging/comedi/drivers/ni_at_ao.c      | 2 +-
 drivers/staging/comedi/drivers/ni_daq_700.c    | 2 +-
 drivers/staging/comedi/drivers/ni_mio_common.c | 4 ++--
 6 files changed, 8 insertions(+), 8 deletions(-)

-- 
2.17.1


