X-GM-THRID: 6393330913423392768
X-Received: by 10.36.164.79 with SMTP id v15mr1489634iti.4.1488641473089;
        Sat, 04 Mar 2017 07:31:13 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.58.69 with SMTP id h66ls1949970ioa.18.gmail; Sat, 04 Mar
 2017 07:31:12 -0800 (PST)
X-Received: by 10.99.127.86 with SMTP id p22mr3343323pgn.107.1488641472297;
        Sat, 04 Mar 2017 07:31:12 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id c123si553415pfa.4.2017.03.04.07.31.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 04 Mar 2017 07:31:12 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id j5so12804490pfb.3
        for <outreachy-kernel@googlegroups.com>; Sat, 04 Mar 2017 07:31:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=nn29nFhRrbirkrlHjwbMvOI/OPgEZMOnOXZF5dYuePE=;
        b=OcZiBskKZDXQfFk8WmVSSv4divcBrjnHHHoNpRpSQPyONE8+9/S7T6ZMAvrNB1q3J3
         UATowxGIhN6/SVmePvIrJJLSWfcinGJSyavS7+y0L7yv2k4NxvwlzH4kjXmov8uK1tFD
         NATlIMlEVali14HonA2T2PfHzaldEeWOiTxOByTWmHAz2sB+4/kWMYJEMqu9QU51QtkN
         0D9YqqLa7nJebm8CeRKQaC+scew31XOYIlnpD02MQkD5WTfuE+edaj7KTb3c67VBYG1C
         fbtDuxtx1loQ4Fs6YGUFq7TEJjo6DLezjVPfLEZMY5dxmUMkT3X3BnMLBQl6ccXFjwAY
         egGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=nn29nFhRrbirkrlHjwbMvOI/OPgEZMOnOXZF5dYuePE=;
        b=h0WCHRm9gjkg78FQ+DHXQsgRCD8oSTNPmqalvG9Mru7qjWBt25y5Ng11/hyQIFsIu9
         52k9czVtgXy/K3a8ZYxn3D64YNDaZE57wN2jttCURzKSARiomvmEnjLaqrqOM8L1kL2n
         ++MhwcIPQU3WnfHMRveuQMP3zLtT3hQ+G2mqWy0hMqSVYkJ8+l8p1+W78i61RNu8reAf
         yg5Vk17TzurXkxbn7qXT6IXFqWCMthy77TZcQVn8DUM8ZeQTBkduLcVhFjfi9Lf1EvTI
         yQHIHwSgA2KtNwJbDdEMxPiRfvfmZ/NrO+05XEfxv85YBXlO4HXo0JDC9tQ9/iXfvg+a
         kvKw==
X-Gm-Message-State: AMke39ldTOC/czLznik2ww/YdtfFzOHTlcs6FBMSeecGycQnRXCcqCFCK2N9LCljv4cdSQ==
X-Received: by 10.84.215.215 with SMTP id g23mr12583340plj.159.1488641472120;
        Sat, 04 Mar 2017 07:31:12 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id g85sm29917433pfd.89.2017.03.04.07.31.10
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 04 Mar 2017 07:31:11 -0800 (PST)
From: simran singhal <singhalsimran0@gmail.com>
To: Larry.Finger@lwfinger.net
Cc: florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	oleg.drokin@intel.com,
	marvin24@gmx.de,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v5 4/5] staging: rts5208: Remove unnecessary cast on void pointer
Date: Sat,  4 Mar 2017 21:00:52 +0530
Message-Id: <1488641453-22575-5-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1488641453-22575-1-git-send-email-singhalsimran0@gmail.com>
References: <1488641453-22575-1-git-send-email-singhalsimran0@gmail.com>

The following Coccinelle script was used to detect this:
@r@
expression x;
void* e;
type T;
identifier f;
@@
(
  *((T *)e)
|
  ((T *)x)[...]
|
  ((T*)x)->f
|
- (T*)
  e
)

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 drivers/staging/rts5208/rtsx_transport.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/rts5208/rtsx_transport.c b/drivers/staging/rts5208/rtsx_transport.c
index 2379901..8b57e17 100644
--- a/drivers/staging/rts5208/rtsx_transport.c
+++ b/drivers/staging/rts5208/rtsx_transport.c
@@ -766,8 +766,7 @@ int rtsx_transfer_data(struct rtsx_chip *chip, u8 card, void *buf, size_t len,
 		return -EIO;
 
 	if (use_sg) {
-		err = rtsx_transfer_sglist_adma(chip, card,
-						(struct scatterlist *)buf,
+		err = rtsx_transfer_sglist_adma(chip, card, buf,
 						use_sg, dma_dir, timeout);
 	} else {
 		err = rtsx_transfer_buf(chip, card, buf, len, dma_dir, timeout);
-- 
2.7.4


