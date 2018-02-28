X-GM-THRID: 6527683536897441792
X-Received: by 10.36.10.82 with SMTP id 79mr8882902itw.51.1519850479350;
        Wed, 28 Feb 2018 12:41:19 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.58.132 with SMTP id h126ls922917ioa.3.gmail; Wed, 28 Feb
 2018 12:41:18 -0800 (PST)
X-Google-Smtp-Source: AG47ELuWAwODxykolNypugmedJQpq+ClTCIlDepQdb3RvbOEBu5l4sFb2GXZ6uh+QM/bojhvL1Sd
X-Received: by 10.107.15.9 with SMTP id x9mr12529045ioi.27.1519850478200;
        Wed, 28 Feb 2018 12:41:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519850478; cv=none;
        d=google.com; s=arc-20160816;
        b=MY5j7RDgkpk7qMaqMz1R//r/G4Ww7WMh/F6Lrgah1I6XpR4MQYgSu+kE9xXl5anG24
         WQcKEEgTQ+U66I+xP7IEwXbdXUvnPZDvGMX6C4ModJ/he4mw3y3eFfuZQkmNn7sMh8S3
         pTXB7HTioPNIK1MDw4+SSQWwCgjYyBYx8aXB6sL0LN+4PcT1s1tJDcCvUjYXeQCt7A6I
         Ylyhb6VRsaosSIZmmUC7dc2Ah8nP1TV5jraCLK6mqs3x8XirxirM9/7InO3QadImGrNf
         sD21HtiYacXkfrFVU3w6quYWdgi0Al0fAnw0vAccN00S75Q4eRl96rQ8+HXpZOBf5lVn
         m0WQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=bHHyiaKippchyWA1mS/aCofTy+sGYlmzveCB1mNuXkk=;
        b=Igo7DLRqhRVjWoylTnO+V/sZlZ2vgiX0XMk/2PR9R+uYr598Q7RuwJxkHJIte0Yw2l
         +BMkh1eUacLZo2WQW52yFKL3TABXWnwpnJtrQby+cS2r6Vcrs/Wdx1tWEBF/JpB4ktUc
         Ae3UxvFMw3r3wY8EK9cyALmki9iTlnTjuRSkIuUEA6rD5FAOrKgbOvvEV4/+7PKqXZvC
         ++5YuugRO9HffmSIImrUuV9y2NliI0SwxMyqOBXALt1LaCdjK0+tIJW+0U3LX3nmnO2l
         ZBnln+JnAoJOu9XRKmbhMjY2JN2Ej74KozEgVvUIJ11RZoZG5HUrmJSIL428mlkdUYYV
         XGHQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qDrPNuja;
       spf=pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c01::241 as permitted sender) smtp.mailfrom=santhameena13@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <santhameena13@gmail.com>
Received: from mail-pl0-x241.google.com (mail-pl0-x241.google.com. [2607:f8b0:400e:c01::241])
        by gmr-mx.google.com with ESMTPS id 192si323751itj.0.2018.02.28.12.41.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Feb 2018 12:41:18 -0800 (PST)
