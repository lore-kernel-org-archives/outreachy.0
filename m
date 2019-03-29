X-GM-THRID: 6673915321016909824
X-Received: by 2002:a0c:b204:: with SMTP id x4mr3548605qvd.17.1553891999981;
        Fri, 29 Mar 2019 13:39:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:ade3:: with SMTP id x32ls206188qvc.1.gmail; Fri, 29 Mar
 2019 13:39:59 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzS542Zs/EPHIVD1PIj01FN84s+qR6i3/1boRTxBHIESmR0cjRbhP2kY3uJxJmrXt7rD4lO
X-Received: by 2002:a0c:ad17:: with SMTP id u23mr4258559qvc.41.1553891999326;
        Fri, 29 Mar 2019 13:39:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553891999; cv=none;
        d=google.com; s=arc-20160816;
        b=QbwO4YbBOpNVeE9yvuMtarqLtkiR8NMOGGq4rZq4ulyoDLB33A6812iSqfLHUmmXx9
         5+6P2I70xTky1Z07fPsL9BxSZukIDsiHr0xC+3Ns3RCjwDuqq689uZeaB/zFdDewgzkh
         sHYcwp5YpXqs2a7nbTQlbpQ4r6qK0KU/VPUhmNfaL4CtbLyDVVBfL3iEci+no8jGEUKh
         AVz8ppo5I49+QCOvGc634ZJeiOScWAls5tANo71FY+AJou+Vd7rMcRnthFceQ/z0wo/u
         mpc3R89Zr3AtVV13XNwdWqDWK5+U6VgvconT7c9mUjhB8hVEBUfF93+lanEculsdZWVw
         JMrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:date:cc:to:from
         :subject:message-id:dkim-signature;
        bh=bAAJW5OMDtXQLBfhDUCKd9y8vnOW78wW9AEwwBn4BQI=;
        b=SnwmpWtnruMbKAq+lS24VrveTMcvifMZuE68zROlo8x3UrL4mb9BZE5xanKLOlERoU
         mVQ+9qyNkK/5STGGMFIXv5WPje/fVgnIXNv8Jqv+VIu0QNyuSZpQlM4x3DyGtjjtZImq
         IoyaNsyXTPVOJNcAzoiYOfZTRPkxIhgi2aKXaNO5hZspTbJFpyhVK+iz6A/+MhU58WT3
         oPf/4wyopAhxSv1mTtLAByJ3nfbKOCfjI2LSuiRftCHLwigryeT/zy3/KrbB8+7GcpE+
         P2Mh1Nl7J9lwwzHvy9AmOwlAMtt0NEFW2luo5QKSWI5qyniFMNJcixmIvYM1RMMXWdhZ
         h3pg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZaOBPLZC;
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <briana.oursler@gmail.com>
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id h186si233577qkc.1.2019.03.29.13.39.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Mar 2019 13:39:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZaOBPLZC;
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x643.google.com with SMTP id b65so1546268plb.6
        for <outreachy-kernel@googlegroups.com>; Fri, 29 Mar 2019 13:39:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:user-agent:mime-version
         :content-transfer-encoding;
        bh=bAAJW5OMDtXQLBfhDUCKd9y8vnOW78wW9AEwwBn4BQI=;
        b=ZaOBPLZCox4TZ2WO3tztRjKFCHdzphBteITv4nVp03an/4sVegCxFpp5z//CP9kZN5
         4lF0LvA7v+P/lUL5nDWFZa3gVH9gH5PKWT4TKFo5HH6wmcCH62de/2q6PpgBr/JA4A6Q
         mrYzWjVxvZOEBPvG/1uypFax+LmCsAah0T38qYQMLrhMuf9TK+0Umhd5TrazLszyrg37
         MiBzHDA5rKMCe6brHi5Tfn//08vx3s19iwDTPkt6/7SYRIq6dALnLtpXjSwvA9KqFkN4
         JdVOwWgDq9VWryAksSZwFjh0dH/UoY6mU+3kYfMw+OOSpC4fns1Y5NhijtHbpqIpOcDl
         jzcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:user-agent
         :mime-version:content-transfer-encoding;
        bh=bAAJW5OMDtXQLBfhDUCKd9y8vnOW78wW9AEwwBn4BQI=;
        b=nnKozQT0d9Ojb9lrr3Cw4qW27s8QAcjF81rLVWM/Pmyh2ODFBpm9Wnvt7zWugWsI33
         j6v0EShGlA5+Af+lUvV+SVwG7Mu6Oknu80a8HyTEFHa7hiBxJg5Ma6mjZPD2QG4yOLi7
         0/48l529JVEN8DqzbZk6Hu5g/taBi3H/4SSwKADVoVNrWJKrUK9BMTjkmMjS/k5LkYzo
         btszpLoB71+oaIuxPBM7V2mez+xBK+ry9Q6PLyXGG1tuiR8CzOFGkzVfenkxFMRNI1nf
         lK0o8Fv6tKsKd3nYHGb16I6/y7pCAMvUzr6iUpdp2KFepeOSgwHwHp57ahGCMz56vFDQ
         TfEg==
