X-GM-THRID: 6394401254530875392
X-Received: by 10.107.56.138 with SMTP id f132mr692707ioa.9.1488906730072;
        Tue, 07 Mar 2017 09:12:10 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.34.49 with SMTP id o46ls913653ota.35.gmail; Tue, 07 Mar
 2017 09:12:09 -0800 (PST)
X-Received: by 10.157.10.56 with SMTP id 53mr614638otg.120.1488906729681;
        Tue, 07 Mar 2017 09:12:09 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id 2si119320pfz.1.2017.03.07.09.12.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Mar 2017 09:12:09 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id o126so729488pfb.1
        for <outreachy-kernel@googlegroups.com>; Tue, 07 Mar 2017 09:12:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=rLui3KWcmwpbv91DgwwxXNQN0cqnh96LQ+XgIOldjho=;
        b=JmvgwYWWmo0guPVbtMkdZPmkI8eVEvPr0jRBHT++tvjmLSDSzkvCCarDpqMCr3Hdiz
         WjXBuZxIxK3n6mhTeXw1fIzrvTJaBbRsl0uZ0JH5ccXkpMPpk+eiF0IXV5hmm8Vp2+Va
         tYOcQf10KcvvsG+yp2AE7pu6y/67e0zGp0M2bLzRjtRSwCshrJE9uAAhIgx9wuA+5+ue
         ly4ffZ0RoarWUOdl02KzaAEKRze0Q5iyVWBl6MFZc/GuMUBjespJLpcQLviODBBOnTL5
         /7Q0cbUeFpWrEMUY9YBhmc1IXhsI8gLNV7eTTopfzIwQgIeCf2eaROkdgxlTQVx9kNOP
         9HHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=rLui3KWcmwpbv91DgwwxXNQN0cqnh96LQ+XgIOldjho=;
        b=uC1Oy7V+7Z66qk3hTCY34WiB2hUGxOzKwCHJ0wDhAfVV1G5dBuvR8U2ZxDCPnUQwF0
         5mzbb5qW5XL4K7SKGG3V+PMmPB4nSVW4/kSbBnejwZvLNl+AmPAtBmykLGvYTyMFkQK4
         vFQnzcIPnT4g9NduwZJvp8cT4IEUZXuHet/xY3NAQxZ1iHUsuA8NQhxRs34OWaeLNgOm
         9quMRBKqe35b+URQ0eZmMidNY6DlkAqst7Emk8SSz4VkLW3E3ORgnieBbykYo3yxBn/9
         9AP5H+KUM4JQGvMTig28601mhFu7nHq00K3exbgrjX7IwdRjjkLNICRrR06wqk4vhseq
         b1Ow==
X-Gm-Message-State: AMke39mAvTWXh6s6fyFZlokt7PTtnln+S/F6JfbVESA6rhpeR3k6+DC74IS2W1sBir98sg==
X-Received: by 10.84.233.200 with SMTP id m8mr1926426pln.92.1488906729447;
        Tue, 07 Mar 2017 09:12:09 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([106.51.133.119])
        by smtp.gmail.com with ESMTPSA id 80sm968370pgd.39.2017.03.07.09.12.05
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Mar 2017 09:12:09 -0800 (PST)
Date: Tue, 7 Mar 2017 22:42:03 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Stephen Warren <swarren@wwwdotorg.org>, Lee Jones <lee@kernel.org>,
	Eric Anholt <eric@anholt.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
	bcm-kernel-feedback-list@broadcom.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 3/4] staging: bcm2835-audio: propagate PTR_ERR value
 instead of -EPERM
Message-ID: <755a6693d4ecf0913ee6ccff60f99999062eb70e.1488906373.git.aishpant@gmail.com>
References: <cover.1488906373.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488906373.git.aishpant@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

It is better to propagate PTR_ERR value instead of a hardcoded value
(-EPERM here)

Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
---
 drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
index d2686b4..c5f3be8 100644
--- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
+++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
@@ -435,7 +435,7 @@ static int bcm2835_audio_open_connection(struct bcm2835_alsa_stream *alsa_stream
 	if (IS_ERR(instance)) {
 		LOG_ERR("%s: failed to initialize audio service\n", __func__);
 
-		ret = -EPERM;
+		ret = PTR_ERR(instance);
 		goto err_free_mem;
 	}
 
-- 
2.7.4


