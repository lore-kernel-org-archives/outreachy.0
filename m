X-GM-THRID: 6394528999032225792
X-Received: by 10.99.228.83 with SMTP id i19mr9247446pgk.57.1489178527139;
        Fri, 10 Mar 2017 12:42:07 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.51.92 with SMTP id u28ls1163910otd.12.gmail; Fri, 10 Mar
 2017 12:42:06 -0800 (PST)
X-Received: by 10.200.39.100 with SMTP id h33mr3732376qth.73.1489178526818;
        Fri, 10 Mar 2017 12:42:06 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id 2si1911157pfz.1.2017.03.10.12.42.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 12:42:06 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id 67so11927571pfg.2
        for <outreachy-kernel@googlegroups.com>; Fri, 10 Mar 2017 12:42:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=cK/+Y+JuWscny+ktndWoDTyfcmpTDPhj/m0key+/Uy4=;
        b=Hyit3InMAjKW3uRBtT2dtlT3qHGl7ROR6Z1zCI1jTTi+EPa0b66npfyss+WvTlp7ZA
         JPjON5UFWvW3G+ITjlUtMFIsJ3kflCXtaFTr6JsYmIsGlDqfRXD5KvknWvu+84g35IPo
         nB5/FTTmFQhgsxKmFSyGt5UWkqglQVB43DAqNNXKX08Ij9fyAbtkhDW/W0iqaHYmc6aW
         Wv2WKyKoW9O8urApPz6+PYSOg07K5U/GBpkeZTAJVe/PAUbtUmncC/bzhO/pabGsYEOa
         y+hRmmJDBQiovjUNi32ZCQOP2+9yzLjzTsvqaaP0xhL8gWZu4lBCaLC79l2Bn1ImFVvD
         aGMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=cK/+Y+JuWscny+ktndWoDTyfcmpTDPhj/m0key+/Uy4=;
        b=ou3cf83WWfN4PtF6WTctQfWSNzNJjy5J9WN3euoWHWNz03mQvebY4HUEJqF5dGQeNe
         b2B3FdOALyZewem93Ew8UzT3WnTuBJ108+a+g35zlDkL6wGnnctw+bnyY00jgNFtxy5t
         MHe/LkYCeAabuYPIQo7BjfbTirLOCqBWc/alaQeyTWq7D9pwzVjn0cekEsMRZL6OQszX
         c0n2UhtG5mdF+0ZozMxgNY0N1Firw7tIqk/fErKfyFv8rZvv4NZHM+FJFFPD3Y/UrzuG
         zxorBkQUuqQj4FhCa7Xqd3O/TCDsZCBMQicKgBgboPf+9HQMr5CxWWDXjSr6OPCnFGqi
         M3ZQ==
X-Gm-Message-State: AMke39lfiKsYT/Q94yWmN/gHVOe7Hh4v8aAaZRnBVr7HV+Ye4+jRYvko9mrZrX9caqe7xA==
X-Received: by 10.99.36.7 with SMTP id k7mr22366702pgk.201.1489178526602;
        Fri, 10 Mar 2017 12:42:06 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id l72sm20232225pfi.93.2017.03.10.12.42.04
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 10 Mar 2017 12:42:05 -0800 (PST)
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: w.d.hubbs@gmail.com
Cc: chris@the-brannons.com,
	outreachy-kernel@googlegroups.com,
	kirk@reisers.ca,
	samuel.thibault@ens-lyon.org,
	gregkh@linuxfoundation.org,
	speakup@linux-speakup.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	Arushi Singhal <arushisinghal19971997@gmail.com>
Subject: [PATCH 1/2] staging: speakup: Avoid multiple assignments on same line
Date: Sat, 11 Mar 2017 02:11:54 +0530
Message-Id: <20170310204155.6367-2-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170310204155.6367-1-arushisinghal19971997@gmail.com>
References: <20170310204155.6367-1-arushisinghal19971997@gmail.com>

This patch fixes the checkpatch.pl warning "multiple assignments
should be avoided."

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 drivers/staging/speakup/main.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/speakup/main.c b/drivers/staging/speakup/main.c
index 00335eb2ff20..3ecf2e41bf1f 100644
--- a/drivers/staging/speakup/main.c
+++ b/drivers/staging/speakup/main.c
@@ -2093,7 +2093,8 @@ speakup_key(struct vc_data *vc, int shift_state, int keycode, u_short keysym,
 			spk_keydown = 0;
 			goto out;
 		}
-		value = spk_lastkey = pad_chars[value];
+		value = pad_chars[value];
+		spk_lastkey = value;
 		spk_keydown++;
 		spk_parked &= 0xfe;
 		goto no_map;
-- 
2.11.0


