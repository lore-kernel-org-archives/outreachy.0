X-GM-THRID: 6525083396428791808
X-Received: by 10.202.8.10 with SMTP id 10mr902507oii.111.1519241813786;
        Wed, 21 Feb 2018 11:36:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.202.231.17 with SMTP id e17ls260982oih.2.gmail; Wed, 21 Feb
 2018 11:36:52 -0800 (PST)
X-Google-Smtp-Source: AH8x2271N3cY1SCKsfX/jTH4dD/47bFhJIk+cj+1eSdu+1O9tFiypCerCYX2cV/K5VUV+KYFSCw/
X-Received: by 10.202.83.67 with SMTP id h64mr2160723oib.8.1519241812852;
        Wed, 21 Feb 2018 11:36:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519241812; cv=none;
        d=google.com; s=arc-20160816;
        b=mI9DzXb/UhTNXUyyuP6M4NZfG5wsaTtjd2Wusd/eXg55wRaJlxlgVtIPSOnz6FKexH
         W4G53lbYwL1wvwfccUwpGnditaiSzVb9bt9EeyH/GU4As4wicccj5ssCjYrS7pYj1MLa
         r7Q7J1gFdkoh1uLhqnJSwiEQl9HKBZdYBvTfWEZd+H5a4eRUDeeoskZ/vSAjETsaFTMO
         IXDU1EFZrF3DNVxTiE2+ylFQhe3DFYrWlIz1mxT18jC9JN6AMfcaV8uy4v75MkiFWU7B
         yetLtklV7Hyer5XtkJs218/1uR/AeDg8Rwlb4fZSkPeUS2rqy5V5UMN/Uj8rlYu6Wh/R
         oQuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=C06vLndfAmYilTRtXeP16mOyQjOotnXXhjizgY/wYgs=;
        b=iY9NB8Lq0OpKHk8ugvpXYqDjybQgkkPc08+lgnwVYy6Kubn3YPD+EbqUv/AVrdDHhn
         P+HO125NWX7UV2Uilrou/yrKpCT9OaDFor7ArmTPMNRF+5ukNIRsXTnDRczrhqTBJnY2
         PgLGUZHegSmqoqlTSWc1S8jALe85a4Gry3xl94s+9MHBKCnxUfNvIuvgiz5xDUJElQyv
         f3RnLZkFet8Hpm1FDh9+B20UAqq/Eowut4vJkVV3jUPNsC3lstyMv3I6fRawP+WpVBD8
         gY3ABgJ3muT/rpM+nWc4sZF1hOaoNa4T/01+bLD6GW47n9EQcoLMaomoHagA7dx+L3Le
         MuBQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=T3EVpIaK;
       spf=pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c01::242 as permitted sender) smtp.mailfrom=santhameena13@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <santhameena13@gmail.com>
Received: from mail-pl0-x242.google.com (mail-pl0-x242.google.com. [2607:f8b0:400e:c01::242])
        by gmr-mx.google.com with ESMTPS id y81si839861oia.4.2018.02.21.11.36.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Feb 2018 11:36:52 -0800 (PST)
