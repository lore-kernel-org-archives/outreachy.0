X-GM-THRID: 6466114198556377088
X-Received: by 10.36.4.20 with SMTP id 20mr2956086itb.13.1505509530994;
        Fri, 15 Sep 2017 14:05:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.145.68 with SMTP id t65ls7559745iod.50.gmail; Fri, 15 Sep
 2017 14:05:30 -0700 (PDT)
X-Received: by 10.233.222.71 with SMTP id s68mr13888684qkf.13.1505509530197;
        Fri, 15 Sep 2017 14:05:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505509530; cv=none;
        d=google.com; s=arc-20160816;
        b=DXPp/XpWAzJNMj6MpreD6w3SHetPA7P7RE+KHpNTZNe3izIpIcySAL7Lte/l61EhgB
         rGCAoLYdB0+iftqaLzyDBX2IZe/0yyFvvHuBZIgAwUeteuBodwFaL0XUTA4pT0yHK5or
         45qBYFJHFwjsauCABDe7P7st6DEPeM7KabpCxA4U1/MnisGzbYheoMypqoDlqJEQLsI0
         p53lXWb7f7vcUwIAVLX5yBEmL+2+jV/n4iH3L66kn0/RU1XtoA70/uupHu+PLagrcRoe
         i/ZrT+zY029LYEpnclmQpzjMwwCUfhRrAGypi173VGYNxvhIXuqgETGM3RaWH1mZNGQH
         1zZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=tPWAE8Itnvga3Ma80l39H2o/aJzbBHofHWPoedtAufU=;
        b=gHGrkap8G6Pu1WY6zlHyHWNY04gBLqYckB2XM42IOVRSnH2EWM8d9tS8lzDzGEpZT3
         3phFD/FNF8F8E8DHDt+gYSVffrAp07EoEWktwhjyV8ujRVBZIdpm/VqEMw8Xc2Un/dHv
         c0ZuKP0HAVqTZcudcpZaDm4BRjT9fAdAYRbpw/WTXc6deOmLJjn1Wv4BB4H0t4zWVJPr
         uvT6xh8Xi5dQm0bhpK2PwZSu1S9pE5Dy6/56u335NZJ1Z2Mri3R5phQT4oEOsJMKe/mX
         VPGd7M+pwc8IiSSjpFQzvwk1HBTREaoVf/eq2QumNo0DbHKRge9HtyUJtAVewPR4EQ04
         MQDw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RAOizw5Y;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <srishtishar@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id c19si175398pfk.9.2017.09.15.14.05.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Sep 2017 14:05:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RAOizw5Y;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id m30so1873523pgn.5
        for <outreachy-kernel@googlegroups.com>; Fri, 15 Sep 2017 14:05:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=tPWAE8Itnvga3Ma80l39H2o/aJzbBHofHWPoedtAufU=;
        b=RAOizw5Y/b1uSMT0L0uXd/AnrpXcR9IqWTn05GcqL46GgGr5mKr3X7sKD2FqttvWdI
         NfZwKYOMtEHO6ROsVebXztZq7mu2SJNRgSCZNza/heIzv5U03wKD55T7RSMlOXW7S1oF
         EcXzkgKOMYr1MiFZr+112iPrZyrKpqWglwa8TOUmWKpxIYLXxE8moM0mBgQQmqUrJKOT
         eSmPYaQWBN0/rpoBpzd9B+RnPx2b/nPwBYrJRSuyyrMR/tkzGuGcPT+hY7Wnn1VA85Kp
         uymEq5cecZkUazLjDc5YqvSgzzvpFtS8Uf6y4sRbLOzzuyfWze08COBg/n9nSz7ULVca
         36HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=tPWAE8Itnvga3Ma80l39H2o/aJzbBHofHWPoedtAufU=;
        b=Ny75RVc3t4/ZDRhxGotzI/C7vY7JpUuu1gpuGlFoRrWDgjRmdOosNnrsMSwO72o5E5
         Uci881UqeglTSwqKafXGBJpb7PD9qzgJ5rsQboQFFimrDvFwBnvONHlqE3TMvy0A8v6W
         cna0dp0j12V2XYWYGSBtFa1egBEAoNClgwXnE0aBabMKVR2N97FXX77vmawjCW43EHMS
         3EKqAgzR+KYVnaoZgU1q346m9mbYoDLpPuZkZNLskKNLxlM6sv5V/XGHNNee1NQj7e/p
         gpuqpAFvxCLNYb9m67eEldr071D2pGUtYi69/XY5EzrQuNNQMuuEcvFO/2iAyyVo4p9m
         2ehg==
X-Gm-Message-State: AHPjjUhlySD/g+Of3ZMVIcWImngnZEtWweTT+G8BQoEMKI7PsGKVktDn
	G8Fkhfy8b0Ot9A==
X-Google-Smtp-Source: ADKCNb7EwHfRSnPdnaynk+Uvgb68odNuVG+EPjK3nfhzUXAaQdg0Stueppqds7Dp6JxB1tRif7H6tw==
X-Received: by 10.99.63.135 with SMTP id m129mr26169809pga.207.1505509529940;
        Fri, 15 Sep 2017 14:05:29 -0700 (PDT)
Return-Path: <srishtishar@gmail.com>
Received: from srishti-PRODiiGY-945G ([122.168.202.126])
        by smtp.gmail.com with ESMTPSA id t73sm3385835pgb.84.2017.09.15.14.05.28
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 15 Sep 2017 14:05:29 -0700 (PDT)
From: Srishti Sharma <srishtishar@gmail.com>
To: samuel@sortiz.org
Cc: gregkh@linuxfoundation.org,
	netdev@vger.kernel.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Srishti Sharma <srishtishar@gmail.com>
Subject: [PATCH 0/2] Assign outside if 
Date: Sat, 16 Sep 2017 02:35:24 +0530
Message-Id: <cover.1505508423.git.srishtishar@gmail.com>
X-Mailer: git-send-email 2.7.4

This patch series intends to remove the assignment statements 
inside the if statement, and eliminates the cases of parentheses
around the right hand side of assignment generated as a result of 
the same.

Srishti Sharma (2):
  Staging: irda: Don't use assignment inside if statement
  Staging: irda: Remove parentheses on the right of assignment

 drivers/staging/irda/drivers/irda-usb.c | 4 ++--
 drivers/staging/irda/drivers/mcs7780.c  | 9 ++++++---
 drivers/staging/irda/net/irqueue.c      | 3 ++-
 3 files changed, 10 insertions(+), 6 deletions(-)

-- 
2.7.4


