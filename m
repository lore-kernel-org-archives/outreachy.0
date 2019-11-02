X-GM-THRID: 6754496283091664896
X-Received: by 2002:a05:600c:2046:: with SMTP id p6mr9115426wmg.165.1572653717198;
        Fri, 01 Nov 2019 17:15:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:6085:: with SMTP id u127ls10424717wmb.5.gmail; Fri, 01
 Nov 2019 17:15:16 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxWTpby+qGAOP8Dfi8Rb7r0G/VvVuY5hthnYt3JVqSkKXSeJ/XA661LrZ5RDBM4entHAZ3E
X-Received: by 2002:a1c:113:: with SMTP id 19mr10962774wmb.42.1572653716190;
        Fri, 01 Nov 2019 17:15:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572653716; cv=none;
        d=google.com; s=arc-20160816;
        b=QVSN/M1MqRvQo9ZrrwMc2wCvuqJqKEf51sFGmp1cHAGUcFy8TvW/VSLP4xSF2xbcD1
         OyKmnv+sj+8q2+cTTfpZxCtayzrp+B/rx1m8DJDUjBGDlr3XvQ/gN77tRqHk2/DMoCvV
         B3V3HTQgp50CAkaGF12OKWKz0ZMGSwc0vI+r809nr/stl9FsUwhi0iIp/T90EIY5ikMS
         sve23tveJdgJtQPp4xTaE0+lu+3ol+4z0Hwd5zYNC0WNCFWt5lcH1tw3kDledzsitUhg
         qWWDF3Wz8fwHBWn7bWHEe41bK80w6/OTRvtGA5WQ3OPhu6OdgLZwFeLyAzZPgL36ZSwU
         zvNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=73xsCJrCBga/qtyHqXYQW2cwHZFXOa/8X2wvDsMm9aY=;
        b=eHleqhmx6jyRvHvrXI6mCLDHB0qw9S0xfqxvxG9txMq9/v0csmTjWLX95tTDJQDqUK
         0EeGjXmPTzg8bnERqEm2uzRqxlzhsD9wopTf3rjwykJhQlgVgXBf4JjxM5cNCLB3G8T9
         CNdOCbXugYm7fSrnkt4kUfJqaTQP8N/8zcbU8xv7ZR1cxrw3L/lnt7u0tjHoQ6+b/ou4
         aFrxntA/gKriuW3E475lynjf/srxFcxIaP7gRjBSxlGZomngaWKXGM8RtUy3PRj391a2
         1T6rWnJnRUqQsm8ANOqyfm/EPaIa85/pDTUCqD/mTlGUOXYsmWM1rbAnc6rt2Mxhwn8D
         b39g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nmxNSfpY;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com. [2a00:1450:4864:20::343])
        by gmr-mx.google.com with ESMTPS id y140si590472wmd.0.2019.11.01.17.15.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Nov 2019 17:15:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) client-ip=2a00:1450:4864:20::343;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nmxNSfpY;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x343.google.com with SMTP id t26so6417183wmi.4
        for <outreachy-kernel@googlegroups.com>; Fri, 01 Nov 2019 17:15:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=73xsCJrCBga/qtyHqXYQW2cwHZFXOa/8X2wvDsMm9aY=;
        b=nmxNSfpYIyq0ljP6nZQiSmeN7bkfFARpnsHy4alURYjZMgCQ6gRjKQPVEFeEd7doT+
         hTRH0KZv+n6Te4JiwqlkIOzXZOrUcIlX50TrIh6L4X5ur2saRHLoK5YP3BTCk1eeim7G
         Sg4tRY+4+qSjEzel7fygvZy6TN6MPYjHLjo9cKsvchmSXJfXgmJ2oAP/9wo7v6kJs6EK
         lDtNbNsc94yKm6EXwRNZIABZWSglGoinVqhdgiTw+QjVPQoIRPpl44pWLE/hXgUIf5F7
         trQ6/CNL6SdiCtN4JRanSjlBL/ZhRlGjqQV0mZJ7w1CIbiyrzCwg/Izx8FG0KCeOXW0F
         hS4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=73xsCJrCBga/qtyHqXYQW2cwHZFXOa/8X2wvDsMm9aY=;
        b=Bm6ct9rkMBIDpRJPoqT15U7RWdA02KlpyD+PLfgVN4flKdya5Wr4v6ozKqiFuUrUyW
         7QYRRSLwYhsjiOaMayPNt5cRXwCuPePktNNhCGFndsX3ZuAfrHln5bHskHWacB02AqUK
         sRxDKgK+MiFIhyT93gJogYqJvxvgMCVViD8199xGba6kPROWO6bvbVdx6Gervn45krK6
         8qSMO2iG+Kgh6sRoXSrvIGdwxGhV+aFSL6oTmR1+Tr57vVrxmZeKld1cIHgBlrDpNwmC
         n4W+2LMosQ6h8mZZEQHDGdtLb1ETeRO5jLhPGxbGJJE5g8ke3WlOC55cKNwezykuUILu
         o9Iw==
X-Gm-Message-State: APjAAAUJVhKAH6A/rVVz7Dt6Vfv1VnQV1eOcsc2GHq2md/FD1O0VjypR
	2sq8tFKzOvj73rvCs9k0378HZ4mmj6Ok
X-Received: by 2002:a1c:7d47:: with SMTP id y68mr12274820wmc.157.1572653715528;
        Fri, 01 Nov 2019 17:15:15 -0700 (PDT)
Return-Path: <jbi.octave@gmail.com>
Received: from ninjahub.lan (79-73-36-243.dynamic.dsl.as9105.com. [79.73.36.243])
        by smtp.googlemail.com with ESMTPSA id s21sm12885934wrb.31.2019.11.01.17.15.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Nov 2019 17:15:15 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: jerome.pouiller@silabs.com,
	gregkh@linuxfoundation.com,
	Boqun.Feng@microsoft.com,
	linux-kernel@vger.kernel.org,
	Jules Irenge <jbi.octave@gmail.com>
Subject: [PATCH] staging: wfx: fix warning of using plain integer
Date: Sat,  2 Nov 2019 00:14:57 +0000
Message-Id: <20191102001457.23369-1-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Fix warning of using plain integer as NULL pointer.
Issue reported by sparse tool.

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 drivers/staging/wfx/queue.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/wfx/queue.c b/drivers/staging/wfx/queue.c
index ef3ee55cf621..5d29bce65f71 100644
--- a/drivers/staging/wfx/queue.c
+++ b/drivers/staging/wfx/queue.c
@@ -565,7 +565,7 @@ struct hif_msg *wfx_tx_queues_get(struct wfx_dev *wdev)
 		}
 
 		if (ret)
-			return 0;
+			return NULL;
 
 		queue_num = queue - wdev->tx_queue;
 
-- 
2.21.0


