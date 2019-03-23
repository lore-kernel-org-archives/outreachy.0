X-GM-THRID: 6671498191703113728
X-Received: by 2002:a62:fb04:: with SMTP id x4mr13475734pfm.83.1553329218836;
        Sat, 23 Mar 2019 01:20:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:5788:: with SMTP id i8ls4779574pfj.0.gmail; Sat, 23 Mar
 2019 01:20:18 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyT82pebOUL2ZmHr+4hIbvGe3nNvWPLEYGIiujuMuVzTris7mhlnJZ038WUOCxusNGtaIon
X-Received: by 2002:a62:d2ca:: with SMTP id c193mr13519376pfg.247.1553329218155;
        Sat, 23 Mar 2019 01:20:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553329218; cv=none;
        d=google.com; s=arc-20160816;
        b=dKecpE2qOmBnP4wax6IvXE/MhReQZmm7RzyZ33GKnSqFzqLrpIu8Wv18tUcRicfesZ
         5oIOSIMJ5+4VfKQQb4iqrh3bZOsszrw3Hdy9N2zywJlSq8A3jP2w7nm0mI6oFD4zfKLu
         bCIsCJMAP+M6rf0lrUJnqkZr5/1BdOeW6z3I6mcJowV/Th2swPJBrLQnAh0scwvzJVrm
         t5qPO4M3C3kSX1V9MnCQsCzVgB1avT0tw6SNlaEVMjnOedw9hbdEqhs1llC9GbwpYbpy
         YTnU+fNKM6m3nYZY+hR/y/vvoLR6Aa2cRhWMzx8u06JWLr/+UP/xOcRUlHo+f1EqZrMY
         75OA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=LyCQNMv+mmtbE6NcRAvvgCkLZNm0rp+88Wpq52qYTsk=;
        b=kxxpGeCxnqZ5XE18GvYIttnVcFlHDUrpPlSJRkIcA56o9+N5CeHA9xR9UWAftRuUbq
         WBOSQi2v7FQe2K/+bgaJs1vV/2HAtmlKcmZSJb+gufK/aONJWfD+kmnl5wzcVpM6PYR+
         KnVlQmaNlSAaZ1jhx3jwZ6b8QUTMT/GCkYq3qpyI4dinXLL3lmR1T8BYON2z6/7/yo5K
         tfUdVsSbczH1W4ed+POlaYSWBJ7Tipt7c/Qs+Px6vi5fDO5Q5LnpfiZnxsp74ZUOYD80
         2uerMGf7Z+Vy+VUekEXxYGgWJ9NDYhFQeo2LgeBOaiF789ulmSdQcQ/mqLrveimSqdMX
         LmRA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gZq9D0N0;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::42a as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pf1-x42a.google.com (mail-pf1-x42a.google.com. [2607:f8b0:4864:20::42a])
        by gmr-mx.google.com with ESMTPS id e71si596509pfc.1.2019.03.23.01.20.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Mar 2019 01:20:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::42a as permitted sender) client-ip=2607:f8b0:4864:20::42a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gZq9D0N0;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::42a as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x42a.google.com with SMTP id e24so2204560pfi.12
        for <outreachy-kernel@googlegroups.com>; Sat, 23 Mar 2019 01:20:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=LyCQNMv+mmtbE6NcRAvvgCkLZNm0rp+88Wpq52qYTsk=;
        b=gZq9D0N0yI1C+UfAo6V1KoemIEjtCN3/CT36JSy0a8Bqa35VkCxqAqc0Y2VKCGBc0B
         Q+QVcU7sDn3zE9o7jURCd2/MFnnBmNL3MYyj9uJwIZ/1rVcXQPpqxuJy20mT7DUCPrH6
         pfSiPFmTnv6lq2u94XK6k1EG59fK1xJSctb4EZtdOIhOPbRx0EqIe5/JtZZcSnnH52ZX
         xjHWTxN8tlk+rnOxXOPZOtDNswRO9z34xRheq7SMQT0pWP86da7onnKm/cqvq5TSOCnm
         LCd9tjAQbDpkP7K1ZViPSKVXRBLm5X/oq3ba0dI7aDNzRLE3pZwJfjjjMSX506xzj+AR
         elLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=LyCQNMv+mmtbE6NcRAvvgCkLZNm0rp+88Wpq52qYTsk=;
        b=t5LYWz1oTSK/e0Ca7/bMsSuWr9rle+3CO+fWYnWDyBD19s7yLF3dkcvfGgSH0wmJE5
         mDF6rug5DIW57TWk985Z/jvxsEklgAJJL5G5XcjsrAUk4jpkhmdJk4NAcwFJPsCDTdUY
         vHG9rDQJ2WADn0Nbh69M4Gzhnj2h92AtFlsUokoAtCAygHnOuj0CVU04CNphX1CXihFQ
         MjZKtgymmsVk1LqvVdoKWdzDf2qhOA3/Sah8gEJJJd56AZRwiStjCaaW9K/vV4xUkpBH
         lZhfXkchSFCRYtwD9FbxfAXlsJwE+vHSsygT4qGaCUgrjXIhbwYOz+UStqMKZN9AqjOF
         ApdQ==
X-Gm-Message-State: APjAAAWQ3JZNmvN6ZisT6Cmj9m4/kFFdraMSSnHrSQd+903X7thEVOUu
	HYhfmu8LnsZFXpPJVqH+Xr1kn8ym
X-Received: by 2002:a63:e755:: with SMTP id j21mr10281810pgk.418.1553329217665;
        Sat, 23 Mar 2019 01:20:17 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([157.33.173.66])
        by smtp.gmail.com with ESMTPSA id x23sm11310564pgf.10.2019.03.23.01.20.14
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 23 Mar 2019 01:20:16 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [PATCH 0/5][Outreachy kernel]Fix various style issues of driver rtl8712
Date: Sat, 23 Mar 2019 13:50:03 +0530
Message-Id: <cover.1553328524.git.payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

This patchset does following tasks: 
1)Replace bPowerOn with power_on to avoid camel case issue.
2)Replace bResult with result to avoid camel case issue.
3)Replace bRead with read to avoid camel case issue.
4)Replace bContinual with continual to avoid camel case issue.
5)Adjust code such that lines should not end with a parenthesis

Payal Kshirsagar (5):
  staging: rtl8712: avoid camelcase variable name 'bPowerOn'
  staging: rtl8712: avoid camelcase variable name 'bResult'
  staging: rtl8712: avoid camelcase variable name 'bRead'
  staging: rtl8712: avoid camelcase variable name 'bContinual'
  staging: rtl8712: Lines should not end with a parenthesis

 drivers/staging/rtl8712/rtl8712_efuse.c | 78 ++++++++++++++++-----------------
 1 file changed, 38 insertions(+), 40 deletions(-)

-- 
2.7.4


