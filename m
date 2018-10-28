X-GM-THRID: 6617471709084647424
X-Received: by 2002:a17:902:e08c:: with SMTP id cb12-v6mr721366plb.117.1540750369135;
        Sun, 28 Oct 2018 11:12:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:4156:: with SMTP id o83-v6ls1181162pfa.11.gmail; Sun, 28
 Oct 2018 11:12:48 -0700 (PDT)
X-Google-Smtp-Source: AJdET5fst+CwTJvc3LrfTq+FcRn7EuprSBrRWmODe6UBAGW1KItk8+Tt1g34Hm4CGRlrebwXw9wY
X-Received: by 2002:a63:1f07:: with SMTP id f7-v6mr75366pgf.32.1540750368482;
        Sun, 28 Oct 2018 11:12:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540750368; cv=none;
        d=google.com; s=arc-20160816;
        b=i/jc3pY3JQIQjPIKkTQ3Mv5hcQ46NGEMxStIFoBr/jan3N2hXOuOocoUP3H/EtGVtC
         xzpDtvcDRwPODFnMjgd6FyQHDNMGLegLcuxXUvd/4/IJBv7bL6/PZ6XFqNBUg0KgBhsA
         qlU6v9Q+MF14QMmUrzojj0H2/QR5Is2KRMobHKqTS/BZFasoIN6oAZfgmYb/0XS0ggwp
         itDNfurvEMl8zBOLzzOMYqc0rWKZqrwKssyMCc+3+QC/LNo221WUz5iQfbuehiyjvdDl
         g+yr7TRSw6xDgrD0Y2EfKRrZhvG50lZrpRbC5uotmc/N1lYtgoM1HdeH4MBCdJQUgK+S
         29Bg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature;
        bh=csNjzi1FRTUY20tyIpe+dhX3w+TE447//lyrY1MKi04=;
        b=UlYtEGAZ/BMTc/ctP1QZu7wz/ZGX0IONnk0WNskqLtngF5bEZl6gkD9+1z7nK8BFM3
         tNttrOISpdzZN4uSHCQaoI7gU1D4bp36rZiFSWWa2TWDCRZxlVM1HpIQ2ZASZpQ77AjT
         JejfN6AVo5kGYjCbtNop/bSK0XMMNm4/DuL51DeDFlCwgsXLTLiRMDbkQySl8VKaCuK9
         sSKXEwXilxesWaNigAS6rGppCQmPK2ssmI6u4htujOUVeIlG3U9q1+uazPePkv8kY19L
         l6KjRjgLXVP+yfSdgoYIcr9vb8XJh6NMKfJDMuFDEmP7vHxusAVAI570w8AxQecERzRt
         Cu6w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=m7EJlZZN;
       spf=pass (google.com: domain of kimbrownkd@gmail.com designates 2607:f8b0:4864:20::d43 as permitted sender) smtp.mailfrom=kimbrownkd@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <kimbrownkd@gmail.com>
