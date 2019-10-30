X-GM-THRID: 6753426615643930624
X-Received: by 2002:a17:90a:a406:: with SMTP id y6mr11240117pjp.106.1572404665670;
        Tue, 29 Oct 2019 20:04:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:b042:: with SMTP id z2ls5598856pgo.16.gmail; Tue, 29 Oct
 2019 20:04:24 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxiucqAnaD1+ALBy5ttDV7auOrTrXQTbvGUkEntkGfKD02ve1/9bOIDIB3NnxNn9/mNPveF
X-Received: by 2002:a63:2225:: with SMTP id i37mr21805786pgi.62.1572404664046;
        Tue, 29 Oct 2019 20:04:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572404664; cv=none;
        d=google.com; s=arc-20160816;
        b=IM+dcZwOv0Nxv/VAJ3mweU2+LsrXav8zwg8DzYUVYU5pxo/GHnwrHk7Pbk6UH3Hzux
         IzNfRg1T7xYqARvRK16X3X14Pc2zMd5waM/0Q25qbq3IuuCjjAvyxlv8606uWoumHXyk
         gQPeUZvbV05C19Jas1b6gU5cEg5TVVklvGhqLzlQ3pjKdIZxYuL5R5tm2NyuKQgRVNvy
         7vP9chIWaITeGi8kXfZnwUBW/Lkv/h1T8LIqSEOWugZujIVRbtBb/RkUYKBCFP2TQDbk
         dqFSrp7bmOhArNMpBExvp9BrMWAlJeNJa4IeHOWgYxMVYiDBKX3Y+h3et4YR4JRHIMMx
         W2xw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:mail-followup-to:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=yw5KIz1Ay52foV3yHJvfyo63Zmw6vEdj3EDOEyd1zlk=;
        b=ku/YoSxNbRKkEHoJQKIIK2+CCtcQ9Hf96OvpK4AxUYiPcTFYu98fzabxULtW/cSCFf
         wzvLannXDS3AlFfoyXq38WXc42+isCrneYG/+26dd+LDlgQje321c5CLU1nAFzckz7EB
         F4yILI0c3kG6Lkwyy/rVph1cSsI2IxliopPu+j4ROeJi/3o+fvKXItep58bDycJWUj8G
         IBoH8E4Mmx1T18ntWqw7OBGZM0FU6Lr3AtzAQ9YV5u0Y2wqEYLoi9y6mfR+l5CCtFJol
         hsv63cqw85EmEH3dEl3GeV3ZTz7+lyEUkZCzCuwUV1TYxYJVUyO0xSww4XS70nsu7gGA
         0RYg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ewF9QjW+;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::e44 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jarias.linux@gmail.com>
Received: from mail-vs1-xe44.google.com (mail-vs1-xe44.google.com. [2607:f8b0:4864:20::e44])
        by gmr-mx.google.com with ESMTPS id g7si25596pll.5.2019.10.29.20.04.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Oct 2019 20:04:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::e44 as permitted sender) client-ip=2607:f8b0:4864:20::e44;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ewF9QjW+;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::e44 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-vs1-xe44.google.com with SMTP id k15so722900vsp.2
        for <outreachy-kernel@googlegroups.com>; Tue, 29 Oct 2019 20:04:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mail-followup-to:mime-version
         :content-disposition;
        bh=yw5KIz1Ay52foV3yHJvfyo63Zmw6vEdj3EDOEyd1zlk=;
        b=ewF9QjW+GcvA6pBdpPy3CunsYT9XD6ulWuXrwmgT3F488ibmx2dND7FlY/hOnGX/AI
         IvpP77eCFLoo38f4Ge6HblELF6EpOfMAasGpYe2aPced3tuX9VyfHSIcMZGQFKjrbmJy
         Vsce4gHJ9aTF1TmAoh5hLtYu0TQdxFFPJX4JBd3kO0qBNUFR2tMIVYTpBlN96pfXFpoE
         nn+4EpKDRbkUKLz+iFkGCkmv/eCJVszor1iqiPvKrYbXm94UJWhuXAk2BaMXMZa9zHi7
         vb1qTELt0aP6CiT/ASencAnoWmQGE5lSQCbtg2x6GozBIQiQFmm5fo2b9wfcwv0Obsr6
         z72A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:mime-version:content-disposition;
        bh=yw5KIz1Ay52foV3yHJvfyo63Zmw6vEdj3EDOEyd1zlk=;
        b=TuQ4x5yR3Gl8qe+NODQIBJIKRhzfOBRTqJpvkXLhzlOU1zpOn517VuoVUu39Qt5neQ
         XBnVXBFRcwUX1IaE0krV27038qu2E9MAHuH+hHLKVu2VExXdk5wm+m7/Nl/9+AR3Cpvv
         5m9ZZH3FEZkcnkW3ULMFZlMmP+JL/DBsjWIw+EvNvs33eh2mN5EXhk7KJGmlHSeEIXJa
         +H/ISCvTcuCla0lH21Idoq6hhZE4dFlk7d3hqtNnTqPIpsz5wjlFYA8BeMwuZBi9EbQs
         Z0YNUXc6HIcMTP7oE+wvQ+659xy4/aL8JBFQgFMqpjxET9yH9MgoFNOUVqFUxbzWTbT7
         Z5iw==
