X-GM-THRID: 6810236750031486976
X-Received: by 2002:aa7:9f47:: with SMTP id h7mr16541565pfr.292.1585631805467;
        Mon, 30 Mar 2020 22:16:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:fd82:: with SMTP id cx2ls1963510pjb.1.canary-gmail;
 Mon, 30 Mar 2020 22:16:44 -0700 (PDT)
X-Google-Smtp-Source: APiQypLxsUgkuRJaMQn58PpocFbnk8ELD7I6PYeCDOfYa8Xglrsp1tFygcyaamzA9HZHgve39OZb
X-Received: by 2002:a17:90a:2503:: with SMTP id j3mr1872307pje.83.1585631804009;
        Mon, 30 Mar 2020 22:16:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585631804; cv=none;
        d=google.com; s=arc-20160816;
        b=BeY3xrLFkx5bcs6H3Ma6d/lO7Leo7ckEFChi6ed572qeiT8iqTwDcj6tw67czlyGu6
         ojBmLDGjuye5IwKo06ptklgjwKHg050QDzWmRHVmQJqaHk/6u68quJ6UIFyHA1h2O38X
         NlUGSAhFUss/63QF46YOPmWCUcmDespjNpxTDEFoLov/HGxsh0PeiEJzl6cXjGMDPrxS
         GxiKrIITabuIB8/9zjtGAfyHhAsq2TREPeWd9WTZMJjW+PuCeKGd0OrSP1I14VP6s3Ff
         Ptm3EHFrovX1cvcoQ497IV7FAOJbF+qk1G/ZEefIivbVmF4d6FoV2zJNln7ljMUUIoOm
         ew0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=6mUcqoNQ7gO2uAnVo6RvlymGSXhbwACCV2yEIBiJMiI=;
        b=EO7Lg0L+4mGo1lv8rk1zzj8B7cd+wU7587DoZH7nVpPDdLB1t116MDx5IIg2mw02FR
         ODpRCtJF2WH3CA7wwiFz0ymuUS+o5KQd2vRaiF2tD3eEPxGUz7OQHBHwyy0ciH5H/yGu
         VHkWDNnKIDqRaWHLujgjqsEdYSqewNc5xPNqCCJsbLddehwMeDh98JdX0cwgyWbwvJ1Y
         SsCPetZveAMQ9+WtKRakuk/x9NqHQzPrtujuRW05/W0xQIpjM5MQLGSu6DR41ZPEoafd
         lu7zZNwN1GZl4C7g8E7eOTCUkHYbIs6IlbLwyKWmznTEaYsC9hz9s4JzmlG8FiixSC2o
         d8Tg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="S2zAwc/+";
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <briana.oursler@gmail.com>
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id j44si101211pje.0.2020.03.30.22.16.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Mar 2020 22:16:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="S2zAwc/+";
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1041.google.com with SMTP id l36so584824pjb.3
        for <outreachy-kernel@googlegroups.com>; Mon, 30 Mar 2020 22:16:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=6mUcqoNQ7gO2uAnVo6RvlymGSXhbwACCV2yEIBiJMiI=;
        b=S2zAwc/+WRc5nLW371Blb8I/TR+rYMBXRncWHUz3QAVsDeZy860PBPsKVu1ys/+x/8
         dXNS27+zQrxFY2ZXj/WySrwF9WcXfq2Yu48yQ0y9XROdz7Harfz9BEN1YpmGPHEUcg04
         qdjYsB3HtrnMvho6ebC0FxrWjB8H5Fm+r3VMVLIL8JN3O3Dp1H8NtMiHB9NQKfPHzaIU
         KPKZSMquiacoDQc0akEejJSNAC+5SqhQeHewkgC0YjM4FncdDlqbwZ3LYtFHTHp4KEXA
         4uowzyW2PV/546bUZrh7ZTh3F4LSwfjXJBXxvZep7OqcZXxfG7Ip+TFPy+FXZOu6N/Qj
         mcZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=6mUcqoNQ7gO2uAnVo6RvlymGSXhbwACCV2yEIBiJMiI=;
        b=WXXp5Ryhlj1g4WC6L0jmw3vDY/cZx0kNu961nfbI37XwQOu5SArri7bAePLgj7kMKd
         CZsVd8ySYy3Au1eFE/m/4p8hLLpNxQOY7vrnI5XfBs5EUBRz6pFuH6sEvBTEscmyEnYd
         K+o9+G2pKRUCBw0aPZmrBIVFxlTBEUzkG7Hj2K/0yspBrJJD3rKKYuoTIkcIDYHYLXRh
         kXCRpbTolEHxRp15uKqpsjcow5Me/FUi6L2DYacL6b9/Pi4z3AmetfHyuK6Zli26+UVr
         As4PQX7Lc9EKHuWOA91LFGaQj2ZZ6heyb0XGliufRzT1wAIlECi/rSChrOWkuWIttNzd
         1caA==
X-Gm-Message-State: ANhLgQ1QIFLwUk/7FwGpSnk61vd8f3drD7u3DyGa+U8TehAutNZwu8Ai
	fyuU+bZUwALDuANN/bs7HppPhdgTnb+rLw==
X-Received: by 2002:a17:902:9b95:: with SMTP id y21mr15960089plp.101.1585631803635;
        Mon, 30 Mar 2020 22:16:43 -0700 (PDT)
Return-Path: <briana.oursler@gmail.com>
Received: from nebula.hsd1.or.comcast.net ([2601:1c0:5400:122:2697:be21:1d90:fb7a])
        by smtp.gmail.com with ESMTPSA id q8sm910815pjq.28.2020.03.30.22.16.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Mar 2020 22:16:43 -0700 (PDT)
From: Briana Oursler <briana.oursler@gmail.com>
To: julia.lawall@inria.fr,
	sbrivio@redhat.com,
	gregkh@linuxfoundation.org,
	forest@alittletooquiet.net,
	outreachy-kernel@googlegroups.com
Cc: Briana Oursler <briana.oursler@gmail.com>
Subject: [Patch v2 0/3] staging: vt6655: Remove functions that are never
Date: Mon, 30 Mar 2020 22:16:37 -0700
Message-Id: <cover.1585630805.git.briana.oursler@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This patchset removes functions that are not called in the driver but
are prototyped in card.h. Each commit limits its scope to one function
definition and related documentation in code. References in the
developer's initial changelog were left in place.

Functions were checked for calls using the Elixir Cross Referencer and
git grep. 

Per Stefano Brivio's recommendation, output of bloatometer script after
changes:

add/remove: 0/3 grow/shrink: 0/0 up/down: 0/-532 (-532)
Function                                     old     new   delta
CARDbSoftwareReset                            10       -     -10
CARDvSetLoopbackMode                          14       -     -14
CARDbRadioPowerOn                            508       -    -508
Total: Before=36131, After=35599, chg -1.47%


Briana Oursler (3):
  Staging: vt6655: Remove CARDbSoftwareReset definition.
  Staging: vt6655: Remove CARDvSetLoopbackMode definition.
  Staging: vt6655: Remove CARDbRadioPowerOn definition.

 drivers/staging/vt6655/card.c | 105 ----------------------------------
 drivers/staging/vt6655/card.h |   4 --
 2 files changed, 109 deletions(-)

-- 
2.24.1


