X-GM-THRID: 6394809093953945600
X-Received: by 10.99.126.27 with SMTP id z27mr907981pgc.111.1488910976959;
        Tue, 07 Mar 2017 10:22:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.19.131 with SMTP id 3ls407010iot.36.gmail; Tue, 07 Mar
 2017 10:22:56 -0800 (PST)
X-Received: by 10.99.167.73 with SMTP id w9mr825736pgo.102.1488910976108;
        Tue, 07 Mar 2017 10:22:56 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id s64si163399pfk.0.2017.03.07.10.22.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Mar 2017 10:22:56 -0800 (PST)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id b5so835539pgg.1
        for <outreachy-kernel@googlegroups.com>; Tue, 07 Mar 2017 10:22:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=aZghDN4eUwSTWk0lid0FjKE/iWm1cAd5RxQpjk8zDHw=;
        b=vGeLuHrZXDcH+g7U9dHROuexhl3tIBubfkcKRTw5TeXc46NTopzP50lWvypBXzfrL3
         puvhDuIyjfvvo7c6lbpeQPxL0aC7ORFSgvtxU9mInCBqs0Ci9G/K7lO1z9kc0D2UhL23
         u2/1EKLpd2dVX3AUAMY+ea5C4HNWy7pQqhPHv1148dqyOSmMJXLer9hpuxJH8x6paXPB
         NgWi/J7S6uB1nJLmGgCUi8lCH4p7xu0nsfFM+rgbdPIApv48sdbXTRvGTCmm98EGpYFM
         I1XUxDjw+fJnsDSSiCtQXOsEUqT/1RxxVFKEcw3CPvQzaeGiAyznD0OyNbiMFRTuqItg
         acZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=aZghDN4eUwSTWk0lid0FjKE/iWm1cAd5RxQpjk8zDHw=;
        b=T1HJoSEBSxONfbZpp2g2glA0uIP4hdDr8VJ/K+F86I8a5B/4H735vToWWFFfaI9dBA
         sVGq9us1++CePgGDOPvhilIRp4UnCg1rGhnUFYmAUAu3mpreXO2zj8BFhgW25Hf4vnrW
         3ywCYpZ78goXUs9/KhksEYms0NegBdOtpVGuqEVMkQuojYzXX+GAQk3O2548pQHTHwOF
         aE5g+i45R+i2U+os5ZaMAPlSLOlOUkHA1hdgECamKMtBpYl8S65bhU3zsaTzEL7O4cU9
         Ipp9tgfv/S2OV5oYx8PCdGZ3yLNsWvZx9nT3CPaCc7AvEjnAMw7iTK8v6i2sRzzOX6e5
         kAWg==
X-Gm-Message-State: AMke39mXnqTzlgjDzVzaG5njgdAK3s1jgDKPzC1kDFqhN2L8cnP9trgElX5A6RMxx0jcxw==
X-Received: by 10.98.147.10 with SMTP id b10mr1859972pfe.177.1488910975769;
        Tue, 07 Mar 2017 10:22:55 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id s65sm1144825pgb.64.2017.03.07.10.22.52
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 07 Mar 2017 10:22:55 -0800 (PST)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH v2] staging: gdm724x: Replace ternary operator with min macro
Date: Tue,  7 Mar 2017 23:50:27 +0530
Message-Id: <1488910827-9032-1-git-send-email-gs051095@gmail.com>
X-Mailer: git-send-email 2.7.4

Use macro min() to get the minimum of two values for
brevity and readability. The macro MUX_TX_MAX_SIZE
has a value of 2048 which is well within the integer
limits. This check was done manually.

Found using Coccinelle:
@@ type T; T x; T y; @@
(
- x < y ? x : y
+ min(x,y)
|
- x > y ? x : y
+ max(x,y)
)

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
Changes in v2:
	- Made the commit message clearer.
---
 drivers/staging/gdm724x/gdm_tty.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/gdm724x/gdm_tty.c b/drivers/staging/gdm724x/gdm_tty.c
index ae39663..fc7682c 100644
--- a/drivers/staging/gdm724x/gdm_tty.c
+++ b/drivers/staging/gdm724x/gdm_tty.c
@@ -190,8 +190,7 @@ static int gdm_tty_write(struct tty_struct *tty, const unsigned char *buf,
 		return 0;
 
 	while (1) {
-		sending_len = remain > MUX_TX_MAX_SIZE ? MUX_TX_MAX_SIZE :
-							 remain;
+		sending_len = min(MUX_TX_MAX_SIZE, remain);
 		gdm_tty_send(gdm,
 			     (void *)(buf + sent_len),
 			     sending_len,
-- 
2.7.4


