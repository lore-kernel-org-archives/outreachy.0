X-GM-THRID: 6251161839379415040
X-Received: by 10.50.129.74 with SMTP id nu10mr7752511igb.9.1455462034613;
        Sun, 14 Feb 2016 07:00:34 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.91.102 with SMTP id y93ls2893218qgd.35.gmail; Sun, 14 Feb
 2016 07:00:33 -0800 (PST)
X-Received: by 10.129.58.16 with SMTP id h16mr11150780ywa.56.1455462033969;
        Sun, 14 Feb 2016 07:00:33 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pa0-x244.google.com (mail-pa0-x244.google.com. [2607:f8b0:400e:c03::244])
        by gmr-mx.google.com with ESMTPS id tn7si2418235pac.1.2016.02.14.07.00.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 14 Feb 2016 07:00:33 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) client-ip=2607:f8b0:400e:c03::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x244.google.com with SMTP id gc2so175288pab.3
        for <outreachy-kernel@googlegroups.com>; Sun, 14 Feb 2016 07:00:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=aRwBtD037ecgalrZPVIvrztXOSHivrJGYtJ8l/jIik4=;
        b=iTGKyWCObPDTjvKxa/XPfMQmWBf9h5Ao5nIF8UgFmsEvE09F64jzsWWXMQDmXiI/sx
         VLia23QZKpuTXZtR+pUN4D1zQMFz4f6VK8Vb09QDPUoDT3vENpV6zyejzNAwWNeRwLv+
         np0+y0GfcC9em76wEMQN/tKtQAPH6Hr15cRs2woTPjsaeAyr185s+G9CLHPawmob1uEz
         bFgqEZmaBeeWWCfX7TnT2CrsmjIg9dMuLLPJZ5zIFPdKt/DSTOurjcc+f9XfIfpLEMjn
         hqni7KXNob+E3cTYo5WNH7pQ81bOjlRI8GRVIgOlaFzLmYHLNroABiuEQ4UdWLRT7otI
         Bvmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=aRwBtD037ecgalrZPVIvrztXOSHivrJGYtJ8l/jIik4=;
        b=FmcmHftpgwxtEPL3CO5fnbG7R7vYv1LizKWr3x/n6KU6DfJPL3W2UDhTn5/tzDN8f+
         yVSMJ1Epb6Ub+MuYhdz0Q40aH05MD7/4z4oNrjR62rjyEHdUdGbw+Cl5EgYu6gFZwd6X
         T7TMwjcZMGSkHv/HBUfqHOBfGzBP3fZZ8LVyBaKG0YYR7XNQ7Pk/566R6rZ6sn/hckJE
         n2CFfRnYfEAnzgB9kZv9VVrHT2C8Pvk4q8Tp3tFu8hfD93L/HH5tT6hnFoRjMYKDfhcl
         X7KVhj8zxegrHLNycbacnOEcfAChinxj1N7PJyhO1qkf1Df1E38hqSdAw3kOWcRXep1W
         gXXg==
X-Gm-Message-State: AG10YOQu1Nmhp2odC5eientM248rhOStfAL5uwA9OHP+nKLIi3K8HQCKbfzyLdSoabDjJQ==
X-Received: by 10.66.62.132 with SMTP id y4mr16415395par.55.1455462033832;
        Sun, 14 Feb 2016 07:00:33 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([223.176.137.116])
        by smtp.gmail.com with ESMTPSA id n84sm32153072pfa.45.2016.02.14.07.00.30
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sun, 14 Feb 2016 07:00:33 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Sun, 14 Feb 2016 20:30:25 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH 0/2] Staging: rtl8188eu: core: Remove NULL test before vfree
Date: Sun, 14 Feb 2016 20:30:21 +0530
Message-Id: <cover.1455461124.git.bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

The function vfree test whether the argument is NULL and return
immediately. SO NULL test is not needed before vfree.

Bhumika Goyal (2):
  Staging: rtl8188eu: core: Remove NULL test before vfree
  Staging: rtl8188eu: core: Remove NULL test before vfree

 drivers/staging/rtl8188eu/core/rtw_mlme.c | 3 +--
 drivers/staging/rtl8188eu/core/rtw_xmit.c | 6 ++----
 2 files changed, 3 insertions(+), 6 deletions(-)

-- 
1.9.1


