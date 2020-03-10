X-GM-THRID: 6802581190455853056
X-Received: by 2002:a5d:4ac8:: with SMTP id y8mr27272884wrs.272.1583849358366;
        Tue, 10 Mar 2020 07:09:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:a799:: with SMTP id j25ls6138641wrc.7.gmail; Tue, 10 Mar
 2020 07:09:17 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtzunp5s8ZmMMTMVcFxTHwCoQrzLV/U4N+Au5HPqJ1hHutybvrqx/hIfCj0+8beSN7lSht+
X-Received: by 2002:a5d:46cc:: with SMTP id g12mr13980272wrs.42.1583849357104;
        Tue, 10 Mar 2020 07:09:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583849357; cv=none;
        d=google.com; s=arc-20160816;
        b=kIx/dx7JmdgXj7LUK9rRqL2b4Us5RMLJgrJDMsPZ1AnZ29qh8/zYiNgxiKaK9w3qIw
         0MjL97sBBbLRf7557aljSVw/0YAgmxO0qU9cZl0s25eVYO1fJyuxOegG0VYe2yCVwpxQ
         N4MeJ5kK+Yjmv2wU4HMoGDknEWSQLxHi+26KWF54akSzvye+ZuXrvFzsEMdD/ieaIK9U
         J2yzLyW8ZZq9kxt/Zg2ucWCLu5I4f8Kz2AeTZteS7LncfVP1yvPdh3yKEExSHvaW4u3S
         +cUjMwZg6+3gdnK+t2gsFq0V9gB40G5Pvjd9EEG4BHs7ZaWd2hCjTX+agEahQoTdOJ8k
         dqkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=6ijpdpyyfgFVa6yPZsSq3+PkNqFl1t23TpFXB4WcLZg=;
        b=TflTXJ7Vp9j527yJ78P998MH3waIRJuhHs5/HXqcZqAcFv08h+n1W8R8LkivqVTI4I
         +gdU2FVrVAtHj7ZYaiEMkAVEAGuXrlzw9/MBIPfo2FyitNlE+1+nEJAdN3FfSxK/LLfc
         QEMvEFMUsUjhYbSpfQgXLmxRe5ZZhBP7tvUdAszrYjkBwGj4vb7iuCTpywxGqHGhU8zz
         CctnLDD2I3ZeXs12dTeLDD+olV7QSbVeylOJztQQtNni5s5/b8q6idfI0uX0CSBZ5zXH
         2htTYbT/+xMKQ6pvPCJVYxTE+WAj79sej7aSvPEvR253o1nG8+PqngVD/ST6QV4CpHEW
         v4aQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=IhcSnULI;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::42e as permitted sender) smtp.mailfrom=lu@pplo.net
Return-Path: <lu@pplo.net>
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com. [2a00:1450:4864:20::42e])
        by gmr-mx.google.com with ESMTPS id s2si318591wro.5.2020.03.10.07.09.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Mar 2020 07:09:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::42e as permitted sender) client-ip=2a00:1450:4864:20::42e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=IhcSnULI;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::42e as permitted sender) smtp.mailfrom=lu@pplo.net
Received: by mail-wr1-x42e.google.com with SMTP id a25so12257415wrd.0
        for <outreachy-kernel@googlegroups.com>; Tue, 10 Mar 2020 07:09:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pplo.net; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=6ijpdpyyfgFVa6yPZsSq3+PkNqFl1t23TpFXB4WcLZg=;
        b=IhcSnULIuQjQ8+0mQ7yjGWZKDb2aI2AsdQh+0nggP48e7NpJHKiUFvmdvlCmwCvcvg
         OLGCb2sFWOb6ZBrP+zbhfoKNRtNHK+ab9XYphiXcG2G+lylMjg6w6W5EYObK4NbT3wJ1
         /nChgqxz3a5fjBFfzxBP/EtyReBI/48PxChBM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=6ijpdpyyfgFVa6yPZsSq3+PkNqFl1t23TpFXB4WcLZg=;
        b=X19L3Hw2JzIC5XzdpiRx0gHxfoUHe5wWBB2OEqUqPF4vvFNQZ5+WyyRXOowczWYuGO
         uXdZNIuJNsVWT47BALzr5YWBcNZVyhTlD68uvxPrXoo0G70OhrW89IYD1iGaB3j6GwuO
         M88gfLnT7c95GSuKc4DlVkyQz3cYL0+eUTx9WcwgFT9KPcj70NLoY8CZgHMlWhbgx1qe
         1U8gfanj1jfjzkbRc1I/JEqZcB6y6xrPW1n4Midx2atME6OAunevRZPf6tKO9RtKF9AX
         gr1E7jMtbpl+FkrAL+zDft8vbaRRaIyvdqaIzPbYuCfHeDnJDZBOKAoc1TrCDjXDOg5M
         S6hA==
X-Gm-Message-State: ANhLgQ1fkFnm+d9GgsGdholKhJr+LGLKDMi9anCB4D/C25k3uNk6qfYd
	Hv79xeR7Z17z9p9TBAPgfICTF3p9AxcjhQ==
X-Received: by 2002:a5d:514a:: with SMTP id u10mr7932167wrt.360.1583849356545;
        Tue, 10 Mar 2020 07:09:16 -0700 (PDT)
Return-Path: <lu@pplo.net>
Received: from localhost.localdomain (85.251.42.187.dyn.user.ono.com. [85.251.42.187])
        by smtp.gmail.com with ESMTPSA id v8sm64262427wrw.2.2020.03.10.07.09.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2020 07:09:16 -0700 (PDT)
From: Lourdes Pedrajas <lu@pplo.net>
To: outreachy-kernel@googlegroups.com
Cc: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org
Subject: [PATCH 1/2] staging: vt6655: power.c: Remove setting ATIM Window in PSvEnablePowerSaving()
Date: Tue, 10 Mar 2020 15:09:07 +0100
Message-Id: <d9b8e434e09cb8885026a71441bf3a6919dba3da.1583848946.git.lu@pplo.net>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1583848946.git.lu@pplo.net>
References: <cover.1583848946.git.lu@pplo.net>
In-Reply-To: <cover.1583848946.git.lu@pplo.net>
References: <cover.1583848946.git.lu@pplo.net>

Every time priv->op_mode is not NL80211_IFTYPE_ADHOC it sets ATIM Window, but
this feature it is marked TODO in 2014 and did go untouched since 2015.

Signed-off-by: Lourdes Pedrajas <lu@pplo.net>
---
 drivers/staging/vt6655/power.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/staging/vt6655/power.c b/drivers/staging/vt6655/power.c
index bfd598a93b04..a68ec527679a 100644
--- a/drivers/staging/vt6655/power.c
+++ b/drivers/staging/vt6655/power.c
@@ -58,11 +58,6 @@ void PSvEnablePowerSaving(struct vnt_private *priv,
 	if (priv->op_mode != NL80211_IFTYPE_ADHOC) {
 		/* set AID */
 		VNSvOutPortW(priv->PortOffset + MAC_REG_AIDATIM, wAID);
-	} else {
-		/* set ATIM Window */
-#if 0 /* TODO atim window */
-		MACvWriteATIMW(priv->PortOffset, pMgmt->wCurrATIMWindow);
-#endif
 	}
 	/* Set AutoSleep */
 	MACvRegBitsOn(priv->PortOffset, MAC_REG_PSCFG, PSCFG_AUTOSLEEP);
-- 
2.17.1


