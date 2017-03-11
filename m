X-GM-THRID: 6396076706969419776
X-Received: by 10.157.54.226 with SMTP id s31mr9203433otd.16.1489202667015;
        Fri, 10 Mar 2017 19:24:27 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.9.185 with SMTP id q54ls1495064otd.11.gmail; Fri, 10 Mar
 2017 19:24:26 -0800 (PST)
X-Received: by 10.157.51.165 with SMTP id u37mr9519737otc.77.1489202666745;
        Fri, 10 Mar 2017 19:24:26 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id y90si2069223pfa.6.2017.03.10.19.24.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 19:24:26 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id g2so7651907pge.2
        for <outreachy-kernel@googlegroups.com>; Fri, 10 Mar 2017 19:24:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=KT0IWj+YqYQTZ8KjZgWy32yNB/RKCKD/eq7+hqILGfw=;
        b=Antde0yEfc5jQJTUqQ3w+sfePi9T46JLqJ+uleL3wvRJ6RWZBQJvsdDrc15306Fm9D
         sTxC+CmhO+FnQDIyXqlYzpoK9CHtIyHu0+hYhhmtYvOadKcdSxvJF3vUiomKxxFlAp9A
         u7lqXEPalTg4S/fRbjDH8edpicKAIXn3TSo6OJxfJEBxCIsvhZNrX8TdL//Bbc9v8B3L
         seMjXKFlZfo+8AjByvma3jtTkG7Daecaa2YmxZyKzirnVU7vwQKgrQi6y+H6fmnPnHNe
         ffaf6b26JdcsW8Zj193jM3YNSL6aZyd9HnjCMr8TlcmmIUkBwL+ENJgyCzAQaFl2+DqX
         btlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=KT0IWj+YqYQTZ8KjZgWy32yNB/RKCKD/eq7+hqILGfw=;
        b=AmPgBh40Vthq3o8bdAQq+miALizoQvtVmeDfi8EI5gb0OLhk+SJLDkcgRwhLPz1FhT
         D2dLroIjONUptoVmLur3kr6uaRZKTg7J7nQf9csCGH9tMce2J4F4CO1aAFy4//1uCLNN
         q6yqbMmL/fggN9vu1OyFwvRzJinSC7CKK3i8FUK5xfyaH/gvbZQ1/atucdzI+mE5wakW
         GO5aYY9jiMnkfYvutRqL6dgjf6sEicJ+PXzr/+Zl+w3ksg4owYelSqe//wyPyuMwMrP+
         k+YOiXQbV9UBwbU8GRfqErXv7ip8em1+vtL0XQdNU3pcl473TurdfwERaIuG1CK/J0s4
         dTmQ==
X-Gm-Message-State: AMke39mi0qDc4GlxuypXpn3Y7ZP1ASBu90JsxylUxAY3FqDpGImZzG28UPsrRZ4q9NiClw==
X-Received: by 10.84.238.199 with SMTP id l7mr30054304pln.90.1489202666517;
        Fri, 10 Mar 2017 19:24:26 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id r134sm21034253pfr.83.2017.03.10.19.24.24
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 10 Mar 2017 19:24:25 -0800 (PST)
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: sudipm.mukherjee@gmail.com,
	teddy.wang@siliconmotion.com,
	gregkh@linuxfoundation.org,
	linux-fbdev@vger.kernel.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	Arushi Singhal <arushisinghal19971997@gmail.com>
Subject: [PATCH 2/3] staging: sm750fb: fixes add blank line after function/struct/union/enum declarations
Date: Sat, 11 Mar 2017 08:54:09 +0530
Message-Id: <20170311032410.8265-3-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170311032410.8265-1-arushisinghal19971997@gmail.com>
References: <20170311032410.8265-1-arushisinghal19971997@gmail.com>

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


