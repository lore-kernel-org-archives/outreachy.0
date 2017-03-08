X-GM-THRID: 6394401254530875392
X-Received: by 10.129.94.215 with SMTP id s206mr3025936ywb.1.1488984621578;
        Wed, 08 Mar 2017 06:50:21 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.170.68 with SMTP id y4ls4143285iti.0.canary-gmail; Wed, 08
 Mar 2017 06:50:18 -0800 (PST)
X-Received: by 10.99.37.5 with SMTP id l5mr3077079pgl.165.1488984618643;
        Wed, 08 Mar 2017 06:50:18 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id a3si626611pfb.2.2017.03.08.06.50.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Mar 2017 06:50:18 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id 187so3635027pgb.2
        for <outreachy-kernel@googlegroups.com>; Wed, 08 Mar 2017 06:50:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Ee0fjKDwerDC9vOvH9qeYuQWylzi5PUSEdODOMavVwc=;
        b=GWKlE+7OAKzT0JqIQiQk/rNXRI2YbqXNdt6XEn6obqTzlI1iSeyI/1+8KWWcIZxoTi
         6fLiOSHkGRA7Jtz6+8WAOaRhJba/9ZIb2Zhibct6qREiuilXTLSuvlellOuFiwzcH5Ou
         hNOFfDBMh8aHwpHvrMYHu0GvtN9C5l7a/oDDMIFP52nrANe4ddSbL3KbCFdBN1A2/fV9
         FhJwrLEkdRUILW28RMEZHkgcOFssvybqT93axPEiTIDYs29PECeCNUz5KlhbwX15cXDC
         YWPi9KyXhWng90E0lr0Ho96auqkRu8Upt3dbUICnKvJc6xMEuPcpq4IYGHfHl+t/lugY
         6dPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Ee0fjKDwerDC9vOvH9qeYuQWylzi5PUSEdODOMavVwc=;
        b=TlJGlkXVy3KHl5UHVE6jaJUDdCp/GH6PLssqRsUWEeN+2oTnFRv68WRaW6llUQkKZ/
         c/je1LSmzZEd9s+MPkEw3geE3BCFzCLJOjJnPWmwXEdj+RgMEm8smKbr2uzP0ra+NFp1
         TCXKomGnvsqscMYsrkAsIBtXMyXaBqNXMxnnKpmdAPUNPEI6hlBYe2WE4q/rLghme7oS
         31SzGNHjbg0jxY0Wxxclsec7zIaHh60ALfPAckVgpgFs0PE+Gy6e8yScSCILo0MQ6QIc
         3Z4U4kWLTIi3jTTpOnz5ihafy8J2iBrhtv6+f4Xsn4TqXnNsj4b6RmRa2glx3cS9p550
         jXdA==
X-Gm-Message-State: AMke39mikIaUV9J6pglqcdX/Op8fHsH1CqoZIwi+dv2GDdbbuxSXOm7mTL9GHCPlN7fbdA==
X-Received: by 10.98.84.67 with SMTP id i64mr7666157pfb.44.1488984618250;
        Wed, 08 Mar 2017 06:50:18 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([121.244.155.14])
        by smtp.gmail.com with ESMTPSA id d189sm6886638pga.17.2017.03.08.06.50.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Mar 2017 06:50:17 -0800 (PST)
Date: Wed, 8 Mar 2017 20:20:14 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v4 8/8] staging: bcm2835-audio: remove BUG_ON() in
 bcm2835_audio_open_connection()
Message-ID: <fff92d1353bc195c0ea6229f3be67f64f9719976.1488984315.git.aishpant@gmail.com>
References: <cover.1488984315.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488984315.git.aishpant@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

The presence of BUG_ON(instance) in bcm2835_audio_open_connection()
makes the next if(instance) block unreachable. The desired behaviour is
that the function should exit gracefully returning an operation not
permitted error value (-EPERM).

Signed-off-by: Aishwarya Pant <aishpant@gmail.com>

---
Not sure of this change. This driver is still in staging so maybe then
BUG_ON() is required here for debugging. The kernel coding style document
suggests that BUG_ON() should never be used since it kills the current process.
---
 drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
index 560fa12..19e0f44 100644
--- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
+++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
@@ -401,13 +401,12 @@ static int bcm2835_audio_open_connection(struct bcm2835_alsa_stream *alsa_stream
 	LOG_DBG(" .. IN\n");
 
 	LOG_INFO("%s: start\n", __func__);
-	BUG_ON(instance);
 	if (instance) {
 		LOG_ERR("%s: VCHI instance already open (%p)\n",
 			__func__, instance);
 		instance->alsa_stream = alsa_stream;
 		alsa_stream->instance = instance;
-		ret = 0; // xxx todo -1;
+		ret = -EPERM;
 		goto err_init;
 	}
 
-- 
2.7.4


