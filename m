X-GM-THRID: 6886552701255024640
X-Received: by 2002:a05:6512:2101:: with SMTP id q1mr1572400lfr.187.1603400497091;
        Thu, 22 Oct 2020 14:01:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:b016:: with SMTP id y22ls572698ljk.3.gmail; Thu, 22 Oct
 2020 14:01:34 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxbMejoEW+vFsWs6baZ/Ef+cW+zQIntXhhAfDNHKeoDu50T9x3kg2f/i9Pi3dXkAHY4on7O
X-Received: by 2002:a2e:3806:: with SMTP id f6mr1628373lja.93.1603400494907;
        Thu, 22 Oct 2020 14:01:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603400494; cv=none;
        d=google.com; s=arc-20160816;
        b=umAZM6jHNSwEbLvWy1V80XG4XeqazHNwgHWavfgWMUZcxc74HyHkKgEVOGnSU6+N/y
         cAn7TycY63dQYOfpJPjZZZ6UulOms2uSRrKpybFOhDVqjhj3snTWCTujipQeK0UehCsw
         iXzRdK6dYKu0ypWgNqA2ekenYMvfLfRYOK25qliqTPdL+Hr2mNOI0YoSSOgQZ+NG+WM5
         7xgwHVRxatxsqbOapyN5TR9gPNbzrL4aSJOIn7MI/lOTh57ENgbFiKV/Rd7pb4Ue1Snc
         GN73jiE8Xc4QugrW6VvhtR8gQ0u6RtIGnhjEn7lmz2VtzsPqnDHlThgA8vUuWhZbruci
         8mmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=ueUcicZX0W9BPo8IflVS8PDGH3YYY6yZw3nBt9xZHSI=;
        b=gDTtWdhTYtOrR9US06DgbUc62Dc3Ddo6E6DTp2WCzybzw5XlVqYpQBrGHyXC3b+f+N
         EiTlbhAr/Efcfec/YWWoN/2znbGuw3dffF5SouhR08yY/cFSqhgA64V7wLYptKWoHQKN
         arHU3gCFbqjKp0OnRcRN5K1KEKn790Cm2+YNWeFsVdNZfPM7Uufwex1/oi8+fJkoQcXD
         cZTVi4wvymbgsY4UQGAYL3J6NhfxbEWh6rywNzeJvFOYlpLdviEJLChurbCAMqzwjBqo
         SJjvYAUHGdFGcg3HPGZwEkAzG0hTz3yBqsJkroTP8iZjewVoQR4dUeqdd8GXUgsiI66b
         /Dng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CgCkqIUO;
       spf=pass (google.com: domain of eafanasova@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=eafanasova@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <eafanasova@gmail.com>
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com. [2a00:1450:4864:20::242])
        by gmr-mx.google.com with ESMTPS id t9si54180lfe.13.2020.10.22.14.01.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Oct 2020 14:01:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of eafanasova@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) client-ip=2a00:1450:4864:20::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CgCkqIUO;
       spf=pass (google.com: domain of eafanasova@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=eafanasova@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lj1-x242.google.com with SMTP id 23so3448909ljv.7
        for <outreachy-kernel@googlegroups.com>; Thu, 22 Oct 2020 14:01:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ueUcicZX0W9BPo8IflVS8PDGH3YYY6yZw3nBt9xZHSI=;
        b=CgCkqIUOD2ZpGLs+LDZ0iL8N8mPE0hVO3NMMO8xIFA/+Felno+5PBJvmEgCKaEiRVi
         KYBn7yymRq7QC3pyIq25Oi6xwiaGcjlStKTtB/F34esHxbMxqn7SjaeNyYy/ZwgGMMSC
         5GL6p/jzdIxmqcvsUH37dPm5V+8pzEWy2HWiW/U8uxT5PpjJbSqSU9zd1SyFAwoFVIoI
         BJeElK0LoVWyZq8ohsJHcY+jVWijcCdMlufpFriFXs63suVna7R7UCtnV67fDSOyY63z
         0tv0xLDvaP9CTkLaFG+PnCwu2zC8uUVe9bBRBTi3zBcgehbFKp8j3zfZesVmp5Ehn1q0
         a8Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ueUcicZX0W9BPo8IflVS8PDGH3YYY6yZw3nBt9xZHSI=;
        b=uFcmDTEP0UzSrBylzjMgPY12pcN73J0adAqW7NzBVSEGawRPBF/pMBrO93TkqDVNjL
         W5eh6Tw2b7gpSX4ZFK7E8LCAr/sTThH4v53qgPl5W9DzSYS8CeDGwblpNx1y67KlJwFU
         5rn2SVQs6UM5nkGOPMUrCwxyIl/0t1yRnAVeAq+q+ldIbQ2GQCaIFvqCc9HNfhgtq0HY
         VGwbluysdBo4t+a11+mCH4WxjQXwGJPkSLNyd+KDasG3JX8iq5JVbzP2jXMDu+IlDpT5
         lm5qyahz2wbEvf2ZKjLebbS7tXQ6bf9OdzUK9fB6STI3Xo9VEUo1mqwEhCkvHdZLrvY+
         rurA==
X-Gm-Message-State: AOAM532rx9uykM5ErqynXjUCzXx7/OBxMah1LI8wBni4woXJH+D+3Xtl
	OCNeyMnXoz+sg2HGkfGPOAiVROkMpON3pdN1
X-Received: by 2002:a2e:9f4d:: with SMTP id v13mr1787115ljk.379.1603400494611;
        Thu, 22 Oct 2020 14:01:34 -0700 (PDT)
Return-Path: <eafanasova@gmail.com>
Received: from localhost.localdomain (37-145-186-126.broadband.corbina.ru. [37.145.186.126])
        by smtp.gmail.com with ESMTPSA id r14sm374869lfn.298.2020.10.22.14.01.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Oct 2020 14:01:34 -0700 (PDT)
From: Elena Afanasova <eafanasova@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org,
	outreachy-kernel@googlegroups.com,
	Elena Afanasova <eafanasova@gmail.com>
Subject: [PATCH] staging/rtl8723bs: replace "foo * bar" with "foo *bar"
Date: Thu, 22 Oct 2020 13:58:57 -0700
Message-Id: <20201022205857.6144-1-eafanasova@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Correct the coding style error reported by checkpatch.pl.

Signed-off-by: Elena Afanasova <eafanasova@gmail.com>
---
 drivers/staging/rtl8723bs/include/rtw_mlme.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/include/rtw_mlme.h b/drivers/staging/rtl8723bs/include/rtw_mlme.h
index cd98efccb321..07efb74831eb 100644
--- a/drivers/staging/rtl8723bs/include/rtw_mlme.h
+++ b/drivers/staging/rtl8723bs/include/rtw_mlme.h
@@ -213,7 +213,7 @@ struct cfg80211_wifidirect_info {
 };
 
 struct wifidirect_info {
-	struct adapter *			padapter;
+	struct adapter				*padapter;
 	_timer					find_phase_timer;
 	_timer					restore_p2p_state_timer;
 
-- 
2.25.1


