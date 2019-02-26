X-GM-THRID: 6661965770833002496
X-Received: by 2002:a1c:10c:: with SMTP id 12mr409359wmb.8.1551203800865;
        Tue, 26 Feb 2019 09:56:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:b458:: with SMTP id v24ls1778768wrd.2.gmail; Tue, 26 Feb
 2019 09:56:40 -0800 (PST)
X-Google-Smtp-Source: AHgI3IY+qw4E95ihMYLoeHhbbPkEiZPy685U1aT8Dg5V4MyKKlmybvvL9fSuKpQ3/JLgoVGGqwNa
X-Received: by 2002:adf:ee01:: with SMTP id y1mr1431865wrn.10.1551203799982;
        Tue, 26 Feb 2019 09:56:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551203799; cv=none;
        d=google.com; s=arc-20160816;
        b=AnQtMESOuqEK64b2V/Dqdkq+cAxM5HkJn0L4Od7FPXAcgqHOxFF0JO24r6eVErhBfW
         zaiLnDK4qVRBqMgxzmzZMDxuZEVr0tFPmhfd1DqLkXhENsA4ndrDJUhIQyeqKSI60xZA
         jD70pkjW/rYJQvBzfVFp6g+YOc8mak31GNLcarRSe0ILbIAHiaGK7/tpRfp6fa7XFsuh
         s8CVdyOtNuuXWMF7adWOMQhh+y03jhHuHWE+xztDEaFoK4WDy2OZAmS+pb7UqxZ4LIlO
         QhI8ZZUF1DTfo+UF2ypejZW5HJ2vlHdt8e1k5i8zJ18Dveke1Q/2mprY683b2ITtZRGm
         lnIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=rpnFV6WtF50WUa189D3g1BarN2CC+XWEEMk2OyvPvqk=;
        b=hnoV7mAKe1/RkjPMOqgsJL7wOTwyteCyFNAz1K1V7m0Y/igvbwcyMWSliyBEhlKXhI
         HWkbHtGhrm4x/2zoEjfpjrcALQ6lHKyUPYkxcls+gN7w11FhrYNJ2y3jEgQ4OKQ/oGMW
         6R6mMEWdwJvLzoCiDbmZT2MAk1aJM27g20VIdqI0ljg1YFf0E3gstR4vg2LsM/7K0w5x
         10Bu/o5XMduk+0lEr895PIo0Uw3YA5Y6CTR9b7o9+8uu40NO6WAI4uRgqywhMMg3VKL6
         wFCl4HOSAZChRgyN7HXKBAeKfziKaP2za4pmXub2xlKFIJNzJZNjyRhGDBT1qwcLdkic
         FxbQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=m5Pb99HX;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id t25si2759wmh.2.2019.02.26.09.56.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Feb 2019 09:56:39 -0800 (PST)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=m5Pb99HX;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x444.google.com with SMTP id l5so14970966wrw.6
        for <outreachy-kernel@googlegroups.com>; Tue, 26 Feb 2019 09:56:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=rpnFV6WtF50WUa189D3g1BarN2CC+XWEEMk2OyvPvqk=;
        b=m5Pb99HXVbnOLCLyDgaOdkgxtgNK3Cj9GU0iY/M6niZO7oTr8t9mpBX7K3lFlKr4yZ
         HIa2pxU71K8fzmsFWlf1Yd6wVP73Tq9QSnIjWKnbuqbpuD3MzQs/oDOTTOGZFyhJibqu
         qhvFn31QhDLr2+I6iSN8d68Uo4nwhp9yjHhLFZHUTjxQ64Qoyy3K4GZCCb49/9G26gPC
         4+jkOpZnxVeXHGOr/kSH8NfnBTEuGkuo+PZlYI28HZiZ51iGUl+1ASXgxafmEa7qrCK9
         6v5GpY4zwJtmLfMFmdmdDzbfjpH+GyuV4xQ6vV3UtmoNThmPO2PGgcS7pXa5tFrAD9AY
         9EhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=rpnFV6WtF50WUa189D3g1BarN2CC+XWEEMk2OyvPvqk=;
        b=L8WcamCKT6zuEqTNr2JIlsadvkbhO0jpm7umxU90vJZF5Ywx7ap70aXRTx5LKXhBt6
         KUit+xWIIDqMorpoiVBxvtxv/+/f8G1i8M8e4oFnfF8zxpwLzDUzn1R/3ru4ohQVhG+X
         zuK8RVIkV/fC18rICN25pmySLbo8DVuvFvZsg7Mv6em7N4noLu2+QVMO8DeVE88NJ3xP
         i2bEiH48eJAtxEV1Lwomc7wZpYxXy594tywqKZNrlrhwgdXAA2mFE3SZA7WvAakRoEG2
         DZFkdkIyULSLp+MUG9cLDWRy6rJ1h0SopQ5NBpILquGYb8n5VUlJv3V+VhMr1/seqbfs
         +Pbg==
X-Gm-Message-State: AHQUAub0T16d4DwxxZMHJHLOtJDeruSOfRQg/ZBtdIwWmE4xiEj5rQtp
	seQ8LPF65PwbFUP3aITZmRFyRNM=
X-Received: by 2002:a05:6000:1142:: with SMTP id d2mr17043255wrx.43.1551203799357;
        Tue, 26 Feb 2019 09:56:39 -0800 (PST)
Return-Path: <jbi.octave@gmail.com>
Received: from ninjatsu.public.libraries.mcc ([91.235.65.22])
        by smtp.gmail.com with ESMTPSA id t69sm155143wmt.16.2019.02.26.09.56.38
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 26 Feb 2019 09:56:38 -0800 (PST)
From: Jules Irenge <jbi.octave@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v3] staging: mt7621-eth: add SPDX GPL-2.0 license identifier
Date: Tue, 26 Feb 2019 17:56:31 +0000
Message-Id: <20190226175631.17161-1-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add SPDX GPL-2.0 license to fix missing SPDX warning
 reported by checkpatch.pl.

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 Changes since v3:
 * Made commit message clearer
 * Added punctuation

 drivers/staging/mt7621-eth/ethtool.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/mt7621-eth/ethtool.h b/drivers/staging/mt7621-eth/ethtool.h
index 40b4cf011660..d0e97ae0d82e 100644
--- a/drivers/staging/mt7621-eth/ethtool.h
+++ b/drivers/staging/mt7621-eth/ethtool.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*   This program is free software; you can redistribute it and/or modify
  *   it under the terms of the GNU General Public License as published by
  *   the Free Software Foundation; version 2 of the License
-- 
2.20.1


