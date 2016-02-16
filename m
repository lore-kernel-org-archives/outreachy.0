X-GM-THRID: 6251883453427482624
X-Received: by 10.66.141.36 with SMTP id rl4mr21997182pab.3.1455630098424;
        Tue, 16 Feb 2016 05:41:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.82.233 with SMTP id h96ls4344672qgd.80.gmail; Tue, 16 Feb
 2016 05:41:36 -0800 (PST)
X-Received: by 10.129.71.85 with SMTP id u82mr22917678ywa.9.1455630096870;
        Tue, 16 Feb 2016 05:41:36 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pf0-x22d.google.com (mail-pf0-x22d.google.com. [2607:f8b0:400e:c00::22d])
        by gmr-mx.google.com with ESMTPS id yd9si692006pab.1.2016.02.16.05.41.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Feb 2016 05:41:36 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::22d as permitted sender) client-ip=2607:f8b0:400e:c00::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::22d as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22d.google.com with SMTP id c10so107703013pfc.2
        for <outreachy-kernel@googlegroups.com>; Tue, 16 Feb 2016 05:41:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=EXBguBvIM36BfBFMSXvuujYrzQ/VZ7iR8Nadxy9Pp6Q=;
        b=GDiqQvcsu/8xtNcFVUTCpOAfgNULwVuGFPhwNSud8/s2mcdLazYBq1uE0fugJOMRBf
         FsCiUkjhuQqegVXi4lP6zux7zCiwe5zJdKVgmjnAw2osudWp3hhcPcriXZLa6P64K2Ze
         JKxn9dlAlp5kii0WuO3pXYO57uHQQ0aevtmXUIOfQos8wAygpuzm9nMGlXYYV5QpHliz
         J6QkPX5gWSHpqtZDRKqzE+TODBq1loGlmy8EtH7F+uiEIEyfvW8vIzCD+0vBYqn4aUfO
         LBQ4jaQjFkhtir3fB8vibj/m13YfVjF2F39YZbC1onQ4KFBdGOSQKV8wo0hZPQqGJPOs
         PPqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=EXBguBvIM36BfBFMSXvuujYrzQ/VZ7iR8Nadxy9Pp6Q=;
        b=aoObRiLNslT6ybyMHs6A4w2xVE01Lw8BxMe6JtrY5WfEOzAZ7jc0+KtqEe+r/8ux0M
         wWOGkHbKbY6e3UvKntwttl+NjWtIvYKQoZ1HZvpUqdQOH5LKatpMdCR9Re7Jz4wJob/K
         d6dj1FEoR0AnM1wNVa9jNTuCfqxkaDC6ORuw46GQ+3wStKltXHjWRwE5C1pRL6xJwM+6
         oeL372yx/KE4yhZKScBbDW6HW1Prh9+v/KEYY+g8jZl8GmWdx0UDPusdLHmNG8eIzky8
         qTEUKX8fIfA1IgJh5GSXBKPskbJODmQ1NV4mQKCAeoe5gkJiKpn45pBTq/JzBpLRDArQ
         bYfw==
X-Gm-Message-State: AG10YOQ3Xvdcz6kfDNs2xATX7n9Kgf4FEL3AKCKr4g/W6Me4QfPb87viJ1vzeGPJstQcgA==
X-Received: by 10.98.80.206 with SMTP id g75mr31127538pfj.127.1455630096706;
        Tue, 16 Feb 2016 05:41:36 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([106.215.154.9])
        by smtp.gmail.com with ESMTPSA id z3sm46104179par.17.2016.02.16.05.41.32
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Tue, 16 Feb 2016 05:41:36 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Tue, 16 Feb 2016 19:11:27 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH 2/4] Staging: wlan-ng: hfa384x.h: Remove function prototype
Date: Tue, 16 Feb 2016 19:10:33 +0530
Message-Id: <126c2eb7a7fc3b9eb9a76f9a6dc17a8c666ebd9e.1455629651.git.bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1455629651.git.bhumirks@gmail.com>
References: <cover.1455629651.git.bhumirks@gmail.com>
In-Reply-To: <cover.1455629651.git.bhumirks@gmail.com>
References: <cover.1455629651.git.bhumirks@gmail.com>

The prototype of function hfa384x_drvr_commtallies is no longer needed
so remove it.

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/wlan-ng/hfa384x.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/wlan-ng/hfa384x.h b/drivers/staging/wlan-ng/hfa384x.h
index 8dfe438..4fd3145 100644
--- a/drivers/staging/wlan-ng/hfa384x.h
+++ b/drivers/staging/wlan-ng/hfa384x.h
@@ -1360,7 +1360,6 @@ void hfa384x_destroy(hfa384x_t *hw);
 
 int
 hfa384x_corereset(hfa384x_t *hw, int holdtime, int settletime, int genesis);
-int hfa384x_drvr_commtallies(hfa384x_t *hw);
 int hfa384x_drvr_disable(hfa384x_t *hw, u16 macport);
 int hfa384x_drvr_enable(hfa384x_t *hw, u16 macport);
 int hfa384x_drvr_flashdl_enable(hfa384x_t *hw);
-- 
1.9.1


