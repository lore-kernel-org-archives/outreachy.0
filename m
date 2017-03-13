X-GM-THRID: 6397018299173961728
X-Received: by 10.129.172.96 with SMTP id z32mr17874408ywj.39.1489421900049;
        Mon, 13 Mar 2017 09:18:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.143.75 with SMTP id r72ls4199730iod.30.gmail; Mon, 13 Mar
 2017 09:18:19 -0700 (PDT)
X-Received: by 10.99.140.90 with SMTP id q26mr15905948pgn.46.1489421899206;
        Mon, 13 Mar 2017 09:18:19 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id a3si3200352pfb.2.2017.03.13.09.18.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Mar 2017 09:18:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id g2so14046712pge.2
        for <outreachy-kernel@googlegroups.com>; Mon, 13 Mar 2017 09:18:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=KT0IWj+YqYQTZ8KjZgWy32yNB/RKCKD/eq7+hqILGfw=;
        b=fvTIgZQhImqavQX3G23juuqGasJaR6HWbcGn1NWbe2LXtlxymhnfzqvN4BFUJSgbWh
         etHCUYrdaXwAia5xgJ6Svp3UUO/TxFZV3Hz7dhQFi0+2m2AqwLDV2DUJ2+Q7p1v5OqCP
         xmJW+A9ePzPfNbzQ0+H/uSyECh8GeKRS7q49Gzyzxu/7S8tCI3LNDPLaupN9PxrRnfz0
         wxHwXW4QGyu5hQ8kycPOX4m00MksQ94PxasvxuKL4eTBPYxdgeLDxXu9GtFX9ktiRQgN
         LJUDWqcbzv3MXMYKIjp0uP5tLndDbhggkUtFYGuQOGOa0b/uObQLgYPdcHGkwQ6RW51S
         +2+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=KT0IWj+YqYQTZ8KjZgWy32yNB/RKCKD/eq7+hqILGfw=;
        b=jkDILbjuPs3RSZ1oJKPxVYgShuyhwZ2uNu4xhX2b5fcUOKYe8W8N2dkVW4oXoRmfN6
         pltd/ce57c/6EueyvZTt0r88K4ITu65iYgVf6f6t6dAFGIifZSF10aWFdb5bV2sNfnt4
         FgHHxpNMXTWsY9NElSOLuoudDLfXf/mGgYu0QHq8wIt2BJ6SY/ufAsiu6rPo4KJg/MOu
         OIFi4oPKnnbtyyNKA/E23nc0XAByYqw/M8oFPy85m4SvPByRKDqeqoCohsvXqAYY2bgC
         Y8UnxTRqI0UQI1hBbvD1tbLYaY1bL5iZPTzOU5XCceyNCvQovamHH0TEZRyngf78CH+d
         vEiA==
X-Gm-Message-State: AMke39n/mi2pLjzsBUkI1jk0K7hxpKh/NmrjorHrECNrf9je4kPGbk9JnE3FfanVlbhpxg==
X-Received: by 10.99.175.67 with SMTP id s3mr38152487pgo.185.1489421899009;
        Mon, 13 Mar 2017 09:18:19 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id z74sm33634086pfd.70.2017.03.13.09.18.16
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 13 Mar 2017 09:18:17 -0700 (PDT)
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: sudipm.mukherjee@gmail.com
Cc: teddy.wang@siliconmotion.com,
	outreachy-kernel@googlegroups.com,
	kirk@reisers.ca,
	samuel.thibault@ens-lyon.org,
	gregkh@linuxfoundation.org,
	speakup@linux-speakup.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	Arushi Singhal <arushisinghal19971997@gmail.com>
Subject: [PATCH v2 2/4] staging: sm750fb: fixes add blank line after function/struct/union/enum declarations
Date: Mon, 13 Mar 2017 21:47:58 +0530
Message-Id: <20170313161800.17338-3-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170313161800.17338-1-arushisinghal19971997@gmail.com>
References: <20170313161800.17338-1-arushisinghal19971997@gmail.com>

This patch fixes the warnings reported by checkpatch.pl
for please use a blank line after function/struct/union/enum
declarations.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 drivers/staging/sm750fb/sm750_cursor.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/staging/sm750fb/sm750_cursor.c b/drivers/staging/sm750fb/sm750_cursor.c
index 612e9ab9d569..b64dc8a4a8fb 100644
--- a/drivers/staging/sm750fb/sm750_cursor.c
+++ b/drivers/staging/sm750fb/sm750_cursor.c
@@ -54,6 +54,7 @@ void sm750_hw_cursor_enable(struct lynx_cursor *cursor)
 	reg = (cursor->offset & HWC_ADDRESS_ADDRESS_MASK) | HWC_ADDRESS_ENABLE;
 	poke32(HWC_ADDRESS, reg);
 }
+
 void sm750_hw_cursor_disable(struct lynx_cursor *cursor)
 {
 	poke32(HWC_ADDRESS, 0);
@@ -65,6 +66,7 @@ void sm750_hw_cursor_setSize(struct lynx_cursor *cursor,
 	cursor->w = w;
 	cursor->h = h;
 }
+
 void sm750_hw_cursor_setPos(struct lynx_cursor *cursor,
 						int x, int y)
 {
@@ -74,6 +76,7 @@ void sm750_hw_cursor_setPos(struct lynx_cursor *cursor,
 	       (x & HWC_LOCATION_X_MASK);
 	poke32(HWC_LOCATION, reg);
 }
+
 void sm750_hw_cursor_setColor(struct lynx_cursor *cursor,
 						u32 fg, u32 bg)
 {
-- 
2.11.0


