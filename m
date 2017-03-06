X-GM-THRID: 6394401254530875392
X-Received: by 10.157.60.52 with SMTP id q49mr6452404otc.108.1488812586289;
        Mon, 06 Mar 2017 07:03:06 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.138.32 with SMTP id m32ls4594425iod.52.gmail; Mon, 06 Mar
 2017 07:03:05 -0800 (PST)
X-Received: by 10.107.17.92 with SMTP id z89mr6139736ioi.3.1488812585335;
        Mon, 06 Mar 2017 07:03:05 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id a3si72138pfb.2.2017.03.06.07.03.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Mar 2017 07:03:05 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id o126so3742038pfb.1
        for <outreachy-kernel@googlegroups.com>; Mon, 06 Mar 2017 07:03:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=/kuCqRvmu5KqF8W9ILjJ6CuUbJ+UTLcb75fsjoAXcFk=;
        b=PkPADdEMdz6sqB8VkDZPJpk1xzppyNHR9NlCWnQepUpHHr3/jJhI7OXA4+P0A0oCjD
         VqiPyv3sm2qs6pHfwL56T0iOryP7O77eqIDSoAaqreCzBHFvT8BlmK/fh0Fr8p8zhO7w
         lL8VQo/09n3HCPirtU/07igKAIsB8R0ppaAq0jxz6AMwdBIM+5V2KsNP/3x9EUYPeuJ8
         ywspby3leEDGstf914n8sshBruvFGD31UGnwAyvwmrf2bDCYJ/Nof5qlC25nOWGaHe/A
         eFP3AyByJNg2afzADz0Ti8mwU0mgEAhBJ1uHlvKxIKOyrY9DHExergmQCXF6Xd7dWDHA
         KkyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=/kuCqRvmu5KqF8W9ILjJ6CuUbJ+UTLcb75fsjoAXcFk=;
        b=Hd2WUQewaaD0qrztiZa4O3osiS7dx4xc6jZW9mSJDg2TGkE3QvV6iYTyJxpE+QudV/
         gb5VXB2IWqfpwhIKscTtcxCHphq/RGDtzRd26KfvapOkzTFzM6Dq/K1ln5oZ77M6+9ig
         hnSY/gigHP/7B5MEfJ0kEq0mis71wXe0n8MQkEsNePagv/0e4YTOsJR3cBsGimoHfcXm
         pXaDxgVAH9aq6iwAnswE+68qq7HkQTqF1TblhAlFQJNBvGRizOFz5JfeV85vKxi5FqF7
         SctbZIjNT067IDg1v7SZvUFx3oY3w8RactbgDzirlGyk84GPzAcC7/e8NHuItVEXd1J2
         BXAw==
X-Gm-Message-State: AMke39nTHK64hxJz78tA+UFO62azc/6CuZgz8mVEYbdI8lN+9TFIVDIQ1q1E9C5BfhQhww==
X-Received: by 10.99.241.83 with SMTP id o19mr17775370pgk.81.1488812585030;
        Mon, 06 Mar 2017 07:03:05 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([106.51.134.163])
        by smtp.gmail.com with ESMTPSA id q73sm40197088pfa.129.2017.03.06.07.02.59
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Mar 2017 07:03:04 -0800 (PST)
Date: Mon, 6 Mar 2017 20:32:51 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Stephen Warren <swarren@wwwdotorg.org>, Lee Jones <lee@kernel.org>,
	Eric Anholt <eric@anholt.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
	bcm-kernel-feedback-list@broadcom.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/4] staging: bcm2835-audio: Replace kmalloc with kzalloc
Message-ID: <f92aa17557abb2764c31fba1d3bc4a89d291d885.1488811728.git.aishpant@gmail.com>
References: <cover.1488811728.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488811728.git.aishpant@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Replace kmalloc and memset with kzalloc.

Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
---
 drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
index c54bef3..005e287 100644
--- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
+++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
@@ -290,11 +290,10 @@ vc_vchi_audio_init(VCHI_INSTANCE_T vchi_instance,
 		return NULL;
 	}
 	/* Allocate memory for this instance */
-	instance = kmalloc(sizeof(*instance), GFP_KERNEL);
+	instance = kzalloc(sizeof(*instance), GFP_KERNEL);
 	if (!instance)
 		return NULL;
 
-	memset(instance, 0, sizeof(*instance));
 	instance->num_connections = num_connections;
 
 	/* Create a lock for exclusive, serialized VCHI connection access */
-- 
2.7.4


