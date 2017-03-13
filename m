X-GM-THRID: 6395896934008094720
X-Received: by 10.99.112.77 with SMTP id a13mr16881364pgn.168.1489435528749;
        Mon, 13 Mar 2017 13:05:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.79.79 with SMTP id c76ls1792322itb.21.gmail; Mon, 13 Mar
 2017 13:05:27 -0700 (PDT)
X-Received: by 10.99.126.65 with SMTP id o1mr16277116pgn.65.1489435527591;
        Mon, 13 Mar 2017 13:05:27 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id u12si3307633pfd.3.2017.03.13.13.05.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Mar 2017 13:05:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id b5so19377978pgg.1
        for <outreachy-kernel@googlegroups.com>; Mon, 13 Mar 2017 13:05:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=8Di0VQcgBvNTjpJMAogTR7AbLaGHApYcVI+kHKG3d/w=;
        b=AsSdAAE7z/D0sTWjsxDiMHoBHK8KgWHvQuZTFpspLnXZe48BlGME1mrVr8u504tqPP
         upENXpRRvZ8E7Wqy9uWZDWX2XQvS7kQcqYPJbwheiMkKgWpqhVBI608qbdnGRMJUEDwt
         wferkPp/9lThQBhjts/4338Ae555E0I0jslOj7tLncdNvaMr7/0lkcJt+YdnkbXz/Afu
         zRYA1nVHOd+57LPe8LC5m4lfctqLj8ACPI2Gw648t2UwJuqLQApplKaINglNikCtwc8z
         ASOwKhwa4CJwK7Z3UkhdlTfi6wPEO1dLLxahK7D23A4Iy686c4MhWIdQFA6QZ2CI8ykj
         9XXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=8Di0VQcgBvNTjpJMAogTR7AbLaGHApYcVI+kHKG3d/w=;
        b=XtuocEFYDtDtEqeCONsuXgq513x9Kv68FbiCuzgy/cRLI9NqGjk/DwRGzotVFWnaFu
         9kVRq/B7QuBth7P4J4CTaQAQPuRoeyYJOK6gPVlrwvoBU8AePAKxEiJXfFTk1nnqpG9H
         mVyPB54VNNo5Lnl1jJU8Ei8NfbLbJ1FaifG+SI5PDwz9c+w/M5uQBIkMEKwt3KNtde+4
         3GZ6d6TQYzzPutvYSLO89I73dSOYOWe97aa7dgZsVUW2xNgDb+/usSCMm3WrxSw34FoD
         Ei5504552D8mLUWCYWSL2uO/TQhylfQrKRb0g477hi2Nf9VCwQTjrv7G1ifUMeNxR3kg
         o0Xw==
X-Gm-Message-State: AMke39neN6T42HcFRWVZ44sEIe8NW9QfyP7cYNxPKOpJygUnB8odITfa9lC0A+ypLNc6cg==
X-Received: by 10.99.153.1 with SMTP id d1mr39240465pge.44.1489435527350;
        Mon, 13 Mar 2017 13:05:27 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id 75sm34210460pfp.80.2017.03.13.13.05.25
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 13 Mar 2017 13:05:25 -0700 (PDT)
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
Subject: [PATCH v2 1/2] staging: speakup: identation should use tabs
Date: Tue, 14 Mar 2017 01:34:09 +0530
Message-Id: <20170313200419.24210-3-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170313200419.24210-1-arushisinghal19971997@gmail.com>
References: <20170313200419.24210-1-arushisinghal19971997@gmail.com>

Indentation should always use tabs and never spaces.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 drivers/staging/speakup/speakup_dtlk.h | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/speakup/speakup_dtlk.h b/drivers/staging/speakup/speakup_dtlk.h
index b3b3cfc3db07..46d885fcfb20 100644
--- a/drivers/staging/speakup/speakup_dtlk.h
+++ b/drivers/staging/speakup/speakup_dtlk.h
@@ -24,11 +24,11 @@
 				 * usec later.
 				 */
 #define TTS_ALMOST_FULL	0x08	/* mask for AF bit: When set to 1,
-				         * indicates that less than 300 bytes
-				         * are available in the TTS input
-				         * buffer. AF is always 0 in the PCM,
-				         * TGN and CVSD modes.
-				         */
+					 * indicates that less than 300 bytes
+					 * are available in the TTS input
+					 * buffer. AF is always 0 in the PCM,
+					 * TGN and CVSD modes.
+					 */
 #define TTS_ALMOST_EMPTY 0x04	/* mask for AE bit: When set to 1,
 				 * indicates that less than 300 bytes
 				 * are remaining in DoubleTalk's input
-- 
2.11.0


