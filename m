X-GM-THRID: 6251897983822987264
X-Received: by 10.129.109.197 with SMTP id i188mr20752353ywc.8.1455633443633;
        Tue, 16 Feb 2016 06:37:23 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.129.226 with SMTP id l95ls1796534ioi.95.gmail; Tue, 16 Feb
 2016 06:37:23 -0800 (PST)
X-Received: by 10.107.132.73 with SMTP id g70mr22896300iod.4.1455633443330;
        Tue, 16 Feb 2016 06:37:23 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pa0-x22a.google.com (mail-pa0-x22a.google.com. [2607:f8b0:400e:c03::22a])
        by gmr-mx.google.com with ESMTPS id u66si3639060pfa.2.2016.02.16.06.37.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Feb 2016 06:37:23 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) client-ip=2607:f8b0:400e:c03::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22a.google.com with SMTP id fy10so64903500pac.1
        for <outreachy-kernel@googlegroups.com>; Tue, 16 Feb 2016 06:37:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=LPRqIpM56HK8KGMRo0gZSbrn7QfaMQ1hN0bwaPcMIPo=;
        b=zMG5V7pok0VqVIcKsLQJq/RZB526BrOLA1IhnXjPOHsv4l6o7nSSKQhguUO9cjLv08
         MjT7OjJCAc56s62yPSD3sBUAn0bdQtXC+0mjqbqdh71ukTEqXAiPuyaD/gmQH/Q7WXux
         nt+5HKR7RhL8shM2qQ0Lbi6YtAQgmNnsDr8UWZyqyY0BArmekaF81VekXhNV7F8IF35Z
         X58pO+8LRTA+hseUhJHJZYovBlgamAPvRE4InpaYjaA18RruufPXlojzka47xr6EHkgf
         S9+RPK6LA3qVYryYir+gOxPi5YFigLkPC1w2iLlEqNM26PduxtYTx+C5AY6vaXuCKWw4
         xhmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=LPRqIpM56HK8KGMRo0gZSbrn7QfaMQ1hN0bwaPcMIPo=;
        b=Kt7e3ZhKpYlmDOYM2lF42NtbD1dZcTU3TCU1kWExvfKNgLMOQO65paqcBWY2Mr7xDP
         8QvYhAKzMEHKMHkgBkbQNpLbqroj+S9mqN4dzZuL99xxQ5r3sZv+E3nJlyYvmf3wwdGV
         wPsGPkeuZp+Yn9s1n2yld5P8yjFK5rFqKphdw7skFU3aXz+nQhZBN97j8Z5/HOmBsoov
         jLOrw3INh6TvaSXWHer6EaABFwm0+gt1wCctOtlFfddDP3gBYHk4VWjXGe+dgMfRax/G
         ZbbmfrWYMcb9D7y1/hdKlhr8vhVkFfeLSwZPn1cW00AXkjens3Jo08hOoEbow84DkR7h
         26Mg==
X-Gm-Message-State: AG10YOQkCqVa7kG0XMJVPT5/P3a7CM/GdqR5i4WqO8cOjJWwgXRP1eHkhihe6C/cNO6kzA==
X-Received: by 10.66.102.104 with SMTP id fn8mr31847202pab.129.1455633443183;
        Tue, 16 Feb 2016 06:37:23 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([106.215.144.20])
        by smtp.gmail.com with ESMTPSA id w12sm46295757pfa.79.2016.02.16.06.37.18
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Tue, 16 Feb 2016 06:37:22 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Tue, 16 Feb 2016 20:07:13 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH v2 1/2] Staging: wlan-ng: Remove function hfa384x_drvr_commtallies
Date: Tue, 16 Feb 2016 20:06:58 +0530
Message-Id: <5a81c0ed4fb210731c9fe0b382de7ccf317eefbc.1455632723.git.bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1455632723.git.bhumirks@gmail.com>
References: <cover.1455632723.git.bhumirks@gmail.com>
In-Reply-To: <cover.1455632723.git.bhumirks@gmail.com>
References: <cover.1455632723.git.bhumirks@gmail.com>

The function hfa384x_drvr_commtallies is not used anywhere in the kernel
so remove it. Also remove its prototype from the header file.

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
Changes in v2:
* Combine patches 1 and 2 of v1 in a single patch to remove both the
  function and its prototype.

 drivers/staging/wlan-ng/hfa384x.h     |  1 -
 drivers/staging/wlan-ng/hfa384x_usb.c | 31 -------------------------------
 2 files changed, 32 deletions(-)

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
diff --git a/drivers/staging/wlan-ng/hfa384x_usb.c b/drivers/staging/wlan-ng/hfa384x_usb.c
index 682de77..7eda536 100644
--- a/drivers/staging/wlan-ng/hfa384x_usb.c
+++ b/drivers/staging/wlan-ng/hfa384x_usb.c
@@ -1747,37 +1747,6 @@ done:
 }
 
 /*----------------------------------------------------------------
-* hfa384x_drvr_commtallies
-*
-* Send a commtallies inquiry to the MAC.  Note that this is an async
-* call that will result in an info frame arriving sometime later.
-*
-* Arguments:
-*	hw		device structure
-*
-* Returns:
-*	zero		success.
-*
-* Side effects:
-*
-* Call context:
-*	process
-----------------------------------------------------------------*/
-int hfa384x_drvr_commtallies(hfa384x_t *hw)
-{
-	hfa384x_metacmd_t cmd;
-
-	cmd.cmd = HFA384x_CMDCODE_INQ;
-	cmd.parm0 = HFA384x_IT_COMMTALLIES;
-	cmd.parm1 = 0;
-	cmd.parm2 = 0;
-
-	hfa384x_docmd_async(hw, &cmd, NULL, NULL, NULL);
-
-	return 0;
-}
-
-/*----------------------------------------------------------------
 * hfa384x_drvr_disable
 *
 * Issues the disable command to stop communications on one of
-- 
1.9.1


