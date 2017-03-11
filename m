X-GM-THRID: 6396079372840730624
X-Received: by 10.99.226.3 with SMTP id q3mr11941164pgh.129.1489242428945;
        Sat, 11 Mar 2017 06:27:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.184.8 with SMTP id i8ls3185551iof.24.gmail; Sat, 11 Mar
 2017 06:27:08 -0800 (PST)
X-Received: by 10.99.166.2 with SMTP id t2mr11404731pge.127.1489242428515;
        Sat, 11 Mar 2017 06:27:08 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id 2si2287433pfx.8.2017.03.11.06.27.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Mar 2017 06:27:08 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id v190so13931581pfb.0
        for <outreachy-kernel@googlegroups.com>; Sat, 11 Mar 2017 06:27:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=BnaBBzBVoGPZBD2NW5jSGa4vog82pv7cLdnTOt+Wiw0=;
        b=ehCooqMLD3GGJ4aHxMtqj/ot1bq2q+UrLn3Y7ZB/mhwGrIkS5+/tF+C7PHC86qfgOD
         qqPPjSY6Idd3tILRMGDuJcISjOrgM1TQLxwi/eu3hP3TEgfhlmeV7VNa1FfBObWEl5wj
         FUJ0DWPdu+Mdd4TqiCesOtNXXJYjYva+fcRy8Q8TDhfsYGUsFQJKrQtdAH28C2M6XSMo
         RHbUADqbgRVM4Ys6Tn+kb+DcNFv9PgloTSG7r6gMyYhfaE7m6DYvy6MDcJu0e4XRRik+
         23OHk3PFEBT1buMkqj9e0HU36TWLw7lfo1wgy3uhffEAqj/kG3fBy7+h5NujI4Fkx3N2
         s4GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=BnaBBzBVoGPZBD2NW5jSGa4vog82pv7cLdnTOt+Wiw0=;
        b=Ippd2Qf2Un1o1lGTVKyCwS/xCRRdJedJKHXEC6JMU+y25gzVf0IPqgy0mKxvjYfVj/
         gPXm19IUIhRdwsZVA4ZKKrBAWF9pybZpMMWxY/seX7WMUJsjsbXQ186ikqahzZWV8XLA
         uZhW4X3yB8ewm/OJOBh7dwB7C6iCMH8VmfeUs+BNCj4T/N1tXKfFyddGGzZJsg/rNZbN
         VYrgmnA3g74Nd+SZ/uOKz9HYi2qfqSrOidamEKDAkhnDNkI7iw5zXw4hebUYAxU02wB7
         GElXbokREXt/y5a74iNgxl78mal6Sgt6XXldIQofCe6kvZbmd81W2ajZzJtw4NQQTlpg
         nnvg==
X-Gm-Message-State: AMke39mkhrzQs9p/AJrV9/dQQCX+VA5a36pod3l34jtQNrGXNQbjzhJ8lzttzvlcAhHkjw==
X-Received: by 10.99.45.133 with SMTP id t127mr26414816pgt.224.1489242428325;
        Sat, 11 Mar 2017 06:27:08 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id x10sm24597030pfi.21.2017.03.11.06.27.06
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 11 Mar 2017 06:27:07 -0800 (PST)
From: simran singhal <singhalsimran0@gmail.com>
To: lars@metafoo.de
Cc: Michael.Hennerich@analog.com,
	jic23@kernel.org,
	knaack.h@gmx.de,
	gregkh@linuxfoundation.org,
	linux-iio@vger.kernel.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v1 05/10] staging: iio: adis16240: Remove exceptional & on function name
Date: Sat, 11 Mar 2017 19:56:39 +0530
Message-Id: <1489242404-12352-6-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1489242404-12352-1-git-send-email-singhalsimran0@gmail.com>
References: <1489242404-12352-1-git-send-email-singhalsimran0@gmail.com>

Remove & from function pointers to conform to the style found elsewhere
in the file.  Done using the following semantic patch

// <smpl>
@r@
identifier f;
@@

f(...) { ... }
@@
identifier r.f;
@@

- &f
+ f
// </smpl>

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 drivers/staging/iio/accel/adis16240.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/iio/accel/adis16240.c b/drivers/staging/iio/accel/adis16240.c
index 27d7f6a..37a29dc 100644
--- a/drivers/staging/iio/accel/adis16240.c
+++ b/drivers/staging/iio/accel/adis16240.c
@@ -373,8 +373,8 @@ static const struct attribute_group adis16240_attribute_group = {
 
 static const struct iio_info adis16240_info = {
 	.attrs = &adis16240_attribute_group,
-	.read_raw = &adis16240_read_raw,
-	.write_raw = &adis16240_write_raw,
+	.read_raw = adis16240_read_raw,
+	.write_raw = adis16240_write_raw,
 	.update_scan_mode = adis_update_scan_mode,
 	.driver_module = THIS_MODULE,
 };
-- 
2.7.4


