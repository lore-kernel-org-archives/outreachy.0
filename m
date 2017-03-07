X-GM-THRID: 6394809093953945600
X-Received: by 10.107.205.72 with SMTP id d69mr760767iog.43.1488910014666;
        Tue, 07 Mar 2017 10:06:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.200.209 with SMTP id y200ls393239iof.26.gmail; Tue, 07 Mar
 2017 10:06:53 -0800 (PST)
X-Received: by 10.98.26.82 with SMTP id a79mr138773pfa.8.1488910013493;
        Tue, 07 Mar 2017 10:06:53 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id a3si149291pfb.2.2017.03.07.10.06.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Mar 2017 10:06:53 -0800 (PST)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id 67so863040pfg.2
        for <outreachy-kernel@googlegroups.com>; Tue, 07 Mar 2017 10:06:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=aZghDN4eUwSTWk0lid0FjKE/iWm1cAd5RxQpjk8zDHw=;
        b=M29wn/QNlwoMezcuR+I8JcRxn0ZuP8K1JQA6yH8B9/HuuJFWXQygkQ7dsbfiFYBLLM
         ep8h7VWFJ7lB2HScDHoKuWIqg7X4q6naGrZzUOiz+a2l/vYJFEpyFVae7QmLEhhLNcTZ
         SZMszkEia3zSqqJ10duXuP5hYHjUUtrI3srY+ltBXRe5vA32tR0Rks2KXHnDJ/caQ59G
         UshNPjNuiZfnp3RGeQnqVPB4aJb6SlTE6OkU6Ji+u3K4bfSo3SK6Q0eWRxrZ2ACs3f+q
         fUwhtwtHxZQGrmtsNxowryOZpJeR8yKJiuOuu8XksJ3sPWxyoBK2BkJi77s+7+joAgXx
         nDFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=aZghDN4eUwSTWk0lid0FjKE/iWm1cAd5RxQpjk8zDHw=;
        b=jdGBwc2h2CjPGaGnCZpUkoIj9w0QxlbbUnAqP8Dpkm2neT8KxETqY5MdcK6+NXZeKg
         QmQJG6i1Al9mlWtOVnhCDEED+PBOpmHciiyu+De0dchar52v3BPWVvAqqExQWwuLS5er
         kKDpgdFAUJA4PfczzHKky58G2pn1xjhVuiHWzduw8xodW1w3HSU5BWJ0qae4i31pepjw
         z1ZOj0imEa7EtAnbfAvsIzWS++CPbZqXDM390i2vZbGLNgv/9Wv4MuTwVq95k3R0r2YM
         eFvmFQ8qqQRY8DIvrpSD0yKOefJdWXbV6l8Qc2zVD9Q0nHfJhe+owNJJuJWmSP1hjJF8
         BP6A==
X-Gm-Message-State: AMke39nhD/9tjfrzm0Ig8BJLpkay+Zp4+MkE2h61jE4cu1iMEmnP3zCqHPO0HYyN4oUbbw==
X-Received: by 10.84.179.99 with SMTP id a90mr2340694plc.26.1488910013117;
        Tue, 07 Mar 2017 10:06:53 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id c28sm1130062pfj.77.2017.03.07.10.06.50
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 07 Mar 2017 10:06:52 -0800 (PST)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH v2] staging: gdm724x: Replace ternary operator with min macro
Date: Tue,  7 Mar 2017 23:34:14 +0530
Message-Id: <1488909854-30857-1-git-send-email-gs051095@gmail.com>
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


