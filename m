X-GM-THRID: 6527683536897441792
X-Received: by 10.202.9.15 with SMTP id 15mr9192287oij.54.1519844759177;
        Wed, 28 Feb 2018 11:05:59 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.35.54 with SMTP id j51ls2000899otb.7.gmail; Wed, 28 Feb
 2018 11:05:58 -0800 (PST)
X-Google-Smtp-Source: AG47ELt2HvKwxSNGRoYcTYoR264U0dSlLqcvcm5lfviecVnqr6ICvQIAhbbDVzaWEyjVMwQcZ3L5
X-Received: by 10.157.4.36 with SMTP id 33mr1784229otc.56.1519844758320;
        Wed, 28 Feb 2018 11:05:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519844758; cv=none;
        d=google.com; s=arc-20160816;
        b=eFvCWvdEgUC8S8ITg3F3n4OzK4TVbiy4TJIeBdsN+dHDKnWDURW7oMWadTiXas6bHh
         YmZQBLEEMAHod0SFuAbAeZmk0nQrlhYYMItW7Ndm/wX4VvTfmqLCXGz/7VQWaIThP2xa
         DJvhE2e09Onl4FWIn3rJdamTTHFrV1tLbaTk0QSG3d2VzQ2dlzC3B+xQ8iKYKuCH9wAF
         EJ4ikP02pw2eAarkYiapzr1kPFsFusNrBMj5LC43jh9gLICWslthgj12Nl5w1U6uwH4w
         fn66uG3f3wNFUomKVpNyYlMa3W14J/kkGrftSOyvMFxCbMyvUMLcEqQ98QwTpoJeujeE
         0zYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=MH5nCiX0y+J4n8inR4EByuDs+MKtf0QmZp3DsSjYifs=;
        b=wsQ92/V+Dsj2S3UFvsouSLP8UhG2gfV2SswRGTF4bjN0vjdLhhSpSgwlwvJBteRnfR
         1Zv8lt6nwHm0PYTpiNNyH6wRmdgtJz0qPWaoWSCmA3+aLEC5nA8+kgrsINxG164yRGdn
         4IMc9hj0bY/0oSNZlQ2X52/IGBtfPzahuEr9xCPHtpZHfcNTy4q/oBA/oUq0slGTiPIb
         1WYH2rBUYPsLvKwkyCcCzHiIsNvPHj1OvBueF0HgJ/MZ0PXXFLklYAr8l05tzLXMqT3+
         shDPy2U21AKX8L/lesYD8wb2SB0162a2ZL2oZ9nKUmcLBC4kYLNXX85cvXPqUbQCy2NG
         mZGg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=axcVAe2X;
       spf=pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c00::22f as permitted sender) smtp.mailfrom=santhameena13@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <santhameena13@gmail.com>
Received: from mail-pf0-x22f.google.com (mail-pf0-x22f.google.com. [2607:f8b0:400e:c00::22f])
        by gmr-mx.google.com with ESMTPS id d67si134388otb.3.2018.02.28.11.05.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Feb 2018 11:05:58 -0800 (PST)
