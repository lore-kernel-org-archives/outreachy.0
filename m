X-GM-THRID: 6674267883353145344
X-Received: by 2002:a24:9485:: with SMTP id j127mr4115583ite.4.1553974102860;
        Sat, 30 Mar 2019 12:28:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:3553:: with SMTP id k80ls1687055ita.4.gmail; Sat, 30 Mar
 2019 12:28:22 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwKRJdI20UeaxjJVZN/Epf/MQqcs2HzA/iFNnuuZAgKZfIAwgQqJii3P7FRmRZaO9RUvqtG
X-Received: by 2002:a24:9c85:: with SMTP id b127mr4370756ite.36.1553974102049;
        Sat, 30 Mar 2019 12:28:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553974102; cv=none;
        d=google.com; s=arc-20160816;
        b=AYyEwtjegJdnVfarJSF6/i+dz3F6oyQ9MafChHWr0/TuI4JuOTwvix5wtw6Givhr+9
         hZg7kqZ3iv7r6V/bH+YspYA6iaaE1VnUpSfLhN2z14PthQdgMugWXqC9KxEAh+4Wjddk
         tKSY3A8FtODD74zige1WqyHQkJxMkyGejgouxz/tcaZMKiTRhSYnVjQ7Up4LoPq/F9UP
         I2FBG5NHdTSLtFbjRRe9MnHOs8mPYqAF8v0+N+TIDvgmKGhQSv1bCcapJgGQFpGajeit
         ZB2q4wAkCXUlQ85RHac3SEtNYEGOIipw54tqwyWNPcXQN7dLC2CfQqyJdo2Reqr27C/7
         8gJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=V24dN0eSmwapahr2/oDUPmt0hdtQi/FdqabVFwdEs6I=;
        b=wh8udHWiqFRKl8g4PP/elFFjbk8dzFalxRBuW3w2E1ZzMzzKWC5/bzUIj+VvYbaPmy
         BXGvxGfF9bEfbj7lD1pG9KjutrWfDQs8dcmyOdOrkmkuCQqSJbrDete10oyx70nvaY2L
         X3BI14qPHRC3ReClb0TwKEFzv/iy9ROjzMRq4FHqLUC5eiAUdDrcaFnKLqDtZ3n1XOYb
         X17POlVgKmPcGj4TUkz3p5+kPaz9mDrKbMPI0h/4K5S1boMI1kCq6dZ5GDXeOoujk8Wv
         cDQaM2WiWI3gYpuBFKB7Ym9QPWY5bMa2xyvvmGt6Kj/n/z1Sw/ZZ1dBkhnTMbjPJdlUJ
         JSDg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OU3fl4BY;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id k26si210676ioh.5.2019.03.30.12.28.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Mar 2019 12:28:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OU3fl4BY;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x542.google.com with SMTP id u9so2759423pgo.7
        for <outreachy-kernel@googlegroups.com>; Sat, 30 Mar 2019 12:28:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=V24dN0eSmwapahr2/oDUPmt0hdtQi/FdqabVFwdEs6I=;
        b=OU3fl4BYK6auLVAR2FUHr2QjeIXJzi1DNW8muTKI4TyeCyUs2POT43Iig7DcyZsmT5
         ASnHk2FnmvaBKjAS/DkDEChp0gaQHYI2Mvk/MmNpU/riWNRREW5wDsXJa2Kb79NZsdyS
         iaY1pIVMG7UfLJVIBr3mGbzLpGRLJ4/PFGfW5GO9sI35lRk7SyO8G33hsT/4ocySGkGI
         BT9AvkQRXXTdkHgobaXsub3DGwcfBLReyeSBtHc7AWBY9FtYgFVOKqg27OGIlFGnSD7+
         AWmdac7hFOQGGsE8Sb1iR8zODxl6ZWq75jm7RQl2g1cd7JcGIsdvvpjNZINDLrR+7VGw
         HwAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=V24dN0eSmwapahr2/oDUPmt0hdtQi/FdqabVFwdEs6I=;
        b=mbxDPOi14CaRwobAQ/lezVUXs59TtSNcFH6xBVLrQe5eAudS9QQOZuJwNMDjJRwezX
         T1eyFWULyxBL0sWsE28q+iOe1eRa619u4GOYgcfFw5SYKE2DBCUQFQLsPrlWqebkvT7m
         slcsPBGLKbq3PcZfCCjdonBtu168xBf9Hv5E8LybcvvfWqVN3AZWZ3GIdgMS7YaBCMIf
         H73lC1GFecjXSfAmGM5Oyj/4yEGSnEjFT8tDIRYRFRDj8K+RoFYtYnW1rMYwhOTI8qoP
         YBincqmeTF871GJTkvpslP6OpViLTbMdIdFlAfP0HOycw6x3Np8xvDzydfzr7i0qs8qB
         XAxg==
X-Gm-Message-State: APjAAAUCcgEngwUXNIlr4Loj5WpsqBq6APg2SAiMUYDxgQ/63+ANvHNe
	X/wU9WmfJJYf4d5vSYDnJnw=
X-Received: by 2002:a63:1247:: with SMTP id 7mr47996027pgs.352.1553974101369;
        Sat, 30 Mar 2019 12:28:21 -0700 (PDT)
Return-Path: <himadri18.07@gmail.com>
Received: from localhost.localdomain (mx2.daiict.ac.in. [14.139.122.121])
        by smtp.googlemail.com with ESMTPSA id m2sm7984189pgr.74.2019.03.30.12.28.18
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Mar 2019 12:28:20 -0700 (PDT)
From: Himadri Pandya <himadri18.07@gmail.com>
To: Larry.Finger@lwfinger.net,
	florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Himadri Pandya <himadri18.07@gmail.com>
Subject: [PATCH v2 5/7] staging: rtl8712: use list_entry in function update_scanned_network
Date: Sun, 31 Mar 2019 00:57:40 +0530
Message-Id: <20190330192742.65250-6-himadri18.07@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190330192742.65250-1-himadri18.07@gmail.com>
References: <20190330192742.65250-1-himadri18.07@gmail.com>

Use list_entry instead of container_of for conversion to wlan_network
in function update_scanned_network().

Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_mlme.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8712/rtl871x_mlme.c b/drivers/staging/rtl8712/rtl871x_mlme.c
index 05bfc2a60eb9..1a15c45aa83b 100644
--- a/drivers/staging/rtl8712/rtl871x_mlme.c
+++ b/drivers/staging/rtl8712/rtl871x_mlme.c
@@ -370,7 +370,7 @@ static void update_scanned_network(struct _adapter *adapter,
 		if (end_of_queue_search(phead, plist))
 			break;
 
-		pnetwork = container_of(plist, struct wlan_network, list);
+		pnetwork = list_entry(plist, struct wlan_network, list);
 		if (is_same_network(&pnetwork->network, target))
 			break;
 		if ((oldest == ((struct wlan_network *)0)) ||
-- 
2.17.1


