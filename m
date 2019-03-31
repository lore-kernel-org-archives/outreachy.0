X-GM-THRID: 6674450234072891392
X-Received: by 2002:a25:69d1:: with SMTP id e200mr5409352ybc.76.1554016544129;
        Sun, 31 Mar 2019 00:15:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:1384:: with SMTP id 126ls1991631ybt.1.gmail; Sun, 31 Mar
 2019 00:15:43 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzrJS9/LsLthZY+X+5yVWaCOtwpD85WUsDVm/jFUFByIX10NWhqfvx9OW6+CeRzQX76d3Kp
X-Received: by 2002:a25:5746:: with SMTP id l67mr5085332ybb.9.1554016543095;
        Sun, 31 Mar 2019 00:15:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554016543; cv=none;
        d=google.com; s=arc-20160816;
        b=WhAFJrHDZarAPDlv2Zt+vnv7V1UyOyH0lotE7rySviG2eEZIkJ8270RtL6uDhLDtdy
         dngmKUUFlhyDMlSpWQjFQdHZzlmv3AptbEvLN10pUv7y2i5f2dHumOWOpgcPYIVGiRxo
         RDV/d36iSq8DZwmF1WpjFp6AohxkW8uew93Dhu7+E2kQd2sZDt+mP11JzPr+HY/XnoeS
         C3aUAnnoTrXcnyfWXU3hRhEogmF7QFVVVonYO6rFhCUuCjGk3DMo1bQCwxqlzU3+Il7g
         voVsMXIwE5V9uahOg5wFUbBwdr523zPQkLc7zhsFyWVO+F5LgcPwVw+JE7BQK8Q5WtVr
         gpSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=ssZ224Busdvc/fXRARmLIOG/GCd1qZlIdXKwZoZZ6QA=;
        b=BWLW1fyNsqAKTC6JwPHCNxl48osApStd9eQvz4J90ZpFBLSKGBsC9ktL+AFy3/JwO1
         AY4dOPwsmhQN55baSXk0XX+k7b+Fy6JnxPZvyC2hTDsuTkt/KeYBll9yfjdvNd0clYtC
         J59bUsJboUAYF+d7s9bHu8g2a9F1R2s7xsiKQae5tLRccn8PV8Q+jLC/VAY+CnkaYQ+B
         laJT2kjnX89eCe1CpVcpDuuFWDeMVFr3zjVJwTXAKEWQJgE7RZPQkQxeAkT5XnXD6ZjT
         9s+1XI7eYRIBMqrFnaLUyePsthMKMIo1REXRxh9IqWuF0iUTiYxbD4/gbPbM4xiAGfCg
         rINQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="UI6E/WTG";
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id k62si366792ybb.4.2019.03.31.00.15.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 31 Mar 2019 00:15:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="UI6E/WTG";
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x542.google.com with SMTP id q1so3161766pgv.13
        for <outreachy-kernel@googlegroups.com>; Sun, 31 Mar 2019 00:15:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=ssZ224Busdvc/fXRARmLIOG/GCd1qZlIdXKwZoZZ6QA=;
        b=UI6E/WTG7Mzt+FpAlof3jI+Lh4/ob04hyii339VOQ9oqlfRPkpU+xUrA8VmUdmRMOG
         uP0+eKmTKGcxtuY32oQqoECkVdAix+31/Kj/PBvEBxdFve62jqDbEctqt5I6+8H870vc
         JXBIPmmgv2NZiFMPJgXRl1kyzAml9TkHjie3uVkVKgaM8EWIkpF3sHpPLVyns9zOVJaY
         vxAbQ8CJ7WCU+9sGuCqgZ+C0hj8LX6h1Xx7x3Tj1F9OY9iat3INMqhOf+DbQf24ZFnKz
         GU9pEUMxUoMSX489QzlTdu5LqHtSqEybOi93k4IO3vziPjUa0r8TeWoKeGp8KaQ8I4aR
         ijfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=ssZ224Busdvc/fXRARmLIOG/GCd1qZlIdXKwZoZZ6QA=;
        b=budDYcRv8RTjX6bTiMaip0daW71dhl05fNOpSuvs6TVIPGGuWix5mQJ9eud096YjYF
         bfzQWfxtBplW8ddD9TRGlR+XGOMDDYqu/ghZHYZzeWptUhj1N5056x0mjlnpPohNrmrx
         NNI7yIc0jUnT/fwgVTOn5tu6LEMxNf6r8l51zxzcGPLdD0VDo9UkZbnuFbKiVUUm7Ps/
         LU4feo9VIKfJwwDHdS4veoo4QnDLGwIbVegSDXVIQlHerwvOgbYpreNpG7V4soTRwNAr
         mufJzlrIZB/M7SweAeq0fy+S7TqLhWvQukrgWjoSaBEhEDjbzqMW2bAXf13As/Mthhaf
         HK7A==
X-Gm-Message-State: APjAAAUxjiCnKATooKWrHiGyIY8ToU4w+iOzIBY2LYnj5+4g1ZL5fZ9o
	9q7aKTesRzkdXv7EAyI8cgc74S1M
X-Received: by 2002:a63:195e:: with SMTP id 30mr51585040pgz.312.1554016541970;
        Sun, 31 Mar 2019 00:15:41 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([49.35.206.28])
        by smtp.gmail.com with ESMTPSA id j19sm3373843pfh.41.2019.03.31.00.15.38
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 31 Mar 2019 00:15:41 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [Outreachy kernel] [PATCH 0/9] staging: rtl8723bs: os_dep: ioctl_linux.c: Fix formatting issues
Date: Sun, 31 Mar 2019 12:45:11 +0530
Message-Id: <cover.1554016131.git.payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4

This patchset:
	-Removes spaces and adds right number of tabs.
	-Removes spaces before square brackets.
	-Avoids camelcase variable names.
	-Removes space before semicolon.
	-Aligns to open parenthesis.

Payal Kshirsagar (9):
  staging: rtl8723bs: os_dep: ioctl_linux.c: Fix indentation issue.
  staging: rtl8723bs: os_dep: ioctl_linux.c: space prohibited before
    square brackets
  staging: rtl8723bs: os_dep: ioctl_linux.c: "foo*  bar" should be "foo
    *bar"
  staging: rtl8723bs: os_dep: ioctl_linux.c: "(foo*)" should be "(foo
    *)"
  staging: rtl8723bs: os_dep: ioctl_linux.c: Avoid CamelCase
    "blInserted"
  staging: rtl8723bs: os_dep: ioctl_linux.c: Avoid CamelCase "intReturn"
  staging: rtl8723bs: os_dep: ioctl_linux.c: space prohibited before
    semicolon
  staging: rtl8723bs: os_dep: ioctl_linux.c: Avoid CamelCase "pPMK"
  staging: rtl8723bs: os_dep: ioctl_linux.c: Alignment should match open
    parenthesis

 drivers/staging/rtl8723bs/os_dep/ioctl_linux.c | 103 ++++++++++++-------------
 1 file changed, 50 insertions(+), 53 deletions(-)

-- 
2.7.4