Received: from mail-io1-xd43.google.com (mail-io1-xd43.google.com. [2607:f8b0:4864:20::d43])
        by gmr-mx.google.com with ESMTPS id f87-v6si883093pfe.4.2018.10.28.11.12.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Oct 2018 11:12:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of kimbrownkd@gmail.com designates 2607:f8b0:4864:20::d43 as permitted sender) client-ip=2607:f8b0:4864:20::d43;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=m7EJlZZN;
       spf=pass (google.com: domain of kimbrownkd@gmail.com designates 2607:f8b0:4864:20::d43 as permitted sender) smtp.mailfrom=kimbrownkd@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-io1-xd43.google.com with SMTP id d80-v6so3608367iof.1
        for <outreachy-kernel@googlegroups.com>; Sun, 28 Oct 2018 11:12:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=csNjzi1FRTUY20tyIpe+dhX3w+TE447//lyrY1MKi04=;
        b=m7EJlZZN/wb0xtVdGeDA3v92xPwkV5wwLt2LBgvJ8uYvZc+BytwElqFuxHaoeEmUFV
         kJzDVXHYquIlUJG1R7uTXpKpXMEqqaL6T9azvJS1p0Seu2HP0W5O80j13WZI4nxH/x4z
         tmxF6rvw4tQ37/A/IUzg8C3HfkGVhXJ4IVlSFuWKRK8FjiQ4CPWpOWXBCrKazGemewD7
         3QvvQAsD5cyv+7UzKG8pydRmDx1q1HG1Bk+X7iR1KrJV3qgMC0r8EyC4N/p4opZ+f/vH
         2S+ERSy3+RxZtbmOVi0gRUOc2jITGCw/EwGmQW0UdEkHO6QQQ4J9VuLqKNBBTHbjXQC3
         VJDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=csNjzi1FRTUY20tyIpe+dhX3w+TE447//lyrY1MKi04=;
        b=MOGeRtg8JNIVpigL/RfYnYOT4HX/Ne16s/7hLVRo8pCYnIe3uDGxxCLSVyl5TP+peB
         J6MQ1KlfLxQlz2hjZwTFI92WmqC6Krj6l/pAPJvptxFuusNeo1L6MHSLqkRqBLqrTdBv
         jAskYyh9XztUngUbh5QhSBjg8VyGh6ZHPxfkO5FOxK+SesJDEv/vrkDfVj+WLSkLoo5i
         Mmpf352NqfpqPP3Es+zZL/E0AWGIs2sVbXKPgvoK8HhxJj3X05Lvo7UmsBFnaItoO31e
         mFwE2mO4b32wQ+e90gxh6Dr41Jx3IYyRbP05AA6XmiGAZKvBPuHDGPbkabcmLKS06t88
         nFSA==
X-Gm-Message-State: AGRZ1gLTtDwv8VG50ijjzXmyeDmboXpkP0/JLKtv3tdm7MFR6hK6wD1O
	G+NJ9+lUww3If/5IT83NYzmZBHQVadE=
X-Received: by 2002:a6b:14d8:: with SMTP id 207-v6mr6834441iou.103.1540750367647;
        Sun, 28 Oct 2018 11:12:47 -0700 (PDT)
Return-Path: <kimbrownkd@gmail.com>
Received: from ubu-Virtual-Machine (68-188-226-58.dhcp.bycy.mi.charter.com. [68.188.226.58])
        by smtp.gmail.com with ESMTPSA id z136-v6sm7105342iof.23.2018.10.28.11.12.46
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 28 Oct 2018 11:12:46 -0700 (PDT)
Date: Sun, 28 Oct 2018 14:12:44 -0400
From: Kimberly Brown <kimbrownkd@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Arnaud Patard <arnaud.patard@rtp-net.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 2/2] staging: xgifb: vb_setmode: adjust descendant
 indentation to right
Message-ID: <a85f97b40dabc0f2a978d0928af6bba05b9724e5.1540749179.git.kimbrownkd@gmail.com>
References: <cover.1540749179.git.kimbrownkd@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1540749179.git.kimbrownkd@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

Adjust descendant indentation so that it is placed substantially to the
right. This change improves code readability and complies with the
Linux kernel coding style.

Signed-off-by: Kimberly Brown <kimbrownkd@gmail.com>
---
 drivers/staging/xgifb/vb_setmode.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/xgifb/vb_setmode.c b/drivers/staging/xgifb/vb_setmode.c
index 62b45a30e0f1..3782f8641bf2 100644
--- a/drivers/staging/xgifb/vb_setmode.c
+++ b/drivers/staging/xgifb/vb_setmode.c
@@ -654,7 +654,7 @@ static void XGI_UpdateXG21CRTC(unsigned short ModeNo,
 	xgifb_reg_and(pVBInfo->P3d4, 0x11, 0x7F); /* Unlock CR0~7 */
 	if (ModeNo == 0x2E &&
 	    (XGI330_RefIndex[RefreshRateTableIndex].Ext_CRT1CRTC ==
-						      RES640x480x60))
+								RES640x480x60))
 		index = 12;
 	else if (ModeNo == 0x2E &&
 		 (XGI330_RefIndex[RefreshRateTableIndex].Ext_CRT1CRTC ==
-- 
2.17.1


