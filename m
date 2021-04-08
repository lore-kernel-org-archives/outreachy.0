X-GM-THRID: 6948690474275176448
X-Received: by 2002:a17:90a:7e8b:: with SMTP id j11mr7138455pjl.11.1617868075933;
        Thu, 08 Apr 2021 00:47:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:da91:: with SMTP id j17ls2207643plx.1.gmail; Thu, 08
 Apr 2021 00:47:54 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyzV42U+msvk/AwvY7u3UBwU6F0t4L42HNgaMjcRniQMsl5N/Zqzrik8du0ARu/x1x511wG
X-Received: by 2002:a17:90a:bd88:: with SMTP id z8mr6855554pjr.221.1617868074770;
        Thu, 08 Apr 2021 00:47:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617868074; cv=none;
        d=google.com; s=arc-20160816;
        b=PpSClSYJXbPsL4Wkxxow0zbQ52++YB3ak+CfYZ1Nw1ftRB33yCBbWblAfoY6B7v6Gu
         BGWS1CAamCgjaY8/yj6b6C3AG2cmM5sucsHt9vXh2mOoX26AL3SH+rdFWzT+zgsRAu6h
         WIOVZCgozmQcHrDkekii/t9Gs62dwI8GaXwvg1TYxou5VXbhNrq/TBGroEKXEYbb36e5
         NgNg+tkyaeyXn+8rJfcXvKIUHGVoPlMRqe7tt4QgncnAH0bhkswqLvv/8FKRRmbJsdmY
         uMtgakMzMj5Aa2WeNVpF7lrvbSXfCqEg27xPkKdRxS73oJ/P9uhjBxvrvv+okzvJxUt0
         TxOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=cyd1TO42KxdvcksUboP1vrADRv/z/6+I2iUfLJ43Yyw=;
        b=br//kLUgRncoviw/IjtgWBFeWlJSlhcJBzkF55Z0WIZLEwwlZuDHYQl2SrWiLjrmgC
         /mTPYzq/bLRln/8B6A25EuutTrjaICyMUXeD6f7av1QtGag0hmHDH+gjICCuf9+K+5tf
         KTGKDBm+fCrQ7AUQFGnH1RzNSlauLMU24AOb6jo5zFZGlnOn61cUizNG4/F9eHSqXGa9
         ox/ZAkLDfk13iwmnxyVZ+uERfKmHLH2vGEUQRHadg0UUKDYiVaH7sLdwFTAlcFApCEjE
         pGpy8ddznIfDVWGnIlwSpHTfjuKz5gIw56AQYft6GIh+E7VTsfcQ57XIDORWBnsCDFhb
         oOZA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gu4CIrb4;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::42e as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pf1-x42e.google.com (mail-pf1-x42e.google.com. [2607:f8b0:4864:20::42e])
        by gmr-mx.google.com with ESMTPS id k8si695580pjq.1.2021.04.08.00.47.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Apr 2021 00:47:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::42e as permitted sender) client-ip=2607:f8b0:4864:20::42e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gu4CIrb4;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::42e as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x42e.google.com with SMTP id a12so1196305pfc.7
        for <outreachy-kernel@googlegroups.com>; Thu, 08 Apr 2021 00:47:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
        bh=cyd1TO42KxdvcksUboP1vrADRv/z/6+I2iUfLJ43Yyw=;
        b=gu4CIrb4pMCx57faV0GmT1dqxw8bCEP9KdEkXOfCIzBZ7S8p/n3HoVxFlqQVa52jm6
         yPm/FeAW6tf6pKpsuRj9ANuTOA6LQKYULOJ0oAXQbA/IJOvBh7F7AKixVER9fW/QbUaI
         Q4fzGnhLQY/FGzoosTOMgx600g5Prhv1eHivqGK8emRmARPG2PMQEmCD8A2Hn81orl6m
         PJbJcUWDSuVmxQcIXfO8YKUznzJ0e7ameQDQD6DKLrCHyNzYNQzRBnbBCM6HB90TO3Lk
         QSu0YOw5qDxMX6YZKb5FelIIApaTo7Nv/XoLT/6Cm4GkrnSRAsvk5Z5qn4kTnT7RQXzr
         UF4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition;
        bh=cyd1TO42KxdvcksUboP1vrADRv/z/6+I2iUfLJ43Yyw=;
        b=lk1zHaFjwJy5nhntm638tDWXLyZgQE1M4tPRRBQc2RnMGISljstZTtFbOY1gB1Dy+j
         jHAKFNq6GAwokMTAEqA2LXHKdMU6NwkH+2Gp2k1+bScnj/MP3NO5jUwsFQWMWh7wLBGW
         ldiZrdaXpvmAPdnLsckUHz/7x1fka27bQxXF0lnn1GztCDM/izJj5Tf1GpnMUtgd4Sir
         y/qratHO7pTmKk90Gzu9Zh7YtjRd27MwVCaWmwyWgU7pbrT9xxw5yhx6NEPxdoZREZo/
         dG6q3VGHxy8UlAMt9+dyhUQPP/ui1Lql8G+lq7oQ9u+irNbimoZpPkOdjbfEfCmcHFeP
         e3tQ==
