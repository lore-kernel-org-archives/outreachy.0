X-GM-THRID: 6675288558686699520
X-Received: by 2002:aca:e44f:: with SMTP id b76mr8366460oih.31.1554211731595;
        Tue, 02 Apr 2019 06:28:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:6406:: with SMTP id h6ls160887otl.14.gmail; Tue, 02 Apr
 2019 06:28:50 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz0m0vWXWg/FN872YKyNwEbL36ntEkEq6R/1KUxVe0OhCIQGMeQlmKK2JEiDp09sFNJOiFA
X-Received: by 2002:a9d:aea:: with SMTP id 97mr7893370otq.71.1554211730745;
        Tue, 02 Apr 2019 06:28:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554211730; cv=none;
        d=google.com; s=arc-20160816;
        b=ag+2cXdOQkD4teHY79YWPjs/pZYElug/3wyrM8GfNruZxY3h95r0S0UHTcpZqnXhAc
         h9cvNzgaYvoKDTC4rin/incyYYa0QYR14fNpTIF1hE8R/AGMlpTfZtIe2oJ25anmIv0F
         R8ryFf5YoC6Vm2tq7Vdp4hD4MBhyjp7mdGfOeqH5OJwgDScFKzC+E2mVI/UMYIW/eJ1g
         MhWAERfkhoAxVS0FUtgtgt08NN6qxDqkI8IEn2ie1/QSzdVGQoFKl02GbXZ5k9k7y0+f
         1b2NGxggHpUcpLtUPUGL/7meM2YN/Gew1ZinVf6Cju9Ji1ej8K1pR8U5p4GWQFoIL8mY
         eh3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=l3jj9f06C3IrRKlpcJFD1n4dHBVGSZRqKWmtcB9DtWU=;
        b=xmQyoUjX26GzTFQpXhoZvjpdD//u2Dap6qbFtI57XUdlNA6MMQnpavBpefpvjQFp9t
         Qy6ZmKXLyCO7YhAP7UFO+IyTmP0wavUrQ22FY65xO6uaHl2eg/3yvXV2sl6jbZwe5Uao
         9CkEbGUm21V7Q3W6Kns/M5LmwM5rsexHZ/aV+g/qupSL/kiYFcluqqXdJ3x+x5lHuUo3
         q8uMRt/iBn5JSES+WdtGiNj9f2DEhkCdyRz59zxI1MyQt5Bu0CgfAHq28JYXGvsGAa7C
         sBUZtQHWIo/k9SqUxwFeSeP/xtGy4RFJ6dHK7KTQM8u0zhl8FbU5vbBNfHOy4zDo7mcE
         0pyg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Uk7OHqtm;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id c13si559714oto.3.2019.04.02.06.28.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Apr 2019 06:28:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Uk7OHqtm;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x441.google.com with SMTP id c8so6384488pfd.10
        for <outreachy-kernel@googlegroups.com>; Tue, 02 Apr 2019 06:28:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=l3jj9f06C3IrRKlpcJFD1n4dHBVGSZRqKWmtcB9DtWU=;
        b=Uk7OHqtmyPx4g0LRPNn58rTGahcswF7E6Du6frcKLnkMmpbaYSLeTEu6PJy7FyFrem
         5g18FYFaMFahQzt3N1xTR9FpUyvkx//stmCinn2klcdF1+F7Ln6eOnQNWEizMOXtlZuE
         0C2rZAYp/PHwoBqOuCO8W8q9l0RuMUi1ZXSZsCZUVDtvC9vedHqcEfzMXG5/VVjwoKva
         91FQ5IqvTQ4t8lZqcMdqRBRY7oKjgyNaBKL2+LgSBBw4ghvb80EOdEsd2s7w5GAuD+rJ
         G5NNf5AbNeKKftBOTGoKdtuxOzzaPE4Kb3v6gFrNvpKeyZGKd1CQoGO9un7fwI73aNuj
         zgJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=l3jj9f06C3IrRKlpcJFD1n4dHBVGSZRqKWmtcB9DtWU=;
        b=ts3Zo8xse8CDAY4EH3SSpXi671BH5fWqdvYFIuwaI8CEZfEUsEJwasRZncq+l5Plkm
         Q04Nn5xf6sjq2hDn74IdOzuacqCBp0owNh0scFFtpPpOzIfuDs8+5odZycL8YPIUJjVf
         D24jPGTnVvy8LRI6IG/kFDTIXRcDgYxFSndwiNEJxgIuew8nVlTgbgRiko9I9v4UF25O
         6zoUvAT/EsUZMZMH+wMmsky5PXlBegHzyk44Tbs6ddkFCFFZ5ouVz9VJDXy0NwyXCPUn
         oKts+8AtIvzX2pY/+Nm6zTBEuaHQbCtyVe+gAA75MPMuIkICPpQr2N+GuY+w0waOEiUA
         V3qQ==
X-Gm-Message-State: APjAAAVl+6nFpK7uDyXZuydnii79OPNGuQSjB4grC3cNg7ZS6FP7hr9v
	qjQc6+m89gSob8GI7aM+1xrzv0vI
X-Received: by 2002:a63:170d:: with SMTP id x13mr63589488pgl.169.1554211729654;
        Tue, 02 Apr 2019 06:28:49 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([49.35.213.122])
        by smtp.gmail.com with ESMTPSA id v20sm18768706pfn.116.2019.04.02.06.28.46
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 02 Apr 2019 06:28:48 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [Outreachy kernel] [PATCH 0/3]  staging: rtl8192u: ieee80211: Replace bit shifting with BIT macro
Date: Tue,  2 Apr 2019 18:58:31 +0530
Message-Id: <cover.1554211049.git.payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4

Challenge suggested by coccinelle.
Prefer using BIT and replace bit shifting with the BIT(x) macro.

Payal Kshirsagar (3):
  staging: rtl8192u: ieee80211: ieee80211_rx.c: Replace bit shifting
    with BIT macro
  staging: rtl8192u: ieee80211: ieee80211_crypt_ccmp.c: Replace bit
    shifting with BIT macro
  staging: rtl8192u: ieee80211: ieee80211_crypt_tkip.c: Replace bit
    shifting with BIT macro

 .../rtl8192u/ieee80211/ieee80211_crypt_ccmp.c      |  4 +--
 .../rtl8192u/ieee80211/ieee80211_crypt_tkip.c      |  4 +--
 drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c  | 32 +++++++++++-----------
 3 files changed, 20 insertions(+), 20 deletions(-)

-- 
2.7.4


