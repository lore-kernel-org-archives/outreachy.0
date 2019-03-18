X-GM-THRID: 6669720602377453568
X-Received: by 2002:a17:902:6687:: with SMTP id e7mr5745691plk.149.1552915340415;
        Mon, 18 Mar 2019 06:22:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aa7:80c6:: with SMTP id a6ls5412994pfn.5.gmail; Mon, 18 Mar
 2019 06:22:18 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyvl1lx+K0fd74xKGswzg+Fbh+2f+OOqx43VRFzWEmR5ohatZh9wyb5Ji4fgW29dtDMFdCL
X-Received: by 2002:aa7:8519:: with SMTP id v25mr6582030pfn.140.1552915338238;
        Mon, 18 Mar 2019 06:22:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552915338; cv=none;
        d=google.com; s=arc-20160816;
        b=OHIGeFTkqg5o3gKv7RlorFmeyHl5fEmKcAFz7bST3isATI5hZtS4VpOtOPV/Kuon90
         pK8+SOm9R1tsW+WsVDRNhv8MuPfI0xYvYD26ESIm+2Agr/LD9ihOMtnDVP80eqoVVHSR
         6cDScJB6MrcaZ2Pdk24UR+t5tRI2BGQrlEH4icK/EUixukSR3DTYVI5Ii1i33/u+1sOj
         02pkCW2C35ctnSKHjZwzOtZlNC7dJuHxouQlEsdpyOPmsV8n3dZbtchfmkYFNHTWcBtP
         tN/naqfnwWOVYiPwxe19ciw29PxwbzUpcQ7//cULcnPK8wPr3m5ZWQtCB6WQRhLdep3G
         fzAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=4UgebSnAguFaepeehL4iUvYDQSCIvYUaBox2cDdYuJw=;
        b=n5awudQ2VMzZ/3QKA3HxQme2aR1boP/kDlIaBZig5bKwvalv3IRB9fkf5fzU+UJAKW
         F999maiyw9c2gxUDs/2DM71E9QIzEXFeH7/5xSUPC8mAvCFBroS3oVoyr5ITcyuc4ecM
         imPSloBi3+3mp0x7ImdYkMQbdU6JvVUwPxguEk4Km2z4QjK6kmSYKBh9XSx4oIs1KMX8
         J7eYz9yQuJudZKVF4SlnPaOlQ7+06JFojBXl/hYfZ9nrOxsXv+Pxcxdh84Zm3kN40KBc
         rd0YnGG6oFlgdq6/kXbhP6PX6QA1nJwQT/DeOaDPHpZfGRm3PFEiDiKqzC8P9qFpFJW8
         jdBQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kOeQR4z5;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id 67si586689pga.1.2019.03.18.06.22.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Mar 2019 06:22:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kOeQR4z5;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x542.google.com with SMTP id a22so11343911pgg.13
        for <outreachy-kernel@googlegroups.com>; Mon, 18 Mar 2019 06:22:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=4UgebSnAguFaepeehL4iUvYDQSCIvYUaBox2cDdYuJw=;
        b=kOeQR4z5HYULMbmZwVAVarqfnVRJ3QsbIY2Wq/dx+a0wZT7nzSIGiD+lyMWsq47exE
         tIDxmQzr1h5+PNlrr/xtralvxv0TNU1eE6c79AFI6z4LB4Ds6p/apPWo3Rhnczzf1dsJ
         t4FyemUwW72SlhusyjGTir7goLGSiGIMQNrLU94zd710GlIea38Gg45lUDw3aqqez1Yv
         SO46TmHreU+DYfIxUjMDmiGc2k6SALZU5XKQe5vGEzcUCxpS0I4DvXOEEc4RriHFINKB
         JvBtVSm36egP/k3090UKj2RQjeBdVD9D7QMctZTwzibO5d3AAGtdhQCDiQfrA9gHd9vW
         00yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=4UgebSnAguFaepeehL4iUvYDQSCIvYUaBox2cDdYuJw=;
        b=tEffzwjzMVyAyprzGXd8ttAiXL8uhzuwD37LX5I9l2a3mG1/kySTbmFsRI9b4qFTST
         dszgDGU1MuIZV/7fnH+aoSf0tVqrApjbo3Fe25pBLsSQ18bv5saOFIevOQuLY8Ltpu1U
         Cofx8qt8fqUsWCJ0NSOjayC8ePTPn/4cxUDnEiI7hH2V7SuZeFjALnRkiGnUWjUU07BT
         Qh8w4jE5vJ7+BYd0ZoWec6KjSfgunDLNTlbiGIDw/e9+5Uq6p2D+vNx43GcT69dSd78L
         aJx0CtM04ERqhdPe8hrCahZ9g+5xeSUQpYkXtMTnNJPzWn6KJHBVxAJk9fDLJbNMv/5U
         eCCw==
X-Gm-Message-State: APjAAAXdfi4/GQ76UVGDSQXr+4LUvEDcq+wC9v6Xb3Bk64J04QcAAys0
	hs2OEHtujUz8pwv8R4fQTls=
X-Received: by 2002:a17:902:e090:: with SMTP id cb16mr19249318plb.32.1552915337422;
        Mon, 18 Mar 2019 06:22:17 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from sanjana-Inspiron-5570.domain.name ([203.109.108.32])
        by smtp.googlemail.com with ESMTPSA id k74sm24493174pfb.172.2019.03.18.06.22.15
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Mar 2019 06:22:16 -0700 (PDT)
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: rtl8188eu: core: rtw_mlme.c: Replace NULL comparision.
Date: Mon, 18 Mar 2019 18:52:03 +0530
Message-Id: <20190318132203.13505-1-sanjana99reddy99@gmail.com>
X-Mailer: git-send-email 2.17.1

Replace NULL comparison with '!' in the file rtw_mlme.c
Issue found by checkpatch.pl semantic patch results for rtw_mlme.c

CHECK:Comparision to NULL could be written "!candidate"

Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_mlme.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme.c b/drivers/staging/rtl8188eu/core/rtw_mlme.c
index cbee02a86d22..ecac6b428154 100644
--- a/drivers/staging/rtl8188eu/core/rtw_mlme.c
+++ b/drivers/staging/rtl8188eu/core/rtw_mlme.c
@@ -1438,7 +1438,7 @@ static int rtw_check_join_candidate(struct mlme_priv *pmlmepriv
 			goto exit;
 	}
 
-	if (*candidate == NULL || (*candidate)->network.Rssi < competitor->network.Rssi) {
+	if (!(*candidate) || (*candidate)->network.Rssi < competitor->network.Rssi) {
 		*candidate = competitor;
 		updated = true;
 	}
-- 
2.17.1


