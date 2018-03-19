X-GM-THRID: 6532877789444440064
X-Received: by 10.129.242.9 with SMTP id i9mr2027449ywm.11.1521467655110;
        Mon, 19 Mar 2018 06:54:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:d643:: with SMTP id n64-v6ls1278435ybg.12.gmail; Mon, 19
 Mar 2018 06:54:14 -0700 (PDT)
X-Google-Smtp-Source: AG47ELukpBOCizvKa9+e8k/uDNqcSTDdWhrp19HuAVLM6JlobFN5a8IDL7J6Jfuogo2LFyhV5yi+
X-Received: by 2002:a25:2694:: with SMTP id m142-v6mr5038609ybm.44.1521467654229;
        Mon, 19 Mar 2018 06:54:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521467654; cv=none;
        d=google.com; s=arc-20160816;
        b=jKiP6VpiSZ/yn49cl/mb4yG9Nw0qugiDhi84vZlKB68aZAGSr/RqVIFo4fDo+lw5Wg
         7SRQ7TK7q/QALNc/scQQLZTk3Ze9FV+i89gX9SAcC1BTXDO30i278oVd5RYBiQHl6Fvd
         HN4gqotaFLV217pIiSXhr/h3pWmwfZGoPmH+nzEB7wYp8yDgepBAGT04NymhHdJ2Xqxh
         jKsW1GF2c5sxorgdVyuhFRgSLE52llF4bBQd+0jh/fNyiZLADbOwH5LIywYcGUqt0PSU
         jUA/4hXIOAt+psMfyJjyGiV3APD+cJ734ysXVMfr4EVW9sscCIBZNEZ8G2hULLhOuaYf
         lmWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=w3TX/y6ibOwLq04pzTWW0bsLbyklQR+ic7KKztX3hXE=;
        b=UZN70JisJwxqRB/cOPw4TN+5uHciQ5TFVLxl9U8MxZ/QFpdAZmU3Mvd6F1fqr59PC0
         eWMfpKU4nPWQhSJTUR4H+W54wj78r3+mwnHGTtu48cLG7QIm+ugeaQ1W2YLUB3Qdj3na
         rd0d65w7yKk68i2J2aiDcvoZa4NBsR2ONXbu2EqdnNtN9zQhejKMQvAVS3+AIr3KQW5d
         ZmvnME7rmJvgrpeEtzFMJB2MO4cu+bFLGE/4dP3wXk+2Hc/9qXyQz4CGHQYuopYTbjcA
         WXJsxRhNo/SlR5EgtgazOH3NgK7YFk1xIblzPCbIPjkE1MkcIOWlyt3XQPV9d5bvEluQ
         wSQw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=B9ruqyOd;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::242 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-pl0-x242.google.com (mail-pl0-x242.google.com. [2607:f8b0:400e:c01::242])
        by gmr-mx.google.com with ESMTPS id g2si5534ywd.0.2018.03.19.06.54.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Mar 2018 06:54:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::242 as permitted sender) client-ip=2607:f8b0:400e:c01::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=B9ruqyOd;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::242 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-pl0-x242.google.com with SMTP id f5-v6so10228835plj.13
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Mar 2018 06:54:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=w3TX/y6ibOwLq04pzTWW0bsLbyklQR+ic7KKztX3hXE=;
        b=B9ruqyOdKfeGtdkA1Q4Om7V0tb6h0wcWE93tCsgJ9MmbaFN9oZnImQ0mCte9m3b+zp
         C7sgUikKEEDkZrP2Uluy7nma/fYdDEFLqtqltUHC50Tet5B3GZPWk6jyZMV5KbYB8M+u
         B/5sV5SPgkZIOxY8kxeVpWyJWUN/zY7T17hME=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=w3TX/y6ibOwLq04pzTWW0bsLbyklQR+ic7KKztX3hXE=;
        b=eYcNammy4J77/WAxdmPIvxXyoy4sfaUKjd4F4cD0OE4Xp8i6B6gYu7TW+g9EoyKUyn
         AY7YUq4SQE1/M6LwX8qNT3OUA0bfSTl/Lhh1DWqMP0DHwN7ewW8IkpP6wMYYF5QcQwB/
         KX/2hahKJW0UyI4HUnB9OFzsH4pQabz0gMSVb5edZgiWY01ZS6RbjAgGaWJa0fiYueUU
         5yKg4hlKG7ZUNlRaa02YyXh8mVMWGLfYfZXy8InjfmgrBJTFH5lG3RByxCu4iQI+hf32
         IQMnhhWBesmCL3a5xkASsloiIm+nHfhR3xGTO/6WxJPlx19Z4ZcHorGrg/lE6fynAKJe
         xEUg==
X-Gm-Message-State: AElRT7HfVvlh+96LoeEZ5a/lo9aBuWsCts97XtiEsBmFRnuaE201PLAB
	MzOSH9Lmq6WsbJIH5vdrqBwbyg==
X-Received: by 2002:a17:902:7c15:: with SMTP id x21-v6mr12487629pll.3.1521467653387;
        Mon, 19 Mar 2018 06:54:13 -0700 (PDT)
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from localhost.localdomain ([139.59.85.247])
        by smtp.gmail.com with ESMTPSA id d75sm149034pga.38.2018.03.19.06.54.11
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 19 Mar 2018 06:54:12 -0700 (PDT)
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Subject: [RESEND PATCH] staging: vc04_services: bcm2835-camera: Fix multiple line dereference
Date: Mon, 19 Mar 2018 13:53:47 +0000
Message-Id: <1521467627-26870-3-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
X-Mailer: git-send-email 2.7.4

Fix multiple line dereference. Issue found with checkpatch.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
---
 drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
index d226227..263babc 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
@@ -287,9 +287,11 @@ static int buffer_prepare(struct vb2_buffer *vb)
 
 static inline bool is_capturing(struct bm2835_mmal_dev *dev)
 {
+	int mcc = MMAL_COMPONENT_CAMERA;
+	int mcpc = MMAL_CAMERA_PORT_CAPTURE;
+
 	return dev->capture.camera_port ==
-	    &dev->
-	    component[MMAL_COMPONENT_CAMERA]->output[MMAL_CAMERA_PORT_CAPTURE];
+	    &dev->component[mcc]->output[mcpc];
 }
 
 static void buffer_cb(struct vchiq_mmal_instance *instance,
-- 
2.7.4

