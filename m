X-GM-THRID: 6524560209013112832
X-Received: by 10.25.150.9 with SMTP id y9mr1225902lfd.7.1519117553101;
        Tue, 20 Feb 2018 01:05:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.190.21 with SMTP id o21ls1023175lff.8.gmail; Tue, 20 Feb
 2018 01:05:51 -0800 (PST)
X-Google-Smtp-Source: AH8x227X/wdsuK5WNLTMOW6mNi8b1dmIiaVYBZF3RmqYOeWHDPWwdyZcz5EcvrqpuspN8E8UjPNo
X-Received: by 10.25.33.67 with SMTP id h64mr1228210lfh.4.1519117551897;
        Tue, 20 Feb 2018 01:05:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519117551; cv=none;
        d=google.com; s=arc-20160816;
        b=L+VDVykq68kS7iwNN8sBgv3MYQr6uZlZplJOfw91YghT2kSvQ3gvoNnNY9MxEuorYy
         tqllwimppC93hbfm2YF3rVQQ6TyqighhQJsP3sMzysxcvRQPKW+vKb5X0hBbUWKcHr2J
         vV5p5Z3GMg4xzZlY8HBQudF/61Xa4dwSWcs+0NsGvc3qxnnMQH449DVbmcib/15ikkZJ
         DM/4jl5rMQws8rtzIUelR5N20yZIZclP75E2SXMCGbJ/BDHe/0PJgt5W87ju3WWWnQh/
         +/Ewe62R0rjV+NM3TC8Ofe/kyG6Zv2PyZgs8iuhMl9UVvs46iB8IGWrkwLVZE18ueycD
         6ETg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=qvkvPD2frnTdQ7tfupXO2mWpYXgvL99l/FFvtQvz3zo=;
        b=YjJvtTFBdBReFEZjU6vIudRU3JAaQRMA3v9OCkmS3QGnQg+/VbBYt7NGm0nsioCoaD
         iCFE57xJfGJJbhaWJa2BE/MOZmSc/dbIGWkmoRjLrfb0rLMO45zFo4Tl5894vOh9ZuOl
         JrjF2/dir3RjYAsWzOFAvMA7hNH3RZ6Kd6qZJmfuw7//N7x/KBnR3eOABC+lD4TIU4U3
         lXxSupxTtFNvGCOFjxITUN+IYTIffZVo2Fy7lp8AZAfuOd4/3O2BCtaj/heo38pdtGpi
         J5nrk5R1JJIm/1q5O7yBuSjrXYAe16Jp4a3SGpWHUSPKB2EcSmB8M3ReiBNYTrKm7hrC
         dG7A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=m4qPmwA0;
       spf=pass (google.com: domain of chenyensu0@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) smtp.mailfrom=chenyensu0@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <chenyensu0@gmail.com>
Received: from mail-wr0-x244.google.com (mail-wr0-x244.google.com. [2a00:1450:400c:c0c::244])
        by gmr-mx.google.com with ESMTPS id z25si25251lfg.5.2018.02.20.01.05.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Feb 2018 01:05:51 -0800 (PST)
Received-SPF: pass (google.com: domain of chenyensu0@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) client-ip=2a00:1450:400c:c0c::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=m4qPmwA0;
       spf=pass (google.com: domain of chenyensu0@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) smtp.mailfrom=chenyensu0@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x244.google.com with SMTP id p104so10877573wrc.12
        for <outreachy-kernel@googlegroups.com>; Tue, 20 Feb 2018 01:05:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=qvkvPD2frnTdQ7tfupXO2mWpYXgvL99l/FFvtQvz3zo=;
        b=m4qPmwA0hTS6FmBaQzujSl6DtWZ/gjDleQCuZUIU8HnTOWPLkTh2i1uyKW7BbkSO9a
         7FYnMJr6KmInU6K6N6wA9OFEuiFUo3bzWXW6kJI57tbMGnmIaptX9RDpDTuvnJKBmN01
         8woa7FTyEi9WzL/iVfANxsmS7uqGfPpx51hJ5qXHjx7cNf1IC7HEtl0+kvazKXv/YPL9
         MXjSIYWFOrB26AO/04orK481gNA7jTehktwJ3KtvF9Upi3Rg/buazHwfptEezqltGEuP
         1fHkEgfdU7BiKpNtlLiR5RAhKa/KkMSn5h/AQr6o19t/PU98ExBWcb5Kx0/ESNWl5jYV
         yqlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=qvkvPD2frnTdQ7tfupXO2mWpYXgvL99l/FFvtQvz3zo=;
        b=b95ouRa/MO7Ev7whhX0cmx2UzFG/mg3jOOENttV6eCyIbkw2mWYjOJZFmXV0tcMXU7
         fb4KEaELmmZh0UihMjivav8zdswEJ9z9uip9WppuBYs8XdgIvszf2fFTnv9heDPtLVcQ
         01rR4Uxe51O3qu267BBXYgBpAf2YpOagLORYbql4mIIWXhOJThiMYaRY6fAVsiqBEk1Z
         sR1p3Jhmf1bQ9uqZTsiRp8W5ijvBqklFjtDZiGW3RkkVld0zMQNGr7QLN4xgqB0Qt97+
         Kixwmk3i2ZfBdTG7JLdPtBjv2thLUWy80YJKCnkTHPfnDd56v3h2i/i8Zn8FgCtiTKsq
         vdfw==
X-Gm-Message-State: APf1xPCkAlD4+mlJCBSbi/xBHwQB5MfAMzSC0TkId0B7p+HJzV2jU27V
	8HSPrnAU+Pd/Q2YTI9SYYpudCwiRUnI=
X-Received: by 10.223.187.199 with SMTP id z7mr7070582wrg.58.1519117550971;
        Tue, 20 Feb 2018 01:05:50 -0800 (PST)
Return-Path: <chenyensu0@gmail.com>
Received: from outreachy-kernel.wifirst.net (eth-west-pareq2-46-193-1-181.wb.wifirst.net. [46.193.1.181])
        by smtp.googlemail.com with ESMTPSA id 137sm18602276wml.3.2018.02.20.01.05.49
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 20 Feb 2018 01:05:49 -0800 (PST)
From: Eisha Chen-yen-su <chenyensu0@gmail.com>
To: outreachy-kernel@googlegroups.com,
	gregkh@linuxfoundation.org
Cc: abbotti@mev.co.uk,
	hsweeten@visionengravers.com,
	Eisha Chen-yen-su <chenyensu0@gmail.com>
Subject: [PATCH 0/2] Cleanup staging comedi drivers
Date: Tue, 20 Feb 2018 10:05:23 +0100
Message-Id: <20180220090525.13045-1-chenyensu0@gmail.com>
X-Mailer: git-send-email 2.14.3

Do some cleanup in order to improve robustness and
remove a useless call found in the process. Problem
found with checkpatch.

Eisha Chen-yen-su (2):
  staging: comedi: Remove a "tracing" call
  staging: comedi: Use '"%s:", __func__' instead of function name

 drivers/staging/comedi/drivers/jr3_pci.c         | 1 -
 drivers/staging/comedi/drivers/ni_mio_common.c   | 8 +++++---
 drivers/staging/comedi/drivers/quatech_daqp_cs.c | 2 +-
 3 files changed, 6 insertions(+), 5 deletions(-)

--
2.14.3

