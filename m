X-GM-THRID: 6667838029140328448
X-Received: by 2002:a17:906:938e:: with SMTP id l14mr684461ejx.8.1552477020756;
        Wed, 13 Mar 2019 04:37:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:18b2:: with SMTP id c18ls351685ejf.1.gmail; Wed, 13
 Mar 2019 04:36:59 -0700 (PDT)
X-Google-Smtp-Source: APXvYqx49uGCVcrM7ZFl3exGR+EWaNcGuUfWQCM6Z9Q/Wjs4GgkPxlg+J9MD25nL+W3fSsUtQHky
X-Received: by 2002:a17:906:9701:: with SMTP id k1mr4994847ejx.13.1552477019822;
        Wed, 13 Mar 2019 04:36:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552477019; cv=none;
        d=google.com; s=arc-20160816;
        b=uMEQrgHU9D6DxiE99OPYEI8A07FhWX2yRtDKvbe2aYb8I/s/Lkw5ydP3lmlM+z5bgg
         lgHlCHix4WhC9U8/wFXHuDt1DeE1cVgy1v5VN+4PC4tN5BgYmnfAccxTPHTRBysPch5X
         N0bfiBZDMiSzY/lfL13h5lvPcqdAafsYFRIcrU1Wxp70KeSQCQ0cgDalmMBTRClOsxix
         /cQw8uiGfVJt92v8HUAwYYmudmxlTJEJB9JDeLT4NVZsHrBNgyJAmPfM8hPy+hwVSoSd
         3i3kfCHt/rechmK5AXkrIiw8cV6gTLVg4HZD4zoHCm3AJinsT7pMhn5YcnQ2/2dYL2mO
         kltg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=2oPbsSMPz3e4b+2pqkRjfBOweQA061o+eeBUi1SDzb4=;
        b=KzmOR+epvzN3894HPrekP8mNj6QMSUyCRVsH4KoSPe1Shy83raKKHNGqOPOctIprrU
         cV8c0WHmD0UKdlP36JzAzgQCzxhjo6TlClleRPXgNMEJDveO1JrlN9oG/4bw3THgr0gh
         lDzCnoku08Fu5h6GQDbhbrtL6gGpO0w2cYgsS9Npv2CqZlAmQkT3ZrGKqyVlGehBPp2E
         Ag/rSiSNZgdt/yL6INNgEPrabzwCuOao6hR+U5dZoMY83bE1j2XPuwzFvE3ioCA18SJ6
         UNpZ0skIcN/y/rv2yj3eNTu5Q5Ux4Xaz5/9psLE1ZcFGtMLvRTK4ursvBttz6asH3CjW
         FLDw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QZWEkXyG;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::432 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com. [2a00:1450:4864:20::432])
        by gmr-mx.google.com with ESMTPS id a7si71139edb.1.2019.03.13.04.36.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Mar 2019 04:36:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::432 as permitted sender) client-ip=2a00:1450:4864:20::432;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QZWEkXyG;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::432 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x432.google.com with SMTP id h99so1576713wrh.12
        for <outreachy-kernel@googlegroups.com>; Wed, 13 Mar 2019 04:36:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=2oPbsSMPz3e4b+2pqkRjfBOweQA061o+eeBUi1SDzb4=;
        b=QZWEkXyGundktK1b7p4EQzExTd5vKGojO11MJ+ewrKGXO/6h0Z59WdLU7A9WWZD6j5
         BD/HzJfNWm4qyC33r2drFfaokt14SU12XqDfjPvzi69XHhK+OTpViUUIEkWM1mnDh2s9
         4Z450A6e2wxFVflYbSBmyGhIu3dhKOsrrjvDZRNNvKBD21dyuLf7qRoDjfGfRdzv+2b2
         qeq8yepRGkWepLcQ/ytdX//JxNrP8O1hKsUOxD1XW/zdXcOYeHMKshC7sXqEl1mNYQ+A
         2Q8PGEs8ayBKsQV3GrQXH1Qg0TG/1+rdJ05pHgxu2kWSyxbMSVdU+Jw51ZeTnFvVyqk+
         q2wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=2oPbsSMPz3e4b+2pqkRjfBOweQA061o+eeBUi1SDzb4=;
        b=mtIRhavnjxWgtPbNSxJ0sO0mFTsdLQ0Ge3PcWYWPnFQ/bOeIxwd4u5tMQa1TZ8ZiHy
         4BrCAUtWyWQcaVLBcdyL/u+TbCqJEZ+qzUugXGD17KHEVfmaLE31Lj2Ixwnsl42fL/M5
         SiwU+WIh8uEas4E1UemvLND1sKnwnvTl8MHmDO5VESo0P0y4+Zek+wpZQy99YhCdUmB1
         7Y2s9/+fUNMRS5IvKRkgGk1+rlT3DuhwsetpV9ZTqGOAEHOLngTBYrU5tfbrpB4L7FUI
         Wl0tPurraITyqwAL0bdaxTtUkhDfTe6s4b9njMQBdPpZ/aL1BX4Dr6wVpfBGHZjzUcAD
         5gJQ==
X-Gm-Message-State: APjAAAVVvj6NCn6KOBsa4euVNs2elb7uBGWsFT4xhWPxUfrR1VNvhccb
	Nz54M9psyrBeMLLHJjZ6tIIVMXM=
X-Received: by 2002:adf:d845:: with SMTP id k5mr27776645wrl.145.1552477019454;
        Wed, 13 Mar 2019 04:36:59 -0700 (PDT)
Return-Path: <jbi.octave@gmail.com>
Received: from localhost.localdomain (cpc102034-bagu16-2-0-cust471.1-3.cable.virginm.net. [81.97.71.216])
        by smtp.gmail.com with ESMTPSA id n1sm11010375wrw.24.2019.03.13.04.36.58
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 13 Mar 2019 04:36:59 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/2] staging: rtl8192e: remove boilerplate license text
Date: Wed, 13 Mar 2019 11:33:53 +0000
Message-Id: <20190313113353.13024-2-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190313113353.13024-1-jbi.octave@gmail.com>
References: <20190313113353.13024-1-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

remove boilerplate license text."

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 drivers/staging/rtl8192e/dot11d.c | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/drivers/staging/rtl8192e/dot11d.c b/drivers/staging/rtl8192e/dot11d.c
index 6d57abedaa34..82c11caeee7a 100644
--- a/drivers/staging/rtl8192e/dot11d.c
+++ b/drivers/staging/rtl8192e/dot11d.c
@@ -2,14 +2,6 @@
 /******************************************************************************
  * Copyright(c) 2008 - 2010 Realtek Corporation. All rights reserved.
  *
- * This program is distributed in the hope that it will be useful, but WITHOUT
- * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
- * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
- * more details.
- *
- * The full GNU General Public License is included in this distribution in the
- * file called LICENSE.
- *
  * Contact Information:
  * wlanfae <wlanfae@realtek.com>
  ******************************************************************************/
-- 
2.20.1


