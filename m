X-GM-THRID: 6661151851808817152
X-Received: by 2002:a2e:9194:: with SMTP id f20mr481033ljg.21.1550920273760;
        Sat, 23 Feb 2019 03:11:13 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:5b42:: with SMTP id p63ls1038830ljb.0.gmail; Sat, 23 Feb
 2019 03:11:12 -0800 (PST)
X-Google-Smtp-Source: AHgI3Ia4b6ILdteM24NnWvyQg6WxnyCz1uLkgtXE4RPwMzvDs58ffUwkphRRNr3fm8w780zVZ4CC
X-Received: by 2002:a2e:85cd:: with SMTP id h13mr457035ljj.8.1550920272726;
        Sat, 23 Feb 2019 03:11:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550920272; cv=none;
        d=google.com; s=arc-20160816;
        b=idkjvmZKSy0YOAUx4EQVVWwA4Fw+uiOFTTIlszjPC3335im/bMk+k/tGjz+cET2487
         fJcyJnpqfDlrkTSM52cbNTj/tpttAW8lY4RddmRfx6m1dbqVQF0mGGFPHgCdHAuY5xbk
         zNlc8eNNc4n9Q4AwR/w9V9F6gLmvU53CQ1hakr8OZiU6Xb7bx0CFB507gTd0rBSyf18b
         l99hZlHmT/Rdv1z+BNpM1o+AHAREKrsOLzssQeVsylAQviDbhi3crrnXxPRADBg7wwbx
         KdzlI3Gt+mqELaSEcQ8dyR6diWlEb9YNMM5fsqeBEEyHrwCbOqTNGac154jz5XNjKvHz
         BCig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=6dtKJgSm47uLAMGcWp0iCU0yCDNLGMuI36OMyEl1aiU=;
        b=Y8Y7IWSefXAFPzdCEp1Y0VfMhdD3Agvxkkyg6xD0bnOZwu+pD7QGYrKsKsbOfQC1bX
         7abq5qNA+2WVVbK6trvLzQTEIH3A3VMsf/IdOoUdVmLx9PO1BVYxAwjUMmQe1ZnOdX0V
         Fo/TJokRV1VpOxBAEsgPGvDTNDV1f7KUg+pCkoEaYo6+DzJZg1wv3y+OO/q2wtISRMkV
         X7ag+kiEEvMBuv+SN4mHz5S4cM64STCqRjXcTKzhtMZ2akIcQgJ847Bx41g7wgPllkeZ
         7TQe+tD4taxug13G36zzIYVt0PH3a9U4lv5ItYTEsQ8BXck4vAOJdHX2r4tkvS9D9ggD
         z2SQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bzOGJp96;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id a18-v6si219538lji.3.2019.02.23.03.11.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Feb 2019 03:11:12 -0800 (PST)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bzOGJp96;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x441.google.com with SMTP id d17so4979391wre.10
        for <outreachy-kernel@googlegroups.com>; Sat, 23 Feb 2019 03:11:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=6dtKJgSm47uLAMGcWp0iCU0yCDNLGMuI36OMyEl1aiU=;
        b=bzOGJp96A+AHxUcbO7dpZkYYcoaOcfD/NqEgiZRxBEgc861jMQ/CCavyiTToYfWlX1
         d7AaRROr5/Ptn8S+qecpbEwGSsIS1t6EdndlvsEFJhi5c4hIeUpsoIB/VfrKK58Um7Mq
         tHqqr5+5Z+FUam8bcbxkB4TvRiZl6R66n0WRrD1r9wl4TQlFTT2+5vmNCz2w5UBZ9Tof
         B0dmXeLUIkymkfatVIZlmDoE+QesutwmpOS2MGBzhBuD/sNZLYEGSiez9lnAoMmK3oj1
         GlC/EnBLhr+zoNtcZ7suMDZfjt1TF5bVthXsK4H+6bB7qWIXuRKSDH6NK50PRM9VPZwn
         KSMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=6dtKJgSm47uLAMGcWp0iCU0yCDNLGMuI36OMyEl1aiU=;
        b=Lp3Fsokl9peVxQ6g0W+B9pq7TF5alPtAyKFr4wds08P2VSFkVN94y5sOq+hyTHaPpj
         vecWoRlT1Pegt/Pwn8wvqz0DN6BPVmK5mBtLCqjRA9jGeRvtJUHaAyPjuc45AzFh5k8V
         NNesGBgBxc4wDto3GFNhUZT+tFdFtAS+4EE00apNxWtjZw/AKNJ+Zei58ACpZknMZQnr
         Gw4cxsjPbVuV3RVXSKGkp5YlfVcHz7Ul0Y4n/M0mlN8bvqG1+q8DJZUEL71jNboPO96P
         hofN8P8bWIi6ZPomZOzLBiJSh7K6RUIJAflA0OS0UZvrBJCo47Nuxtl5xFQjpCR9UngX
         BBLA==
X-Gm-Message-State: AHQUAualnG3Zuu8hCucV4Mj1Dzp94DbP6WFVlhWKq5C6PsYtVJUjaa0A
	pRd7xufukiY+LpS886Kv2w==
X-Received: by 2002:adf:ee01:: with SMTP id y1mr6021689wrn.268.1550920271953;
        Sat, 23 Feb 2019 03:11:11 -0800 (PST)
Return-Path: <jbi.octave@gmail.com>
Received: from localhost.localdomain ([185.61.164.85])
        by smtp.gmail.com with ESMTPSA id w4sm6595853wrk.85.2019.02.23.03.11.10
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 23 Feb 2019 03:11:11 -0800 (PST)
From: Jules Irenge <jbi.octave@gmail.com>
To: jreuter@yaina.de
Cc: linux-hams@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	davem@davemloft.net,
	ralf@linux-mips.org,
	netdev@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	gregkh@linuxfoundation.org,
	jbi.octave@gmail.com
Subject: [PATCH] net: ax25: Add SPDX License to fix missing License warning
Date: Sat, 23 Feb 2019 11:11:00 +0000
Message-Id: <20190223111100.13983-1-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 net/ax25/af_ax25.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/net/ax25/af_ax25.c b/net/ax25/af_ax25.c
index 5d01edf8d819..5048790a75f6 100644
--- a/net/ax25/af_ax25.c
+++ b/net/ax25/af_ax25.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * This program is free software; you can redistribute it and/or modify
  * it under the terms of the GNU General Public License as published by
-- 
2.20.1


