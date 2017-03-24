X-GM-THRID: 6401022788262428672
X-Received: by 10.99.50.2 with SMTP id y2mr2415019pgy.173.1490354255007;
        Fri, 24 Mar 2017 04:17:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.160.13 with SMTP id j13ls2128325ioe.10.gmail; Fri, 24 Mar
 2017 04:17:34 -0700 (PDT)
X-Received: by 10.107.17.32 with SMTP id z32mr2357122ioi.84.1490354254181;
        Fri, 24 Mar 2017 04:17:34 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id y90si394777pfa.6.2017.03.24.04.17.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 24 Mar 2017 04:17:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id 81so2622673pgh.3
        for <outreachy-kernel@googlegroups.com>; Fri, 24 Mar 2017 04:17:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=dc30KPR8B1fl0U//bPwN4IV03aQgtWiy4CRRMiPgGHs=;
        b=r6rk4NpKuvXW8pbWuqs9DCj9Svkx/6KEF8OqVz3Q3WERVHzkMNyi/H8uiOVUSnJeIe
         w12tgK+XJrOnQy+v2z+/QThqZ8vj1Cliok/10NAJ3aojUv7Z1+B28qd6ZX01BgBtsAYX
         va+ifoINx57x3C/55YPfqZ+uNqVIT8eKK4zY5zgZ9w0h+abUaX+IDQnThCkZeRf+Vqee
         R4LIpXyKgr+COEwRUirg5DGGMBKCbyBaPagIDWV63NQKKHUiODIp004+u3slVWJxAcV8
         coDO+RCW/bbovAuBnH+bSnWAc/rtjTaCNf9Ds+FVFxQdKoIQGxmAtEBZcqDkBLPVy5AX
         UsYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=dc30KPR8B1fl0U//bPwN4IV03aQgtWiy4CRRMiPgGHs=;
        b=n9b86dyE3Tvxa+vaZyrWE3vglVtxB4poxWJdo7YXhy2xmhHGd1O5efKtnfoCkJakcw
         Pt1ChhHS1q3r5AfB/6XfsIjzCwfm6YADmXiYDdqnONuS88sTwb1SeIyIcKS0rqtr8Y2F
         7Z9sjWULIvdVkwvLnuGQlqaxokRy5Sj7NTz/5lnNC51YG4imYDVRWC4dTSd4/kCYl9CD
         WCVjNETvcFzylUczqj+MyCryCYqbNkFM987mMlEuyNaEh8UWu6sRwDffMsFeVKOt55kM
         Vk2OCbmZtHzyHT1qYbiz87xKssO0SJfE3c96Mq4cs3oW7J11s5+CtTNaI72kDuV2E0Zy
         zEdQ==
X-Gm-Message-State: AFeK/H3l7TovRQno3rubw/xABodqJYfIcWNVVF3b0kcqqqUVhr/MyoX61XnODAFE9xA5Sg==
X-Received: by 10.98.209.73 with SMTP id t9mr8779816pfl.203.1490354253930;
        Fri, 24 Mar 2017 04:17:33 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id g5sm4129557pgn.18.2017.03.24.04.17.32
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 24 Mar 2017 04:17:32 -0700 (PDT)
Date: Fri, 24 Mar 2017 16:47:27 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: w.d.hubbs@gmail.com
Cc: Chris Brannon <chris@the-brannons.com>, Kirk Reiser <kirk@reisers.ca>,
	Samuel Thibault <samuel.thibault@ens-lyon.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	speakup@linux-speakup.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH v3] staging: speakup: Align the code.
Message-ID: <20170324111726.GA28563@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Delete tabs and add spaces to align the code to fix the
checkpatch issue: "CHECK: Alignment should match open parenthesis".

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
changes in v3
 - make the commit message more clear.

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