X-Gm-Message-State: AOAM533f6CN+pSS9EM3+2DraS8nIb2oaaDoHX2satjqTqvEH6Vs0vEtF
	92KeygjtbnmCvJdaUntTfVk=
X-Received: by 2002:a65:66d9:: with SMTP id c25mr6712735pgw.359.1617868074362;
        Thu, 08 Apr 2021 00:47:54 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([152.57.40.190])
        by smtp.gmail.com with ESMTPSA id p2sm23715948pgm.24.2021.04.08.00.47.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Apr 2021 00:47:54 -0700 (PDT)
Date: Thu, 8 Apr 2021 13:17:49 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: Larry.Finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org
Cc: linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, mitali_s@me.iitr.ac.in
Subject: [PATCH] staging: rtl8712: removed unnecessary blank line
Message-ID: <YG61JYTdl1HQKcGj@kali>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Cleanup patch for CHECK: blank lines aren't necessary after an open
brace '{'
Reported by checkpatch

Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
---
 drivers/staging/rtl8712/usb_intf.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8712/usb_intf.c b/drivers/staging/rtl8712/usb_intf.c
index dc21e7743349..9038570fb949 100644
--- a/drivers/staging/rtl8712/usb_intf.c
+++ b/drivers/staging/rtl8712/usb_intf.c
@@ -36,7 +36,6 @@ static int r871xu_drv_init(struct usb_interface *pusb_intf,
 static void r871xu_dev_remove(struct usb_interface *pusb_intf);
 
 static const struct usb_device_id rtl871x_usb_id_tbl[] = {
-
 /* RTL8188SU */
 	/* Realtek */
 	{USB_DEVICE(0x0BDA, 0x8171)},
@@ -441,7 +440,7 @@ static int r871xu_drv_init(struct usb_interface *pusb_intf,
 
 			for (i = 0, offset = 0; i < 128; i += 8, offset++)
 				r8712_efuse_pg_packet_read(padapter, offset,
-						     &pdata[i]);
+							   &pdata[i]);
 
 			if (!r8712_initmac || !mac_pton(r8712_initmac, mac)) {
 				/* Use the mac address stored in the Efuse
@@ -561,10 +560,10 @@ static int r871xu_drv_init(struct usb_interface *pusb_intf,
 			 */
 			mac[0] &= 0xFE;
 			dev_info(&udev->dev,
-				"r8712u: MAC Address from user = %pM\n", mac);
+				 "r8712u: MAC Address from user = %pM\n", mac);
 		} else {
 			dev_info(&udev->dev,
-				"r8712u: MAC Address from efuse = %pM\n", mac);
+				 "r8712u: MAC Address from efuse = %pM\n", mac);
 		}
 		ether_addr_copy(pnetdev->dev_addr, mac);
 	}
-- 
2.30.2


