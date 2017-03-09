X-GM-THRID: 6395538220161957888
X-Received: by 10.99.157.142 with SMTP id i136mr5811847pgd.78.1489077303158;
        Thu, 09 Mar 2017 08:35:03 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.31.133 with SMTP id f127ls1841775iof.27.gmail; Thu, 09 Mar
 2017 08:35:02 -0800 (PST)
X-Received: by 10.99.140.90 with SMTP id q26mr5793862pgn.46.1489077301962;
        Thu, 09 Mar 2017 08:35:01 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id a3si1297829pfb.2.2017.03.09.08.35.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 08:35:01 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id j5so7795042pfb.3
        for <outreachy-kernel@googlegroups.com>; Thu, 09 Mar 2017 08:35:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=kTQbG7QS4hFhzzk0NtCfOeo/bBxDxRQshDoKnkUk4V8=;
        b=k0Fb1XB1EA0KofHDpJh4t8QU7IOUgQSSjbSCPIv1euvLb5TvYy9yo8BgabFQjg8kBJ
         +DiRFrMFYqhYvEkG4Iaf7JZLFUsLvczZXsWXmqNxoWmpDJA0TpLKBb2UHgfez8Te/CGM
         tX0MivUA1yeIpOHL+T0bVQbdkYOdTb8u3MergydiLNVEPYbOAjT8eVznglMQESn1RPA4
         5R17be69+oYnakhDSm9j0hfx8lEbSKtAuQ7s2IBsKDvbpNpQUcbnccP9Yo+B5UVas3nO
         fjIiqJPAJoyq9JXs8y6hPs69RayfIxaf65TXBXP+6f+RjjAy4djrTTT2cSRARaNj7IQD
         ro/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=kTQbG7QS4hFhzzk0NtCfOeo/bBxDxRQshDoKnkUk4V8=;
        b=CWJGUzx9hl6Gri/ZtHko6m3qyMP4amT9FAtiU39MMU+CdfXekUjYIVegTljZBDzuQq
         mqZFcOOWONH4kQjbOaAnvL8QVcudeNXd8OvL/oAd92bXyTINR2j0qHG1sLwsTT/p4+yc
         zgpn6zo+5DTfKCU7RRy5BMeFtH+YYnDteGOs/DofOAKDV31+9/XrHC+Ox8Faa2uv2DJc
         9rgfoXnnWYtC5gjWwPemeL5lw88N4AhLrN5u7Dm+xV2HBnj8YpJZCJTrfKtXwaYz2bcr
         G0amcaO0optNbiI5k0pdECADeOZfqNy7eoy1lt6VkaiKOFz+FzHZdQcq+/oOXcM7cCSV
         RXbg==
X-Gm-Message-State: AMke39mDai1I7Z2Ea/6LcnKmhKwx/xbAhCL6TyvJaZEsgULmZR56O1nzaS1RPmY2nQMj6Q==
X-Received: by 10.99.135.73 with SMTP id i70mr14579755pge.157.1489077301782;
        Thu, 09 Mar 2017 08:35:01 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id 129sm13539135pgj.59.2017.03.09.08.34.59
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 09 Mar 2017 08:35:00 -0800 (PST)
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
Subject: [PATCH 4/4] staging: speakup: Placed Logical on the previous line
Date: Thu,  9 Mar 2017 22:04:33 +0530
Message-Id: <20170309163433.19462-5-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170309163433.19462-1-arushisinghal19971997@gmail.com>
References: <20170309163433.19462-1-arushisinghal19971997@gmail.com>

Placed Logical continuations on the previous line as reported by
checkpatch.pl.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 drivers/staging/speakup/main.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/speakup/main.c b/drivers/staging/speakup/main.c
index a12ec2b061fe..25acebb9311f 100644
--- a/drivers/staging/speakup/main.c
+++ b/drivers/staging/speakup/main.c
@@ -2144,10 +2144,10 @@ speakup_key(struct vc_data *vc, int shift_state, int keycode, u_short keysym,
 	if (up_flag || spk_killed || type == KT_SHIFT)
 		goto out;
 	spk_shut_up &= 0xfe;
-	kh = (value == KVAL(K_DOWN))
-	    || (value == KVAL(K_UP))
-	    || (value == KVAL(K_LEFT))
-	    || (value == KVAL(K_RIGHT));
+	kh = (value == KVAL(K_DOWN)) ||
+	      (value == KVAL(K_UP))  ||
+	      (value == KVAL(K_LEFT)) ||
+	      (value == KVAL(K_RIGHT));
 	if ((cursor_track != read_all_mode) || !kh)
 		if (!spk_no_intr)
 			spk_do_flush();
-- 
2.11.0


