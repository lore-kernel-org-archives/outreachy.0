X-GM-THRID: 6401819323480932352
X-Received: by 10.99.101.65 with SMTP id z62mr8035229pgb.153.1490643966593;
        Mon, 27 Mar 2017 12:46:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.46.149 with SMTP id w21ls3514178ota.16.gmail; Mon, 27 Mar
 2017 12:46:06 -0700 (PDT)
X-Received: by 10.237.53.146 with SMTP id c18mr7597491qte.64.1490643966201;
        Mon, 27 Mar 2017 12:46:06 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id g82si241686pfb.5.2017.03.27.12.46.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Mar 2017 12:46:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id 79so15432433pgf.0
        for <outreachy-kernel@googlegroups.com>; Mon, 27 Mar 2017 12:46:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=Q5bd6vf2mMdW2vSFUApkROgXN/pBWJUOiMmJa7F6IzA=;
        b=eGBRynvATZvm478bssiFb5+lhgnkgo/PUO1LYixTIAaXzuimh8R7pStvVl/VYh89Uf
         sS6OTPvwFYkzpqo219LzcdCC4hVFbyPd39T+MjhvxjwaZZ0U7EN/ZpFvhwr0Fc6SGddk
         M8UktXFEib1ua9JTC6dYaLOhKCCCThtgxFf/RAbEXCC6miXKcxabrjnO1zPoCGlKiqxc
         Gwr8Ek8VI2kNRhsvLyUVU7ocFyMNSOa5ACszPwQK3YxC9Rdou1I3mZoy23TSHVabi5mu
         UIvn9cbud9xS+3Vyw5Vu6OI/+FxBirSEvr6q2Ofc9BN6yWSRerlx2pN7r4+RPPefLW4G
         jupQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Q5bd6vf2mMdW2vSFUApkROgXN/pBWJUOiMmJa7F6IzA=;
        b=FXm8d9CnuqJ18U2UtAIJ7Lce4Xtk83KGFke3r0wTu9oEWTe6/jTNlK0fyvffu29a4N
         R2gxwt2ElwrZ39O7F1VCRS1wlYrphfqukISfFfn9CGIVScxT+nUXeFWaZLidrY2Z1t5e
         wf69C/K05u9Vhl/KMX+L0V4pMhaZV3cTL486c8gO+VyMxKNKUy+vS6ob7zea22b1BXFy
         OAeDsqRoqKJsmNgX5y+84rkB7DhSz2BeuPKFqjf1Ni2ddxrpw0co/PjuNNtp4K3TqaGQ
         We0UjNMUNrQbfMaNiisamVW0RtMAFglA+0vcXN+UiLZy0bIEr86a8SPzTOfCh0G7tg8e
         b4PA==
X-Gm-Message-State: AFeK/H35nUHqznaDO8VMl3BuJI1Ca8qWU6SCR3PRopiILmvmXJa2SDK1ybMsKWPiIGslAA==
X-Received: by 10.99.55.7 with SMTP id e7mr11727719pga.175.1490643965952;
        Mon, 27 Mar 2017 12:46:05 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([47.9.128.122])
        by smtp.googlemail.com with ESMTPSA id x15sm2755339pgc.16.2017.03.27.12.45.58
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 27 Mar 2017 12:46:04 -0700 (PDT)
From: Gargi Sharma <gs051095@gmail.com>
To: mawilcox@microsoft.com
Cc: outreachy-kernel@googlegroups.com,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH v2 0/3] Fix multiple checkpatch issues
Date: Tue, 28 Mar 2017 01:15:38 +0530
Message-Id: <cover.1490643620.git.gs051095@gmail.com>
X-Mailer: git-send-email 2.7.4

This patchset fixes multiple checkpatch issues
in pid_namespace.c file.

---
Changes in v2:
        Patch 1
        - Fix splitting of line for better readablilty.


Gargi Sharma (3):
  kernel: pid_namespace: Fix line over 80 characters
  kernel: pid_namespace: Do not initialise statics to 0
  kernel: pid_namespace: Remove return statement from void function

 kernel/pid_namespace.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)
-- 
2.7.4


