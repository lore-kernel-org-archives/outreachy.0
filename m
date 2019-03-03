X-GM-THRID: 6663286701018841088
X-Received: by 2002:a1f:f8c1:: with SMTP id w184mr9009604vkh.13.1551600245038;
        Sun, 03 Mar 2019 00:04:05 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9f:2743:: with SMTP id a61ls431218uaa.0.gmail; Sun, 03 Mar
 2019 00:04:04 -0800 (PST)
X-Google-Smtp-Source: APXvYqzQpsWf+jCNRdJUro2G14akiC28pTVevd3N6oO/Zpy/VT57nv0tJrQzgG23SkJ28YA18oA5
X-Received: by 2002:ab0:b17:: with SMTP id b23mr8815202uak.10.1551600244270;
        Sun, 03 Mar 2019 00:04:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551600244; cv=none;
        d=google.com; s=arc-20160816;
        b=hGov5AOJPE8aMbSYQTDHDVcayYp1KNEMc1+1QCmDEvGyGTnlVgWe3SEUyIgP9xU0Tm
         HeoXaS0Cey4Tiyr4DKf58gQZXM6haobprL6/K7oHsunZjTjUtcB9XRY7ci6sNIooxsPj
         cE3jvvpskvdFX0vDbEj1XfKX1BuE6WlekbhOpJHOEsgVMBMM/vbK9uadKFRPoZqcncDX
         8XfC/0mTu84Tj+XnlZdsUWTlMN5KCS8yKPgdCawYkMjOjWRxRdDf5lEx1XwN4HQDU+MD
         UZgplh6oeFcTY8eARYxxLExRLMP+UHI3LzJYAVrIeNAnZxwSgvuHKmNPb+gcmU6fpM7F
         TW5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=3iiTyFxk8D9mZWddP58HkTPFRKqnYY7V+rrzKYe2Td4=;
        b=ND8ahZPWEAo3ulfcJTNaCBa83sbk109N6WWSM3T2SyMj8MqLBwWxMtjw9HHzAHMA2b
         FeRiRQRVqznNG+0W9yUF0g7LP6ZixCgu6TBgHLPfqN3u4YyiAigPCGiEQIPChHhNt50R
         sN0dgzN7sdpzXx1czU3ZndGAHO0j9BW4kE/DV9Dme+RStGilpwif50mQ3mBtkocKTbKq
         1o/TFgU9ryJGQtm3k/RwVvpZkk+iTOBbaZaNnFRoGW/edh0pU4b6RuaWmO2cDZrNbt61
         2/e144X1WfeUtD8uFXWALLHVJn2GsPzHn7ANb0GLd45puOzEqY/UQrZmIzNbG4R/KKTl
         HyZA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="r/nuTB00";
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id s73si182282vkd.1.2019.03.03.00.04.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 03 Mar 2019 00:04:04 -0800 (PST)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="r/nuTB00";
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x641.google.com with SMTP id q3so1032104pll.4
        for <outreachy-kernel@googlegroups.com>; Sun, 03 Mar 2019 00:04:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=3iiTyFxk8D9mZWddP58HkTPFRKqnYY7V+rrzKYe2Td4=;
        b=r/nuTB006aY4MMEcapsfjLpz7/OC56wMLwjTT2zbR3NhDlwiqsCu5gbydYCYjzNyDo
         NTci5qeZf9Prlk6PJasJROFNZjtx85cVrbl5KDLVG+ZbwgRLZqGLS3Hp2Ywh6WEGaK6p
         KldUS/c5YRQrVyb73sf9BU+jsPwH937wFVVQGkjXJNgYVBQb4qZIwAws3zMoUY21m30o
         G87E7WWisED4ytSDN7U9wQUc4uenbSx0C+QjVAcT8HYvhkReuRG2nn1BsSNQnk2FytHa
         PkvPsWpZlJuYU7C7R9NN7+16dbr2SU0N2q7KuUxxTDmoOAnAWoIe8M/G4opfpCh1ftIv
         lajA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=3iiTyFxk8D9mZWddP58HkTPFRKqnYY7V+rrzKYe2Td4=;
        b=UPrypiRz4hy3zs3HzmqPlZaT5HmkZ2416KSRxxd69Je8k5m+FJ0fHsDp6/RG9i2+Cv
         9KBtnQdJDCD+zSLUEsvQ2Q0beWSVfOggXd4B9E6b40qkULB9zr5HFkHGk+LEsrX4KqqM
         MziCbGaXu9L76+VT6CqOSZ2XP89ClanS9eFKDjwzGjIXlmNCxK/lNeI4p3ajsrJaNNDE
         TyZxT1NxQd89a3vGHH5Kd+E3YlOSZdrOEvSLdTNbjtF4GO9uzKiT6Tfvkf+ULagHNa/I
         shLlkx5YiXhOeBAM/CGxioLUfQXPzWVwRer9mcoLUzcd5RvCUtiJA0pINtgkZ3mdtV02
         bJow==
X-Gm-Message-State: APjAAAUGcYWsIChN2W53lck1Vskrb70HHh1Gz91bVjVKAJHAN/Ygv24z
	/DLbNFGR0esl97atfoQr/DU=
X-Received: by 2002:a17:902:bd82:: with SMTP id q2mr14348888pls.65.1551600243538;
        Sun, 03 Mar 2019 00:04:03 -0800 (PST)
Return-Path: <himadri18.07@gmail.com>
Received: from localhost.localdomain (mx.daiict.ac.in. [220.225.53.35])
        by smtp.googlemail.com with ESMTPSA id j20sm4005118pfh.141.2019.03.03.00.04.00
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 03 Mar 2019 00:04:02 -0800 (PST)
From: Himadri Pandya <himadri18.07@gmail.com>
To: Larry.Finger@lwfinger.net,
	florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.com,
	julia.lawall@lip6.fr
Cc: outreachy-kernel@googlegroups.com,
	Himadri Pandya <himadri18.07@gmail.com>
Subject: [PATCH v2 0/3] fix checkpatch warning: Avoid CamelCase
Date: Sun,  3 Mar 2019 13:33:41 +0530
Message-Id: <20190303080344.83233-1-himadri18.07@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190301104842.75482-1-himadri18.07@gmail.com>
References: <20190301104842.75482-1-himadri18.07@gmail.com>

This patchset renames following three variables of struct _adapter to
fix checkpatch warning: Avoid CamelCase
 - bDriverStopped -> driver_stopped
 - bSurpriseRemoved -> surprise_removed
 - bSuspended -> suspended

v2:
 - Change types of these variable to bool as they are used as boolean

Himadri Pandya (3):
  arch: powerpc/kexec: Add missing of_node-put() in
    default_machine_kexec_prepare()
  arch: powerpc/hlwd-pic: Add missing of_node-put() in hlwd_pic_probe()
  arch: powerpc: add missing of_node_put for device_node "cc"

 arch/powerpc/kernel/machine_kexec_64.c        | 4 +++-
 arch/powerpc/platforms/embedded6xx/hlwd-pic.c | 3 ++-
 arch/powerpc/platforms/powermac/smp.c         | 8 ++++----
 3 files changed, 9 insertions(+), 6 deletions(-)

-- 
2.17.1


