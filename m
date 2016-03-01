X-GM-THRID: 6256792083376373760
X-Received: by 10.66.102.106 with SMTP id fn10mr18282172pab.36.1456865311110;
        Tue, 01 Mar 2016 12:48:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.134.42 with SMTP id ph10ls341655igb.1.canary; Tue, 01 Mar
 2016 12:48:30 -0800 (PST)
X-Received: by 10.50.124.73 with SMTP id mg9mr887974igb.4.1456865310721;
        Tue, 01 Mar 2016 12:48:30 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id ui7si4685676pab.0.2016.03.01.12.48.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 01 Mar 2016 12:48:30 -0800 (PST)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id yy13so11045244pab.1
        for <outreachy-kernel@googlegroups.com>; Tue, 01 Mar 2016 12:48:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=3RF1Zp4pG2QDGl0saYAjHySYvbb8JluacduCFcSlwCA=;
        b=UgpsEBNibh7LvE5Qzz3VH2SPpXnsTnyOl//kzGOm4p0klzLIdzr2bWNZbMPwN96kxp
         EkEe1RWSkWQtlIeKl4VtCsVbelL/hdznGSqB/fXUIhN6NuUZdahqeX+YD3xH0o+joThd
         GrfMQ/CErZD2hVwl2f+l413+3lO6lbqEBy+uSpR6jkfXHcViN6dyrrZJLzYH1vGluniZ
         5xB8q5Y5iJtNRRhDdz0oCOfpDGia71zbEv1llSV46pRfY3lxiX1dkaSc6Zr8ZnwT3/tu
         BlZwdZslhf3Wk9rA6YRt/DlPuWEVptGK8P8NsNt3VksKlS/t+P1G7E/6aCjsG/bxjK7R
         V5lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=3RF1Zp4pG2QDGl0saYAjHySYvbb8JluacduCFcSlwCA=;
        b=XYa379aa+W50flfr9YD9O52UVmeTHlTC5l+gRWunUUBOxxlbO40GQzW3XSERBKYu5M
         MIUJJj2T2g7KToiMNRpv1h7rams+bBqci5n5GO1M0zNq52i92+qncZgjeoVt9XJJXzxt
         fzjo4V43vPtusRU8/Cica3OSXv6RMWu+/TsFieKTs4ikLqyyNFnH8Z/sKQEMgvi9n02A
         Izu3+mSEUYH5z5X6ej3IRql340Glf/9ii7Zc92byx66PAahiAHGQ09UOHvXaDmP66ENC
         3+LVw+zU74KTOzyDK86jjSyB6I3IJVx9FnKhFW4Y1ZC/W+UhOmFCKYSwszQ+npoaf5iA
         E9Jw==
X-Gm-Message-State: AD7BkJISu8pFr6DJT06zbjt3mbrRrEVvThE4u6Yx8CmAHiHQgT8VYKqXV0nrtfRd9/CVCg==
X-Received: by 10.67.6.226 with SMTP id cx2mr33175046pad.93.1456865310573;
        Tue, 01 Mar 2016 12:48:30 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.97])
        by smtp.gmail.com with ESMTPSA id q26sm3734493pfi.57.2016.03.01.12.48.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Tue, 01 Mar 2016 12:48:29 -0800 (PST)
Date: Tue, 1 Mar 2016 18:18:39 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 1/5] Staging: gdm72xx: Remove unnecessary goto.
Message-ID: <ab195c6caa5e2da6bc411c354bff41519f118f08.1456835561.git.bankarsandhya512@gmail.com>
References: <cover.1456835561.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1456835561.git.bankarsandhya512@gmail.com>
User-Agent: Mutt/1.5.20 (2009-12-10)

Remove unnecessary goto.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/gdm72xx/usb_boot.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/gdm72xx/usb_boot.c b/drivers/staging/gdm72xx/usb_boot.c
index 99a5c07..cb6cf77 100644
--- a/drivers/staging/gdm72xx/usb_boot.c
+++ b/drivers/staging/gdm72xx/usb_boot.c
@@ -252,14 +252,12 @@ static int em_wait_ack(struct usb_device *usbdev, int send_zlp)
 		/*Send ZLP*/
 		ret = gdm_wibro_send(usbdev, NULL, 0);
 		if (ret < 0)
-			goto out;
+			return ret;
 	}
 
 	/*Wait for ACK*/
 	ret = gdm_wibro_recv(usbdev, &ack, sizeof(ack));
-	if (ret < 0)
-		goto out;
-out:
+
 	return ret;
 }
 
-- 
1.8.3.4


