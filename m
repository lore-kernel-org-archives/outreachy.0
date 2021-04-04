X-GM-THRID: 6947258462125424640
X-Received: by 2002:ac2:5ec2:: with SMTP id d2mr14797944lfq.214.1617534659236;
        Sun, 04 Apr 2021 04:10:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:651c:2050:: with SMTP id t16ls2553931ljo.4.gmail; Sun,
 04 Apr 2021 04:10:57 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwDkBs9p3NNxDHjQw5sG4Hmx3oPeUfErKYZs6XHkw5GNktakpnPcrspkdLnYCMgZ4jhwhFq
X-Received: by 2002:a2e:a543:: with SMTP id e3mr13175815ljn.433.1617534657541;
        Sun, 04 Apr 2021 04:10:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617534657; cv=none;
        d=google.com; s=arc-20160816;
        b=dkI0uR8vkIi+7NRgzJIwkWrVVPW/M//V1OFdoxJ4O4IRPt9zA/glQ1Pzr4Advp+V7+
         yTVvsh/MUw/po+1igW8YBEJ9BouSo/SCivR1XiCxIysbx6DTW3f3+xQBypog28apDQpL
         fN0rYTjBZ9BZ0wO0mZLS53SWmyRY2917jrfBxgdgbKHYzgaF9gcPzQewQkPUfC1RXTRo
         OYC+fFfMYFknXBAYmryzCAG866XPX72QDA14pHZr1EyhEu33f2yYU13CioNT2OVLESOk
         fNrAErkLhSeGVeE09FjEQSY9xH1w3ryYwKhF3LZWeQtS4p/NbsmvK5xFZ9rt4wzQ8r6d
         sloQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=RWPDQxxgV2nTCNL1FAYclu9roEAzSAdEQg2xga59ELs=;
        b=rCaQQjIkLqjWf00bej759P41yLPbNiv0J6upJyCoyEu9XmP0QIEwdxn5462yKdy781
         cJL3GL5mM1kP2svt9gQHMWf21rIEmveJwYw1x8QnwCyL7ocsh+yHnH+6D/EEpjItFjgw
         W0QrkA02DYzXhhY6yOCivdYqFrh1NF3WqDhnyZ6OJn9FasDRcz/RV6U87pZx+KwOAy5H
         vDDmz8sGMXIjyFHU68LyI0p9l0PILWRRpQqxO6LQRFMaP/zTuRUBqVnQOxwMZjfCBwvC
         wK/fMRZ0mQii2ISv91GUO9WdfCLRAKUPtBWpJpeKYWz4f6erkx9N8GuemfVluhGaJPDQ
         Kw6g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Z0Z5Y+0D;
       spf=pass (google.com: domain of zhansayabagdaulet@gmail.com designates 2a00:1450:4864:20::134 as permitted sender) smtp.mailfrom=zhansayabagdaulet@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <zhansayabagdaulet@gmail.com>
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com. [2a00:1450:4864:20::134])
        by gmr-mx.google.com with ESMTPS id v26si1203834lfo.2.2021.04.04.04.10.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Apr 2021 04:10:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of zhansayabagdaulet@gmail.com designates 2a00:1450:4864:20::134 as permitted sender) client-ip=2a00:1450:4864:20::134;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Z0Z5Y+0D;
       spf=pass (google.com: domain of zhansayabagdaulet@gmail.com designates 2a00:1450:4864:20::134 as permitted sender) smtp.mailfrom=zhansayabagdaulet@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lf1-x134.google.com with SMTP id g8so13580739lfv.12
        for <outreachy-kernel@googlegroups.com>; Sun, 04 Apr 2021 04:10:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
        bh=RWPDQxxgV2nTCNL1FAYclu9roEAzSAdEQg2xga59ELs=;
        b=Z0Z5Y+0DJmoXupHa9zQfPZT3kCZ4shfboOOlC58PCdOUhtjmsJDx/nI3uHa99/n1Nz
         ZkKBDPyQZl1ZmIehGFxtGs6b38Ktn/TttjCGlt36dNBvEuZydjuX4OwjGtUV1b64wfl+
         YXVWjiw57CPZ85SoX1pHp9JxDKoBqQ/aN45bvoKqFT224liyy2Nbu3jLP60l2RURwRvn
         kp2vjF+9HekaHBqsdFz5oQVrh9jr4dz7ApPD9VO52VfR2IPhWllfsmQfOn8dCB8L4IEb
         VWuOTvZQdfKUcLe9XPgpbc9GRLmzkdiXxyR6LsLv78D3aAzN5MSSIU+MSrC6IR3YAOrc
         VYYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition;
        bh=RWPDQxxgV2nTCNL1FAYclu9roEAzSAdEQg2xga59ELs=;
        b=ZJmstBryopMVcn2rm8b21qzJ5gZwkY5WdGhtZFOKYQAHghkTHqMYCqsao1mmEByVEx
         3gnBoVYqGA3g5AOvKeJ2q7Y/rMMNaeSG78MyU4WYOGlbYqB/Tn6g15shV2Q7X2EbUE7O
         40eV6QpkgRLGHdzxwiLKHv0fecJmsslOurFG/pKbwt9sDvXuNI1eYRmo4Ni9vypOHzxX
         UwSqVaDJLWc7g6cOmkAbpj8tUPb0xW8i0vG8qGGBitEzDEAmtk+y0rU8j6EXazHhnhcj
         N1YKaydoOfnmI3QJo+jrup5YkGnZ16tbbwueRpaelkx4mjAbWZUW9Hm4w7HXrYBH8TWQ
         TxBA==
X-Gm-Message-State: AOAM531j2SMKosSHWG2RM808X09fGYYyojxymKY5HJHhvhIiS69/2a6D
	pAEvzczRRunhINFO5yQWsrEaQ07rVG8jbCw3
X-Received: by 2002:ac2:5a5b:: with SMTP id r27mr13957725lfn.255.1617534657168;
        Sun, 04 Apr 2021 04:10:57 -0700 (PDT)
Return-Path: <zhansayabagdaulet@gmail.com>
Received: from zhans ([37.151.32.231])
        by smtp.gmail.com with ESMTPSA id i184sm1412263lfd.205.2021.04.04.04.10.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Apr 2021 04:10:56 -0700 (PDT)
Date: Sun, 4 Apr 2021 17:10:55 +0600
From: Zhansaya Bagdauletkyzy <zhansayabagdaulet@gmail.com>
To: sudipm.mukherjee@gmail.com, teddy.wang@siliconmotion.com,
	gregkh@linuxfoundation.org
Cc: linux-fbdev@vger.kernel.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [Outreachy kernel][PATCH] staging: sm750fb: Remove unnecessary blank
 line
Message-ID: <20210404111055.GA22626@zhans>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Remove unnecessary extra blank line to improve readability.
Reported by checkpatch.

Signed-off-by: Zhansaya Bagdauletkyzy <zhansayabagdaulet@gmail.com>
---
 drivers/staging/sm750fb/sm750.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/sm750fb/sm750.h b/drivers/staging/sm750fb/sm750.h
index 1b3f5f649c52..23eefd019ec9 100644
--- a/drivers/staging/sm750fb/sm750.h
+++ b/drivers/staging/sm750fb/sm750.h
@@ -64,7 +64,6 @@ struct lynx_accel {
 			   u32 x, u32 y, u32 width, u32 height,
 			   u32 color, u32 rop);
 
-
 	int (*de_copyarea)(struct lynx_accel *accel,
 			   u32 s_base, u32 s_pitch,
 			   u32 sx, u32 sy,
-- 
2.25.1


