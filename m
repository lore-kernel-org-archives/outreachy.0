X-GM-THRID: 6804610075497332736
X-Received: by 2002:aa7:95a1:: with SMTP id a1mr1240482pfk.279.1584387498830;
        Mon, 16 Mar 2020 12:38:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:8048:: with SMTP id e8ls7707737pjw.0.canary-gmail;
 Mon, 16 Mar 2020 12:38:17 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsnZG54UH41z9BVyXdQtYzLk4HVz50wo7jQekrTopOD56pXq6Rcl8+jG8WB9DgQ+0TGG/lt
X-Received: by 2002:a17:90a:a48b:: with SMTP id z11mr1155452pjp.1.1584387497185;
        Mon, 16 Mar 2020 12:38:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584387497; cv=none;
        d=google.com; s=arc-20160816;
        b=NAfloMd1TPWJXR09P52DjDZ2SeKBZD9fWIJCCyvPDtIZFDWsp9RiJ3OxTdHMc6mNJv
         Wc7eUl/7w1w12RCgOY+/fUpBejC7q9UDBhZ4B+AUfe0A2mnU/o94PN5c5gUEO2q8RnzP
         mRT1JR+iv+GOfrOGi6Nl6YC85XqWSmHAC2kcYRmrGNavV6Wels/0VGykiMalb+GOnbgH
         1iuW3PJ2rCgNk8KvU9mL2SkfJxR1tzUUyWH4vFUtaP65rhn0K0pqcrhMEiXTEbXwiiip
         aYV7IZIi1hSCoxy6XzuMmoDt89cKs3DSqGFCZmlUsDFNOTMuIJ2XWdmIZRjM19mLY41h
         myvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=WE25tQJljSTSzyWFOZxuzeY9zEv+HlO7liRYHaGZhMI=;
        b=NHqlIz0COOJrSC6AYg9SiYG/JYkTAruG3moO98GDcdcBc3j1cHfBVi9Npb8KL1IKyh
         ZZnHMNoR2e1fAAibwHlp0ov8k5W//nXrZCB8pxdZtLdfl6eZxjTNvhehymm8HQmRoU5X
         ntKmkTf/uvsp1TD+HJ7tzUqhJ9Dk0FTnDVAAGUtmxgpCLXIiy3G2nBbcZh2wSUCjTZbQ
         aNt3x0D78cZbRR6ALRsbXK1xiT99pIVtT2KV7NtSlEHExc8rnJ2nYd8f+wmOGNY8qn/Y
         UuZUnloV2XG1u3ou30W3soVhE+fX0xAfy2Ex+DgrFqfBJ2jD1kCZiAX4jPa9CurqxLZn
         Buiw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jofBi+sV;
       spf=pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=jbwyatt4@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbwyatt4@gmail.com>
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id x12si81588plv.3.2020.03.16.12.38.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Mar 2020 12:38:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jofBi+sV;
       spf=pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=jbwyatt4@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x643.google.com with SMTP id m1so265834pll.6
        for <outreachy-kernel@googlegroups.com>; Mon, 16 Mar 2020 12:38:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=WE25tQJljSTSzyWFOZxuzeY9zEv+HlO7liRYHaGZhMI=;
        b=jofBi+sVw6+afEIOpmJ/sAqOs9xXjLStT/zlrSyb39lSInqiUYC5rVvldOccPPcmE6
         uJAJLLrL4OGgfwTocDbLag3Btn/g5WGM9WUIOC+bsy0siuJP5mFB7wZpiB95UakDtfMq
         /LFoNIMQPkpDimsln5Hie4sRtKnvgikibHPq6OgTDFWCeiM10hLHK3Il4zEVnSHIkOuE
         OWHi4Ocdv5iGQ4OW0wqCdK1EEZ5Yzu5PaphPY9oh3um4/1J4FsrbeSn2V5y7bR0G0SR0
         QsTnQMSwLsNbdt86aPU5ualncj+fyHuD4KsQQoU7pxTnR+xLUSNeEnzpcaFgaqL93iWw
         wyqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=WE25tQJljSTSzyWFOZxuzeY9zEv+HlO7liRYHaGZhMI=;
        b=JthBoezvJSLrCuTLtwpGVl/2Ss0UXnqoY0+m8NDwKVpN7K/7MsIiGKsQW4z9rDGkLp
         /5ItXFiHKx3dcTWqBYYWAfqMOw3IoavZaVj5NoGA85pRBk43d14iTAsloryNp8Ii2Fs7
         ebfVOEx69wFAk6qlqHfW2eiwY7CURgU6hObD0ilIL9raWB34JGx8BH36Qxv6CK9hrjP4
         vRsIqJ9y00XH1BEC0IXfzmIjIWj1HVfKatVsPT1A5VSt4WcQJdFwAM2ApSAD0sjhbowG
         4uITqq09akDttV41w0z5Wh076UcUWk65KLRbwumA14ieeICxBFr2DyDSZ0v0+bhzE1d4
         7dMw==
X-Gm-Message-State: ANhLgQ22fewwvH2jcrPN17i/r9AR2fVG07aUSurjq7J/i2dSS0dDZqxr
	1b1T7ibND6GozxLIC9bp5AyJRke8Gro=
X-Received: by 2002:a17:90a:7f95:: with SMTP id m21mr1140540pjl.168.1584387496628;
        Mon, 16 Mar 2020 12:38:16 -0700 (PDT)
Return-Path: <jbwyatt4@gmail.com>
Received: from ManjaroKDE.fios-router.home ([47.144.161.84])
        by smtp.gmail.com with ESMTPSA id e30sm316691pga.6.2020.03.16.12.38.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Mar 2020 12:38:16 -0700 (PDT)
From: "John B. Wyatt IV" <jbwyatt4@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Julia Lawall <julia.lawall@inria.fr>,
	Stefano Brivio <sbrivio@redhat.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: "John B. Wyatt IV" <jbwyatt4@gmail.com>
Subject: [PATCH v2] staging: wlan-ng: Fix line going over 80 characters
Date: Mon, 16 Mar 2020 12:37:23 -0700
Message-Id: <20200316193723.1247875-1-jbwyatt4@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200316012148.1200745-1-jbwyatt4@gmail.com>
References: <20200316012148.1200745-1-jbwyatt4@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add a newline before the second argument for style, readability, and
consistency.

Please note checkpath reports the third argument as being over 80
characters, but not the second argument.

Signed-off-by: John B. Wyatt IV <jbwyatt4@gmail.com>
---
20200316012148.1200745-1-jbwyatt4@gmail.com

 drivers/staging/wlan-ng/hfa384x_usb.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/wlan-ng/hfa384x_usb.c b/drivers/staging/wlan-ng/hfa384x_usb.c
index b71756ab0394..f8485601aead 100644
--- a/drivers/staging/wlan-ng/hfa384x_usb.c
+++ b/drivers/staging/wlan-ng/hfa384x_usb.c
@@ -3317,7 +3317,8 @@ static void hfa384x_usbin_rx(struct wlandevice *wlandev, struct sk_buff *skb)
 		break;
 
 	default:
-		netdev_warn(hw->wlandev->netdev, "Received frame on unsupported port=%d\n",
+		netdev_warn(hw->wlandev->netdev,
+			    "Received frame on unsupported port=%d\n",
 			    HFA384x_RXSTATUS_MACPORT_GET(usbin->rxfrm.desc.status));
 		break;
 	}
-- 
2.25.1