X-Gm-Message-State: APjAAAXsO7+9/9l974nEm8p+OW1YNV3KXJy0CtrSdTNdGm16kaZUfeEY
	E3Rjac5P5IYhffCWg4noiZx0Jq9EsiEbRQ==
X-Received: by 2002:a67:de87:: with SMTP id r7mr4023184vsk.186.1572404663176;
        Tue, 29 Oct 2019 20:04:23 -0700 (PDT)
Return-Path: <jarias.linux@gmail.com>
Received: from gmail.com ([138.59.18.103])
        by smtp.gmail.com with ESMTPSA id l19sm355890vso.9.2019.10.29.20.04.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Oct 2019 20:04:22 -0700 (PDT)
Date: Tue, 29 Oct 2019 22:04:19 -0500
From: "Javier F. Arias" <jarias.linux@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: emxx_udc: Fix invalid reference error
Message-ID: <20191030030419.mmnrzm7hr4encfai@gmail.com>
Mail-Followup-To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

This patch fixes an invalid reference error by moving the code that
is executed when a queue element is found, into the loop. Also, it
removes an unnecessary test that now checks if the element is not
present in the queue.
Issue found by Coccinelle.

Signed-off-by: Javier F. Arias <jarias.linux@gmail.com>
---
 drivers/staging/emxx_udc/emxx_udc.c | 18 ++++++++----------
 1 file changed, 8 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/emxx_udc/emxx_udc.c b/drivers/staging/emxx_udc/emxx_udc.c
index 9e0c19eb867c..667753c5e2ea 100644
--- a/drivers/staging/emxx_udc/emxx_udc.c
+++ b/drivers/staging/emxx_udc/emxx_udc.c
@@ -2661,20 +2661,18 @@ static int nbu2ss_ep_dequeue(struct usb_ep *_ep, struct usb_request *_req)
 
 	/* make sure it's actually queued on this endpoint */
 	list_for_each_entry(req, &ep->queue, queue) {
-		if (&req->req == _req)
-			break;
-	}
-	if (&req->req != _req) {
-		spin_unlock_irqrestore(&udc->lock, flags);
-		pr_debug("%s no queue(EINVAL)\n", __func__);
-		return -EINVAL;
+		if (&req->req == _req) {
+			_nbu2ss_ep_done(ep, req, -ECONNRESET);
+			spin_unlock_irqrestore(&udc->lock, flags);
+			return 0;
+		}
 	}
 
-	_nbu2ss_ep_done(ep, req, -ECONNRESET);
-
 	spin_unlock_irqrestore(&udc->lock, flags);
 
-	return 0;
+	pr_debug("%s no queue(EINVAL)\n", __func__);
+
+	return -EINVAL;
 }
 
 /*-------------------------------------------------------------------------*/
-- 
2.20.1


