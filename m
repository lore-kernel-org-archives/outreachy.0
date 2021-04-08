X-GM-THRID: 6948615918410792960
X-Received: by 2002:a05:6638:3884:: with SMTP id b4mr6608265jav.18.1617850716754;
        Wed, 07 Apr 2021 19:58:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6e02:b4b:: with SMTP id f11ls900766ilu.7.gmail; Wed, 07
 Apr 2021 19:58:36 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwxi/IEoWf6Z8n57TvNWEcBk/FXbDNkwSD3hMf9WzXRTHIHgsswHtK3loqvm7MUO8V+qXUG
X-Received: by 2002:a05:6e02:1c48:: with SMTP id d8mr3234287ilg.160.1617850715907;
        Wed, 07 Apr 2021 19:58:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617850715; cv=none;
        d=google.com; s=arc-20160816;
        b=c4xTykkzcFHWlLSFc/u4Fy5F3bdWmx2Qxc8EWJT3b62y2ywb7hHGeE8itpFcjGYj0f
         MqIDh+D5Uqhfv8/MoqV99wVf+ayaSkac5i2P9QIPFGpdfrnaqD+33mj8BIgU+i7e5jdF
         OfdbuJ9aaDR0iLIKyP7ugfezXHzycNaVDCx9KGiHtCe1TlxHVxERHEPGXe21rc4FFQZS
         NwsouP1cxLAEwlkjSrQ+C8wdY7pF9RFdlPuxQzung6RNae8qnhCCjtt1+mPBABaGyNCf
         vT5e7TfmEUiQitSPinUx7Hske744rzajc0XkUBmxfjs4pKpcmMZ0pjVM2hLJkMkaForW
         ketw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=uj9M9j69MmEK6kxoKurva3J2kTnrLS58UJHTZwQEUnA=;
        b=so0c7325Cnct7G4wTyKy2540GjUezkxCgQKejfhWzlCVx+Dvge0sC2SE4tumcn8Wwe
         efWYWKQVnt0LYQJdX6KDTSgjoQuiGCIhsCqX2vKv5CrHoGIgS9I8UZkgACFzD/jIWwwk
         ldQMQacvmB/cODxn/eZaLSUyIUJR9djAGl3UAE/jdWsxAEfHzn90kn7RmAAXhL3Q8s4a
         9iXgIkH4b6Y8gUPyuCD3Jj1iV7h3VPWUywL7nTXJsWT9wlXDmB2CQkwaq2Hsj89VL3hC
         yxM73lOFfh3uMv/UtaTf09MLevKf5cWGTHeNjXzGUQMxplyybsGoubY78u9iyQKJjuLx
         Z44A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Bx6bE9HU;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::1031 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com. [2607:f8b0:4864:20::1031])
        by gmr-mx.google.com with ESMTPS id h18si780575ilh.5.2021.04.07.19.58.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Apr 2021 19:58:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::1031 as permitted sender) client-ip=2607:f8b0:4864:20::1031;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Bx6bE9HU;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::1031 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1031.google.com with SMTP id q6-20020a17090a4306b02900c42a012202so529345pjg.5
        for <outreachy-kernel@googlegroups.com>; Wed, 07 Apr 2021 19:58:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
        bh=uj9M9j69MmEK6kxoKurva3J2kTnrLS58UJHTZwQEUnA=;
        b=Bx6bE9HUW6Kdju/XBIi8ukVkfQPBPAs+KrxrFXSP7TqqqntvXMuNNj6ey3fyvwVS+z
         wE5V65H7X8fKXwSEJwWpJ78XncP3VREp9WQUzqzg6uFOECvRQpq3WXNbn5c6klOGgHpE
         rWAGCku9Ag9BQ/0kMYzQPCqg80kT0sil+Uz/1gFWOv9/KsrK3EUBbjayXWikU1PcO28/
         wPbRvIGXFXmGvMvUD9jIki9XbzxWdwua06DhoyP646fipK24d9lCxhFXcWP0oLri2VSj
         CTqi0CMar8RxnVDUL0Ix4XPyvi7UdBw3TtVhbDWWNNila/WXa6srTZZb+8ZDch+au9VD
         qoww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition;
        bh=uj9M9j69MmEK6kxoKurva3J2kTnrLS58UJHTZwQEUnA=;
        b=lAvJKIEuuSAiPt1jtvm8d8AQ7kD9DMurS/aZurzliv9cGxtd/FjaLu0uJzlui+Mpbc
         P53QtnxdWTjAguFhNaJ5+J3zn9GEFfw6FyUWkjpCEbjwMJ7Wc4GUwhde+7DIZREXZdOH
         t1YaNBHj8rcyjUBgXlVxhB9oBS2zYDa1cT3bPRcwT3HqQz8isMlg+8fGelffylibTLCV
         uft/BuTl4YsAYiKtAbTG7ctgnDQugVJurnPTHVLyjoCceAXTF/ysKjH7XXsEo8uviOa2
         LZ1S9JZFw2rExd7//o3YI23kB+6BgRqaqjQyljr6+HGOtJJqW+E/IS9OUIoUTdc1Ur4q
         Guqg==
