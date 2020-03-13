X-GM-THRID: 6803435195586314240
X-Received: by 2002:a1f:9c92:: with SMTP id f140mr8966304vke.87.1584106998631;
        Fri, 13 Mar 2020 06:43:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:8797:: with SMTP id j145ls687953vsd.3.gmail; Fri, 13 Mar
 2020 06:43:17 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsS8eoWcQkMN5L0gtiKd00pjbMCCsled/J5DAgcpj6qAImj928a/c2/4thnv8d4re+prCWw
X-Received: by 2002:a67:ee4e:: with SMTP id g14mr8729008vsp.223.1584106997417;
        Fri, 13 Mar 2020 06:43:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584106997; cv=none;
        d=google.com; s=arc-20160816;
        b=P9xKbFZW+4JzINklcHRLL5vZaOjXv69VxbQy5gp/Ns5wirOmP7feo8BapptoU3HsDg
         02Dtdh0YwPw6TYCmpRdSBZBW3au4A73d6Yjw7q0AFgtGE53X56VzRtNTfqzGKwgF6rbI
         rmGv/fQlvhwOJ2qlHaGbXEQHMyuGY2acUFUbeCOYc7cGv2X/rbV9S+Sr5Z21Nr0Uqpux
         8ccXEwKkKMj+OYotCH7saBZ8KF6tAEmeSBveFxmCx/ij4uhCyNGrLxVnRTJmxiPrgiLc
         f8ZbMdSV5gXvmaE3dkWs6mBRfu/Q6UfQGu2Nlgh2ZL8D63vlKWWgQRWZzgZFCerLsgxV
         hJtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=PPB1IEeW83YJGF0pLDYUOY9gNlRAKZ8kIspqcILuL2o=;
        b=eZaJ646GXub+7R52YLthhfTrqsZhG2uKghIZBd/YepPQYfH8eisWvLB0Em64SyXEMD
         vc/qoOv3WCqT51SlDfHduHHk2LafNdbfls4xnj5fKTMJIixM6E8A2G/fCJeX0NBdPtPw
         BZkhBjnY+jLHKOFdAFZI2LT0k7PBGPz3Vbeu1AB99X8QHcg1hSymQbdjshos+HtXU7+O
         k3mq1uBfI7UMfzuLFSZ+dg3LmzBzN7AGqWw9sfGWUBtWFCFzoKRZNwOTLb6KyR9iGDDh
         wonOFkVEkl76n3p3HBOwOC90PeZWAJtGFG5leczGo3+1+wClYhA+GzX1PcypyfQww7qN
         JQpQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sv4OXDOF;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id 205si410990vkw.2.2020.03.13.06.43.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Mar 2020 06:43:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sv4OXDOF;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id z65so5245195pfz.8
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Mar 2020 06:43:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=PPB1IEeW83YJGF0pLDYUOY9gNlRAKZ8kIspqcILuL2o=;
        b=sv4OXDOFCI972g2oft5awXTM+yGnG8Q7g55gCTSGdF4UUe38WLxI/RrcBYXst8H8tq
         QGhZmirZ472/rmlUkXSrsd7vY4ZB8atiSHRyQm61z8Ci3vdKIMG0qRpnRpQRCeHjYuE0
         zVNujX4kmu4kyh2HDXKfy5ZeyMJPhBm+/Xpode1PNhfVmc9xmvw8QiY30+nXOb+Eph4T
         jSh6Sllg/rwVSeOKNoaZc9ibMLT0jUj1s3puvqJDgHyVbtrwgQ73ZJwzzYgTvzq9QqT0
         ZSVKj/h+qBV8xC11aDz5pKJs9UujdPw5vtYFmjTx3fTcQc5Gh31B5t72Ph0cjUJuhPlp
         7BUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=PPB1IEeW83YJGF0pLDYUOY9gNlRAKZ8kIspqcILuL2o=;
        b=YOvl6BinW8d+qwKdlGs+tOm1263TRbx4lQ+sXA5DmOwp8DKdrOTUtYNvpaHyMfz+Tu
         gT4ebVPLckwgRGA9cT/bNM8RC7CEMXGDJAOUnu5V1Y6vLjvZer8DThfAm//wM+LF7/+5
         dnuep4BfNe6eNXYokdc+0Gu8B5P0PK5t3PC2wX/Nta4EK2WwQWY/9ioTvm8jU0K2eif2
         15yVmP8kzkFIlPA4Amf8wzvz1muZL+Ld2prRXBa8w4005zUp9x55LtNku4uKlOVrcW3y
         d3f30NzMBElZ9t7OxrcPptlrgXGagtKwR6RJxhagT8p/ZA6sZ5v3YOh+OYqGeyDExz8y
         jnoQ==
X-Gm-Message-State: ANhLgQ3zYPkkoKZSeY3aB4GjD/rlM3pIu9+vHIkvho7inGo88k2q51bn
	KxRL2NLaN5lYqwbIKVvsFPm6yLqa
X-Received: by 2002:a62:2a8d:: with SMTP id q135mr14418254pfq.220.1584106996224;
        Fri, 13 Mar 2020 06:43:16 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from deeUbuntu ([103.228.147.139])
        by smtp.gmail.com with ESMTPSA id o126sm11297094pfb.140.2020.03.13.06.43.14
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 13 Mar 2020 06:43:15 -0700 (PDT)
Date: Fri, 13 Mar 2020 19:13:12 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org, daniel.baluta@gmail.com
Subject: [PATCH v2 2/4] staging: fbtft: Reformat long macro definitions
Message-ID: <46aa3337412b3d6c43702c66600a90e9366b2896.1584105606.git.mh12gx2825@gmail.com>
References: <cover.1584105606.git.mh12gx2825@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1584105606.git.mh12gx2825@gmail.com>
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


