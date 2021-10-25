X-GM-THRID: 7023011661987446784
X-Received: by 2002:a05:651c:507:: with SMTP id o7mr18266616ljp.356.1635172325750;
        Mon, 25 Oct 2021 07:32:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:5c87:: with SMTP id q129ls2903313ljb.3.gmail; Mon, 25
 Oct 2021 07:32:04 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyctlP4N2uM8/xEwR3Nj6mX44TLPZEKGpLgnV40FbNceb2tyYzSWNZyWQnE5ZiZfTOweAwR
X-Received: by 2002:a05:651c:10b7:: with SMTP id k23mr19433046ljn.310.1635172324094;
        Mon, 25 Oct 2021 07:32:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1635172324; cv=none;
        d=google.com; s=arc-20160816;
        b=gBYBZrlH6fwmfotswniLi5rVHdZuWRPrQwqC64P/67+Lip6EnaaQhVP91wd0Yv9XkJ
         +vRVZdutaOwFZkdyDVMbMkrTT5svRMoQyob8xLSUiLI6aoWBX7eQ0irYR2QuaNgzg3JE
         BEPPkxPv7XfjiJLomeBIDbMlgSEJBeTxizXzrYyL/4RwTjyWyHiZQd19HvkyjNEKXu5S
         SCoj0FEOsuAJkl3v1EePljTyVQbgLLAiUtQqsCgPygpOYqVxQ1yzkD/TEiFel2THbqgb
         rsVE9bgDutJ8tmQiaVg656HmFvq8FHrJhbxWdSBpZ2BhHq8QrrAcN+hF+6wGSlFOrqpo
         N/pA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=IIGRvhXmp/ODidkCDs+qSECALH/6ezkCoaRxNQbD8+M=;
        b=1Iiz40kX8qvhenx9/pyHE4Sn1fAI2DefiG9hJkCzATt7SP9FwLIcpB9uuEH374AA7a
         S4p3s+HWbGAd03OL48vohRPq0aRUQkIdA7mklYiXw5JeCo+C51bm3o6FGbOZ+3iOYZEw
         qISEJoz75DFemSBD+xkUUMIbgeincRCbKEkU7UN/5PfmRg1GKQ8IYlb0QzTEa4+ZQ7+y
         mVaqC1Gpy8Wnqpl+A+0vgBCEpK7kKIlMPQ2vP/Ef108Yv5mGjyIzfrcPV8DhDJuy3BoU
         GauYfS37i3SfgEZ0fNgr43K0/Xu8CNYtlGD9w1ld20rlX/xtPjgW3dgmakjhgiitJOxl
         dRgg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=PuA9ttgl;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::429 as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <karolinadrobnik@gmail.com>
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com. [2a00:1450:4864:20::429])
        by gmr-mx.google.com with ESMTPS id b27si859511ljf.3.2021.10.25.07.32.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Oct 2021 07:32:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::429 as permitted sender) client-ip=2a00:1450:4864:20::429;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=PuA9ttgl;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::429 as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x429.google.com with SMTP id u18so9836376wrg.5
        for <outreachy-kernel@googlegroups.com>; Mon, 25 Oct 2021 07:32:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=IIGRvhXmp/ODidkCDs+qSECALH/6ezkCoaRxNQbD8+M=;
        b=PuA9ttglf9ol8ctfnt2c1N7mXBmSb7L2A0tTnjH70sDRFU5XpU+WY9UPb0Y7pVjknG
         Ici7wgBsyKjTxQiVO0KvRxrC5a3JkeNJfjv6pyXoakHiiyemnQQXZcEjvJg46RUth5Ym
         eCWWxxhhJozVftBqn2f5DqfMjBRCoTAURCin9JIW/el1MKvkSnHjRY95fInzg4UB/7aX
         jzuPZr+a83uwEsCAQEo3eIVUMZIdobsNFT6czFmAn9tGclc4uKQA21MIrqAtO8BdhW/w
         oqrfIWRGR5eIsR0vH/9rvi0oyLb550TML9i860qOBWMUTPMQOVgwuj84T4U925afc5IK
         QGSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=IIGRvhXmp/ODidkCDs+qSECALH/6ezkCoaRxNQbD8+M=;
        b=X8cx90oQSlZE/cDcDD3GUXMPQBPNwlqwgSgUInFE8mnhV9JBZQug+KNF1arUB5yj2N
         dl+pYy2U/GBpucc56lBuKRBEdeNw7DRoZGe7yUcGhLjyVpNvvJbv56JGJnpZeHTEghPC
         c5V+kwxIbne/FdaBHmD00VUDVtw0FcWpHqoRIwlBnv/wsRLprJ1hdPWxrlnk5jt64TND
         KChp4KdT/li9Es9/Qiw3Nrs4xc+FsmDscMdP35QT9QY0ZIjWko6tfyC9zKHSwBgA2OYh
         ElxBiKAjB26iaPhzV522IxFb/7lhC1Ss2LCabniJK8smKSQxx7WsPFQHnN1MBtD354qM
         48Ig==
X-Gm-Message-State: AOAM530W1z6Cva0bxG4z1tZZoDx6z86DwkBoUiWcgTY+ciWFnPUFfV97
	EeCcLveuoiJDbvbYQBcpxqxX0TpNfsZ+kw==
X-Received: by 2002:adf:c78d:: with SMTP id l13mr23111243wrg.134.1635172323900;
        Mon, 25 Oct 2021 07:32:03 -0700 (PDT)
Return-Path: <karolinadrobnik@gmail.com>
Received: from localhost.localdomain ([2a01:4b00:f411:e700:e085:8cb7:7bf6:5d62])
        by smtp.gmail.com with ESMTPSA id x8sm13011500wrr.53.2021.10.25.07.32.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Oct 2021 07:32:03 -0700 (PDT)
From: Karolina Drobnik <karolinadrobnik@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	forest@alittletooquiet.net,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Karolina Drobnik <karolinadrobnik@gmail.com>
Subject: [PATCH 0/8] staging: vt6655: Rename channel, init and power tables
Date: Mon, 25 Oct 2021 15:31:26 +0100
Message-Id: <cover.1635171518.git.karolinadrobnik@gmail.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This patch set renames global arrays of settings for AL2230 and AL7320
transceivers so they adhere to the kernel coding style. It includes removal 
of the Hungarian notation and changing variable names to use snake case.

Karolina Drobnik (8):
  staging: vt6655: Rename `dwAL2230ChannelTable0` array
  staging: vt6655: Rename `dwAL2230ChannelTable1` array
  staging: vt6655: Rename `dwAL7230ChannelTable0` array
  staging: vt6655: Rename `dwAL7230ChannelTable1` array
  staging: vt6655: Rename `dwAL7230ChannelTable2` array
  staging: vt6655: Rename `dwAL7230InitTableAMode` array
  staging: vt6655: Rename `dwAL2230PowerTable` array
  staging: vt6655: Rename `dwAL7230InitTable` array

 drivers/staging/vt6655/rf.c | 76 ++++++++++++++++++-------------------
 1 file changed, 38 insertions(+), 38 deletions(-)

-- 
2.30.2


