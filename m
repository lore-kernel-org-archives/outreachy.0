X-GM-THRID: 6392863906268708864
X-Received: by 10.129.115.197 with SMTP id o188mr4809843ywc.114.1488454728412;
        Thu, 02 Mar 2017 03:38:48 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.63.218 with SMTP id i26ls6641468ote.48.gmail; Thu, 02 Mar
 2017 03:38:48 -0800 (PST)
X-Received: by 10.129.40.134 with SMTP id o128mr4642601ywo.82.1488454728099;
        Thu, 02 Mar 2017 03:38:48 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id 2si659966pfz.1.2017.03.02.03.38.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 03:38:48 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id x66so6541204pfb.1
        for <outreachy-kernel@googlegroups.com>; Thu, 02 Mar 2017 03:38:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=FGPT8evajgkRaAlIdYBQ895Evazb0K+o2K6tQLIYnhg=;
        b=L1qq+AGWMlzmDHbXhzWDwQuo0jpQ2BkCk3ycwnuYohpwxB/AN7P01S0CIa1tJEcyZ/
         LXfJXDdB7lJaKLacjv2BEwnUReNxDhQlMrRPrxZ/04ilhR9OMDuIKgafsLuCuVKltjfX
         ztWkNB5KMU3nwPwNbCc86MIusZJI8xXwAZgQxaL0KT+ljj02NRg27WS5eXwgcDV45A0V
         pGkQ4U8rtgL7R+bkaf6yDXizjanT+5Pmi3kCSlJajnJZUoAtrKfchQI108F2cCXIkoDo
         tdlHecXGOfQdfXEvKewjcSuDNW7HeJbidhdF8mrWCRt8TdztCC0r2JnyfnLiQu24nTGn
         ef/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=FGPT8evajgkRaAlIdYBQ895Evazb0K+o2K6tQLIYnhg=;
        b=CESqyrvpY+LDxFYFqAMIzlqZ5YxU18YDafujsSVSUy0wO6jSpGdX0dFV0oD1g1mixI
         /L6BDPRHcq4q1EKNPbfBsfQyKQHxnrqqIfxioZpxdUKTKZW1h0byo0k6FGNY8C9w9lo3
         C/U46KIY210lp2sWiYAYpWRhCkm2gOgnLiywEpY0gRALKYtx3dYmjPaFifg15+wfP8v5
         7rRf86luPW+NRvljniUTLRNF0hkkp9n7DCC7+kCrI91fVMaUqgXqoDDKz42vB0h8bCfp
         cpQNJcvz6V/UdhyKW+82MTZfwADBlNAEDGce8+qTR+mlqu7M8g7g6sHO30fbreGkpxjL
         b+cg==
X-Gm-Message-State: AMke39keDdGflu6g1tIw/VEswyRDXF+knBBUlJf0fwgJ6eBUJskJPwqhjqiJ0pE8IhiOjA==
X-Received: by 10.84.217.153 with SMTP id p25mr18098738pli.164.1488454727841;
        Thu, 02 Mar 2017 03:38:47 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([121.244.155.11])
        by smtp.gmail.com with ESMTPSA id m6sm16570084pfg.126.2017.03.02.03.38.44
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 03:38:47 -0800 (PST)
Date: Thu, 2 Mar 2017 16:58:51 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Stephen Warren <swarren@wwwdotorg.org>, Lee Jones <lee@kernel.org>,
	Eric Anholt <eric@anholt.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
	bcm-kernel-feedback-list@broadcom.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 3/5] staging: bcm2835-camera: fix block comment formatting
Message-ID: <eba770200e9f379dfb4a31dbbd1a0b02fc0637a1.1488453518.git.aishpant@gmail.com>
References: <cover.1488453518.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488453518.git.aishpant@gmail.com>
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


