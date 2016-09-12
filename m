X-GM-THRID: 6329495463122698240
X-Received: by 10.157.9.230 with SMTP id 35mr16739562otz.20.1473700502111;
        Mon, 12 Sep 2016 10:15:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.43.196 with SMTP id u62ls9292441ota.15.gmail; Mon, 12 Sep
 2016 10:15:01 -0700 (PDT)
X-Received: by 10.13.223.216 with SMTP id i207mr16067337ywe.10.1473700501081;
        Mon, 12 Sep 2016 10:15:01 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id si10si2325715pab.1.2016.09.12.10.15.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Sep 2016 10:15:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id x24so8354965pfa.3
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Sep 2016 10:15:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=R2h81tNUrdJIQkDKNllStbKk3F+0i0qkuouQx46fNtw=;
        b=kmHOvVgAAyOAxkWiB+Q5LnBtW4t+Dd/edmzcIo9OSPdgAjLrj+pxs5dRiSQCiWTWRt
         ws/TSnSi2xm+FeuCWlWoS0Xrw7yxDLZU/UrrCkZ+Rqc+7FjbzVtcw7O23sWsxjSCBnP+
         rYk3QgdJGvqQQV+E8qDRBAwZn0Lp7uCxXv4YZO1afgm50JAERE82CM+fo8yiw/gA/xU3
         tBoZ+dY9iIwqfFZyCsBUT63d0lJuoEOEZdNKrw94AeroOmsg0SvzXj2AN8640T7Etkvn
         cP4FGPWfVFWa8UzNUGvGjI+PzRKaSK3sm0tftKP1SZ73VhtB4VDvH56PGpS6ZCiaXG4W
         i+Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=R2h81tNUrdJIQkDKNllStbKk3F+0i0qkuouQx46fNtw=;
        b=RJTjdQ6lHP3910JoySnJWarqKiS6eDJjymhfvcWNW7R/ycNnu+TH4DKSpkbxaQyDBu
         l44ohXS6hZsQVVdDZatf91KUX0ixvki+0dIBTx/uOK9qnjK35sYxkUPOWJm9F/IWrgfg
         W3TfVdCbYyfAM7HCqgn557Gb2LwfN2fDzA7SeNQl+ZONpHzvtgt2HJSlCiWCs0RhydRq
         h3Y3hdR4GFD1I7Tn8oyGzUghxbbX1pjXUGGNg/w/RL8+EQ2BzcFf5OI1NyQxhM3HZH4R
         W6OLl/LVdTAm1D7JHvrhZ+ZQctmOdflT5+f4R9Xh7+cYEuRKtWWxIJIu8cyd/3tA7waj
         vu9w==
X-Gm-Message-State: AE9vXwNYllMQkRvnm6dDvtGSTs+X51tnAD9ONVMwY1VMxOWal0K83NR9QZ0LRcYSdMyqAA==
X-Received: by 10.98.109.66 with SMTP id i63mr35805295pfc.126.1473700500834;
        Mon, 12 Sep 2016 10:15:00 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id 9sm25857841pfo.74.2016.09.12.10.14.58
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 12 Sep 2016 10:15:00 -0700 (PDT)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	wsa+renesas@sang-engineering.com,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH] Correcting multi line comments' begin & end quotes
Date: Mon, 12 Sep 2016 22:44:20 +0530
Message-Id: <20160912171420.10291-1-gs051095@gmail.com>
X-Mailer: git-send-email 2.9.2

checkpatch shows warning about end quotes not being in a different line.

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 drivers/staging/ks7010/eap_packet.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/ks7010/eap_packet.h b/drivers/staging/ks7010/eap_packet.h
index 5f70fe1..53d803b 100644
--- a/drivers/staging/ks7010/eap_packet.h
+++ b/drivers/staging/ks7010/eap_packet.h
@@ -51,7 +51,7 @@ enum { EAPOL_KEY_TYPE_RC4 = 1, EAPOL_KEY_TYPE_RSN = 2,
 struct ieee802_1x_eapol_key {
 	unsigned char type;
 	unsigned short key_length;
-	/* 
+	/*
 	 * does not repeat within the life of the keying material used to
 	 * encrypt the Key field; 64-bit NTP timestamp MAY be used here
 	 */
-- 
2.9.2


