X-GM-THRID: 6394401254530875392
X-Received: by 10.129.72.68 with SMTP id v65mr6708064ywa.22.1488812629807;
        Mon, 06 Mar 2017 07:03:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.133.9 with SMTP id h9ls4685003iod.49.gmail; Mon, 06 Mar
 2017 07:03:49 -0800 (PST)
X-Received: by 10.36.89.1 with SMTP id p1mr3942690itb.16.1488812629011;
        Mon, 06 Mar 2017 07:03:49 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id c123si67390pfa.4.2017.03.06.07.03.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Mar 2017 07:03:48 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id b5so3167557pgg.1
        for <outreachy-kernel@googlegroups.com>; Mon, 06 Mar 2017 07:03:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=rLui3KWcmwpbv91DgwwxXNQN0cqnh96LQ+XgIOldjho=;
        b=j0tUM2DOLpKh5avsJb/KeGOE8YCeD4xPaHABbZIqyeJxaSBKdwGzj+6OiMOhyDKxTb
         zuYR1yDsbyHSGy34cA2rON9+qdSxCf4luO43VETCZOltCDSi0n2IDNhnYW+Bgdh5nOlC
         l4j8fRVK5kjKMN3ZgYFl3KduS/945RI4gwjZXv26+rsPID/V0lotRS5hUjIT7KMoDs5o
         nf9iA66MPmbKkRM0ydj/R5lGwQrgTxKdFozkGqqqBC9jUNbX/Kt8CoLUN+GhDh9uzQD8
         vyymgpvRjbAmd4f090qrVQS3+jRs0+z4I5NwrCaycuqUIWtCr4coe+LJxj1W8xFBLCjX
         6QsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=rLui3KWcmwpbv91DgwwxXNQN0cqnh96LQ+XgIOldjho=;
        b=iRxuvwxjzbgPsjtrjrMkeyhZR4up7ZHMfM+NtOy8f9LYAxdVol6xsKKh7GobFCS7Pn
         j/+vpHP34lojxBINEGZfRLXs2jUmrkjpbXpIhQd8C3EhtrnynlPOV8+ZsYDxSlD6LgTy
         PX/af4E8hX9JABSHbTf9frq8/sBG/1RlDP4WQaBUw+IJqSIYyJ1EYB6eVoifbqQVsUW9
         6ZsA4XRM2tBjcZl5igPgyNwOgy3oJ3PeCgphFpultqtHmSbiUrQ0RE7GKIBdIzHrbt3H
         E0LsziERxevvHU1E9QLbAdj0iC+n1WF3u3abrx2sXY8Zrc+KTCyczmDYeDK1l6o3vZX/
         ap2g==
X-Gm-Message-State: AMke39nEOscFA7Z4phXpRcCJX9fP02KUkDVgt3YW56MZ+NVxVneFTemut7Jg46fTo7OhDg==
X-Received: by 10.99.127.27 with SMTP id a27mr20568008pgd.87.1488812628761;
        Mon, 06 Mar 2017 07:03:48 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([106.51.134.163])
        by smtp.gmail.com with ESMTPSA id o189sm40504564pga.12.2017.03.06.07.03.43
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Mar 2017 07:03:48 -0800 (PST)
Date: Mon, 6 Mar 2017 20:33:38 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Stephen Warren <swarren@wwwdotorg.org>, Lee Jones <lee@kernel.org>,
	Eric Anholt <eric@anholt.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
	bcm-kernel-feedback-list@broadcom.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 3/4] staging: bcm2835-audio: propagate PTR_ERR value instead
 of -EPERM
Message-ID: <93044d0f4dbd3f7c36a189708231d8471dce079d.1488811728.git.aishpant@gmail.com>
References: <cover.1488811728.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488811728.git.aishpant@gmail.com>
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