X-Gm-Message-State: APjAAAUQHIiLQejEHwTaDoBN5S59Pi/0fhWdvDSSDtFYMc4M3uffoKR4
	/787QELQb12lF6P+z05j21vIofqe88LUaQ==
X-Received: by 2002:a17:902:b617:: with SMTP id b23mr48320202pls.200.1553891998566;
        Fri, 29 Mar 2019 13:39:58 -0700 (PDT)
Return-Path: <briana.oursler@gmail.com>
Received: from supernova (184-98-140-144.phnx.qwest.net. [184.98.140.144])
        by smtp.gmail.com with ESMTPSA id i31sm5488032pgi.36.2019.03.29.13.39.57
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 29 Mar 2019 13:39:57 -0700 (PDT)
Message-ID: <1b8f45c76effdf0b4483c71afd02b2f773812788.camel@gmail.com>
Subject: Subject: [PATCH] staging: greybus: line over 80 characters
From: Briana Oursler <briana.oursler@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org, elder@kernel.org, johan@kernel.org, 
	hvaibhav.linux@gmail.com
Date: Fri, 29 Mar 2019 13:39:56 -0700
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.32.0 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

Replace function call within if-statement with variable to shorten line
length. Issue found by checkpatch.

Signed-off-by: Briana Oursler <briana.oursler@gmail.com>
---
 drivers/staging/greybus/arche-platform.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/greybus/arche-platform.c b/drivers/staging/greybus/arche-platform.c
index 6eb842040c22..b839a9eecc55 100644
--- a/drivers/staging/greybus/arche-platform.c
+++ b/drivers/staging/greybus/arche-platform.c
@@ -155,7 +155,9 @@ static irqreturn_t arche_platform_wd_irq(int irq, void *devid)
 {
 	struct arche_platform_drvdata *arche_pdata = devid;
 	unsigned long flags;
+	unsigned long cold_jiffies;
 
+	cold_jiffies = msecs_to_jiffies(WD_COLDBOOT_PULSE_WIDTH_MS);
 	spin_lock_irqsave(&arche_pdata->wake_lock, flags);
 
 	if (gpiod_get_value(arche_pdata->wake_detect)) {
@@ -169,7 +171,7 @@ static irqreturn_t arche_platform_wd_irq(int irq, void *devid)
 		if (arche_pdata->wake_detect_state == WD_STATE_BOOT_INIT) {
 			if (time_before(jiffies,
 					arche_pdata->wake_detect_start +
-					msecs_to_jiffies(WD_COLDBOOT_PULSE_WIDTH_MS))) {
+					cold_jiffies)) {
 				arche_platform_set_wake_detect_state(arche_pdata,
 								     WD_STATE_IDLE);
 			} else {
-- 
2.21.0



