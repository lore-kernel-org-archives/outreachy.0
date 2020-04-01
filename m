X-GM-THRID: 6810562968301862912
X-Received: by 2002:a05:6102:116d:: with SMTP id k13mr13063985vsg.79.1585707759346;
        Tue, 31 Mar 2020 19:22:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1f:9acd:: with SMTP id c196ls1407321vke.6.gmail; Tue, 31
 Mar 2020 19:22:38 -0700 (PDT)
X-Google-Smtp-Source: APiQypLZiRGta+UiJRudAODc2Pl3JCrj0Bb4Cndh+EILh8xOY3No0T4B13Y86e556J8DQ3bB7w12
X-Received: by 2002:a1f:abcc:: with SMTP id u195mr14081507vke.11.1585707758167;
        Tue, 31 Mar 2020 19:22:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585707758; cv=none;
        d=google.com; s=arc-20160816;
        b=HgUiWln/78RGd67u1oSfrz8MWRwp4frAWh6CApBRMRGhQVT6U+cdU+gKsrATtyhDXQ
         /StHCV4Nhw0OIEpTPKGCUkXQpr30HT/cyhjLIR3n3LHr81Rapa9VpRZqPrLPHO8un9Ao
         ED7g6dJm3KQlKVxO9EU5xDAm8Uf79cVymOv4J/P24SniivXS67UeIKY2ctON6yhm7xOk
         Q+8KkrHZEIQ2jM7FE12J0dg5tWhn2USHp2+k6PX2KyDH7z7B+y0azzp/Mj97AyOUhAth
         SmR25q0ZDUexZZ2Z/3DYBjZu3fbK+lFPRNWjs1BjpMWpcGj4m1OwrjToWXiT5CsOGh/o
         OTEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=R/X/wEl8h3OowP896j+leuNgUHaF3X1AQRRozTBgzBY=;
        b=H52Ca9e4jzT5TkOUexXVLmDrQ/mL37GwG3fBgQfIcd0RIP4NsgAv+/K+RMBh0+LjyF
         q37yuVzsjEGQ9wJfKlGxxHefAksXzFAOjlw0YoZ5CWC0skcwS/LDzCAu67Rvs81ug3c/
         LxssjumFKaXEVx9lgSxeiG+YowOfhMhDvryaF2uvqASDFtuycKyyd1ZBPhg5+Z2tvoh6
         W8QIM4ZrCvzbS+8tc5FnebS0/I1po+e9iE3OYBQKvX+OGsfKxYDahjy81zWjFniQJyI2
         vWuVf2KOAQalDXQf27rKapmNbA/Al1PXS+fAcOzIV3QCEBYHdxsveWZ4vFHPJp7nUceL
         Ml4Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="b/xxexFK";
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::52b as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <briana.oursler@gmail.com>
Received: from mail-pg1-x52b.google.com (mail-pg1-x52b.google.com. [2607:f8b0:4864:20::52b])
        by gmr-mx.google.com with ESMTPS id 205si56376vkw.2.2020.03.31.19.22.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 Mar 2020 19:22:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::52b as permitted sender) client-ip=2607:f8b0:4864:20::52b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="b/xxexFK";
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::52b as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x52b.google.com with SMTP id 142so11334672pgf.11
        for <outreachy-kernel@googlegroups.com>; Tue, 31 Mar 2020 19:22:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=R/X/wEl8h3OowP896j+leuNgUHaF3X1AQRRozTBgzBY=;
        b=b/xxexFKvgtLlFRiX8JT/9abdNRPYAhvpUEgP/DqrZiiQPlp6T9a2miD9YQ8pPEXMa
         IERIkcl968CbJoTQiSWSPAzLXeYWlFUpY1fj8N26jGDnkfakmqP1aW9A9/4ks/1ESEwn
         BQGPPHWb2c0eqM3dCNp26XC104oEpw9cKJvhyAU1bfWKaE0PyFeuuAcfZuHt3o6F9KB9
         HqF8oui+bNVnnooHAi5THnfxj1IxmsQPgg97i/YqYQTF92PfiUeI/lR4AT7ofcI+b2kz
         KYLAjbKCdjfsGt1Fw53cnScHBNcbolSVVQWQq5C3l4HDNlUmKLZ1hpC3vWcNCKxS17vL
         pGyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=R/X/wEl8h3OowP896j+leuNgUHaF3X1AQRRozTBgzBY=;
        b=Bd3U5kCOkjqw2+VPyBvl9f7fvME+Y9vNp3p+jLYSSNrrc8RMgq2Gioicpmq5YtJcEV
         qVt0ECGbtGnN1lAW3NsQTOHr5rE5RdSrmD4mVhfhrxFCitbp1RtOGxsCa4dppKM6ubH7
         OncFigui4B+G0DbN0kY2nZqDtVAQd4XmUT9XpqXPyXWseH8ybMWZCixUiTr19qpZPSEn
         Z2eFUeQkvldDt86UnLk+dczoqUbIUcXxlq4oPpxSfW9N6jF1TSlWjz8j7G1Tzwdk7CJN
         X0t6Y2hU5WrojB5EdsjHiY8gQVWUzI0I/UmCmprXzmmwIZ5lsKxPDvfUTKW+V6ruFXOe
         NR4g==
