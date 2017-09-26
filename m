X-GM-THRID: 6469984660854145024
X-Received: by 10.28.138.130 with SMTP id m124mr264996wmd.27.1506422662953;
        Tue, 26 Sep 2017 03:44:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.16.197 with SMTP id 66ls2806096ljq.1.gmail; Tue, 26 Sep
 2017 03:44:21 -0700 (PDT)
X-Received: by 10.46.85.13 with SMTP id j13mr703845ljb.5.1506422661630;
        Tue, 26 Sep 2017 03:44:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506422661; cv=none;
        d=google.com; s=arc-20160816;
        b=dBZN9vl135rSHd2qtWiod5KT4xfMaTqxUrcTqHBP5hxK1UVDABTODJHJJzspSIRHzq
         dcZXbk8Eb6xOTeBXp6U5XnqzwZ1EO6L+PawqtNeObK5IrgDzqlMmH4Co/DUILhG6g80L
         gN3pGiROf+Kp8iiJOlay1eDp1tETTJzCBOzDik/upDNoyqGRf/gC/ZfKa42P5WYDEaJr
         EhzXClxdcDJceQJ5e7odQdSYhWFdJzaHsAyLpUea2TneW5acj2YNQW+x2xv/TR3am7jR
         WaFf7EOKlcf3YtJ8ZJqczoDPQ+Hv2Qkc59HaMx4IGAFj0DhJawS2yEedvKBUu2alSGl/
         r6ZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=KkPdg8SyOiFxa4Pf24fMUbboSn0BXDokNk2aicXJ07I=;
        b=YiPMr/74uQY0gX3gk8+l3jmR7E2Hsx3616cOPgVP8CRQuAVoOUh6Vw7kkWck5EBB8y
         lF0askZsh5iydNd5rx5/+XZjDMLYY3hm/Uc3OZOLnc1WuZfSLDPcz8QrrgmxO6tcZIVg
         GpQaYaGA47xGGraA67UB8Seu77opRRIwBE+9Sy4LGmZB8ZZfa8sP1ihiFH2A8EwPoCkE
         TCbJlukXnqh1awalQfWdlHdi8cuy8wf0G5qGDNi/z0aPMroV1jZtiF7z6I6iBR4itbc0
         8ImNFwtOyHmdWl/Sb2sc8Orlv+rypc44vPM3clhvSqWeWFxzOWlcWM9AZfQ7ET8Ymlhk
         vjtw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kFgVqz3i;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <mihaela.muraru21@gmail.com>
Received: from mail-wm0-x243.google.com (mail-wm0-x243.google.com. [2a00:1450:400c:c09::243])
        by gmr-mx.google.com with ESMTPS id k18si871676wmd.1.2017.09.26.03.44.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Sep 2017 03:44:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) client-ip=2a00:1450:400c:c09::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kFgVqz3i;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x243.google.com with SMTP id x17so8979784wmd.5
        for <outreachy-kernel@googlegroups.com>; Tue, 26 Sep 2017 03:44:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=KkPdg8SyOiFxa4Pf24fMUbboSn0BXDokNk2aicXJ07I=;
        b=kFgVqz3i7w2dzYbCzHiOJySrfNO9DnF4Rp18qa5SvYNEcZo/TdEa0r99mmoMl9JrWV
         HwMfwmhJRjHV9PkoNDrTUr4gc0i30cKIeekE+VXKADRorz6uD/0eev3skiWkN+AEupzS
         EEPHTYAj8/0fnCmgIDWIVCzSaDg2EVh5/fzrnw8cb/d2Hf2fm7DkVhNUR2ISoZtZKf3J
         d5wVDr5GzK4Xx+Tqyrsru0dXJ+1txLLfAej5fW7YcTTu4EXEqbV0Ff2XuHeB2qNrA3/H
         In7noxRg4ZACIL7K5V1GR5pZOxNb1GBYoYpAhUYE4iNxLyCHrMwgjGxAkgOXdtP+V5na
         DU7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=KkPdg8SyOiFxa4Pf24fMUbboSn0BXDokNk2aicXJ07I=;
        b=ZjjgngbnFynsl9hIMmCEZsp7GZebSRaYHW1dULlnfJrTRhdmiVMYuvtIfEWNRYbUco
         t0sBckgE6hqspFSvFJNKxR+8fcR0ngm2hYj8u4YH360A+xrLdm7xtWAra4AwosbQPUmC
         Zf0a07jTYFXpH7fwjsUxX3j95whVK4pVuioF+GWPIX1Pi2dJ7f/f0GI+LRSdjIef14/z
         uy/MtZ0q75fXOH0m8M8iXhI+iYEidpSnNjdx4xlKQE6Zryc06dY3k4z5He329LD99ePz
         VEFuE5L1/jJJ5Rv2KUPBHuNJsE0kxQYSCEb+kEzi1XKvWsguNlI0db7Mi/oEu+bnaSSN
         o6tQ==
X-Gm-Message-State: AHPjjUj+vkurKoYpkiWrXERR+UZJ2ksqHaUMVUlLOggQS2sgAMsfgfSJ
	UqYvApwBKzU2uYUddlEPl82wHA==
X-Google-Smtp-Source: AOwi7QBlu+lXtnP/sqWFlWCkF3R5dvzFPzOamBtrL8jS/suQu3lZ2q33yFIbAk0RoGmsYPwJO0VfJw==
X-Received: by 10.28.105.200 with SMTP id z69mr2425134wmh.20.1506422661282;
        Tue, 26 Sep 2017 03:44:21 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from ubuntu (fw-ext-11.romania.luxoft.com. [195.90.110.113])
        by smtp.gmail.com with ESMTPSA id m19sm1099942wma.24.2017.09.26.03.44.20
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 26 Sep 2017 03:44:20 -0700 (PDT)
Date: Tue, 26 Sep 2017 03:44:19 -0700
From: Mihaela Muraru <mihaela.muraru21@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v3] staging: rtl8712: Fix indent coding style issue
Message-ID: <20170926104419.GA6062@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch fixes an indentation coding style issue found by
checkpatch.pl:

WARNING: suspect code indent for conditional statements (16, 32)

Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>

Acked-by Julia Lawall <julia.lawall@lip6.fr>

---
Changes in v3:
	- added back ack
---
 drivers/staging/rtl8712/rtl8712_recv.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8712/rtl8712_recv.c b/drivers/staging/rtl8712/rtl8712_recv.c
index 0978727..8f555e6 100644
--- a/drivers/staging/rtl8712/rtl8712_recv.c
+++ b/drivers/staging/rtl8712/rtl8712_recv.c
@@ -149,7 +149,7 @@ int r8712_free_recvframe(union recv_frame *precvframe,
 	list_add_tail(&(precvframe->u.hdr.list), &pfree_recv_queue->queue);
 	if (padapter != NULL) {
 		if (pfree_recv_queue == &precvpriv->free_recv_queue)
-				precvpriv->free_recvframe_cnt++;
+			precvpriv->free_recvframe_cnt++;
 	}
 	spin_unlock_irqrestore(&pfree_recv_queue->lock, irqL);
 	return _SUCCESS;
-- 
2.7.4