Received-SPF: pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c01::241 as permitted sender) client-ip=2607:f8b0:400e:c01::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qDrPNuja;
       spf=pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c01::241 as permitted sender) smtp.mailfrom=santhameena13@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl0-x241.google.com with SMTP id v9-v6so2222612plp.12
        for <outreachy-kernel@googlegroups.com>; Wed, 28 Feb 2018 12:41:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=bHHyiaKippchyWA1mS/aCofTy+sGYlmzveCB1mNuXkk=;
        b=qDrPNujau6M5hytNvzRpw0F5sVSx9qpmUHgQetzsKFZNrR18y7g+2hAcAJgmjV0t/e
         Hwl2rkXOlZOpuyryWXFkrCSD7vrUbRJKhdOvbRpp8Lg9yVEgGcCY1WiZRlQrGNt0Cx51
         gKUwFQ6txNP1ys9Hzn+/4EVvbG+y/OacsxhbHSDFk+D1Of/uRYnZmG1iCQGu6y25ZaQb
         Ml+RTDQe2lh6oyYuFKdBlH6qgt8G82aS2cmpk0Mv2iUd4+9qNOrVbbgy0HaDZtnlI3rm
         LidFaUxrV6FuZLdFT3gCz4QOlROxHTETh8fEAnckiQ9CCHLMwl+Awvyn3Z1jJQ8GAm+a
         wgYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=bHHyiaKippchyWA1mS/aCofTy+sGYlmzveCB1mNuXkk=;
        b=PXBp+ALyK0WQ9FobgLGACDsouQS6cfTyb9KRoy1UZqdbkLAIIOJPc0D1xE/EublXSN
         CEkCyboGXLEaxLyCmdKzmiKKvn/AocTqRPjyaT9u0SWQZ1ekdUc6xbatpnEJGzUFUOe2
         jFYf7BrCNxD07/WgQgyUmg885xLkNyHyiy2yo/AQSlsTyBAj/xSU4D0wHlNCyPgyzHWB
         4xB9pw2WcsSu/bzMBANvUz8QoVQiFoS1agDOYjSPK8iEEWLno9eVRqnoVpn1hSlBuLcj
         FxjInyM9VaH2UueW6qtqDgqpKllkziZYMOq1ebY5kKL1U7/y4jkXYmc2ZpB3ydVwvRNl
         KV4Q==
X-Gm-Message-State: APf1xPAlo6RmLnbFaa4scWIOgYQVaxJoiotL/s3A6Lo+zQJ521wWE77B
	EXkqyOuj+I6w9y+N2iJgCzZVl0W6
X-Received: by 2002:a17:902:7789:: with SMTP id o9-v6mr19656798pll.422.1519850477591;
        Wed, 28 Feb 2018 12:41:17 -0800 (PST)
Return-Path: <santhameena13@gmail.com>
Received: from localhost.localdomain (ResNet-23-249.resnet.ucsb.edu. [169.231.23.249])
        by smtp.gmail.com with ESMTPSA id f82sm6233659pfd.175.2018.02.28.12.41.16
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 28 Feb 2018 12:41:16 -0800 (PST)
From: Santha Meena Ramamoorthy <santhameena13@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Santha Meena Ramamoorthy <santhameena13@gmail.com>
Subject: [PATCH v2] staging: rtl8192e: move logical continuation to previous line
Date: Wed, 28 Feb 2018 12:40:48 -0800
Message-Id: <1519850448-21871-1-git-send-email-santhameena13@gmail.com>
X-Mailer: git-send-email 2.7.4

Move logical continuation '&&' to the previous line to conform to the
Linux kernel coding style. Issue found using checkpatch.

Signed-off-by: Santha Meena Ramamoorthy <santhameena13@gmail.com>
---
Change in v2:
 - Match alignment with the appropriate open parenthesis.

 drivers/staging/rtl8192e/rtllib_rx.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtllib_rx.c b/drivers/staging/rtl8192e/rtllib_rx.c
index 30f72d2..fa580ce 100644
--- a/drivers/staging/rtl8192e/rtllib_rx.c
+++ b/drivers/staging/rtl8192e/rtllib_rx.c
@@ -2644,8 +2644,8 @@ static inline void rtllib_process_probe_response(
 	   (network->ssid_len ? 1 : 0))) {
 		update_network(ieee, &ieee->current_network, network);
 		if ((ieee->current_network.mode == IEEE_N_24G ||
-		     ieee->current_network.mode == IEEE_G)
-		     && ieee->current_network.berp_info_valid) {
+		     ieee->current_network.mode == IEEE_G) &&
+		    ieee->current_network.berp_info_valid) {
 			if (ieee->current_network.erp_value & ERP_UseProtection)
 				ieee->current_network.buseprotection = true;
 			else
-- 
2.7.4


