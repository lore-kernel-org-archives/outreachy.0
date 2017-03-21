X-GM-THRID: 6399916000486096896
X-Received: by 10.99.156.18 with SMTP id f18mr16520581pge.41.1490096617089;
        Tue, 21 Mar 2017 04:43:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.129.81 with SMTP id c78ls4392707iod.28.gmail; Tue, 21 Mar
 2017 04:43:36 -0700 (PDT)
X-Received: by 10.107.173.138 with SMTP id m10mr8981857ioo.38.1490096616472;
        Tue, 21 Mar 2017 04:43:36 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id y203si3392935pfb.0.2017.03.21.04.43.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Mar 2017 04:43:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id o126so21614821pfb.1
        for <outreachy-kernel@googlegroups.com>; Tue, 21 Mar 2017 04:43:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=wqGd+RXp5B5OV+mrNFnNd6Dufn8bYZ2OKEGXZOoBMzk=;
        b=ZTQ1eDKcqTd+4d6ZCWRXoevhcwXPe7VK5yVPmteUmkf/zEaycxbA6AzR5M7SRJAu4n
         C8TeJsWu4zf7VkshkftOvbYy3Ydb0uocYgC/kxGsrNZQsYw+LwZicEqfh+Z0CFIj2p34
         a4H+bsaGV7RsA21HmJxGNfNhV5I2xltz23OoAcPIHSjRR8qlS5i/zXvEkMgFh1eaCQum
         qr+TdaUCE1qxbLC8EK0OqxjXLCl0Mp3ROcoBkA3xDEEC3Ph2wX/JCW6UjacFqkahEzdA
         y7BVHWS6pqS/m5YfQHi4vyWY18dhfWRPPwPlJ95CWcmF1tOdxOYk5ud9YCukV+i6rsL3
         FnLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=wqGd+RXp5B5OV+mrNFnNd6Dufn8bYZ2OKEGXZOoBMzk=;
        b=We3v4pfakrf8hyddwYBWg0+tCmtYkV9HWRWTOFh/q0i2YDLMhuIvGDodWLcdejI0Ph
         noWuv4LtK0x/NUZ1abnq60OkBjK38wjk2L8cgztKcSSISc8p2jQUv8I/WxIpOVZCQDF/
         zs/Z7IgjOZUufHXzCteH//kB/GzGkfwlB0EJ+XSvUYLtpU4A3UQdoMZwk7jwfVT+IfMA
         uUlMsmZSod07H7ZW2R45+hzKB/gs5X4eCc4jlmB0cj94DzqoQXVBYRvtd5HfFHiBQrFP
         Jy7j+sxSfQ5aLKjzUH8GkFM21vUmCj3JTzG5tm0mcoVa371iicVGKUgbh7YyXQfgXuu8
         Flaw==
X-Gm-Message-State: AFeK/H0OHO2NYOL6YdXtVh1xvAwhses6u4GT9vJKXccsyG8JRcCAnMW8HwO8DAGm9EQ25g==
X-Received: by 10.98.103.146 with SMTP id t18mr39282897pfj.135.1490096616256;
        Tue, 21 Mar 2017 04:43:36 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id s21sm39452476pgg.65.2017.03.21.04.43.34
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 21 Mar 2017 04:43:35 -0700 (PDT)
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
Subject: [PATCH 11/11] staging: speakup: Fix alignment with parenthesis.
Date: Tue, 21 Mar 2017 17:12:35 +0530
Message-Id: <20170321114235.1638-12-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170321114235.1638-1-arushisinghal19971997@gmail.com>
References: <20170321114235.1638-1-arushisinghal19971997@gmail.com>

This patch fixes the warnings reported by checkpatch.pl
for please use a blank line after function/struct/union/enum
declarations.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 drivers/staging/speakup/speakup_apollo.c | 2 +-
 drivers/staging/speakup/speakup_decext.c | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/speakup/speakup_apollo.c b/drivers/staging/speakup/speakup_apollo.c
index 9cfdbbfb9742..6ad83dc642c4 100644
--- a/drivers/staging/speakup/speakup_apollo.c
+++ b/drivers/staging/speakup/speakup_apollo.c
@@ -173,7 +173,7 @@ static void do_catch_up(struct spk_synth *synth)
 		if (!synth->io_ops->synth_out(synth, ch)) {
 			outb(UART_MCR_DTR, speakup_info.port_tts + UART_MCR);
 			outb(UART_MCR_DTR | UART_MCR_RTS,
-					speakup_info.port_tts + UART_MCR);
+			     speakup_info.port_tts + UART_MCR);
 			schedule_timeout(msecs_to_jiffies(full_time_val));
 			continue;
 		}
diff --git a/drivers/staging/speakup/speakup_decext.c b/drivers/staging/speakup/speakup_decext.c
index 929a28d618dc..c564bf8e1531 100644
--- a/drivers/staging/speakup/speakup_decext.c
+++ b/drivers/staging/speakup/speakup_decext.c
@@ -206,11 +206,11 @@ static void do_catch_up(struct spk_synth *synth)
 				if (!in_escape)
 					synth->io_ops->synth_out(synth, PROCSPEECH);
 				spin_lock_irqsave(&speakup_info.spinlock,
-							flags);
+						  flags);
 				jiffy_delta_val = jiffy_delta->u.n.value;
 				delay_time_val = delay_time->u.n.value;
 				spin_unlock_irqrestore(&speakup_info.spinlock,
-							flags);
+						       flags);
 				schedule_timeout(msecs_to_jiffies
 						 (delay_time_val));
 				jiff_max = jiffies + jiffy_delta_val;
-- 
2.11.0


