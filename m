X-GM-THRID: 6804290192961175552
X-Received: by 2002:aa7:cf93:: with SMTP id z19mr12523387edx.12.1584247265629;
        Sat, 14 Mar 2020 21:41:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:99d5:: with SMTP id n21ls8406506edb.10.gmail; Sat, 14
 Mar 2020 21:41:04 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvf1RqTgDRnCorV6RDKPQyNHXmwMTo/PR1vB3+jaeSHGtnqG2JAnwtw6oG2XfYmvetbXvoy
X-Received: by 2002:a05:6402:688:: with SMTP id f8mr21747400edy.259.1584247264283;
        Sat, 14 Mar 2020 21:41:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584247264; cv=none;
        d=google.com; s=arc-20160816;
        b=Y48xePAQ+/0rhKpoo/M9B9r6cTmZTamqERWnZNSo80wwc7ya1d3IubUfaYcwHl0uKD
         ovvdHCGNliPfiMnwZsdpLjntUtgVOChb5jYQB18VK7V7Uqo3esr2aehPxi0lSeWUi6mD
         10hdYuKiI+VFFQ/qw03bjMwKROkNk/VvIEHQ/Yqcdl8fl6U36wQ4KQTYwHIdb8w6kiZk
         UUA79dlAqhnMY1vYHbeYMMIQBR0Th7hqFNZyHc4swmchiCRgBpTG7Nt8Ua7lzyEDNzyJ
         bXG4UDfUg35hrtcEZ85dW/JN3BvxtCIWzsSsZfIW7i1LmQAcZ3RgItfEuA07q86n0WRU
         7f1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:to:from:dkim-signature;
        bh=qgUo3qzU1nbxZ/3mgsq9ZOTIVrBmD6mVaqkK46gOTT8=;
        b=muRzNzgA2yewD6wv75lENMcShGtgQ9AmLXnnswWdeJ37Ltqzmpbk1x+GPbmryDZb0T
         QfJnuqDjWYmnfyOEEbf0monYmAaK06VyhIesGtjQrAz9qUR4d+KIfpffoBFoAvIr9/o2
         tk0OmJUrKJhVSKy/NQcVxtVsuM8TJYjG9doDAdRyPdDCCBcU0tkAbV18jmYySOyV/Jrw
         rb5kc40HyslFWs9QPRsFx98Yy2gvZJiWTe8gdEgPk6wBUskt7WspMHp4LX1xFfOZtVXl
         F+nPhWXF6qE25IUpbNLXVxze2M9GRJL+G+YpDlK7EDJupIVbldc+FaJqMiAsrhX/ZFu7
         1Gmg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=EaDCgmyV;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=lu@pplo.net
Return-Path: <lu@pplo.net>
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id l21si483426edq.4.2020.03.14.21.41.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 14 Mar 2020 21:41:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=EaDCgmyV;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=lu@pplo.net
Received: by mail-wr1-x443.google.com with SMTP id x11so12325157wrv.5
        for <outreachy-kernel@googlegroups.com>; Sat, 14 Mar 2020 21:41:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pplo.net; s=google;
        h=from:to:subject:date:message-id;
        bh=qgUo3qzU1nbxZ/3mgsq9ZOTIVrBmD6mVaqkK46gOTT8=;
        b=EaDCgmyVKeTFeOe96j/VLeXx1OWrjdbvDjxmz2l/5mrh3f8EiE+qW+AQ37JBUfH46V
         WWEZfcoRA9vSxgxrIHR+pgTosbob9nR9aV54eoN4vp3EhlNfknlF/GAdZXTCyTclue0q
         /2rKVFXPU/cJx2c9m6haceKgbb0EUEcCLclUk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=qgUo3qzU1nbxZ/3mgsq9ZOTIVrBmD6mVaqkK46gOTT8=;
        b=tRSpDrxMl8MsCgbiA2O6Rqc6WfaywVBrtzu4a13I35Y+BtmjLHkqSQXMYz+S099DsE
         YXTa3CbMnLTKMLqM+VEGw74DXKo+lr1gl94UdKPWuUu2+aOlxCco1B1tgvWkTpyQ3HV/
         gAYo4tv3ehVznKEn3saPFz7/CSZBIuFoH1X/DgQHMxyhxXndEvSSqFAHdDn2ws7rIv8e
         jYeYqgn9Ikz7IoJhQZqEtJ9KOvQAtlS148rPIB8JgAnNHwdzNkPVpLIkOKZ0Z1PN5dDg
         QWSYd8djdhD7Pj2v8hNmlSbPZIyOxL0IGu75kEv9rqHsKyga+/zHFFghgVyTRIpSJJuM
         tkyA==
X-Gm-Message-State: ANhLgQ3zHwCSaUFvo/Ui9oT+ohtcIp4z2r3VM517AbhTENobkk+ra49b
	S43lUUERphllDTMcMN5pAw//cciBxQul5A==
X-Received: by 2002:adf:ea4d:: with SMTP id j13mr13607217wrn.287.1584247263738;
        Sat, 14 Mar 2020 21:41:03 -0700 (PDT)
Return-Path: <lu@pplo.net>
Received: from localhost.localdomain (85.251.42.187.dyn.user.ono.com. [85.251.42.187])
        by smtp.gmail.com with ESMTPSA id u204sm21483596wmg.40.2020.03.14.21.41.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 14 Mar 2020 21:41:03 -0700 (PDT)
From: Lourdes Pedrajas <lu@pplo.net>
To: outreachy-kernel@googlegroups.com,
	w.d.hubbs@gmail.com,
	chris@the-brannons.com,
	kirk@reisers.ca,
	samuel.thibault@ens-lyon.org,
	gregkh@linuxfoundation.org
Subject: [PATCH] staging: speakup: main: switch multiple assignment for one assignment per line
Date: Sun, 15 Mar 2020 05:40:51 +0100
Message-Id: <20200315044051.13921-1-lu@pplo.net>
X-Mailer: git-send-email 2.17.1

One assignment per line is preferred, instead of multiple assignments.
To prevent possible undefined behavior.
Issue found with checkpath.

Signed-off-by: Lourdes Pedrajas <lu@pplo.net>
---
 drivers/staging/speakup/main.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/speakup/main.c b/drivers/staging/speakup/main.c
index 488f2539aa9a..d363009863e3 100644
--- a/drivers/staging/speakup/main.c
+++ b/drivers/staging/speakup/main.c
@@ -2117,7 +2117,8 @@ speakup_key(struct vc_data *vc, int shift_state, int keycode, u_short keysym,
 			spk_keydown = 0;
 			goto out;
 		}
-		value = spk_lastkey = pad_chars[value];
+		spk_lastkey = pad_chars[value];
+		value = pad_chars[value];
 		spk_keydown++;
 		spk_parked &= 0xfe;
 		goto no_map;
-- 
2.17.1