Received-SPF: pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c00::22f as permitted sender) client-ip=2607:f8b0:400e:c00::22f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=axcVAe2X;
       spf=pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c00::22f as permitted sender) smtp.mailfrom=santhameena13@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22f.google.com with SMTP id h11so988043pfn.4
        for <outreachy-kernel@googlegroups.com>; Wed, 28 Feb 2018 11:05:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=MH5nCiX0y+J4n8inR4EByuDs+MKtf0QmZp3DsSjYifs=;
        b=axcVAe2XoQejy8bZTuFOsZvRW40ZP5oKf3hMfgjmgiYcgBwaqT8qju/VfWp8L5CNqc
         078VfAXbAG5ZJ/jX/13rZEaQwf0sY5GOwoZQ7MZwFVY/4Xn05TO7+JE64LZuWTquIZte
         fDxa/Up78niHAbpaz64N+pHCPrqC6dBal6vXJIJpF9juagE8ZWZ87rr3qk0Ffl+cvDyK
         iweFhkkwpZP7hyteYkDVMXYvYpAaav6nWlehN2OFM2Add6Ae8okiwR79BWqOcdZuiipK
         pkoABouTkCX1Au+eLKpfnQUxY2pDZg/9OAbMhdOTsUd0YXUQjt6TeWnwM+3rBLl5hIDJ
         ykXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=MH5nCiX0y+J4n8inR4EByuDs+MKtf0QmZp3DsSjYifs=;
        b=YLth/YoXQo/u2ABUUOTmnXOBYc7C763RegE3GRYm0+lm/la2n7IgIQJWDQdbTov8HE
         1JPe/B3qG3+BpD2snKwrPlgJoxN2EjR8r9gRhW5pSvwvRiBJrUz84ZykIvugdUiZrjb0
         V0/fD0ygUDs3DSm25i08ud10Pv7ZcpCaMESv24xT9RLBYXQv+PRMjR9QkU4SeesyXjO8
         Om25vdA5wTdrclj47U4JrEK5d0qB9TCoVlVx8eJ75JdAzuvuhNMh3+72PP0d/Nrf0lBc
         +xUUh0eDRWF4cwySEVBRlpIEOVLdC6MI4eytw0RZ8yMRl2//LB/5kCtuLk9HUJyjbDFA
         6sKg==
X-Gm-Message-State: APf1xPDR8KAWab2vWa+/NtrKi1vuuHqmiPy4tc/ZUD6CoA0kc2rJAHvz
	uYwRIGb6gFHiuCd4ggCU03ZTfQ==
X-Received: by 10.98.166.85 with SMTP id t82mr18617397pfe.237.1519844757969;
        Wed, 28 Feb 2018 11:05:57 -0800 (PST)
Return-Path: <santhameena13@gmail.com>
Received: from localhost.localdomain (ResNet-23-249.resnet.ucsb.edu. [169.231.23.249])
        by smtp.gmail.com with ESMTPSA id p6sm3745087pfg.183.2018.02.28.11.05.56
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 28 Feb 2018 11:05:56 -0800 (PST)
From: Santha Meena Ramamoorthy <santhameena13@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Santha Meena Ramamoorthy <santhameena13@gmail.com>
Subject: [PATCH] staging: rtl8192e: move logical continuation to previous line
Date: Wed, 28 Feb 2018 11:05:28 -0800
Message-Id: <1519844728-18917-1-git-send-email-santhameena13@gmail.com>
X-Mailer: git-send-email 2.7.4

Move logical continuation '&&' to the previous line to conform to the
Linux kernel coding style. Issue found using checkpatch.

Signed-off-by: Santha Meena Ramamoorthy <santhameena13@gmail.com>
---
 drivers/staging/rtl8192e/rtllib_rx.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtllib_rx.c b/drivers/staging/rtl8192e/rtllib_rx.c
index 30f72d2..22f7e7fd 100644
--- a/drivers/staging/rtl8192e/rtllib_rx.c
+++ b/drivers/staging/rtl8192e/rtllib_rx.c
@@ -2644,8 +2644,8 @@ static inline void rtllib_process_probe_response(
 	   (network->ssid_len ? 1 : 0))) {
 		update_network(ieee, &ieee->current_network, network);
 		if ((ieee->current_network.mode == IEEE_N_24G ||
-		     ieee->current_network.mode == IEEE_G)
-		     && ieee->current_network.berp_info_valid) {
+		     ieee->current_network.mode == IEEE_G) &&
+		     ieee->current_network.berp_info_valid) {
 			if (ieee->current_network.erp_value & ERP_UseProtection)
 				ieee->current_network.buseprotection = true;
 			else
-- 
2.7.4


