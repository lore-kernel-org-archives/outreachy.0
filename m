X-GM-THRID: 6469025072932716544
X-Received: by 10.13.212.12 with SMTP id w12mr1490773ywd.147.1506187271611;
        Sat, 23 Sep 2017 10:21:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.13.200.130 with SMTP id k124ls270716ywd.41.gmail; Sat, 23 Sep
 2017 10:21:10 -0700 (PDT)
X-Received: by 10.129.165.148 with SMTP id c142mr1510501ywh.120.1506187270775;
        Sat, 23 Sep 2017 10:21:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506187270; cv=none;
        d=google.com; s=arc-20160816;
        b=VMWEwTXuG9viAJPkoepkw+8mEDFFOJdhSYROsBIvD0ic5uiZSuiC5K/9Me5vK49QRD
         tUw3OrgXsYtXD/kNCm3urC6cwzv2HysnYadVuw7fpstVPP6PpOOxXM/e+ZdWf5T+9oTW
         y3HOqP6gagBIPz4HRSh/iY0C2uhJU5oFonIyh3pzgWqkVoRVUaiAnhdaYMg8gqPOS/q0
         JG8ewfyevWZI9ps1zkWHzKGKNDc7Kj1Jht1X/RY5N0miX4UWWs9yVkcWPs5l2ehrVLu4
         rFhX5Tyg32vLblFTrzDTD6khoMPMRITwhPnn7gVe39bIf9ehkuaKPKUbUaaRDQSeQekn
         6Oww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature:arc-authentication-results;
        bh=iiwDyOCflhowXMhc4gescBkOq2N3W1uI1oIezzY5NRM=;
        b=saA7PXdwaNxx+JcAzcROkIXPk9pdYEyiEkIcwNkl2H9WeZjlLUHAMDllP2ASdR594g
         w0HXrJZ6mzfyk4f+6u4SD17RcRoYoZZxhH8o7hMM2pEDNSYgRA3ZOpWs7YsRkyS25NaJ
         2KdfAaaOSSLemMNo89bkcdP1v5vVCLWqdLO0HAmrvhJSDgc1M9lCCudXhueBvQmyvyUN
         dY5nyQt+FgV9GYZmNMZ0XwjSXVWBKml4OL+bGOZvTjVnEOVhovealSxRQAUf83XxNAEn
         XA+bOEbFbCdjC6O5tC8XkgewCbBccZyuB05GrJK63xEePweQK7Gvf9qPbbi70Tdu8Qg8
         7d3g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DJ5nwa1D;
       spf=pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=keerthigd4990@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <keerthigd4990@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id q65si193499pfj.8.2017.09.23.10.21.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Sep 2017 10:21:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DJ5nwa1D;
       spf=pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=keerthigd4990@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id d8so2467940pgt.3
        for <outreachy-kernel@googlegroups.com>; Sat, 23 Sep 2017 10:21:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=iiwDyOCflhowXMhc4gescBkOq2N3W1uI1oIezzY5NRM=;
        b=DJ5nwa1DONq5Ww2AgI0V4wUY4tqFN3VkmYh3gpNZ8EapST1NBuz0uWQZCcOv59mh8C
         6zr+4nEvMhnwGERGufCmq/Uh1dg8G7O3vQzNvPGtZLpm7WZlGEVwBHAbbUn++xc7WxtA
         rqVKZFpTFmLODb4d5TgTEGLOrwg09Bk3Hquu+7e5NU4S4RWra4T41d4i50GC6E0+fthq
         JfkkSEJuVQM9J+nrmuGIZiFG0QtsTYJ5NaRx9SvFTePldLUSn/LxkYDip1fRxM5ZFIL1
         0+jfU2UnEGDCigZBG2glSHprKQAAPBq5e0U2kGTfuOyzqvVlMsdz+CLZnaQ/AxFOd/Np
         7W2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=iiwDyOCflhowXMhc4gescBkOq2N3W1uI1oIezzY5NRM=;
        b=ZZ50TrT+SBg4aoVvqxc3UWSrde66JJtdzRRxgK7z1UOLBirRCn7f6J7N0TcuHxoZC1
         iAEAFU667WXh+P3nhVZS2cmAmvXD6ppOGohKJpBhvUWf3er8gtMMRTnRkAVvo8H87HI1
         4PtzjY1p5RcICGTb0X+4Q1J3gexfugfWUZCq4z/kh21aMt7oNzfsSEX/P0TqR8ynsGkf
         taFc3lSzSXGHVTqbNTo0D2SpNPp2zA/uwyRcNr82fJHG8xWzLzI3vddwEkQddx0joAdZ
         HydiEbSGOxWvLJ5PbBRIVL0xWuuULme0adzfENySF09G00wlp/zMiKv0w7AX8f8XNPOn
         cZkw==
X-Gm-Message-State: AHPjjUj3yTQzSkUBd8DjkS6IqYs7XXW3zWBTodW6WFjlwhR81xtF/Gpy
	9LWLRNCM5cf6uWbxEuHIjtZ0eogG
X-Google-Smtp-Source: AOwi7QAcVjFIbEFjCfWhkukQOWs1O/xYu6W5Za08Au6XHFcWs0JW7ZiYTCRcUOxN6z1+iXjOXBJYvw==
X-Received: by 10.84.138.193 with SMTP id 59mr2776803plp.414.1506187270344;
        Sat, 23 Sep 2017 10:21:10 -0700 (PDT)
Return-Path: <keerthigd4990@gmail.com>
Received: from manoharreddy ([14.139.122.139])
        by smtp.gmail.com with ESMTPSA id d4sm4283181pfb.185.2017.09.23.10.21.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Sep 2017 10:21:09 -0700 (PDT)
Date: Sat, 23 Sep 2017 22:51:08 +0530
From: Keerthi Reddy <keerthigd4990@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: wilc1000: Blank lines aren't necessary before a
 close brace '}'
Message-ID: <20170923172108.GA8880@manoharreddy>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Before closing the brace, the blank line is not needed. That blank
line has not meaning here. so remove it.

Signed-off-by: Keerthi Reddy <keerthigd4990@gmail.com>
---
 drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
index 36dc2a0..e7882b2 100644
--- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
+++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
@@ -1111,7 +1111,6 @@ static int del_key(struct wiphy *wiphy, struct net_device *netdev,
 		g_key_gtk_params.key = NULL;
 		kfree(g_key_gtk_params.seq);
 		g_key_gtk_params.seq = NULL;
-
 	}
 
 	if (key_index >= 0 && key_index <= 3) {
-- 
2.7.4


