X-GM-THRID: 6395915397521997824
X-Received: by 10.25.234.202 with SMTP id y71mr2747133lfi.2.1489165098757;
        Fri, 10 Mar 2017 08:58:18 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.0.22 with SMTP id 22ls1054427lja.32.gmail; Fri, 10 Mar 2017
 08:58:18 -0800 (PST)
X-Received: by 10.46.84.13 with SMTP id i13mr3344358ljb.2.1489165098145;
        Fri, 10 Mar 2017 08:58:18 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wm0-x243.google.com (mail-wm0-x243.google.com. [2a00:1450:400c:c09::243])
        by gmr-mx.google.com with ESMTPS id n128si224644wmf.2.2017.03.10.08.58.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 08:58:18 -0800 (PST)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) client-ip=2a00:1450:400c:c09::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x243.google.com with SMTP id n11so3219859wma.0
        for <outreachy-kernel@googlegroups.com>; Fri, 10 Mar 2017 08:58:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=fKIxx5nWjK5djusFU8apbc8X4S+tgq7BNcVolc71aF4=;
        b=RCIj40/yaxjQJznKT3VYTZ+frcdEuAiscO4iwkDYjAoQVik/p0MjxJRtti/fjdf0V8
         l1kuOcPoo7H59h87RKBQZxhndBc1w4YSh596JJ1G1FG/4p+oqVcXcs8TngwY1DhPms7H
         dbnvaXu5/VckmoyTl/fBUlWwpD04ZvMCpMomWsxsLcrLaLwbT/G+66Pwzn39XjqtTubb
         yTpUTdGiR70EQeR/i929X2Z1fudhq1kvlGSPM2wbHW+b+iKmKUZZ7HAuY4ULeIgDzYzN
         HyTKVkNl+En7VF4+erf6dvRDThTM11uQsGE7p83kIp+jEwXJxNSsXgNIKYGQq0guRYuL
         RTJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=fKIxx5nWjK5djusFU8apbc8X4S+tgq7BNcVolc71aF4=;
        b=dsstSu8OlQ48/dFtpTcF7kTLT2iA6Tenxa2ASXOBecLRoPaEk8wYISIwLgaKVAIA1S
         uKGVzvPnjoTANT3oZekvMfbTtqLZefUYjjSJi+fIjmUC4Qt7F3hiC5q2IDBl5mpGY//L
         wilJJVhh/KVwq06mmStFGV2ydom24JrRC+f4kjc9QDFVXsEBgaapA2fzW15RLdiVNxzw
         31Qvl8Oafg6h1mMvI13bHmdQ0SehK4WCzWsebO+TaE3tRYsZ5dDffArapM1RmjxI0ttA
         CDBr97D420iNQ8O0aYMNxaKKKhCbeO7RVwO2YHz+GCXXITHFWt+/JMkKADsUIVG7L1md
         alZw==
X-Gm-Message-State: AFeK/H0Vv2LaIs8nOAiwASv1FdamkJA3tly9DtmCyG7HbZQSyT41vYgaGwB0CLNLFfwAYQ==
X-Received: by 10.28.156.195 with SMTP id f186mr3158116wme.40.1489165097839;
        Fri, 10 Mar 2017 08:58:17 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([2a02:2f0b:8130:11ea:9935:36c4:c373:a2cc])
        by smtp.gmail.com with ESMTPSA id o52sm13669227wrb.51.2017.03.10.08.58.16
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 10 Mar 2017 08:58:16 -0800 (PST)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: aditya.shankar@microchip.com,
	ganesh.krishna@microchip.com,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH 0/4] Improve code readability in wilc1000 driver
Date: Fri, 10 Mar 2017 18:58:13 +0200
Message-Id: <20170310165813.3983-1-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3

Fix multiple issues found with checkpath.pl to improve code readability.

Tamara Diaconita (4):
  staging: wilc1000: wilc_wlan_cfg: Rearrange lines
  staging: wilc1000: linux_mon: Rearrange the code
  staging: wilc1000: Align the code
  staging: wilc1000: wilc_wlan_cfg: Delete blank line

 drivers/staging/wilc1000/linux_mon.c     | 27 ++++++++++++++++++---------
 drivers/staging/wilc1000/linux_wlan.c    |  8 ++++----
 drivers/staging/wilc1000/wilc_wlan_cfg.c | 24 ++++++++++++++++--------
 3 files changed, 38 insertions(+), 21 deletions(-)

-- 
Organize the patches that clean up the same driver in a set.

2.9.3


