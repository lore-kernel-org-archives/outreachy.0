X-GM-THRID: 6807521221589073920
X-Received: by 2002:a1c:cc0a:: with SMTP id h10mr4628118wmb.127.1585046761817;
        Tue, 24 Mar 2020 03:46:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:f3ca:: with SMTP id g10ls3607845wrp.11.gmail; Tue, 24
 Mar 2020 03:46:00 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vurG8eqXWwff8KFDpUIYu0g5CebGEVZIVLyHVLSP02UKdYcm/aQOZb/70d+ZSqfHzd6zwLZ
X-Received: by 2002:adf:dd01:: with SMTP id a1mr27471353wrm.153.1585046760637;
        Tue, 24 Mar 2020 03:46:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585046760; cv=none;
        d=google.com; s=arc-20160816;
        b=Bm82ecxwZKYKEkj5wnLTdYc65FB+yObC3evg7NaWrniBVj+HKoRww0YmbyOJfN4rL2
         VZxPYpsYYP1yAtuvZvmxqbVbIe3NLVn8uQAxg7Agpn9fSkF+9SYJXzwVF2/Izwol50fx
         tHh95DiWssaIL9QMWWQpfcCzH0BJ7UbhV8Tue//uXpW81uvWsti9awZkNmGxSJCzt42g
         K1j0uHcSeTAlP0sdEupmtXlWUtDplnC3KYeXNUMSMqgG1pj7hP/cprxSJxyUdsh+9BBf
         dTsHAcEk+mrYvOJufjBDl9zHsfKbriHIiN3NqFfxtWw5m9PjowRednZ0fwJwot3pq4Dc
         9Wuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=n8p2QkxhdQGiGVUtAC6r0tYJVJ05PV0bV+PvLvkIiAk=;
        b=uOvTGeVNydtm/rywlDIQHRwv8H1CCkmgSBevDJGMG7MMr0O/ZMcXhGYbVpfMYYFJlT
         F1EoAvXreYlK4UF4yhO3i1LLqE4t0eK27op6oeXwgHeTRmjSRM0sW5HVGHB0AP9XupXC
         eKbj6hx3OisFZHZCDLc/Dj0sIECNri5DBvctt0MvXcokSvAfJ1zI4fqWPBQH/WaGMSqS
         ZrsS4jy5y8RnVRMFFWW8v9mD6wFGOYFcDfQsc5e7LEMqxFZXsyBocvSnacQjLhSPAYOM
         8BZtzmjzVfoZb2ib1fSgVNdX+of9XqZaqHdvYJmzvZfAl9UzV1ZPiOP9I3Hph5/hbqYz
         ygkA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ad7xq32G;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jane.pnx9@gmail.com>
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com. [2a00:1450:4864:20::342])
        by gmr-mx.google.com with ESMTPS id i22si43461wml.0.2020.03.24.03.46.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Mar 2020 03:46:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) client-ip=2a00:1450:4864:20::342;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ad7xq32G;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x342.google.com with SMTP id g62so2893443wme.1
        for <outreachy-kernel@googlegroups.com>; Tue, 24 Mar 2020 03:46:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=n8p2QkxhdQGiGVUtAC6r0tYJVJ05PV0bV+PvLvkIiAk=;
        b=Ad7xq32GEi6C4i8KgZ49A5QvlUapA+9MVoCLJIpSbS5JFFc+Cu427r3z6E6ueJqOCZ
         Ff6fef3VV1MoJM9F9drg8kIxXcyESkCNoLkDHDRQfiSwyoABkfPgh3L6tmdYNmq9CFo2
         fOXatLe6LhANtaDSLflznlyUkOeckslCKskmj7UMrpGAfQmBIb/KclLud4Tw7YamUcAI
         IRl5368UWPWEquXWt8bqVVp1h1UvkNN5pFYvjbtbvtQwsmdPi1qMoI4AeTQC1rTyQiaO
         ax+u2W+kvCTHrCsvwHYGn4zHK3VIrioQUMf3dkS8a/DjFn+P1bP5PabOCVZHcsNlTr4/
         EWeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=n8p2QkxhdQGiGVUtAC6r0tYJVJ05PV0bV+PvLvkIiAk=;
        b=MhmYOLohQ3XmTMZvib7xvrUu//FPtJgPdBzdjg/nlERzEnjVBpLOy/44OHHMLhPox4
         apvW9JKFM96xL2r11BpIyPGmXcTn3UBp7l+Q8ECtQ/Qv4v6oCLnZZhBCBNgrEFQ4AOcG
         b087Un7ByX5bWrbCUXtCh+CtLMIBUV3Xev0Z95qkMQ7xXl8h3gwWCtRMdrv594vKHkE/
         ZACZmcvZmOXOcxXnZ96HlrWuCZPghCx6Ehci8e3s5mt4FJ3WZ0euqmhxNPIdboIGfK4s
         2xD0t86IurGLhN08dbvJ9mVZaikWI4l7mNl60sQqawjBrnAynD9ShQlxg6X+pmbyG4jz
         GcoA==