X-Gm-Message-State: AOAM532XoImr47ZhmItmLtIipA+LL2YSeB/owM3vCLpYe0R9mUULS/Eb
	nl2tLXCspNDqygc2sI5JpK0=
X-Received: by 2002:a17:90b:e18:: with SMTP id ge24mr6297133pjb.199.1617850715204;
        Wed, 07 Apr 2021 19:58:35 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([152.57.40.190])
        by smtp.gmail.com with ESMTPSA id b24sm22454613pgj.58.2021.04.07.19.58.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Apr 2021 19:58:34 -0700 (PDT)
Date: Thu, 8 Apr 2021 08:28:31 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: Larry.Finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org
Cc: linux-staging@lists.linux.dev, linux-kenel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, mitali_s@me.iitr.ac.in
Subject: [PATCH] staging: rtl8712: matched alignment with open parenthesis
Message-ID: <YG5xV5q7ODTUTVK/@kali>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Aligned arguments with open parenthesis to meet linux kernel coding
style
Reported by checkpatch

Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
---
 drivers/staging/rtl8712/usb_ops.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8712/usb_ops.h b/drivers/staging/rtl8712/usb_ops.h
index d62975447d29..7a6b619b73fa 100644
--- a/drivers/staging/rtl8712/usb_ops.h
+++ b/drivers/staging/rtl8712/usb_ops.h
@@ -21,9 +21,9 @@
 void r8712_usb_write_mem(struct intf_hdl *pintfhdl, u32 addr,
 			 u32 cnt, u8 *wmem);
 u32 r8712_usb_write_port(struct intf_hdl *pintfhdl, u32 addr,
-			  u32 cnt, u8 *wmem);
+			 u32 cnt, u8 *wmem);
 u32 r8712_usb_read_port(struct intf_hdl *pintfhdl, u32 addr,
-			 u32 cnt, u8 *rmem);
+			u32 cnt, u8 *rmem);
 void r8712_usb_set_intf_option(u32 *poption);
 void r8712_usb_set_intf_funs(struct intf_hdl *pintf_hdl);
 uint r8712_usb_init_intf_priv(struct intf_priv *pintfpriv);
@@ -32,7 +32,7 @@ void r8712_usb_set_intf_ops(struct _io_ops *pops);
 void r8712_usb_read_port_cancel(struct _adapter *padapter);
 void r8712_usb_write_port_cancel(struct _adapter *padapter);
 int r8712_usbctrl_vendorreq(struct intf_priv *pintfpriv, u8 request, u16 value,
-		      u16 index, void *pdata, u16 len, u8 requesttype);
+			    u16 index, void *pdata, u16 len, u8 requesttype);
 
 #endif
 
-- 
2.30.2


