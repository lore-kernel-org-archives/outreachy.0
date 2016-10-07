X-GM-THRID: 6338728031934218240
X-Received: by 10.13.224.129 with SMTP id j123mr4995305ywe.108.1475850127375;
        Fri, 07 Oct 2016 07:22:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.46.25 with SMTP id q25ls5470868otb.2.gmail; Fri, 07 Oct
 2016 07:22:07 -0700 (PDT)
X-Received: by 10.157.33.7 with SMTP id i7mr4380606otb.96.1475850127011;
        Fri, 07 Oct 2016 07:22:07 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id 7si5888569par.0.2016.10.07.07.22.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 07 Oct 2016 07:22:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id t25so2941788pfg.2
        for <outreachy-kernel@googlegroups.com>; Fri, 07 Oct 2016 07:22:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=+k3XAI4wi9ZMr/gqqNxdF3sVZ5ilQpYct9blmYCdRgs=;
        b=DTSSPMzOoyyHluoqjJOaVSd3PbkqNmErBgMd+MIgNGg5tf2AaN4ZQ4rBjuscWfWf4+
         n6Y/K6G9VMRBSKxSVXJFEEZNSXNO0eavLhFvUJmWwYZfamSj7vzqF1rGfFPsxsqTn9gK
         vsrgAvwZEm7L6qPT9WOumEivYuogpg15xLH9GcEnfQNG+91F7gV5iFgwoYzPhw08beZ5
         9hnXBvKU3eFOE8EOb3Z1Oeff2/XWMy6lCDqE6cws0EuzLFu+FclDIcSvGo3+6dnQd4L9
         YWSIfLvovSVHS9srSlsPTmFOyr1HW0dzC0kIExyaSoxTyNjFWwgh3OgVtsN5rP9BIlv2
         2mlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=+k3XAI4wi9ZMr/gqqNxdF3sVZ5ilQpYct9blmYCdRgs=;
        b=WMCOs3XE+jLqHp59ShkfXq7rDbvzOVuLupJYwj+wy/cBk6SZxOMsfbHcErA7zlrQHV
         0AkoXYlTAUePkO3hxmsQ9ka27kqloMiWlsm5i1hSUMZfmL5lbXslYrZ9GpMnwyZnW8U0
         Ic+Z6eKuHdHgCFVWb2UlyhWtV2nLSGZZ5bR7vq3OXjW2f4ECIAipSQBPjKlQHM1e3ysg
         l9zWw04KWYRbNOTv9LEPEDEjRW3SB7x2m0xMJebBX+3Tondhj+As6jj4P2nUSHzCZAmG
         NhsRmwHUZZNo5stwYNgizJJ9gWhM7juee78weaBXKemB6Y1J4KqyEzzVaP8ALnVMw7dN
         ZKAA==
X-Gm-Message-State: AA6/9Rk0fk44ObIARjQ9cJOM7L0wdRVIFpZYPpvI0kV0RKbTz8FK+Wltq9zJCFIl03YBKA==
X-Received: by 10.98.139.209 with SMTP id e78mr29449919pfl.100.1475850126404;
        Fri, 07 Oct 2016 07:22:06 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from gmail.com ([223.176.141.5])
        by smtp.gmail.com with ESMTPSA id xn11sm31507796pac.38.2016.10.07.07.21.39
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Fri, 07 Oct 2016 07:22:05 -0700 (PDT)
Received: by gmail.com (sSMTP sendmail emulation); Fri, 07 Oct 2016 19:51:30 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com,
	gregkh@linuxfoundation.org
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH] Staging: fwserial: remove unused function fill_unplug_req
Date: Fri,  7 Oct 2016 19:51:28 +0530
Message-Id: <1475850088-14786-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

The function fill_unplug_req is not used anywhere in the kernel, so
remove it. Done using Coccinelle.

@r1@
identifier func;
type T;
@@
static T func(...)
{
...
}

@r@
identifier r1.func;
@@
func

@delete depends on !r@
identifier r1.func;
type r1.T;
@@
- static T func(...){...}

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/fwserial/fwserial.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/staging/fwserial/fwserial.c b/drivers/staging/fwserial/fwserial.c
index 49c718b..41a49c8 100644
--- a/drivers/staging/fwserial/fwserial.c
+++ b/drivers/staging/fwserial/fwserial.c
@@ -1667,12 +1667,6 @@ static inline void fill_plug_rsp_nack(struct fwserial_mgmt_pkt *pkt)
 	pkt->hdr.len = cpu_to_be16(mgmt_pkt_expected_len(pkt->hdr.code));
 }
 
-static inline void fill_unplug_req(struct fwserial_mgmt_pkt *pkt)
-{
-	pkt->hdr.code = cpu_to_be16(FWSC_VIRT_CABLE_UNPLUG);
-	pkt->hdr.len = cpu_to_be16(mgmt_pkt_expected_len(pkt->hdr.code));
-}
-
 static inline void fill_unplug_rsp_nack(struct fwserial_mgmt_pkt *pkt)
 {
 	pkt->hdr.code = cpu_to_be16(FWSC_VIRT_CABLE_UNPLUG_RSP | FWSC_RSP_NACK);
-- 
1.9.1


