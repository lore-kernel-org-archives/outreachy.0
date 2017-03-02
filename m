X-GM-THRID: 6392947471116402688
X-Received: by 10.99.120.193 with SMTP id t184mr5371301pgc.26.1488477399815;
        Thu, 02 Mar 2017 09:56:39 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.52.140 with SMTP id b134ls2288021ioa.38.gmail; Thu, 02 Mar
 2017 09:56:39 -0800 (PST)
X-Received: by 10.107.178.15 with SMTP id b15mr64512iof.93.1488477399139;
        Thu, 02 Mar 2017 09:56:39 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id 2si919663pfz.1.2017.03.02.09.56.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 09:56:39 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id x66so7363764pfb.1
        for <outreachy-kernel@googlegroups.com>; Thu, 02 Mar 2017 09:56:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=FGPT8evajgkRaAlIdYBQ895Evazb0K+o2K6tQLIYnhg=;
        b=HrYPeYDiEhN+7ayhQCumIc1OW+FWsuwO8MhrnbqI8JSgm05YuVLMWjUBGNNYwptimE
         xp/LZbosdqmHlLluhJoQt/SRxufE6tc6Lrmu2xhrdwKDpkEqGujwhUpbIulv6G3OMjid
         154Fc+jF49fTvL7BoSsG1vB9nQhmwCnaVxcJT8guXbQpyPQuKa9Govy3/arlng3NdQOc
         JHizipww32+gPAjELFZHNxba0mLVo0qTpvg5sK29jLXjUYuG5TQKFJvR3fUOxyIB3HTP
         7KaMQQRO5/ZIRCrUbrr6RZJJnjB0ciuRZt2JysTcJCXvIlnQsSlATG4wNRpyL5zkM7cP
         DBIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=FGPT8evajgkRaAlIdYBQ895Evazb0K+o2K6tQLIYnhg=;
        b=T3Lie4u8GFigo+OzNwzliEisDWvjDWFijCr9HfVypAWwxein+W0sPpof9AIzKu4sAe
         7h10PKavHDyuGyKkHTDPGSAGMJNxUK21S4KKO/m9Abs4idHRdb7ekgxMfG2C40IyHRy9
         Mu9BcT/gVgNUp5ixox6epU8GG1xatntv+eT6UOByfs2H2jX1ADkmG9U9xucKWFCnHSZe
         hytJc9hY2dE2z57ex+RNbhfVsI6drDSeeWBXBDEIW8c21THc/j7vM+Qd624jbJKDUAnE
         q1T6A1+oHRN/i/v66NB2owZ4LSbRUpMJM7COLS0xTFOdZI9VGYaWOaUoX2Pl80zAL8Dr
         dtSQ==
X-Gm-Message-State: AMke39mGVdy32ZlvjB19WfiaL1hY92AiZYeFsS6gLEuDk9t5sUOga3RhTX92Te50cLL16g==
X-Received: by 10.99.45.133 with SMTP id t127mr17136781pgt.224.1488477398832;
        Thu, 02 Mar 2017 09:56:38 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([49.248.235.76])
        by smtp.gmail.com with ESMTPSA id g78sm18403818pfe.5.2017.03.02.09.56.35
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 09:56:38 -0800 (PST)
Date: Thu, 2 Mar 2017 23:26:32 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Stephen Warren <swarren@wwwdotorg.org>, Lee Jones <lee@kernel.org>,
	Eric Anholt <eric@anholt.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
	bcm-kernel-feedback-list@broadcom.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 3/5] staging: bcm2835-camera: fix block comment formatting
Message-ID: <eba770200e9f379dfb4a31dbbd1a0b02fc0637a1.1488477174.git.aishpant@gmail.com>
References: <cover.1488477174.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488477174.git.aishpant@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix block comment formatting to suppress the following warning thrown by
checkpatch: Block comments use a trailing */ on a separate line

Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
---
 drivers/staging/vc04_services/bcm2835-audio/bcm2835-ctl.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-ctl.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-ctl.c
index 17d34c0..80b2062 100644
--- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-ctl.c
+++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-ctl.c
@@ -245,9 +245,10 @@ static int snd_bcm2835_spdif_mask_info(struct snd_kcontrol *kcontrol,
 static int snd_bcm2835_spdif_mask_get(struct snd_kcontrol *kcontrol,
 	struct snd_ctl_elem_value *ucontrol)
 {
-	/* bcm2835 supports only consumer mode and sets all other format flags
-	 * automatically. So the only thing left is signalling non-audio
-	 * content */
+	/*
+	 * bcm2835 supports only consumer mode and sets all other format flags
+	 * automatically. So the only thing left is signalling non-audio content
+	 */
 	ucontrol->value.iec958.status[0] = IEC958_AES0_NONAUDIO;
 	return 0;
 }
-- 
2.7.4


