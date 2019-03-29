X-GM-THRID: 6673959669244887040
X-Received: by 2002:a24:2f03:: with SMTP id j3mr2575838itj.2.1553902325475;
        Fri, 29 Mar 2019 16:32:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:3553:: with SMTP id k80ls1175086ita.4.gmail; Fri, 29 Mar
 2019 16:32:04 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyYdr5UpD0AYD+FqrBm9Ug9sQkvL+N8bh+2qOeuJ3X5zboU25w1TVhQMIF0n+n6tJ7VetYo
X-Received: by 2002:a24:754c:: with SMTP id y73mr2414948itc.31.1553902324414;
        Fri, 29 Mar 2019 16:32:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553902324; cv=none;
        d=google.com; s=arc-20160816;
        b=Yzh0QV54c7Oe0hjGwMQviTwXhAxOAC5u/2HH3iDgyLVTiVsLsUYOanUXga3mhkqt/7
         618dDe9tT3Cva17PGKv6dMd8k8tBUWsaEqM9Bn3L5hDIdzn4yjBuyiD09H06N78ASsT2
         uQiKTwqzH80vR+r6WBQ5Edo8k7+NjXb+S9oQdV6/zEj2YGvLFuZpH1EZD0xsAbzCBYjQ
         u3Kz7PYXOqqHwvG4xncJXWPYh+3sw3NxDj5s455pfMU8UYChGcYQada0w5QgYTJyVf0L
         xiU3fi5HxKGDReQyw6nzMylDaMe1MNOTbJX16ikveMIFPt/bWghlkae0QOAYEPuGZl8Y
         Hz3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=VoN9HtBuVVBdpV7nQNSgY/g95zMPuKDLxFWiqNueGcU=;
        b=FoqFBbrkx/H4kggDnIuwWWhSIAtxOTwEakqYBdii4Z6U5qPu6pa93/t3v7Ug7uj8hw
         90qq1lCC5CsBu4PAwgJq66bV5ExiL1X6dq3JEWEYHYn5Y7V/ZUlydq/v56Dm2z0HlhIp
         LGvyCRKB/S8znMDTrFnaFNTsbCL7nTjLYjlRsPhMnjn2ozUr7aHjURr3K4kDpykAcSvJ
         D5ys1W2bgjKr01l32wCol0IyG6Ygo+sY8uh6RWrobAJ80ERNfHf3gCQr4AYiW+kX5XHR
         mTRIgFiq7+nNWNFrGQ7iPxGeeg2d3HHyoscWRK58syPjS6wD5dIPHC6+k6J0b/ciuriT
         hisw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ch+HG9Xs;
       spf=pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::42f as permitted sender) smtp.mailfrom=vatsalanarang@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <vatsalanarang@gmail.com>
Received: from mail-pf1-x42f.google.com (mail-pf1-x42f.google.com. [2607:f8b0:4864:20::42f])
        by gmr-mx.google.com with ESMTPS id e74si159448ite.1.2019.03.29.16.32.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Mar 2019 16:32:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::42f as permitted sender) client-ip=2607:f8b0:4864:20::42f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ch+HG9Xs;
       spf=pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::42f as permitted sender) smtp.mailfrom=vatsalanarang@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x42f.google.com with SMTP id y13so1732889pfm.11
        for <outreachy-kernel@googlegroups.com>; Fri, 29 Mar 2019 16:32:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=VoN9HtBuVVBdpV7nQNSgY/g95zMPuKDLxFWiqNueGcU=;
        b=Ch+HG9Xs8VvPdzsu0UaHurrd9X6kVhv80MUE/EUB/mhodrUxCkeK56CD+RWAZB8Riv
         Ms6LbeYO44P34ROwf/64IyjWAsIxHd2zdip2FYU4FdVmkbTiy9kS0iKlzuwDiJIbSVPh
         cJfYuh7OVEAOdpvFBa1Wh0PpiEbOMuBXDdIjNfYUtlbceolwCZKC2WIu+Es4RNBKZT+4
         BSD3DW1l2xJMetZ2sQCqdHXKUo1ORVb7ihyoKJi5S8+5cxijJaE1IML4FYqY1uidle7S
         bbHLHQfQeCTrQAPA0PrLEpCTqGWp6+1RqV7tMT4f7R43zHdOQzktMbMIrqJqGUugB/M9
         R24Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=VoN9HtBuVVBdpV7nQNSgY/g95zMPuKDLxFWiqNueGcU=;
        b=qlK3akFuXiUa4oK/mkONA0ANvX4ameJZtQLDJelCbyyjGDyIJ5N9+OZPWnFD7/Nr1K
         4Mu4haHiIlQO9UthM9X2feQ3wmXSLNEb50Qb37LifD9cpFDc1HJrg4GC991ua6XOpn8b
         u1EhvYgcZooroOryVa7rW+qyJao1QGO2ZE9TjkaIHhvYOzU6CxaJtRNG0U+JvTSbv0/S
         jXnOK6VY+UUod+6n4Kq3VxPYpOvyLhhMjVZR+xETzXpVBoAFeRhuvucj3O0gy+Tf4ZdO
         wyHCrvUO5aon1xcfTFTkw1a2VhWH+vtz0d7qSSm58VCb+AovaMAqdBlyz7lrZ1LRpeJM
         8yzw==
X-Gm-Message-State: APjAAAW+oErAFinkw7yX198PtRBoeMA/7M9HZ3sllb39UT3BhRckHCiE
	O39BSm0LVgMdgyWeXOOcijQrTy3q6T0=
X-Received: by 2002:a63:3185:: with SMTP id x127mr48067622pgx.299.1553902323953;
        Fri, 29 Mar 2019 16:32:03 -0700 (PDT)
Return-Path: <vatsalanarang@gmail.com>
Received: from localhost.localdomain ([103.87.57.82])
        by smtp.gmail.com with ESMTPSA id a3sm4408711pfn.182.2019.03.29.16.32.01
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Mar 2019 16:32:03 -0700 (PDT)
From: Vatsala Narang <vatsalanarang@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Vatsala Narang <vatsalanarang@gmail.com>
Subject: [PATCH v6 1/3] staging: vt6655: line over 80 characters.
Date: Sat, 30 Mar 2019 05:01:47 +0530
Message-Id: <20190329233147.27039-1-vatsalanarang@gmail.com>
X-Mailer: git-send-email 2.17.1

Move function arguments that go over 80 characters a line to get rid of
checkpatch warning.

Signed-off-by: Vatsala Narang <vatsalanarang@gmail.com>
--- 
Changes in v6: 
 -fixed patch 1 and resent it
 drivers/staging/vt6655/rf.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vt6655/rf.c b/drivers/staging/vt6655/rf.c
index 72475586a5ee..ad3970333390 100644
--- a/drivers/staging/vt6655/rf.c
+++ b/drivers/staging/vt6655/rf.c
@@ -748,7 +748,7 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char byRFType,
 	}
 
 	MACvSetMISCFifo(priv, MISCFIFO_SYNINFO_IDX,
-			(unsigned long)MAKEWORD(bySleepCount, byInitCount));
+		       	(unsigned long)MAKEWORD(bySleepCount, byInitCount));
 
 	return true;
 }
-- 
2.17.1


