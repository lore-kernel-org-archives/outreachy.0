X-GM-THRID: 6399866946348646400
X-Received: by 10.129.168.202 with SMTP id f193mr17077524ywh.88.1490085162341;
        Tue, 21 Mar 2017 01:32:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.19.61 with SMTP id f58ls1387523ote.36.gmail; Tue, 21 Mar
 2017 01:32:42 -0700 (PDT)
X-Received: by 10.157.58.2 with SMTP id j2mr15595228otc.85.1490085162013;
        Tue, 21 Mar 2017 01:32:42 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id 2si3333400pfx.8.2017.03.21.01.32.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Mar 2017 01:32:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id p189so15472829pfp.0
        for <outreachy-kernel@googlegroups.com>; Tue, 21 Mar 2017 01:32:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=wqGd+RXp5B5OV+mrNFnNd6Dufn8bYZ2OKEGXZOoBMzk=;
        b=hgsYB1OWTA4rihzKHhiKJcCwuCYYhiAsT0D7ri/NyLODxlF0eefuYfGQohgsUjsztW
         RhqK7TPj5J9G6UJV1erVP9HYTs3/bnAkYawebLehc1Yie7a40HfTqw22llvzMZqUzgjt
         IIdy+kC2yV+FN4c7jMPeZGUY0Vd4hGF9oSy8zShh/m5LvNRxAkNXe0GBtkm1thXVX9qp
         Z76V48bmrRIIYzXxY+yBfgzualyhD8eGqyLBjr0ic8v+dEtQqJJB0teS/IvqdesmgJbh
         ZMgCweEGUO6hNbrDW0fFfo166ISo92XkeTsLzXqwHWK3ps3bA7vzIk4d2FZJhhNBiWFK
         FBnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=wqGd+RXp5B5OV+mrNFnNd6Dufn8bYZ2OKEGXZOoBMzk=;
        b=mGukZxT0D7Csn54LFM3gwysmB/d9qamUWBNjSLEb/1x/2wvvKWk5phTGEa2eKxH9zm
         MjMk3ST1aQP3/qVfmvPqB9/TJK+2UUULUHIWk4OomRWjGxCChbk8oifVe0gvDzV0/TCM
         2MvTogB2M3CRJYgFW4zD9KBVaIxnJUsO5B3otlp1dE2fFnIEAwM7/XhIugRi2UOiwn84
         HscQ5i6vLrh9CmIcM2PrXs1CZFTkdtCotjOPBTdmAfhGPe1BixfaFXsnnjiNoVNSzkbJ
         7y3nX6f2YrKQd/npYwXhUaUXEKmTCKz6Z0znTOnbb8322kVPJYC0pW5YbKVx67a+BTt+
         gDzQ==
X-Gm-Message-State: AFeK/H3u2InlK/6tgPki4exiK/ytN++Q2QXrDNGw7tfJpsn/r6VZ7gswv+oFoDkIWnjOEg==
X-Received: by 10.99.137.66 with SMTP id v63mr15923032pgd.183.1490085161795;
        Tue, 21 Mar 2017 01:32:41 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id x71sm36838438pfd.58.2017.03.21.01.32.40
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 21 Mar 2017 01:32:40 -0700 (PDT)
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
Subject: [PATCH 4/4] staging: speakup: Fix alignment with parenthesis.
Date: Tue, 21 Mar 2017 14:02:15 +0530
Message-Id: <20170321083215.29209-5-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170321083215.29209-1-arushisinghal19971997@gmail.com>
References: <20170321083215.29209-1-arushisinghal19971997@gmail.com>

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


