X-GM-THRID: 6522913785402884096
X-Received: by 10.28.5.2 with SMTP id 2mr1067559wmf.3.1518734215788;
        Thu, 15 Feb 2018 14:36:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.26.132 with SMTP id a126ls4081wma.1.canary-gmail; Thu, 15
 Feb 2018 14:36:54 -0800 (PST)
X-Google-Smtp-Source: AH8x224fYfUiygKdCMOADRFh9TLF0Ry8hI05J2T+YxEkS0P9oyqYeMoVuH9spkLDCKynIN+Gx270
X-Received: by 10.28.153.194 with SMTP id b185mr1113936wme.9.1518734214730;
        Thu, 15 Feb 2018 14:36:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1518734214; cv=none;
        d=google.com; s=arc-20160816;
        b=w05RIGzAa/Y/5PXNwTwzcF3O9rQ92NI9I0qTo7qri1dArcoRLi6ZyrElHQlY2WD/qz
         Z9ibytp1Pl06whZ5MhuVGlRG5q1Vi/Ya4N1goweA/lLK3kDf+SthRRtnlZkfwwx/ImBe
         UQfzJqi/dIgh5UDr/2IMLnOEQmJMyhgvEiUAkx8s/XxUTyJzI/kZxtJEErAXp1cq4BZJ
         hTX/9/LtKeIQ+vY3QuzTEc//JW60qC50tMy3/xn3WHYIIKvwLbXPFbW6yZRPN2rdRg+C
         myNGY0SqR0wHqviZn5tZMJ6PH1CT6fFWqT8XKJF8WuU0eyNYgkt/D2VqwIWSRiql6bVb
         obOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature:arc-authentication-results;
        bh=N4+kuOYgTMJMaHW9ZHVYs6YzkRDOGb7eqegzvv7vk64=;
        b=MmAGDF56nRs7BmdnAHQJVreNQKS4IAS4V8lwQPAgVacUMl5ZArCuZqhOorrB2QDPSx
         BdfDoPiY8O0rVxwxutYXgw1+lLDUxXMLUwkkw2mCxE5nshb80p3xOMsarbTQrL+wgFko
         iFzVnjmnHpbtfzgSY1uk8OkvKlM8zEQGbPiRDSQ0InkAk3AgOl2GLxm0He9mZdHCM+/8
         I2Y5Bp/DLCa2xcy1mrMpGVlTOnGaq5xE5b8WEjz1s++q+1zG6OJW4gNLRF6lV60RD45j
         BufkmTdXxHcguC1Q5VjFm/Bkw+Dv22HRz5+6pUuBfC04QiWmGQ/0NlteUSv2X6gJ0HD4
         1MmQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qvPyW2Kq;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:400c:c0c::22a as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <dafna3@gmail.com>
Received: from mail-wr0-x22a.google.com (mail-wr0-x22a.google.com. [2a00:1450:400c:c0c::22a])
        by gmr-mx.google.com with ESMTPS id g70si99775wmc.2.2018.02.15.14.36.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Feb 2018 14:36:54 -0800 (PST)
Received-SPF: pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:400c:c0c::22a as permitted sender) client-ip=2a00:1450:400c:c0c::22a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qvPyW2Kq;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:400c:c0c::22a as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x22a.google.com with SMTP id o76so1225368wrb.7
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Feb 2018 14:36:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=N4+kuOYgTMJMaHW9ZHVYs6YzkRDOGb7eqegzvv7vk64=;
        b=qvPyW2KqfKw+g5fnAAWEnAuM35CRP9WDcMleZ4anrX7i2Tu6lgk9DjdHyhTiZ2h7FT
         5S5jiwFBVRSW11Zff5zFmXFHtHYlhoUnJFC4fStbjWuLQaZx3zJm1KVbZffKY+w3dBK4
         qABeHiAXzpp3GlXLGqJ/pPNNBNgHH0hISp9vLgmFbvOtMmOSxmt9pNKMBPT2aIzEj8Q6
         gKt2URpaCHKqNJsEnisXabvHVKiJkGi5bTwCSIth2IWEKICPtvRLpXRpBohE/uXg1a73
         1rn6dnAC86XW0CXAWie1Yz1fuH+Z9KwoplIdImPLokqfdwnv8jcBpGqq45xU75HcBrRg
         uP+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=N4+kuOYgTMJMaHW9ZHVYs6YzkRDOGb7eqegzvv7vk64=;
        b=gTsoEzPEmODB3d5Fz+0vi10hijWykH85fkfehYDWqyxVfb56oxXa0sDYGi+X300Lxp
         bdKR1/gGoNkL7pt+aGe3HjzZC4shJtsiy2rv4hdHHZwjZ2TfuPHyfG0uQvgRkB0S+P+x
         J3bvzjPU+stS2LcBOIA6nOq3zaAqu0JorDrJK1O+txx64iFm8XTAX9ua2i1d09S/BHf6
         uVW8Gd6ISXxpKegT7QMvBsVjjcZKsEGRGCpsb/Efj/6NWgK+FU4zP9ClrCqnqUZUh6FI
         WEyYHTZWSHbwN6Cn8hqlu8vFfv9NrXag3wv//0Zh4GdJ67AOQlitVVFEkvmQIX5uq3Rg
         RRoA==
X-Gm-Message-State: APf1xPA/tFCznr2UtFE2a5AvvxM/avJeDSjsqXZLgf+mHjJ1rusO0oeb
	oJH6sC1vR/k4dX014Mvlofc=
X-Received: by 10.223.183.43 with SMTP id l43mr4060404wre.265.1518734214484;
        Thu, 15 Feb 2018 14:36:54 -0800 (PST)
Return-Path: <dafna3@gmail.com>
Received: from guri ([87.71.142.168])
        by smtp.gmail.com with ESMTPSA id q81sm2318084wmd.3.2018.02.15.14.36.53
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 15 Feb 2018 14:36:53 -0800 (PST)
Date: Fri, 16 Feb 2018 00:36:52 +0200
From: Dafna Hirschfeld <dafna3@gmail.com>
To: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: [PATCH v2] staging: rtl8188eu: Move a blank line
Message-ID: <20180215223652.GA6741@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Move a blank line from in the middle of a declaration list to
after the declaration list, to improve readability.

Issue found by checkpatch.

Signed-off-by: Dafna Hirschfeld <dafna3@gmail.com>
---
Break commit body to two short lines.
Make commit body and description clearer.

 drivers/staging/rtl8188eu/hal/usb_halinit.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8188eu/hal/usb_halinit.c b/drivers/staging/rtl8188eu/hal/usb_halinit.c
index 17967c9..c3bb183 100644
--- a/drivers/staging/rtl8188eu/hal/usb_halinit.c
+++ b/drivers/staging/rtl8188eu/hal/usb_halinit.c
@@ -1516,8 +1516,8 @@ void rtw_hal_set_hwreg(struct adapter *Adapter, u8 variable, u8 *val)
 	case HW_VAR_CAM_WRITE:
 		{
 			u32 cmd;
-
 			u32 *cam_val = (u32 *)val;
+
 			usb_write32(Adapter, WCAMI, cam_val[0]);
 
 			cmd = CAM_POLLINIG | CAM_WRITE | cam_val[1];
-- 
2.7.4


