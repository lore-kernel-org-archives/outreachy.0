X-GM-THRID: 6392947471116402688
X-Received: by 10.129.75.5 with SMTP id y5mr5228661ywa.28.1488481007218;
        Thu, 02 Mar 2017 10:56:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.11.133 with SMTP id 5ls3648363oth.45.gmail; Thu, 02 Mar
 2017 10:56:46 -0800 (PST)
X-Received: by 10.129.124.138 with SMTP id x132mr5827004ywc.138.1488481006788;
        Thu, 02 Mar 2017 10:56:46 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id u12si1724002pfd.3.2017.03.02.10.56.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 10:56:46 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id j5so7532423pfb.3
        for <outreachy-kernel@googlegroups.com>; Thu, 02 Mar 2017 10:56:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=FGPT8evajgkRaAlIdYBQ895Evazb0K+o2K6tQLIYnhg=;
        b=Jbkfiw2TXuvtT7MaC6EhoDx0TzyRAnRsKeZguM1t1eohiTTvHdAm1CLd25hMkL4y2b
         IZ8/2cr5FIcO8zvlU0ztkebNOJVoJUS0IXKSCkyaAiG8ta9uN2YQ78XxykAouLmzvbgZ
         y6oSMrSW939mtCh/5EyKvPf5zKJoq+GSD/iWl8mzWhokX77ZXNcKV2uVOTRxaqvxFY9F
         GWW8AIt8283oLE553DulEiCdsTlnKmrpe68xL6u7CEaYkiZAMrrKOZN0JttUe6sNZt9S
         c+xUkUJeBTKY+1W4UQCf3l+WbEn+yClJ3Icb6a1HrbN5BBSWBdQeDSE5/DgNV2sOB86w
         erww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=FGPT8evajgkRaAlIdYBQ895Evazb0K+o2K6tQLIYnhg=;
        b=NWVtki6Llk/aJYAQzdFFG/6yGH2RTkadDnE936CIA6J2JiAH7dU0Km7A27eeIU2t62
         6/iUtsR3Gff87zemU6QnG4qWEz9Aho0LfJq2mcXAxtSnaMnWL/hKMHnJrasemnDnwxYf
         YVOwjLtrhDzA5rSrJnaDeGSxiYGeLyI9HFtggC87FdFuIsGfXJT4bQFCeI3RI4SwgyEY
         Ol/wCQM28jvdGlDRORYZCayPl2cl5I17unyJJ9JzFh5S9kRPtpgkfEaQw+AQ+r4H4ROu
         rNc7Bk4MucWOzQw49ABt+R5/Sepcq3KWLWsSfOKgmk4Fu5v7rS19w6AWdUyF8Ia+PC3T
         s9eg==
X-Gm-Message-State: AMke39neH/VKKr/pv1ajMHvOHuOdTyOdGdl9BzhZs/fZnqb5IL7WahP0NEfOssP8VJ7VKQ==
X-Received: by 10.99.152.10 with SMTP id q10mr17149005pgd.192.1488481006439;
        Thu, 02 Mar 2017 10:56:46 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([106.51.241.134])
        by smtp.gmail.com with ESMTPSA id o125sm18522476pfb.109.2017.03.02.10.56.43
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 10:56:45 -0800 (PST)
Date: Fri, 3 Mar 2017 00:26:41 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Stephen Warren <swarren@wwwdotorg.org>, Lee Jones <lee@kernel.org>,
	Eric Anholt <eric@anholt.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
	bcm-kernel-feedback-list@broadcom.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v5 3/5] staging: bcm2835-audio: use kernel preferred block
 commenting style
Message-ID: <eba770200e9f379dfb4a31dbbd1a0b02fc0637a1.1488480443.git.aishpant@gmail.com>
References: <cover.1488480443.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488480443.git.aishpant@gmail.com>
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


