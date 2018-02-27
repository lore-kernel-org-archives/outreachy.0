X-GM-THRID: 6527317257974972416
X-Received: by 10.200.69.19 with SMTP id q19mr11344136qtn.45.1519759805964;
        Tue, 27 Feb 2018 11:30:05 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.55.33.138 with SMTP id f10ls1241021qki.9.gmail; Tue, 27 Feb
 2018 11:30:04 -0800 (PST)
X-Google-Smtp-Source: AG47ELtBYMxooOZReKFuVffE20fzhgGBoKIIV9JhF7qk+G8OtYt64uMgG+GhXadjgELRhTNxB6i5
X-Received: by 10.55.197.71 with SMTP id p68mr11301757qki.36.1519759804342;
        Tue, 27 Feb 2018 11:30:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519759804; cv=none;
        d=google.com; s=arc-20160816;
        b=ii4ASUZp3Uv1ulreWK/NTbpYN56YPYQzPX9QNPq1wDpA6aGYDXCvE7GVPda4/fJDDo
         AJImfVdU+nmQoGoH3+Uwr3YTMJV+pUQRQ0RFT+cp3ikFkF9isd2cYmzxQmY92afv++xL
         V6a/bzWwpud3MylH5uj5CJ+xBGi38cxKUABis5N41pSAh6Yli1xrMPeueeO0bHlfSyar
         kYnUuLTbcHVMfwbqg+ipSwoJj0u5S7usl+IJxYFHruqJyw4WSV3WrMg2sHs37+DtJ+4J
         UX+PSMo2j3U7vHN5tpjjOZzMWiBzyQRq1YOCIW0x/m5lSPmFkjDG1LEEOug0UrW+pSBk
         Q59w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=rttcD8msOclXceMXcBLTfq6iIZxrkw+I3Xaid+nLQ0Q=;
        b=JUdM9SCSYMbhgU9F4p3kUWZBXBSZwoRZUc0V2nuciEtZoRohXXSd4yIdWSut8wHo6O
         WjONRG8TaikwGTJXmFKwlXT+NiRBIIcoq3CENMz3mrUZkFiH60i1nRgi6mUc06Hq0Kd4
         dokfZC9IPmh8SOAGVe4yGtgElwj+9O7z31x1spHDw4V4xr0T0NRntvnthaKSVY4EM1El
         0upjDAbwn1MWRp9iy7w5eQh4S5p5Ss0I+++yVG/JjuLhy+qVq1cMXyBvvimHIFzduj2f
         Gazr5UHepocbVP9RmpVKjaL6tMq0TnXQZYrzkuTgTH7nv43Wvhba+sAflt+j0jWRXTLK
         qmjw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=GaZPHKsM;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id o5si805796qke.2.2018.02.27.11.30.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Feb 2018 11:30:04 -0800 (PST)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=GaZPHKsM;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-pf0-x241.google.com with SMTP id m5so8367488pff.7
        for <outreachy-kernel@googlegroups.com>; Tue, 27 Feb 2018 11:30:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=rttcD8msOclXceMXcBLTfq6iIZxrkw+I3Xaid+nLQ0Q=;
        b=GaZPHKsM34ZNQZT975vdtcQPG0SQccriymUO+BQgMid6/4vvWVuH37QM7n3zRGfbRR
         40QbiIVV7/PVWenfzVVALiZ1XONKd+onONPZ4OUwSFvkz9IWOCFkttc4+JL0Ro4qO3lk
         Ip6zwsXNt2ywQDccs3BaRF5a751ttTMSx9eDg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=rttcD8msOclXceMXcBLTfq6iIZxrkw+I3Xaid+nLQ0Q=;
        b=r0cJfuJh5K/B13KWtqqdKmimrOtgxuMDbUPby9XMUYrjXZV6Gjyk+ymjFYLx7XclSt
         VRmJE6PbGAPRDJ0gzAOg8uvu/JpT40t+hzAikwdqGZPlrApQmudIz8bv4JpziLKuWFSL
         uBZ9Z6QlT+ZFcmEd3+HS3SuWrIZiW7tiDRVwbM0azFPoEMl5ZEGeTJxuOYdxzCjhAzC2
         r0C8v3C80rkMSatNm2NCleSccuKcEkjye4o2iJI3aFiDpm4w5Ig55Z2jvzXFTTtAw7iR
         P6jzOspcOXdwfAufvJhxJGt9AHtLXSwtRkg6yCBTIb+yz/8bk5vi6UCOWNHcQOiHADQs
         FkUQ==
X-Gm-Message-State: APf1xPCDbl9Wt6CkMv8+YOMqtfZpPFp7/O8oClO7ak2qRqajZv2sYbyD
	gUSRsbx52Qsn+WZ4/Q7eAReDvQ==
X-Received: by 10.101.74.208 with SMTP id c16mr12179612pgu.116.1519759803158;
        Tue, 27 Feb 2018 11:30:03 -0800 (PST)
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from ashoka-ThinkCentre-E73z.internal.ashoka.edu.in ([125.22.40.140])
        by smtp.gmail.com with ESMTPSA id p14sm11538413pgu.44.2018.02.27.11.29.59
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 27 Feb 2018 11:30:02 -0800 (PST)
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
To: eric@anholt.net,
	stefan.wahren@i2se.com,
	gregkh@linuxfoundation.org,
	f.fainelli@gmail.com,
	rjui@broadcom.com,
	sbranden@broadcom.com,
	bcm-kernel-feedback-list@broadcom.com,
	outreachy-kernel@googlegroups.com
Cc: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Subject: [PATCH] staging:vc04_services:bcm2835-camera:mmal-vchiq.c Blank line added
Date: Wed, 28 Feb 2018 00:59:48 +0530
Message-Id: <1519759788-26097-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
X-Mailer: git-send-email 1.9.1

Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>

---
Blank line added after declaration. Issue found with checkpatch.
 drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
index e3460b7..c90754f 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
@@ -1979,6 +1979,7 @@ int vchiq_mmal_init(struct vchiq_mmal_instance **out_instance)
 	static VCHI_CONNECTION_T *vchi_connection;
 
 	static VCHI_INSTANCE_T vchi_instance;
+
 	SERVICE_CREATION_T params = {
 		.version		= VCHI_VERSION_EX(VC_MMAL_VER, VC_MMAL_MIN_VER),
 		.service_id		= VC_MMAL_SERVER_NAME,
-- 
1.9.1


