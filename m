X-GM-THRID: 6803435195586314240
X-Received: by 2002:a37:9c07:: with SMTP id f7mr24333993qke.349.1584315700755;
        Sun, 15 Mar 2020 16:41:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:f1d:: with SMTP id e29ls3137357qtk.2.gmail; Sun, 15 Mar
 2020 16:41:39 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvC6uMKETRz5+YsQovpM/4fX8I8qXYD6mwrQNIwT8XamJCq7fqScOirLFWRz2FY6eNTsWmq
X-Received: by 2002:ac8:18ed:: with SMTP id o42mr15893169qtk.207.1584315699470;
        Sun, 15 Mar 2020 16:41:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584315699; cv=none;
        d=google.com; s=arc-20160816;
        b=qFMLDX4NJNQuhqX1j4V8SCJyuWZm1JDhqLkY3S13tGxpf0Bz5e5WxyAI1VZ09M61dW
         fTqwkx69Y+D4iiOFm9dOSbq35S/L3BZElC5rAgAb+P+kXIn3jAr1BorjXBXWGfzGA6eH
         ec5Nhl3vgnDjWOnjK240xxo9TyPWwfFNDa7yrVVV7SJpoF58GOIS15Yycfw83wVkzAsc
         PPa2Uly4ynroLPEEPj5UP5xwsEQ2CujtDKi2XdOUaEXAt7SvJHpO4azxLRheG7AWX1My
         PLiqbN35xPcQSipZxa5yhoW2DB9b0REtpUa5TtNTBjpYjCqUjwKf+0/c6m3hdZ+Wvy90
         6Akg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature;
        bh=SW504vMjsaaJmJaZb4uh4/3BrqBetjEoISpAIXsXAtk=;
        b=bMQ+d+3AKqLlhOUYd6Ugc0r4Ah7LfUFzO40iDVYsfCzdhba14eK+jtIvGPmyCFK72C
         CuB+YAa33hW5ooIcCMXl2cGD9zVehyPjYKarzkdP61sBsPJ6137/W8u+7bxfr1b7+yVL
         e/OHyPoDLt1JhCTWJMcHCU990oTB8p+Pfg0KbQvwjU02mvWJs9z9+a+C4hbIa0TchYBj
         PK0DajbC5+r7tjuxDDqi5UWHblT9y0BeVD/rZimQH8Ks0U83W5SvzP+8uWZ6WaRiJeW/
         dJ0YyOF7xgUzDu9greITGiPzmATbbYNuafVsTlsoObtSu+a73qIoSaSWxr2F/SHlRqsq
         5mZA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=R5NZVg7m;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id v85si102847qka.6.2020.03.15.16.41.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 15 Mar 2020 16:41:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=R5NZVg7m;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x644.google.com with SMTP id g2so4616874plo.3
        for <outreachy-kernel@googlegroups.com>; Sun, 15 Mar 2020 16:41:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=SW504vMjsaaJmJaZb4uh4/3BrqBetjEoISpAIXsXAtk=;
        b=R5NZVg7m5P8eGvhBK+TnIF2AmBLRdWk80tT1z/HuFx5k6BL20w/RgXMVQkK1IBmqSG
         PZHpaX4u+sMmC/m5eAoUH/vGd76TRzz+LX9rt3X8l4942rXuAWKwTD0kfrLZjxl8wPVr
         nZ0UMNNQnKUcfjcs0bpyH6GcfCpxkdB3SiqpZIjqlUFDm03VerDvCGha8oFOtJbA1ZWN
         ZJSnR7o6Y6lssQdyQzAZ0TA9dTM0MfAz8irhhY8dF4fX7gKKpR/xyPW/cKSIcqbevSqL
         EMhlIGABjidfKd7WBO1NcjgReu88w0D7iwnRKwDHM3+XkE9UKfoOHSAoY9kFcvkftu/x
         VdKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=SW504vMjsaaJmJaZb4uh4/3BrqBetjEoISpAIXsXAtk=;
        b=RhPV6ngXwGS3iMID3o78gEnzHMDFF70iDGoXz9eVwooYL8RjW67O1sZsuBVipUQh2q
         T6dUEl9m6bm4uDbsAEGjR4VlL4alnd7UvkQlvHIVZJhqzx/93RHb7y7YdjkvfwAhHSqH
         t1NhUDBk7EnX4s9NGuqyOcrW+n3SZUTSdN1Uv1Q1rQRQSqC+8JW7JJnto+zLbZ2vQd+M
         v5fR4FJ1HGx55DPr2qVD3HaXm5ksJtTeSl0TeU+uveWpoeY1IuGS1MgpmHPiHW9FwSjt
         YKWpWtVzhbTZTR+vtAE4vHSVfAALbUSUm6faBDAdrgM0h+XqmwPhb+dGv1/3tgRS0xxZ
         qSDQ==
X-Gm-Message-State: ANhLgQ3t48Iaxs4P9U5mvDS65xUCyjnCoYTp1+5S6HekjEDqOhRXBS+x
	vGf0r2BXj1cCEacVcZw0CUPI0e+V
X-Received: by 2002:a17:902:8207:: with SMTP id x7mr23227658pln.185.1584315698492;
        Sun, 15 Mar 2020 16:41:38 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from deeUbuntu ([103.241.225.138])
        by smtp.gmail.com with ESMTPSA id 72sm52422230pgd.86.2020.03.15.16.41.36
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 15 Mar 2020 16:41:38 -0700 (PDT)
Date: Mon, 16 Mar 2020 05:11:34 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
	daniel.baluta@gmail.com, kieran.bingham@ideasonboard.com
Subject: [PATCH 2/4] staging: fbtft: Reformat long macro definitions
Message-ID: <b8d2fc0f55339830694ee51860cc970ce1b9cae4.1584314604.git.mh12gx2825@gmail.com>
References: <cover.1584314603.git.mh12gx2825@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1584314603.git.mh12gx2825@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

Multiple macro definitions crossing 80 character line length makes them
hard to understand. Reformatting the these lines makes the code more
readable and easier to understand. Issue flagged by checkpatch script.

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