X-Gm-Message-State: ANhLgQ0Ggtd7BC9+ZXQwFmPVD2ezlukzoMesYNkaluVTo1Dgb+5jt5yM
	jKeaeUaCzbD7wrq6YSzFi7I=
X-Received: by 2002:a1c:5641:: with SMTP id k62mr2008259wmb.82.1585046760211;
        Tue, 24 Mar 2020 03:46:00 -0700 (PDT)
Return-Path: <jane.pnx9@gmail.com>
Received: from localhost.localdomain ([197.34.93.161])
        by smtp.gmail.com with ESMTPSA id f1sm19009025wrv.37.2020.03.24.03.45.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Mar 2020 03:45:59 -0700 (PDT)
From: Sam Muhammed <jane.pnx9@gmail.com>
To: William Hubbs <w.d.hubbs@gmail.com>,
	Chris Brannon <chris@the-brannons.com>,
	Kirk Reiser <kirk@reisers.ca>,
	Samuel Thibault <samuel.thibault@ens-lyon.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Cc: Sam Muhammed <jane.pnx9@gmail.com>
Subject: [PATCH v3 2/2] Staging: speakup: Add identifier name to function declaration arguments.
Date: Tue, 24 Mar 2020 06:45:49 -0400
Message-Id: <b2a1ca962553194840d8cd2bf1f7d3174e3b1336.1585046066.git.jane.pnx9@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1585046066.git.jane.pnx9@gmail.com>
References: <cover.1585046066.git.jane.pnx9@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

void (*read_buff_add) argument didn't have an identifier name,
adding a name to it like the rest of all functions' arguments.

Signed-off-by: Sam Muhammed <jane.pnx9@gmail.com>
Reviewed-by: Samuel Thibault <samuel.thibault@ens-lyon.org>
---
Changes in v3:
- Adding Reviewed-by: Samuel Thibault <samuel.thibault@ens-lyon.org>
  tag.

Changes in v2:
- None.

 drivers/staging/speakup/spk_types.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/speakup/spk_types.h b/drivers/staging/speakup/spk_types.h
index a2fc72c29894..fc6a9416829c 100644
--- a/drivers/staging/speakup/spk_types.h
+++ b/drivers/staging/speakup/spk_types.h
@@ -189,7 +189,7 @@ struct spk_synth {
 	void (*flush)(struct spk_synth *synth);
 	int (*is_alive)(struct spk_synth *synth);
 	int (*synth_adjust)(struct st_var_header *var);
-	void (*read_buff_add)(u_char);
+	void (*read_buff_add)(u_char c);
 	unsigned char (*get_index)(struct spk_synth *synth);
 	struct synth_indexing indexing;
 	int alive;
---
2.20.1


