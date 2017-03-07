X-GM-THRID: 6394809093953945600
X-Received: by 10.157.82.35 with SMTP id e35mr693334oth.127.1488910825389;
        Tue, 07 Mar 2017 10:20:25 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.62.180 with SMTP id b49ls1202568otc.36.gmail; Tue, 07 Mar
 2017 10:20:24 -0800 (PST)
X-Received: by 10.129.157.75 with SMTP id u72mr717856ywg.11.1488910824852;
        Tue, 07 Mar 2017 10:20:24 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id y90si147719pfa.6.2017.03.07.10.20.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Mar 2017 10:20:24 -0800 (PST)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id 187so824279pgb.2
        for <outreachy-kernel@googlegroups.com>; Tue, 07 Mar 2017 10:20:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=aZghDN4eUwSTWk0lid0FjKE/iWm1cAd5RxQpjk8zDHw=;
        b=FqwehIFEs6iYrkcudKaGVrRjx0wUbIuCA29souwW1slKZYDxt2osCsq2I3iDEqw9zE
         hX930srUbzkd7FI82HQxERkGHPupWdP07ndtFzfDMEBKW2gCTUbwtTG3XrtJYOi9eHRt
         ytKiO1Kl3/pKW3Q1lGEyVdFEsn3vdtKaJc3X9QWamLBIWQV8HdY2qxT/8QT7Q0ugFJZV
         6GoxwGZvxg4Ll1bE+FtK06Fx41TtX1CnCxWm8mbh4KB4GLwY0tx4x15DfIdFg7HYXm1S
         q5Z9gCt4komss48azmGFuPbzN95wEK3Na4ovzQ7Kw51LRv8i0PY1Vm7hYpd2hMdggzX7
         sEtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=aZghDN4eUwSTWk0lid0FjKE/iWm1cAd5RxQpjk8zDHw=;
        b=qHUFj7/vzIR+roAGV9iomLjhPocbqytuWrdzQwpZlv60hqDt/e1fGtbSNV8883Pd9J
         3ihKa+ABHOkqVs0ojtQrx/D+tZLtKcK0bXn75bXoKqj3kjlFTwR8K5JX2FA8ZWQHd4zi
         YpLKdxlXpH2XpG3GUY7nLBbN9uXk47V6kCEbc4R02uvdRPU+rdJ+eDi9FXnDHGro8zui
         m3dJjoCaMpBL2l/3cOgVxgieLHs6M7kEDdW0P4r1I31naoDfLdWEQESmIhqKEv22QZrq
         VQqYC93zhxTbRE+Nl/h2qKHO5Lyes96ZSWHzhdMjDrX3l3M7NEFwdcntZpUXLG4Zxa0b
         +kJQ==
X-Gm-Message-State: AMke39kPG8ewf2WMjVGP1DEeIfBpFhS6LwUfNz9kCdzJPCTPd0IhxqZLf5X2w1ptA8iv+w==
X-Received: by 10.84.228.201 with SMTP id y9mr2349684pli.42.1488910824602;
        Tue, 07 Mar 2017 10:20:24 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id e13sm1163249pgf.48.2017.03.07.10.20.22
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 07 Mar 2017 10:20:23 -0800 (PST)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH v2] staging: gdm724x: Replace ternary operator with min macro
Date: Tue,  7 Mar 2017 23:47:50 +0530
Message-Id: <1488910670-8701-1-git-send-email-gs051095@gmail.com>
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


