X-GM-THRID: 6399389892445470720
X-Received: by 10.129.160.83 with SMTP id x80mr14426553ywg.90.1489974067589;
        Sun, 19 Mar 2017 18:41:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.35.87 with SMTP id k23ls12207399otd.20.gmail; Sun, 19 Mar
 2017 18:41:07 -0700 (PDT)
X-Received: by 10.157.17.123 with SMTP id p56mr12598419otp.116.1489974067241;
        Sun, 19 Mar 2017 18:41:07 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id y90si2411115pfa.6.2017.03.19.18.41.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 19 Mar 2017 18:41:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id 79so8618188pgf.0
        for <outreachy-kernel@googlegroups.com>; Sun, 19 Mar 2017 18:41:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=wqGd+RXp5B5OV+mrNFnNd6Dufn8bYZ2OKEGXZOoBMzk=;
        b=J1doyI/OmVKhXQlCnDL7PBWazhxr9+iLNFh/PH5h4FGwh4I+3jPtkv32eH4wXE40O2
         gz04XSG+t9fxe79NF3y1SaYM14FWTeeXbdd5UzR7/1y5T/LMb+/XXTNsgd6AUDOuCuQp
         CpCK8iSfzvmWjFSuNNCqTHG+I1KcB2/3NVAzIJM5cEN0WVkyxAMUF0LNdaa5rl3Ttd5+
         bHpM+qW9H9eoN9hV2/zAKpqYtwlmwSKrCRF5S70BMKinM2pxbk01GTX05/SMPEJJ6CTv
         pW+G/Ckq8sKWApHWAd94jPmLUHYD7EK5SiTD5a+7ygrXqSjwU9UOcAyrtO6tPoh+tXx2
         XmWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=wqGd+RXp5B5OV+mrNFnNd6Dufn8bYZ2OKEGXZOoBMzk=;
        b=Gjym2uwXzIoj/L62doseZiyAm6qdF737OSMsl+27X8ldJXt1i+frnk9jbtweX0z+QQ
         ULWn9KTcr4bXUoCXq1J8wLubExqxt+HDNub3PdKOo+H1Ftk2ZWfq70H7La8+iuUdXAAm
         x+CUSIYLEV23Ico6DkYxtVIsvjmsJE9Vs54HjaG1b/QclI0wPT0b97GK8sULF7qaCOTj
         8L34cvmrMqrPstTkhYWNAoTYnQdiEqxC22wwsUJX8nCcqEvDrc26EbEBpmQgnJXqwnAI
         oP6oNAGdhAz1O0jf4C5CPbqC7qcDKOaPWrP3HvEn7pxiFFaYAlmM8bWGlrtscBiR8MEW
         9CzA==
X-Gm-Message-State: AFeK/H0QGxe5RL3ZzR+2DCt6AV6T16/uZ5uacMcLfIRwZdPG0240Ci1pQB6aR1Y+hdkRIA==
X-Received: by 10.84.229.73 with SMTP id d9mr29299258pln.177.1489974066571;
        Sun, 19 Mar 2017 18:41:06 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id s3sm29418632pgn.55.2017.03.19.18.41.04
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 19 Mar 2017 18:41:05 -0700 (PDT)
Date: Mon, 20 Mar 2017 07:11:02 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: w.d.hubbs@gmail.com
Cc: Chris Brannon <chris@the-brannons.com>, Kirk Reiser <kirk@reisers.ca>,
	Samuel Thibault <samuel.thibault@ens-lyon.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	speakup@linux-speakup.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: speakup: Fix alignment with parenthesis.
Message-ID: <20170320014102.GA22580@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

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


