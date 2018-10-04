X-GM-THRID: 6608144919941873664
X-Received: by 2002:a81:3c06:: with SMTP id j6-v6mr3202726ywa.11.1538655855532;
        Thu, 04 Oct 2018 05:24:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:4c5:: with SMTP id 188-v6ls1181719ybe.12.gmail; Thu, 04
 Oct 2018 05:24:14 -0700 (PDT)
X-Google-Smtp-Source: ACcGV63U39IZ/6862FFgPnVap491A5y3XOXFj9G6+khvukWGN76xJTdYehMm8efBPSzlQXk7DxcE
X-Received: by 2002:a25:c5d3:: with SMTP id v202-v6mr3175696ybe.97.1538655854807;
        Thu, 04 Oct 2018 05:24:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538655854; cv=none;
        d=google.com; s=arc-20160816;
        b=MI1IZbR+JjNRJWao+Of3FqlruRykp4Rb/7yIYbb4TCmN9u59/ncH5JoxRTypzI2zj0
         mjzGgz/ZCqqL532/xuSAZxztSljd4spikyHQxblapcqE1OU4Vs+HrGTVIWoikSFF3hFh
         aNRKdVWo5g3YT9UNjSM8JEb+t1I8UB9fpcrwxvqH6FFeWKKw9agi3T2ktRdt6pDyVfJY
         7lnr4Djlr+NrRsDpHy9TZpQxhUvoQC4FPQHnairEObzHoTfsvWifZ8gsfXUNTHc1n9dD
         XkgYPCG7chxTL9z9agR6ZWAui4oNsfO8+LYGJq/5330kcqZwf5n8XipxfwVCZTFRZw4d
         Ob3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature;
        bh=7ullIGJ4EDLGVpnG02bU54FqpUHYRxbzHpmkl8ZEzmY=;
        b=vvj6hbvFl969IjPViVftF9Tt4NDzSjCiXCOZX4GL66kULKPTdhPeBQrHBRetfYbjSy
         bRhYkZYLwSa2a68uC27Qn0JrHNqbKZdA7KtYvgBT4Z6XhsnWs+VckF/tTipLFRyD4pUp
         IAWiWrfurkfbWDrRRxqr8pBgSi/UpVKei7oQuOyOxmynwxJgXNFXNuaahJQeKpZEFYMg
         E4avqEFl+FNqtS2SKqrk1kAWAmrs3g+gcvJTaiKBuzvdBscBVqCCTi8daZg7A3ZeMMj0
         wZA/d+fyEXTRObi9VqB4lR/ILPDH2HCLNz+f2YHxrCxUI38SITZxoyfw4FzGQFVVWloX
         wKdg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bI27BQlU;
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mamtashukla555@gmail.com>
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id y7-v6si133375ywa.4.2018.10.04.05.24.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 04 Oct 2018 05:24:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bI27BQlU;
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x644.google.com with SMTP id 1-v6so5108943plv.7
        for <outreachy-kernel@googlegroups.com>; Thu, 04 Oct 2018 05:24:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=7ullIGJ4EDLGVpnG02bU54FqpUHYRxbzHpmkl8ZEzmY=;
        b=bI27BQlUAMYtZRbmffnJkh45XlJZA08vS/VFdd32BA17EnwV3C1XNwgQ+mt+rgKr5x
         7PdgyMuCYOlIcsVIfWsULJtb4PWXnfBuvrOzEEr+i/LR7mFLC5Os6jHrc17/LdEb/Ute
         +qU/pQm6Tt3Obec0BBV4gUzCGdUX3d3IeP0t+F/pwk9d6UCaabXON9o2wkSHdJhl7YrT
         pD14oRCFFgUvQqzRFtDYEf5r8FOh3MAICf1wvmS1iYv4tsUEASXUMR1eTdYOoZWSW2td
         W6FrOnL3WOW1q0z8Z5Fs/HNga1XIA2vHtPkFGz/EvhhDYoSDYUwpl42BIhaCTdwHba9V
         /fbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=7ullIGJ4EDLGVpnG02bU54FqpUHYRxbzHpmkl8ZEzmY=;
        b=V33lqEnwOlOPr5WIvhdqancWMNQ3oh0SGUo2kWZQw+j9VNHuxC4aXB5pEzKUkLk3Uz
         d5OOx7JIKzgd/b+2w0GyjQASc7aSnxgKXYxN9URrUufsiVkI0vJniMLVpUd37liSbwsY
         HVw+M0jhal2hvlJ3bnmE5uZ4YlkdXXc8XYPE72jjHVXEoDiEJvu+PsCO/iatVfC/HUGy
         dBGQw22ToAELMSpqX7OPUUHd1z0Hv86l8X4Y02EWJa7tXKPCds3ZFCwBZVC/lZQqdkEI
         9T0Yr5htNwfbrMiVaJQks45l1b+DTogry8Wuozdm8xyE5NMJ0NsdwrvK35V8gv7vwooK
         TOUQ==
X-Gm-Message-State: ABuFfojo/LuY7CmsbThMXUCnOIPp4mxUlu9QbX/ZYaznoauWXIv82gGL
	7hU8YHrngPO8GV3ICRZae240eCfH
X-Received: by 2002:a17:902:788e:: with SMTP id q14-v6mr6562210pll.49.1538655853698;
        Thu, 04 Oct 2018 05:24:13 -0700 (PDT)
