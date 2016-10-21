X-GM-THRID: 6343724864072843264
X-Received: by 10.129.92.133 with SMTP id q127mr4514374ywb.57.1477013543982;
        Thu, 20 Oct 2016 18:32:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.58.69 with SMTP id h66ls2157427ioa.29.gmail; Thu, 20 Oct
 2016 18:32:22 -0700 (PDT)
X-Received: by 10.36.34.3 with SMTP id o3mr9299256ito.36.1477013542208;
        Thu, 20 Oct 2016 18:32:22 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from mail-vk0-x243.google.com (mail-vk0-x243.google.com. [2607:f8b0:400c:c05::243])
        by gmr-mx.google.com with ESMTPS id p131si16670vkf.1.2016.10.20.18.32.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 20 Oct 2016 18:32:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::243 as permitted sender) client-ip=2607:f8b0:400c:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::243 as permitted sender) smtp.mailfrom=elise.lennion@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x243.google.com with SMTP id 83so4035966vkd.0
        for <outreachy-kernel@googlegroups.com>; Thu, 20 Oct 2016 18:32:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=KoJAjnMxBrrK+2w8NFhkcyjFXqjNVnu1CtYJHdm1SPU=;
        b=DKRYAOIQ4bhlo9nFSjoZsVMzRMSVJZZTB6gkC9cnFhBaJC1G1ZmhnwzYFvXnVXOGLu
         vmpxEBhbn/mOZIhZVmO99gnLK/RvGQFqF2HfsmOAME17P0wuhDQ5F0vc6kI1oQasM1wP
         SylthPS/hYI6LRKG+kbv0i6NKu7bVIlJA4CaQreto6Lfx36ovqBvlNUv58JuAT3SIPkC
         xhkyaiGil6BSLJzsj7c9sHg599hH+QCz45CE+q3//Qlw6pqECA9W883f/OU8fjFmF6j2
         hPOEREQByzAIbaZQuNNN5L7vf35OISpPgEbwUEPNwthatxNh3yHwDIF84W/MPomfleUj
         FryA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=KoJAjnMxBrrK+2w8NFhkcyjFXqjNVnu1CtYJHdm1SPU=;
        b=VVKQq5UHtd2In6U1jzCiG/dgseOcO5irRWR1FIAQk0acM0MutoKwC4S0GGp4NxVrBo
         OHFutJrZYiVx6Y+YJhRbhOoHJgppLJ04sD1bS95NPK+SWBg7UI9akkXzWPnvaIORC+V5
         NyRPmc4MoGbX8phdLpJqD08HKIVj7ISel9ZzYwDe/VGZTw9jt+jSQRqp11uJwTqb0F4+
         pXujlTU0XO6FcHHc8MQpkkiSfiYqbprPsL9DbUzMC+d9N9k7j/INKIKPSFMY6F6LbH/r
         1sOJ/NxXPCz7dnh/wKy1W8Oal7B5ShbrazjSj08qQ8879h/M5VeZbfWgNSrlZAmWEEUE
         p+Ew==
X-Gm-Message-State: AA6/9RnLDGo8M5EAIiM6G8Yb5FpaqhqQm2cHzG44Dp4jg+kbN2sVAoxTNCyWFhi1BYTZuA==
X-Received: by 10.31.176.132 with SMTP id z126mr4493440vke.74.1477013542003;
        Thu, 20 Oct 2016 18:32:22 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from lennorien.com ([187.64.224.84])
        by smtp.gmail.com with ESMTPSA id p30sm36041uaa.22.2016.10.20.18.32.20
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 20 Oct 2016 18:32:21 -0700 (PDT)
Date: Thu, 20 Oct 2016 23:32:18 -0200
From: Elise Lennion <elise.lennion@gmail.com>
To: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: [PATCH 3/3] staging: rtl8188eu: Standardize test for NULL.
Message-ID: <20161021013217.GA27698@lennorien.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

The test for NULL of the return variable of functions was changed from
(ret == NULL) to !ret to match the standard.

Coccinelle was used with semantic patch:
@@
expression e;
identifier id, f;
statement S;
@@

f(...) { <+...

id =
\(kmalloc\|devm_kzalloc\|kmalloc_array\|devm_ioremap
\|usb_alloc_urb\|alloc_netdev\|dev_alloc_skb\) (...)

... when any
    when != id = e

+ if (!id)
- if (\(NULL == id\|id == NULL\))
S

...+> }

Signed-off-by: Elise Lennion <elise.lennion@gmail.com>
---
 drivers/staging/rtl8188eu/os_dep/usb_ops_linux.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8188eu/os_dep/usb_ops_linux.c b/drivers/staging/rtl8188eu/os_dep/usb_ops_linux.c
index 34198fe..e2dbe1b 100644
--- a/drivers/staging/rtl8188eu/os_dep/usb_ops_linux.c
+++ b/drivers/staging/rtl8188eu/os_dep/usb_ops_linux.c
@@ -252,7 +252,7 @@ static int usbctrl_vendorreq(struct adapter *adapt, u8 request, u16 value, u16 i
 	/*  Acquire IO memory for vendorreq */
 	pIo_buf = kmalloc(MAX_USB_IO_CTL_SIZE, GFP_ATOMIC);
 
-	if (pIo_buf == NULL) {
+	if (!pIo_buf) {
 		DBG_88E("[%s] pIo_buf == NULL\n", __func__);
 		status = -ENOMEM;
 		goto release_mutex;
-- 
2.7.4


