X-GM-THRID: 6251387013409275904
X-Received: by 10.50.40.2 with SMTP id t2mr272755igk.9.1455514462595;
        Sun, 14 Feb 2016 21:34:22 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.73.129 with SMTP id l1ls664073igv.35.gmail; Sun, 14 Feb
 2016 21:34:22 -0800 (PST)
X-Received: by 10.50.102.40 with SMTP id fl8mr9521770igb.7.1455514462325;
        Sun, 14 Feb 2016 21:34:22 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pa0-x241.google.com (mail-pa0-x241.google.com. [2607:f8b0:400e:c03::241])
        by gmr-mx.google.com with ESMTPS id ui7si3150414pab.0.2016.02.14.21.34.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 14 Feb 2016 21:34:22 -0800 (PST)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) client-ip=2607:f8b0:400e:c03::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x241.google.com with SMTP id gc2so15243pab.0
        for <outreachy-kernel@googlegroups.com>; Sun, 14 Feb 2016 21:34:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=bBkuIbUWwCysZASna7jc+PmGG1Jc04L42NMT1tgXho8=;
        b=oM06kTgYpn183VIrWglXPS237NJek02PRTSzqdW30gM8GUQw4kTRCDrK9G7ATdRjNr
         dT/eMrfoYj7sQeMGh22teuei2ZoyexMY0Y8EO6S6kHkdvNLHvJIrj7TpH6hmF5zask5q
         cRnj1cccX5ZtTcceKabQaS4c2/xle03igCU+os++w0R5Mql+xxPPvIf8IGqaZlxRgmFZ
         pMhi65dfDJpj52FU5zXvOIMjgFUk4SwHbi3TmM0rzhhFN9IPD/riJmywOe6sUSTCmIkH
         7SaTi4zZqAIzZQkZswi4vrXeP24zKWMhx4ZRprFYL+oOmKoV/2Wic70DJ/8Hri5CxzCl
         /3cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=bBkuIbUWwCysZASna7jc+PmGG1Jc04L42NMT1tgXho8=;
        b=hKWTD+7k4sELmdvDjVeoWGkWyngdANAX0uuL/ktTsFfdf9daxm6WWaZRsqolkFLN0Z
         CQHot1zNOzI2HLWXcAIUxtfSFEHQjiSpxi3dagSgL8+naQocn7iq1O3znAPHXtFze7cS
         mMBHEsgAkX3j4Cyi+vTGT8o1ZnL6H/+dovK40Q9BA6Ws66BCTyc22Smll4WgimKe9b+f
         NnQYyxF9ZfzhcxYgN+3L4mPJ1luY8khP7XJsy8qoFDY4MnzRLAvhn+HJLZiUC9l3me48
         n6hULNUaQ0eQ0lGnafBha9y+Lz1XRQ4lKZ/67xBI1PaGNKoWALk33Ao2tSIQHqwWsszP
         KruQ==
X-Gm-Message-State: AG10YORybq2edmEHFnXIqRGTty85U9oDBiBhlDGa8Gd0qsfTEjpsdem4/fp4MWNNjkpTaA==
X-Received: by 10.66.219.71 with SMTP id pm7mr20716594pac.137.1455514462200;
        Sun, 14 Feb 2016 21:34:22 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-Mint ([125.212.122.36])
        by smtp.gmail.com with ESMTPSA id kw10sm35165352pab.0.2016.02.14.21.34.21
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 14 Feb 2016 21:34:21 -0800 (PST)
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Eva Rachel Retuya <eraretuya@gmail.com>
Subject: [PATCH v2 0/2] staging: wilc1000: fix checkpatch errors
Date: Mon, 15 Feb 2016 13:34:15 +0800
Message-Id: <cover.1455513866.git.eraretuya@gmail.com>
X-Mailer: git-send-email 1.9.1

Clean checkpatch errors found in wilc1000.

Change in v2:
* Split single patch into two separate patches of distinct change

Eva Rachel Retuya (2):
  staging: wilc1000: Remove whitespace checkpatch errors
  staging: wilc1000: Remove initialization of static variables

 drivers/staging/wilc1000/host_interface.c         | 2 +-
 drivers/staging/wilc1000/linux_mon.c              | 2 +-
 drivers/staging/wilc1000/wilc_spi.c               | 9 ++++++---
 drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 4 ++--
 drivers/staging/wilc1000/wilc_wlan.c              | 2 +-
 5 files changed, 11 insertions(+), 8 deletions(-)

-- 
1.9.1


