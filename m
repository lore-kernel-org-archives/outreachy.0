X-GM-THRID: 6801606424596054016
X-Received: by 2002:ac2:599e:: with SMTP id w30mr5441486lfn.80.1583622401160;
        Sat, 07 Mar 2020 15:06:41 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:9141:: with SMTP id y1ls118801lfj.8.gmail; Sat, 07 Mar
 2020 15:06:39 -0800 (PST)
X-Google-Smtp-Source: ADFU+vuyD9RrJkEMDif7jmhbxaLR+fhaOVx7c3KIAHXOeKXFIB9uLetak8Hrq6GPaaypluqfH1Fl
X-Received: by 2002:a19:915b:: with SMTP id y27mr709468lfj.127.1583622399800;
        Sat, 07 Mar 2020 15:06:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583622399; cv=none;
        d=google.com; s=arc-20160816;
        b=D9ZvTtJIXJeWFY8WJiMXv1i+y1VLBSjAIh2XRvaYclS+bZ1zEx+xySRMQgqsEZuceZ
         gbhRSHzDBM5zlCI8IUjs1K1odyYFNMxyHJr4o6hQEUDqbWJDDHCcWORjnOlRBEAB2ggJ
         pxwdVEnRJ3Q1tIhJgs2IIrlcNX0Dg8cQ5eUc23wxaDJoxkt4fWuGVKxeZp+989VJl8vD
         JdU7s1YQflltLMlm9/cf3yVed1eLswbNTZUhhvZJxym4l9x9dsJ8XqXDLx3uGKxkPIUh
         y5tTg4QK6b2G3qjbW6rNfxSteB7lvsBSxvx/SIvecoU33X4ND1xSxCrLLULodkT8LhRE
         fAfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=MfRYEH4NCEpMaPzEMeHpxOxYJScptFE0gBgNaI937yE=;
        b=yPDbIknypngF0NviuDxVeLAye56gtTpTa6fpyfmVXMel3KDF4TeCUWMhTMULo8OBem
         r8Oeu4cmhg1qZK8wJIXFioJeYfQsfkTnIlYTVEN7PgihmPcudWz8AYHl7hpn/Jm4bPMc
         VcdNC4diEdEaf2UMaC7vK8AY/F+1xkY9dm02+9AqFciHNysdiJsmZ4ePNkCStJPK7drA
         48//+GNMT8a5qeqc8uUAJtsABCNxxlqSK74fanbMe7SZLG2W8xztv5DCm15+yusQft/r
         45+kkDEh1PRgRnIHg6Co/bbthevs/wsP2Bbws1OFqzTKZhK3j5wdzALBb7A/j3aKyXvG
         AgvA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=fFEpLnol;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=lu@pplo.net
Return-Path: <lu@pplo.net>
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com. [2a00:1450:4864:20::342])
        by gmr-mx.google.com with ESMTPS id d12si238761lfi.2.2020.03.07.15.06.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Mar 2020 15:06:39 -0800 (PST)
Received-SPF: pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::342 as permitted sender) client-ip=2a00:1450:4864:20::342;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=fFEpLnol;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=lu@pplo.net
Received: by mail-wm1-x342.google.com with SMTP id g62so1573970wme.1
        for <outreachy-kernel@googlegroups.com>; Sat, 07 Mar 2020 15:06:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pplo.net; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=MfRYEH4NCEpMaPzEMeHpxOxYJScptFE0gBgNaI937yE=;
        b=fFEpLnolzqVJYJKLKaeZQxt2VRF6QlJUnHCRGdhUa9k7INqIG2WF0e7rgLUOX6988s
         rsUpGEY3Zg5brS42UJLIDb0oH9rjaTWMwQjxibW/iB+PpaPrtzn4Q5ndlwFl/0HElcEg
         hEJ3RLQ4nwH+gI6OMqzVCd42mAvsNqDhXqFFc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=MfRYEH4NCEpMaPzEMeHpxOxYJScptFE0gBgNaI937yE=;
        b=ZysBAPz3pkNQOzapZ7r+LKlad+t1AG8LxSbfV6oC6Qygs/R7xuzxd3+aWfxy/emmhL
         j2WbPD4CKavR7QfooYMoSjavnR1nAFbu/dFRMb5kEu0bBd/qGhBSxIdhxfoInqCk5tUs
         0P/Whus6JcHLCCSrohW3ExPufMgxD/32Su861s44Ml+XrUNZbhS9AgIWwiz8UpdeY9cz
         7/lRffc2UAkrfp6RdIUwceqH5kEHI7VW0gHvXsINN38338vBV0+f+yCPf0YlXEAXRjRc
         8URbU9NL+V5Z2rEKwRJeS4YX3YkaynVdTGaReEAS9M9hkxMW2AmE8yPuY0ydJOMXq/e/
         5uSw==
X-Gm-Message-State: ANhLgQ0WwNaL1EQ0seE+lNgeKHUhNkkjGGS/KeBChznd1EIV2tq2orrx
	WU4J+bqH/cVxyLNR8w/q+8G6PN5encs=
X-Received: by 2002:a05:600c:d8:: with SMTP id u24mr12034527wmm.165.1583622398845;
        Sat, 07 Mar 2020 15:06:38 -0800 (PST)
Return-Path: <lu@pplo.net>
Received: from localhost.localdomain (85.251.42.187.dyn.user.ono.com. [85.251.42.187])
        by smtp.gmail.com with ESMTPSA id o9sm56869440wrw.20.2020.03.07.15.06.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Mar 2020 15:06:38 -0800 (PST)
From: Lourdes Pedrajas <lu@pplo.net>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH] Staging: vt6655: device_main: cleanup long line
Date: Sun,  8 Mar 2020 00:06:31 +0100
Message-Id: <20200307230631.13900-1-lu@pplo.net>
X-Mailer: git-send-email 2.17.1

Code cleanup: long line found by checkpatch.

 Changes to be committed:
	modified:   drivers/staging/vt6655/device_main.c

Signed-off-by: Lourdes Pedrajas <lu@pplo.net>
---
 drivers/staging/vt6655/device_main.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/vt6655/device_main.c b/drivers/staging/vt6655/device_main.c
index 0442f71494b2..88e1284a7743 100644
--- a/drivers/staging/vt6655/device_main.c
+++ b/drivers/staging/vt6655/device_main.c
@@ -1075,7 +1075,8 @@ static void vnt_interrupt_process(struct vnt_private *priv)
 			    priv->op_mode == NL80211_IFTYPE_ADHOC) &&
 			    priv->vif->bss_conf.enable_beacon) {
 				MACvOneShotTimer1MicroSec(priv,
-							  (priv->vif->bss_conf.beacon_int - MAKE_BEACON_RESERVED) << 10);
+					(priv->vif->bss_conf.beacon_int -
+					 MAKE_BEACON_RESERVED) << 10);
 			}
 
 			/* TODO: adhoc PS mode */
-- 
2.17.1


