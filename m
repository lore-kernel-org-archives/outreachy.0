X-GM-THRID: 6806226770839207936
X-Received: by 2002:ac8:3565:: with SMTP id z34mr7330212qtb.168.1584698159953;
        Fri, 20 Mar 2020 02:55:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:a603:: with SMTP id p3ls2887414qke.6.gmail; Fri, 20 Mar
 2020 02:55:58 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vujXGk3xcrkOcWNwoC9pMxhLCL7jqs2lKGkRWTnGi6d3udY9mHcrDV2Cqo0OE+CN/InBi6f
X-Received: by 2002:a37:9f42:: with SMTP id i63mr7243901qke.192.1584698158499;
        Fri, 20 Mar 2020 02:55:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584698158; cv=none;
        d=google.com; s=arc-20160816;
        b=a5b7l2Pye0BXrTF2geLUZgGOLHnSxWVm8yKzuwPy3lo7zlptSeOdAM6Slx7izvZm30
         hOvlg1g6DXaV+1QUoBq5b+sCm2sE8cmcWLSvErh8HpD9kUCeTKYTwuGoQjlX5lHVmuZ+
         f7cWZiPn2NLu7avY7PXqSfyLoxB+0K7C2jGWVWpBFaMnEtCTVGEpAp5agdrZTnj3m9h/
         ga08wgPg4/pkWCIwvxccJD+7XzauKVhXSva2rJllYUmX4uFBB07IsBjLXYTkXdIcQTit
         SeNKfDa2bjt3FXj+j5cmRlCCohkC0PN1qaaAANrBieXcedJlYNzU+jNqXS96iOk8O/0D
         yryg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=XgHqxWmydRZjpaO7aNmDPxwB4qzU27htlOhzpN1HDfg=;
        b=hEDbz2QjohZmGNvTNyoeThn9E1WiEklESi15zaR0MP32T6CA0n3tNtCtEVNZqiYPEq
         pFcr9N04v8zw00rmxVbNVYjA4WzJQM+ncU47ezIxdMT3oGoE9B3ui1dX18W21WRmk8b1
         BKcREvamD8IxuR7SRm2Z1ppxYBd3Df71CK8i4c6O8GJGzjRZ6uSGKxAhOrHFF6//wwbr
         kx/W6iCB7qBjHSHd9qTBvRR2rXLK/bNhD1EAEEfFuVrhN3J0lKPgwHivBlSvOnmSsFxX
         l/rX3vZ+7vWsBsxui1+W1VwtqbkcwpZIfhewldFe3QC8+s2mJOFMjs065TUwQ1Q22sow
         LUDw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RgzPJsJG;
       spf=pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=jbwyatt4@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbwyatt4@gmail.com>
Received: from mail-oi1-x241.google.com (mail-oi1-x241.google.com. [2607:f8b0:4864:20::241])
        by gmr-mx.google.com with ESMTPS id z126si296031qkd.2.2020.03.20.02.55.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Mar 2020 02:55:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) client-ip=2607:f8b0:4864:20::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RgzPJsJG;
       spf=pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=jbwyatt4@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x241.google.com with SMTP id 9so5809772oiq.12
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Mar 2020 02:55:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=XgHqxWmydRZjpaO7aNmDPxwB4qzU27htlOhzpN1HDfg=;
        b=RgzPJsJGPGVSqehAoIeHMjvGNqbrHBd4wah9Hcf1l8wIEJJbtZcgihioUU9dZ5g94U
         EC2hNwS8b/OnHnckUhUqqNd4pQ76ebnnFhsp437IfZ8jJc2N+bx9ufbip16sD0KaauZj
         swCJmnKZgb9Sv+i1r/I0Rouy+TQfxxCBxyWE7KWhpynuLu8K/C7c/OUqjscUfryAIQiJ
         uMBEqm8KqQGYWj6zbIPqhHWpvvA+eDTlR2zHWxOYS3bxonIYhn/vg4On5hXBzNQ3oSIw
         E7ANEJ0elGsLaGzRtCxaFgKwePrCw1SCOu9eN9mSasPG4paTaJmcDKSAD/kkMhp59Hx0
         yQ+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=XgHqxWmydRZjpaO7aNmDPxwB4qzU27htlOhzpN1HDfg=;
        b=MK7zXnquLzaVRQqg8qw0+V0wK/OmwCpBEWagB343sazwpp0VUxuSKnfGvsqMr8NbGo
         K6pIiBGuGVqiKh535ehkYJ/79voZicrs82GSnzW8eYfjcylU7egqnMiFTEMPyXw1sIlX
         obQyIKJkpgRSa4ZTVLFLpAPbudsIkQngsubxgALiLln4uoioNh4k1lRrUk+0yzZ7RudR
         ATydCrXq8kgB/ci3JfIUBSa0fmx6PFB65SDJdkYiHWPf9Ejwxua0jhnoYEn2r3zbaROd
         nAdJxEIgygxjNn1/BKWugabXZWFvShxF1BpQDrzBUEWE4KHQp5RwCj27IJ27qik/7NQC
         XDaA==