Return-Path: <mamtashukla555@gmail.com>
Received: from armorer ([117.195.35.235])
        by smtp.gmail.com with ESMTPSA id d2-v6sm7370269pfd.100.2018.10.04.05.24.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 04 Oct 2018 05:24:13 -0700 (PDT)
Date: Thu, 4 Oct 2018 17:44:47 +0530
From: Mamta Shukla <mamtashukla555@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: fbtft: Prefer using the BIT macro
Message-ID: <20181004121447.GA9212@armorer>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Replace all occurrences of (1<<x) with BIT(x) to fix checkpatch issue.
CHECK:Prefer using the BIT macro

Signed-off-by: Mamta Shukla <mamtashukla555@gmail.com>

---
change in v2:

'Replace' in place of 'Replacing'.


 drivers/staging/fbtft/fbtft.h | 56 +++++++++++++++++++++----------------------
 1 file changed, 28 insertions(+), 28 deletions(-)

diff --git a/drivers/staging/fbtft/fbtft.h b/drivers/staging/fbtft/fbtft.h
index 25302ff..ac427ba 100644
--- a/drivers/staging/fbtft/fbtft.h
+++ b/drivers/staging/fbtft/fbtft.h
@@ -355,39 +355,39 @@ static void __exit fbtft_driver_module_exit(void)                          \
 #define DEBUG_LEVEL_6	(DEBUG_LEVEL_4 | DEBUG_LEVEL_5)
 #define DEBUG_LEVEL_7	0xFFFFFFFF
 
-#define DEBUG_DRIVER_INIT_FUNCTIONS (1<<3)
-#define DEBUG_TIME_FIRST_UPDATE     (1<<4)
-#define DEBUG_TIME_EACH_UPDATE      (1<<5)
-#define DEBUG_DEFERRED_IO           (1<<6)
-#define DEBUG_FBTFT_INIT_FUNCTIONS  (1<<7)
+#define DEBUG_DRIVER_INIT_FUNCTIONS BIT(3)
+#define DEBUG_TIME_FIRST_UPDATE     BIT(4)
+#define DEBUG_TIME_EACH_UPDATE      BIT(5)
+#define DEBUG_DEFERRED_IO           BIT(6)
+#define DEBUG_FBTFT_INIT_FUNCTIONS  BIT(7)
 
 /* fbops */
-#define DEBUG_FB_READ               (1<<8)
-#define DEBUG_FB_WRITE              (1<<9)
-#define DEBUG_FB_FILLRECT           (1<<10)
-#define DEBUG_FB_COPYAREA           (1<<11)
-#define DEBUG_FB_IMAGEBLIT          (1<<12)
-#define DEBUG_FB_SETCOLREG          (1<<13)
-#define DEBUG_FB_BLANK              (1<<14)
+#define DEBUG_FB_READ               BIT(8)
+#define DEBUG_FB_WRITE              BIT(9)
+#define DEBUG_FB_FILLRECT           BIT(10)
+#define DEBUG_FB_COPYAREA           BIT(11)
+#define DEBUG_FB_IMAGEBLIT          BIT(12)
+#define DEBUG_FB_SETCOLREG          BIT(13)
+#define DEBUG_FB_BLANK              BIT(14)
 
-#define DEBUG_SYSFS                 (1<<16)
+#define DEBUG_SYSFS                 BIT(16)
 
 /* fbtftops */
-#define DEBUG_BACKLIGHT             (1<<17)
-#define DEBUG_READ                  (1<<18)
-#define DEBUG_WRITE                 (1<<19)
-#define DEBUG_WRITE_VMEM            (1<<20)
-#define DEBUG_WRITE_REGISTER        (1<<21)
-#define DEBUG_SET_ADDR_WIN          (1<<22)
-#define DEBUG_RESET                 (1<<23)
-#define DEBUG_MKDIRTY               (1<<24)
-#define DEBUG_UPDATE_DISPLAY        (1<<25)
-#define DEBUG_INIT_DISPLAY          (1<<26)
-#define DEBUG_BLANK                 (1<<27)
-#define DEBUG_REQUEST_GPIOS         (1<<28)
-#define DEBUG_FREE_GPIOS            (1<<29)
-#define DEBUG_REQUEST_GPIOS_MATCH   (1<<30)
-#define DEBUG_VERIFY_GPIOS          (1<<31)
+#define DEBUG_BACKLIGHT             BIT(17)
+#define DEBUG_READ                  BIT(18)
+#define DEBUG_WRITE                 BIT(19)
+#define DEBUG_WRITE_VMEM            BIT(20)
+#define DEBUG_WRITE_REGISTER        BIT(21)
+#define DEBUG_SET_ADDR_WIN          BIT(22)
+#define DEBUG_RESET                 BIT(23)
+#define DEBUG_MKDIRTY               BIT(24)
+#define DEBUG_UPDATE_DISPLAY        BIT(25)
+#define DEBUG_INIT_DISPLAY          BIT(26)
+#define DEBUG_BLANK                 BIT(27)
+#define DEBUG_REQUEST_GPIOS         BIT(28)
+#define DEBUG_FREE_GPIOS            BIT(29)
+#define DEBUG_REQUEST_GPIOS_MATCH   BIT(30)
+#define DEBUG_VERIFY_GPIOS          BIT(31)
 
 #define fbtft_init_dbg(dev, format, arg...)                  \
 do {                                                         \
-- 
1.9.1


