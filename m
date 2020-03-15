X-GM-THRID: 6804290192961175552
X-Received: by 2002:adf:8b54:: with SMTP id v20mr30332719wra.13.1584310377409;
        Sun, 15 Mar 2020 15:12:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:548b:: with SMTP id h11ls8480624wrv.9.gmail; Sun, 15 Mar
 2020 15:12:56 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuvStZRWVJLXPgUE5Wpfti8Rv7tkUjkUcgfNEm7uiefXXeWsvbWzrSZu/sNjRk7oN/H0wsv
X-Received: by 2002:adf:f289:: with SMTP id k9mr25872721wro.220.1584310376226;
        Sun, 15 Mar 2020 15:12:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584310376; cv=none;
        d=google.com; s=arc-20160816;
        b=AniN1X/D9CJ6pS1/JvcAi5XZmGCg9yYz8R6FCJXgcdU3liYVVwoDmC9/smPq8KTrpC
         IdQxHxXv1Tfdatu9F6XPVK5T2/OI/blTxnwwDOZKBNAblK2ELJHEU7IQGVqOgwJrHPRU
         dvNdo1oZrz630hnKiD1b5V6YP1Q8IzRAwa/SaTvi5hGdbBQunkL3idwJwBTn9BUpcDul
         GW2bxHG9v66GvlM2Jw1fF2XtkQhAU8ptNFpDZK/xmKDh+yit6NRButHhra0eV47E1u/G
         PriqgtYPI4Y1hQXnQRPEYXk309XbPYrF0zSKJqCOs/YaAhLr4VyTDQWJ1lxcNuyi33yG
         Osvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:to:from:dkim-signature;
        bh=KUXrxqK4qVnNJiwp1GJBaX8sC679cZeio/W1BGTBAsU=;
        b=WEcAz/3Oi5a+viSZBIzRnSnsm19QOnrXXkcs7WC820bEKRBiChXyHr3FuRBBa6w4NS
         WiNQLZpNxuxQxTUu1jrmnR1HLaMPe+LRc/OPZYRvxSIxXZk6zsSKUV1YBtb9NPHSJxi1
         i9Q6dNxDAtSDSfiLOcTbT8c9U0QhPgu5qce1JOu7+6cTSigOkCpS5tWzdLDqYlV6qKT0
         eozhjUu2yvK7gMt8IwkWsKn0VDnU+uyAZYptMlIfwhBnxRUK/Vd0owcIYSz1NbnLeF9f
         ufe5j3JnTdROHUUtTNwB3ZZKLe+1LV135VhURK5AgmH1BKMjyK6M58Txt/2l9YjOpP//
         40Xg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=ZE9A9vEG;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=lu@pplo.net
Return-Path: <lu@pplo.net>
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id l13si733910wrp.2.2020.03.15.15.12.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 15 Mar 2020 15:12:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=ZE9A9vEG;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=lu@pplo.net
Received: by mail-wr1-x442.google.com with SMTP id y2so3409964wrn.11
        for <outreachy-kernel@googlegroups.com>; Sun, 15 Mar 2020 15:12:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pplo.net; s=google;
        h=from:to:subject:date:message-id;
        bh=KUXrxqK4qVnNJiwp1GJBaX8sC679cZeio/W1BGTBAsU=;
        b=ZE9A9vEGbV5CrcWghzAfwmo6k3vbnG2HRuiIybGWETmpRjc81MjhFHWzCEjKsrustv
         EIkYSVWFG04N4fIrhxHfnUh035CJKVZGSTCRPkQxJ24//eqEgDt6+hz1fDXuvSvpWczM
         LhJh0/6eZ4AbAKttaEE4Z5L2SMwTJo7c8Ob8Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=KUXrxqK4qVnNJiwp1GJBaX8sC679cZeio/W1BGTBAsU=;
        b=fCtm2rbC1PlhHEbvMsFUzKWdarALFA/ZwxCxjYDlxm7AVnbj/xhr4o0FpGAUhokudP
         2OsR5ZOCF7iHqemfFdasNkImzzQEjls9EwvUY6qrlHFS6rGlm8W5AKIobHjE6dBk7/D/
         rWtWL/ZvTyRgl96uCtfGNj38+yENmZv21gbzaTqmTd5890c27ba4BKQp6cNGEk3EyhTm
         Q5WCvi4T2TBneA1OvBOtH+WlsgtVina9D+gP+71Z+Xaek+ajzOr97ia+kZvQdtQCuenX
         7wZFM8PkOgcLgResMLpB8plrukAjUSaSlf1uvNGrERurcEcdzLuQLYDhjti9XbXh4eAN
         0m1A==
X-Gm-Message-State: ANhLgQ0FfE8EuFxG5sLgJ5k34aBkYXQhjywbD1RgnZ6nxT78qMg58pmE
	U5leVZN8vzfNATTt/cwfImGlsZLs+cNG3A==
X-Received: by 2002:a05:6000:189:: with SMTP id p9mr31550672wrx.391.1584310375748;
        Sun, 15 Mar 2020 15:12:55 -0700 (PDT)
Return-Path: <lu@pplo.net>
Received: from localhost.localdomain (85.251.42.187.dyn.user.ono.com. [85.251.42.187])
        by smtp.gmail.com with ESMTPSA id y12sm26089730wmi.48.2020.03.15.15.12.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Mar 2020 15:12:55 -0700 (PDT)
From: Lourdes Pedrajas <lu@pplo.net>
To: outreachy-kernel@googlegroups.com,
	w.d.hubbs@gmail.com,
	chris@the-brannons.com,
	kirk@reisers.ca,
	samuel.thibault@ens-lyon.org,
	gregkh@linuxfoundation.org
Subject: [PATCH v2] staging: speakup: main: switch multiple assignment for one assignment per line
Date: Sun, 15 Mar 2020 23:12:47 +0100
Message-Id: <20200315221247.16629-1-lu@pplo.net>
X-Mailer: git-send-email 2.17.1

One assignment per line is preferred, instead of multiple assignments.
To make it more readable.
Issue found with checkpatch.

Signed-off-by: Lourdes Pedrajas <lu@pplo.net>
---
Changes since v1:
- log and code corections

 drivers/staging/speakup/main.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/speakup/main.c b/drivers/staging/speakup/main.c
index 488f2539aa9a..5c47643b302c 100644
--- a/drivers/staging/speakup/main.c
+++ b/drivers/staging/speakup/main.c
@@ -2117,7 +2117,8 @@ speakup_key(struct vc_data *vc, int shift_state, int keycode, u_short keysym,
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
2.17.1


