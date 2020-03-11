X-GM-THRID: 6803065802760126464
X-Received: by 2002:ab0:1c44:: with SMTP id o4mr3141796uaj.59.1583962189430;
        Wed, 11 Mar 2020 14:29:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:ca1c:: with SMTP id z28ls454715vsk.4.gmail; Wed, 11 Mar
 2020 14:29:48 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvAAdgQLqqW6HL6phmDV8cLIeX9+AuCxEn5g7+KRScwgxe8G9sFY9IsdbP25tMQe6oP1rdT
X-Received: by 2002:a67:8dc8:: with SMTP id p191mr3491214vsd.231.1583962188188;
        Wed, 11 Mar 2020 14:29:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583962188; cv=none;
        d=google.com; s=arc-20160816;
        b=S+4QTo3Ur5DtFR7sR7bjdXsKJYhFB5EFmAddWB739Jf0LqqWbmA3gnIt1ALBy/SqB/
         8d6ybBfhOYCfRgrRe6796VGFJ8wfgtlFjFJgS+KzmjN7234ieiuhWKfolhg7G/eRClod
         78svU4qng4hhxZ8lV/aQhc+iFxgOg+fTXvp3+g1XYSrhFFofV9i0B6fVc2Iu6Mu7mX5b
         hLcqUnmnp2uop2PJxTrc+JwqHpWYjN1CuEcZ64XzVOa63gnP3+c6h12pMaA760MNEQSx
         URCEnACta8ePiU8JOg1rpRyMvtLG482SnDBVcqB0K1vHiWpAeiX3kO3tOh0HK6nk7ETR
         JcIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=PPB1IEeW83YJGF0pLDYUOY9gNlRAKZ8kIspqcILuL2o=;
        b=T2UMAYvmiUy93kPUKW5y3HLBgNaFNQq/SQd9eRd9VzJkovmAaoSEZ9RF8oB1LWmMqV
         o3cDOg3gYhNTVmwIIWWdxWeKvKoNhYBwUAB1icUX3VLKJD1IUEqJz6daizNAz0xpd2iN
         FGvjQ+2CQUWF6ZWoTxxJoPLIRMq3LzVNtHen3xoQElqCAWycxgBqZ2i+hDyXx++uGNF7
         Diddi//ubYbsdZzen8td3wWBlMA+IjRSADXvJDIv/8DAUvndw5W4kouBFKjns2ijxlUV
         ZpleBLhWB4SBAPuhSyA9h9Ws4CXGq4OCV9BGc2EAo6RX+m8gfS4xe6EXmVrKcthDkS8s
         cxLQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tMuEW4YZ;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id c3si247417uam.1.2020.03.11.14.29.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Mar 2020 14:29:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tMuEW4YZ;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1042.google.com with SMTP id f15so1592217pjq.2
        for <outreachy-kernel@googlegroups.com>; Wed, 11 Mar 2020 14:29:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=PPB1IEeW83YJGF0pLDYUOY9gNlRAKZ8kIspqcILuL2o=;
        b=tMuEW4YZL9Kt7gfgsqlgWH8VSH3w8vMlw4GKYDx2JAhPSF9Ae0T/Y1IoN91kVKOVzZ
         15i8lo3BWAj7425ATFDSyc1rUuRdzzUOpa/7m70mLnqr8mYx4j80hD6H00xzy9MDokaQ
         IM+pYGTNqAiqk26VR8sItl8ssGlBcvWiqu5SYui0f3DKw2AH9UysLizMG6wOtiEGXPos
         uXRLK1o7vOXd6PnqcA/4GHoB0ZgdoqeNhORV5QVz+uqpS+EGN2i2+qCTiUf8vIWmN4AU
         ui6fHrB7pO/dcwAaSO8KMNuHPktWt/c8lZXB0YukwMzx3b7DL4JYClshdLKLk26wLfwn
         zHpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=PPB1IEeW83YJGF0pLDYUOY9gNlRAKZ8kIspqcILuL2o=;
        b=BJy5Er0OfK7+udYFQt0+0+E1AOp14PaNVQIcCdSt54Tnxor9YomXZHWrRph1nQ6Pyz
         drhtp2EgnIgLFosCMAvlackNw70ENqO2L5ZLAodjez8JRKafOQkK8eBEh2Rmynazr5gZ
         i8UZA1AdP6E+scj0v7Rvj0b15S/7Gzq420x9M7Bh+x/lKc1OWKYTlgagNrqtbBh6U3HH
         WV9QOdxztFlyMQfqOeUEtJueEzFOno4oa7xTbuOo6OF/2OvBLjB6lfY+z8Z7UvpgCAse
         IPlU8A5fYjl2YZ80qg8GRT1qpFXZ6OeqQy5R/SaieFDEK/BsG6Dhj1zrBYNytzZwc2Hf
         df+A==