X-Gm-Message-State: ANhLgQ3D2kv808e8n/X3/pcuZtHx3vMEukk599NSsoSg+C/y8jiM42OQ
	aaJXsZ3GrpgNPpbdosZjca34VP30fjOskg==
X-Received: by 2002:aca:b902:: with SMTP id j2mr5807276oif.49.1584698157866;
        Fri, 20 Mar 2020 02:55:57 -0700 (PDT)
Return-Path: <jbwyatt4@gmail.com>
Received: from ManjaroKDE.fios-router.home ([47.144.161.84])
        by smtp.gmail.com with ESMTPSA id c14sm1747376otn.56.2020.03.20.02.55.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Mar 2020 02:55:57 -0700 (PDT)
From: "John B. Wyatt IV" <jbwyatt4@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Tim Collier <osdevtc@gmail.com>,
	Nikola Jelic <nikola.jelic83@gmail.com>,
	Moritz Muehlenhoff <jmm@debian.org>,
	Stefano Brivio <sbrivio@redhat.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: "John B. Wyatt IV" <jbwyatt4@gmail.com>
Subject: [PATCH] staging: wlan-ng: Fix third argument going over 80 characters
Date: Fri, 20 Mar 2020 02:54:59 -0700
Message-Id: <20200320095459.2409384-1-jbwyatt4@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Create a new 'status' variable to store the value of a long argument
and make the code easier to read.

Issue reported by checkpatch.

Note: the status variable is assigned after a needed byte order
conversion for usbin->rxfrm.desc.status.

Suggested-by: Stefano Brivio <sbrivio@redhat.com>
Signed-off-by: John B. Wyatt IV <jbwyatt4@gmail.com>
---
 drivers/staging/wlan-ng/hfa384x_usb.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/wlan-ng/hfa384x_usb.c b/drivers/staging/wlan-ng/hfa384x_usb.c
index f8485601aead..9016e6b32efc 100644
--- a/drivers/staging/wlan-ng/hfa384x_usb.c
+++ b/drivers/staging/wlan-ng/hfa384x_usb.c
@@ -3252,15 +3252,16 @@ static void hfa384x_usbin_rx(struct wlandevice *wlandev, struct sk_buff *skb)
 	struct hfa384x *hw = wlandev->priv;
 	int hdrlen;
 	struct p80211_rxmeta *rxmeta;
-	u16 data_len;
-	u16 fc;
+	u16 data_len, fc, status;
 
 	/* Byte order convert once up front. */
 	le16_to_cpus(&usbin->rxfrm.desc.status);
 	le32_to_cpus(&usbin->rxfrm.desc.time);
 
 	/* Now handle frame based on port# */
-	switch (HFA384x_RXSTATUS_MACPORT_GET(usbin->rxfrm.desc.status)) {
+	status = HFA384x_RXSTATUS_MACPORT_GET(usbin->rxfrm.desc.status);
+
+	switch (status) {
 	case 0:
 		fc = le16_to_cpu(usbin->rxfrm.desc.frame_control);
 
@@ -3319,7 +3320,7 @@ static void hfa384x_usbin_rx(struct wlandevice *wlandev, struct sk_buff *skb)
 	default:
 		netdev_warn(hw->wlandev->netdev,
 			    "Received frame on unsupported port=%d\n",
-			    HFA384x_RXSTATUS_MACPORT_GET(usbin->rxfrm.desc.status));
+			    status);
 		break;
 	}
 }
-- 
2.25.1