X-Gm-Message-State: ANhLgQ0AOeGYAZtWraExhroVk5zTlUG8XElJZM/yMUkp/46rnTqlcRGQ
	68080KsR/ofEg+H8BZFc/N4opmihRSibew==
X-Received: by 2002:a65:5905:: with SMTP id f5mr19381236pgu.87.1585707757075;
        Tue, 31 Mar 2020 19:22:37 -0700 (PDT)
Return-Path: <briana.oursler@gmail.com>
Received: from nebula.hsd1.or.comcast.net ([2601:1c0:5400:122:2697:be21:1d90:fb7a])
        by smtp.gmail.com with ESMTPSA id m2sm336543pjl.21.2020.03.31.19.22.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 31 Mar 2020 19:22:36 -0700 (PDT)
From: Briana Oursler <briana.oursler@gmail.com>
To: sbrivio@redhat.com,
	gregkh@linuxfoundation.org,
	julia.lawall@inria.fr,
	forest@alittletooquiet.net,
	outreachy-kernel@googlegroups.com
Cc: Briana Oursler <briana.oursler@gmail.com>
Subject: [Patch v3 0/3] Staging: vt6655: Remove dead functions.
Date: Tue, 31 Mar 2020 19:22:31 -0700
Message-Id: <cover.1585707212.git.briana.oursler@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This patchset removes functions that are not called in the driver but
are prototyped in card.h. Each commit limits its scope to one function
definition and related documentation in code.

Functions were checked for calls using the Elixir Cross Referencer and
git grep.

Per Stefano Brivio's recommendation, output of bloatometer script after
changes:

add/remove: 0/3 grow/shrink: 0/0 up/down: 0/-532 (-532)
Function                                     old     new   delta
CARDbSoftwareReset                            10       -     -10
CARDvSetLoopbackMode                          14       -     -14
CARDbRadioPowerOn                            508       -    -508
Total: Before=36131, After=35599, chg -1.47%

Briana Oursler (3):
  Staging: vt6655: Remove CARDbSoftwareReset definition.
  Staging: vt6655: Remove CARDvSetLoopbackMode definition.
  Staging: vt6655: Remove CARDbRadioPowerOn definition.

Changes in v3:
	- Update language in patch series name at suggestions from
	  Stefano Brivio and Julia Lawall. 
	- Remove references to the changelog in the cover letter. It is
	  unrelated to this series.

Changes in v2:
	- Add output of bloatometer.
	- Change language from "uncalled function" to "function...that
	  is never called" in each patch in the series. 

 drivers/staging/vt6655/card.c | 105 ----------------------------------
 drivers/staging/vt6655/card.h |   4 --
 2 files changed, 109 deletions(-)

-- 
2.24.1