X-Gm-Message-State: ANhLgQ1Mbk1vrOepk5Z9pKYOzZEOLAt/PYzPXcGKgWmD7VgbIoF2BL/k
	kHY63//8hA9QKPin/Q6ewDPKBave
X-Received: by 2002:a17:90b:3885:: with SMTP id mu5mr678747pjb.25.1583962187650;
        Wed, 11 Mar 2020 14:29:47 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from deeUbuntu ([103.240.207.69])
        by smtp.gmail.com with ESMTPSA id v5sm1518539pff.209.2020.03.11.14.29.46
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 11 Mar 2020 14:29:47 -0700 (PDT)
Date: Thu, 12 Mar 2020 02:59:43 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org, daniel.baluta@gmail.com
Subject: [PATCH] staging: fbtft: Reformat lines over 80 characters
Message-ID: <20200311212939.GA2872@deeUbuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Multiple macro definitions crossings 80 character line length nakes it
hard to understand. Reformating the these lines makes the code more
readable and easy to understand. Issue flagged by checkpatch script.

Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
---
 drivers/staging/fbtft/fbtft.h | 14 +++++++++++---
 1 file changed, 11 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/fbtft/fbtft.h b/drivers/staging/fbtft/fbtft.h
index 5f782da51959..81da30f4062e 100644
--- a/drivers/staging/fbtft/fbtft.h
+++ b/drivers/staging/fbtft/fbtft.h
@@ -348,9 +348,17 @@ module_exit(fbtft_driver_module_exit);
 
 /* shorthand debug levels */
 #define DEBUG_LEVEL_1	DEBUG_REQUEST_GPIOS
-#define DEBUG_LEVEL_2	(DEBUG_LEVEL_1 | DEBUG_DRIVER_INIT_FUNCTIONS | DEBUG_TIME_FIRST_UPDATE)
-#define DEBUG_LEVEL_3	(DEBUG_LEVEL_2 | DEBUG_RESET | DEBUG_INIT_DISPLAY | DEBUG_BLANK | DEBUG_REQUEST_GPIOS | DEBUG_FREE_GPIOS | DEBUG_VERIFY_GPIOS | DEBUG_BACKLIGHT | DEBUG_SYSFS)
-#define DEBUG_LEVEL_4	(DEBUG_LEVEL_2 | DEBUG_FB_READ | DEBUG_FB_WRITE | DEBUG_FB_FILLRECT | DEBUG_FB_COPYAREA | DEBUG_FB_IMAGEBLIT | DEBUG_FB_BLANK)
+#define DEBUG_LEVEL_2	(DEBUG_LEVEL_1 | DEBUG_DRIVER_INIT_FUNCTIONS        \
+				       | DEBUG_TIME_FIRST_UPDATE)
+#define DEBUG_LEVEL_3	(DEBUG_LEVEL_2 | DEBUG_RESET | DEBUG_INIT_DISPLAY   \
+				       | DEBUG_BLANK | DEBUG_REQUEST_GPIOS  \
+				       | DEBUG_FREE_GPIOS                   \
+				       | DEBUG_VERIFY_GPIOS                 \
+				       | DEBUG_BACKLIGHT | DEBUG_SYSFS)
+#define DEBUG_LEVEL_4	(DEBUG_LEVEL_2 | DEBUG_FB_READ | DEBUG_FB_WRITE     \
+				       | DEBUG_FB_FILLRECT                  \
+				       | DEBUG_FB_COPYAREA                  \
+				       | DEBUG_FB_IMAGEBLIT | DEBUG_FB_BLANK)
 #define DEBUG_LEVEL_5	(DEBUG_LEVEL_3 | DEBUG_UPDATE_DISPLAY)
 #define DEBUG_LEVEL_6	(DEBUG_LEVEL_4 | DEBUG_LEVEL_5)
 #define DEBUG_LEVEL_7	0xFFFFFFFF
-- 
2.17.1


