X-GM-THRID: 6251883453427482624
X-Received: by 10.66.249.41 with SMTP id yr9mr17549032pac.37.1455630048627;
        Tue, 16 Feb 2016 05:40:48 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.6.101 with SMTP id 98ls1806726iog.31.gmail; Tue, 16 Feb
 2016 05:40:48 -0800 (PST)
X-Received: by 10.50.13.69 with SMTP id f5mr17671942igc.7.1455630048281;
        Tue, 16 Feb 2016 05:40:48 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pa0-x22b.google.com (mail-pa0-x22b.google.com. [2607:f8b0:400e:c03::22b])
        by gmr-mx.google.com with ESMTPS id ff2si3510826pad.2.2016.02.16.05.40.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Feb 2016 05:40:48 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) client-ip=2607:f8b0:400e:c03::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22b.google.com with SMTP id ho8so105075698pac.2
        for <outreachy-kernel@googlegroups.com>; Tue, 16 Feb 2016 05:40:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=xqZvZm8W+qzM0lufXWGOxoKV/PqJOml8A9Z9go+B37M=;
        b=vw/sfRZNsXFyOA5QN7PcNwiv9y3HUB0P5MwNIAoRu2ThEJbVWvHYNYDzyJLQpoHCQa
         0sySmLF5Bniec/yd2MSlRI0RDAklT1uBgnG2KHP1AlTTdjD2N/g7EAzWnVr67iETDgQR
         KLaScTbalIiQp5LlVfVT7xGiND9ZHh6I/K50JOduNEpZ1AGZr6NAVZxPp8CFC5qGgM4R
         o1PvahrVoNoP5fcH3UCH1Eh3Iu4RdiajpffgFYs0uv9+VxK/WYtaOlMJLLT6lTnDaRG/
         tEtQKFd4BqcLBgkBV/cLwyKMzHGdH/o2gBjNNxAr3cg7BvZBpjKtBNzEdi+nI0/16Ol2
         /f1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=xqZvZm8W+qzM0lufXWGOxoKV/PqJOml8A9Z9go+B37M=;
        b=Je+YhyRn1lpYZIYYbeepPO5Yj92/8FQ/ESdUYJs+9HHMAwP7AfehAjx5BAPypdHEqf
         3tED+FprGULSVpCkeFQtaO7z6Ej2fgjVIsbqXMj4hUgkBn9Nw0JAncdtzM2VhkoygTub
         34U0MuFKQUQwZ/Kf4m5J+Qmg2WAau/7WeSTE+8/hLLtVaTRlqDlOLq7W5AAaLdcRfIqU
         XkTZs+ciH86e21qJZODFdxnLgKh2DAd2PiSKFsYeRJfIJU2/G1TFMYN62EF4QanluTW9
         uILFQ0pWJrDnJRJ/mg/nO25WvL/HgUXN469DA4Golb0fI7DANeYth7fkXQL45pMUA9BT
         26+g==
X-Gm-Message-State: AG10YOS8AVlp8Xx81PRmIhWyrB2iT9xQE8nnsQBtRCrgOeYr+5BSjp+0G72biXL/a0459g==
X-Received: by 10.66.141.11 with SMTP id rk11mr31379195pab.75.1455630048156;
        Tue, 16 Feb 2016 05:40:48 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([106.215.154.9])
        by smtp.gmail.com with ESMTPSA id lq10sm46112800pab.36.2016.02.16.05.40.43
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Tue, 16 Feb 2016 05:40:47 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Tue, 16 Feb 2016 19:10:37 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH 0/4] Staging: wlan-ng: Remove unused functions and prototypes
Date: Tue, 16 Feb 2016 19:10:31 +0530
Message-Id: <cover.1455629651.git.bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

The functions hfa384x_drvr_getconfig_async and hfa384x_drvr_commtallies are defined but they are not used anywhere in kernel so remove them. Also remove their prototypes from the header file.

Bhumika Goyal (4):
  Staging: wlan-ng: hfa384x_usb.c: Remove unused function
  Staging: wlan-ng: hfa384x.h: Remove function prototype
  Staging: wlan-ng: Remove function hfa384x_drvr_getconfig_async
  Staging: wlan-ng: Remove  prototype for hfa384x_drvr_getconfig_async

 drivers/staging/wlan-ng/hfa384x.h     |  5 ---
 drivers/staging/wlan-ng/hfa384x_usb.c | 66 -----------------------------------
 2 files changed, 71 deletions(-)

-- 
1.9.1