Received-SPF: pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c01::242 as permitted sender) client-ip=2607:f8b0:400e:c01::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=T3EVpIaK;
       spf=pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c01::242 as permitted sender) smtp.mailfrom=santhameena13@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl0-x242.google.com with SMTP id 31so1484806ple.9
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Feb 2018 11:36:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=C06vLndfAmYilTRtXeP16mOyQjOotnXXhjizgY/wYgs=;
        b=T3EVpIaKDuGhX4PzaYfjiWxzy20uyW3H7i8I5DIoyNbdM9hd+HtJn8JulAscG2EWTO
         O0xoXFmAWAySCMKNis7zpoPPAex3Xf4r1atTfjl7ZmxOc7mryMPJAvSrzu/gy5BVPi0F
         H6DH628OW/CrtZqxBSdGGpDUGI6DDplmba4Vbnh7/r/YeXv2RB/tZPOSELUTLtJ/sZ52
         60yUy4z1WXbsb5PQh1OstqdbBSoDj/keDc/J5okvDEaO5OYTf+2p+FjH+Lt6aNLuwXFG
         kZXdgQ9RQhYxz3iyzMZ3xifv2ia5+pJAhbd53/sQNekim/+Hrx22bC4JLSHvWbnYLlyQ
         sjSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=C06vLndfAmYilTRtXeP16mOyQjOotnXXhjizgY/wYgs=;
        b=VtQ7M2I9TauFWOWBYwrBQEUy0XjAEXMw16M92dAGo/wUJ3rMBej/PSdo8pZ65Enej7
         2P2dKLbZIeRoWRcV85IJqPAT5PpK3facj586/T7IRw3VX0KphhOFwrimLepCOtLh6OPY
         bt7gABIK5kNVdzxUAGZKQtDjfPa3pUEdw7NLdGXIYXy9kXP6swyDE92bds8EZrz/0Gqr
         aH0JgHaYxT0/t7+SuRupi79c79XjUG5BWDyDzNdk9OxpMRCxjU52bZm4lxCjV6c8LUC0
         iTQk8V5K7znhjTiCEEp8i2fdVQ4KcfcTUMIZqtMOB+h9A5PQXZlGQ/cbL+NSfZcIRb7q
         cG2w==
X-Gm-Message-State: APf1xPDEWpcr3KgaPoQUj9XQwwcD4SubpZUwPnqPq+kRea1/1k1EGL9r
	tWFD6Q+Jeh+Q8FgEWfvWP/w=
X-Received: by 2002:a17:902:5501:: with SMTP id f1-v6mr4069597pli.50.1519241812113;
        Wed, 21 Feb 2018 11:36:52 -0800 (PST)
Return-Path: <santhameena13@gmail.com>
Received: from localhost.localdomain (ResNet-23-0.resnet.ucsb.edu. [169.231.23.0])
        by smtp.gmail.com with ESMTPSA id t63sm33678515pfj.44.2018.02.21.11.36.50
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 21 Feb 2018 11:36:51 -0800 (PST)
From: Santha Meena Ramamoorthy <santhameena13@gmail.com>
To: gregkh@linuxfoundation.org
Cc: w.d.hubbs@gmail.com,
	chris@the-brannons.com,
	outreachy-kernel@googlegroups.com,
	Santha Meena Ramamoorthy <santhameena13@gmail.com>
Subject: [PATCH] staging: speakup: match alignment with open paranthesis
Date: Wed, 21 Feb 2018 11:36:45 -0800
Message-Id: <1519241805-15871-1-git-send-email-santhameena13@gmail.com>
X-Mailer: git-send-email 2.7.4

Match alignment of the parameters with the open paranthesis to improve
readability and to conform to Linux kernel coding style. Problem found
using checkpatch.

Signed-off-by: Santha Meena Ramamoorthy <santhameena13@gmail.com>
---
 drivers/staging/speakup/speakup_decpc.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/speakup/speakup_decpc.c b/drivers/staging/speakup/speakup_decpc.c
index 303f393..6649309 100644
--- a/drivers/staging/speakup/speakup_decpc.c
+++ b/drivers/staging/speakup/speakup_decpc.c
@@ -349,7 +349,7 @@ static int testkernel(void)
 		return 0;
 	else if (dt_stat == 0x0dec)
 		pr_warn("dec_pc at 0x%x, software not loaded\n",
-				speakup_info.port_tts);
+			speakup_info.port_tts);
 	status = -3;
 oops:	synth_release_region(speakup_info.port_tts, SYNTH_IO_EXTENT);
 	speakup_info.port_tts = 0;
@@ -412,11 +412,11 @@ static void do_catch_up(struct spk_synth *synth)
 				if (!in_escape)
 					dt_sendchar(PROCSPEECH);
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
2.7.4


