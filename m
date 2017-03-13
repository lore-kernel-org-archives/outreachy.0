X-GM-THRID: 6397088114020450304
X-Received: by 10.200.45.138 with SMTP id p10mr5484719qta.17.1489438157922;
        Mon, 13 Mar 2017 13:49:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.51.92 with SMTP id u28ls1251059otd.12.gmail; Mon, 13 Mar
 2017 13:49:17 -0700 (PDT)
X-Received: by 10.157.80.152 with SMTP id b24mr15544418oth.31.1489438157546;
        Mon, 13 Mar 2017 13:49:17 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id y90si3267107pfa.6.2017.03.13.13.49.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Mar 2017 13:49:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id g2so15058030pge.2
        for <outreachy-kernel@googlegroups.com>; Mon, 13 Mar 2017 13:49:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=KT0IWj+YqYQTZ8KjZgWy32yNB/RKCKD/eq7+hqILGfw=;
        b=FO95fdf3JL34m36BLXizx0hU0ajUoPIxVjs05k42sLNcKqucCKXYhHY6eZoHmZ2pSZ
         Rf/2en3i2KT/Ug4qFJkrjFGYHsy3bXiHG49LIxxIRLRaYWN70wS9FbjYUs11CMhFeTEK
         8fHEYXRL2VJV9Cn7dk4D61x9eARnbDIMUc/gTNLnWg0he6RwYCynaDYwKiLkgDwrpeUZ
         XkSQPhP4j4gmyKKGU6mKI/ahquaIvjkUt/5t/jRBZaF4CTp2qLJhA+s9oOLS4joeW+07
         jnE0abPgkxwcgnM2FSxzKvhOOTEUq2dziscqXgHE26BSu6VBetGzEjS7cDct/EACkt5P
         47tQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=KT0IWj+YqYQTZ8KjZgWy32yNB/RKCKD/eq7+hqILGfw=;
        b=kgr3NFPCM65haGrPIwZ6sFqwefKUq2WWQ2jSw+Cr/+O0u1p/uoYWyzKri1OLm20Vn6
         rZ7K4S37vwhP6tUxe9v4MRoNUeynZVyyp58xGokVJ2LVDQsbqpaQnwXZxY+sqWQ7Dr7A
         VqNwFD5BAvFLx6SxXk4vSBEWJQpQsqryVLsAoi/HByqzzVAAL0O36L9XccNn1begrPwS
         qSdaewhaKOwGac8KZqbZVWoA8dhXNIxp5fHQKAs7xAhGVEASygS7xoj7/octTAO0BI89
         J3Zcu20uqL8XArHN0p1av4CVKQaDOgyDjlQ2qxZJ/iIKL0rGIiSO/h1+ouzenpv3KPmt
         5l3g==
X-Gm-Message-State: AMke39m6B4BAqC+wHgpQKniEMfwOKoghcEvWRHLJvlHHTHdrHpXhtGnqA8r5LYHoxky1OA==
X-Received: by 10.98.163.17 with SMTP id s17mr39497001pfe.61.1489438157176;
        Mon, 13 Mar 2017 13:49:17 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id i3sm34305766pfk.47.2017.03.13.13.49.15
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 13 Mar 2017 13:49:15 -0700 (PDT)
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: w.d.hubbs@gmail.com
Cc: chris@the-brannons.com,
	outreachy-kernel@googlegroups.com,
	kirk@reisers.ca,
	samuel.thibault@ens-lyon.org,
	gregkh@linuxfoundation.org,
	speakup@linux-speakup.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	Arushi Singhal <arushisinghal19971997@gmail.com>
Subject: [PATCH v3 2/4] staging: sm750fb: fixes add blank line after function/struct/union/enum declarations
Date: Tue, 14 Mar 2017 02:18:48 +0530
Message-Id: <20170313204853.24675-3-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170313204853.24675-1-arushisinghal19971997@gmail.com>
References: <20170313204853.24675-1-arushisinghal19971997@gmail.com>

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


