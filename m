X-GM-THRID: 6668655286716203008
X-Received: by 2002:a1c:9c93:: with SMTP id f141mr269127wme.10.1552667302835;
        Fri, 15 Mar 2019 09:28:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:fac8:: with SMTP id a8ls1919146wrs.17.gmail; Fri, 15 Mar
 2019 09:28:21 -0700 (PDT)
X-Google-Smtp-Source: APXvYqySi4TRwiv0Il9bHNvUSd8SnvQs8OC/9yIZtgbumV5BJklIW0gCbZkLJBjbuCt5LrTdPMOz
X-Received: by 2002:adf:8121:: with SMTP id 30mr264006wrm.22.1552667301621;
        Fri, 15 Mar 2019 09:28:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552667301; cv=none;
        d=google.com; s=arc-20160816;
        b=T+YtWB22a1LWV47kz0WvQ4Q5QI/pcku4cWfXpRjRoJKJQeSYoJjr/KRJk+izNizoKt
         8XTxM0FilmGuKTUd1FJ7xWFSfcdrwwKmZujuO3zfsoQSzocXj0YPfgjXR9m1Pw74qDhb
         3QTPidKMLggkSdlShyU3MseELFzMCh3uWr5LL0tVUk0ppDDIOdub8wUijr2+6R+FnmLM
         HV1Orerm1iqdckBQsM542OL88t8BAt6k6d970AaGWHa2gLVa5AOzfDz88NjEsYV6a+J7
         W1/bQa+qhKTF9tJE6zLFTIqvI68+WJOGWMppjtVcymegFn9cFVLAWiak/lKWl2126CW4
         4Oyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=jVB0RyDovBXZHsXhN9uiStdU1EzxeGturH/r7ms1u1A=;
        b=iq/kUKXW5OmZSQFQ/N1ktcK900TKVb6ZPIz6pnpZXZMnKAeFhdPiLPEmI8tvyXwuVy
         jsHY2kmGNDd3X3TqitYIGwQqiRAQ1FOYoAKGyGoJbklu23u3uI6/a867QjS0VCU0dQ6G
         KeupsABgKykY+4rDqpkPJjOdhPQeWnjyzpRbxLkPughiPfAJ4Qjp4lHi0KQeoSmnR2mf
         3/J8v7kGA2iO/wOxDDmpn3NjIqWsLm/wl2mdaz8DXLjNYQNvs7hWWh6X4ExtIsdd3i6W
         PIHgb0k/x5I/+L5sTm0xnYmKYf7KISUAUzbfFkakhORnN+8+VyJcuUcKF65VIm8DD0qI
         Sdgw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=E1uuqrRc;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id y192si82030wmd.1.2019.03.15.09.28.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Mar 2019 09:28:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=E1uuqrRc;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x444.google.com with SMTP id t5so10231958wri.7
        for <outreachy-kernel@googlegroups.com>; Fri, 15 Mar 2019 09:28:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=jVB0RyDovBXZHsXhN9uiStdU1EzxeGturH/r7ms1u1A=;
        b=E1uuqrRc1SosQBUQgMiha5/slYaWYETNPNciQholvlIJJpAm8yVwDL0/9vE792wMUG
         y3xWz0v3wOVEc4qhV4Q7sWLGqEPgYEShDlhim1Y7YfNON3a9R+brIiHekFpRXBqpiXM/
         ZzmWTAru+tmdGfiW1J7lWqjIs/RcLjk21ACrOX0w7ABbMNTcx74YT0ZIkp+4E6m3GsR4
         4nOLLK6q+SrBH/nF7X4zfRxw9Apbpz3y+lbmTKACZJtANYkQEb6aFTxCGYl7Fch4b2o4
         2U4bqj0OHOCRF135S2+1EGqE6IKGdPYCE6mfsXJsUgYgNUqQ3LwMgZ8J6xb7h/dP/iNj
         mtQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=jVB0RyDovBXZHsXhN9uiStdU1EzxeGturH/r7ms1u1A=;
        b=p7Rjkl0QxU14oKGvk9BdW148754z9S29QFo/fnVIb6ACfDdJgCW7QIfLCrksSh2mh5
         M53Ru1/B7RjC263Yzma3EhxyeJHEAof5bh080f1KAxfQJwAaA2zW40aaYeN90bV0a/m4
         ieBzoZUgU7jAShFzfuVwmEGnrheN53nizbljLc5J0Ne+8y7KpXcyKd12r+Q42KNm4fR+
         gW7rax3Y2MkSVKmyj9Lax02jCVIgQP0xMgruLn1iTY1xnOIls5Fn6u5CuZr5P44bLKVj
         UIAypecoT3G7cBW/kaOqhKVK0KBtMcW+E+tBHltjJUFGECDansFL4bDD/6vNkHnDbquT
         Y92A==
X-Gm-Message-State: APjAAAVrLze1LI2cQmAbjPYB0pbWP/RVs9auIGoOVWW+us7GoXU5dbjt
	k1hdZMdewGPYzdIMC0zN7SEmKwc=
X-Received: by 2002:adf:f0c5:: with SMTP id x5mr3218386wro.133.1552667301128;
        Fri, 15 Mar 2019 09:28:21 -0700 (PDT)
Return-Path: <jbi.octave@gmail.com>
Received: from ninjatsu.public.libraries.mcc ([91.235.65.22])
        by smtp.gmail.com with ESMTPSA id s127sm1469428wmf.39.2019.03.15.09.28.20
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 15 Mar 2019 09:28:20 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtlwifi: remove unnecessary statement
Date: Fri, 15 Mar 2019 16:28:08 +0000
Message-Id: <20190315162808.10646-1-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove unnecessary assignment statement
 and variable before return from function.
Issue suggested by Coccinelle using ret.cocci.

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 drivers/staging/rtlwifi/phydm/phydm_rainfo.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtlwifi/phydm/phydm_rainfo.c b/drivers/staging/rtlwifi/phydm/phydm_rainfo.c
index ed740a93c8b6..c9837fbde54d 100644
--- a/drivers/staging/rtlwifi/phydm/phydm_rainfo.c
+++ b/drivers/staging/rtlwifi/phydm/phydm_rainfo.c
@@ -926,8 +926,7 @@ void odm_refresh_basic_rate_mask(void *dm_void) {}
 
 u8 phydm_rate_order_compute(void *dm_void, u8 rate_idx)
 {
-	u8 rate_order = 0;
-
+	
 	if (rate_idx >= ODM_RATEVHTSS4MCS0) {
 		rate_idx -= ODM_RATEVHTSS4MCS0;
 		/**/
@@ -950,9 +949,8 @@ u8 phydm_rate_order_compute(void *dm_void, u8 rate_idx)
 		rate_idx -= ODM_RATEMCS8;
 		/**/
 	}
-	rate_order = rate_idx;
-
-	return rate_order;
+	
+	return rate_idx;
 }
 
 static void phydm_ra_common_info_update(void *dm_void)
-- 
2.20.1


