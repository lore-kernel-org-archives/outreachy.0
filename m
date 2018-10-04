X-GM-THRID: 6608144919941873664
X-Received: by 2002:a63:5a55:: with SMTP id k21-v6mr2727002pgm.67.1538672577907;
        Thu, 04 Oct 2018 10:02:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a65:6103:: with SMTP id z3-v6ls734054pgu.15.gmail; Thu, 04
 Oct 2018 10:02:57 -0700 (PDT)
X-Google-Smtp-Source: ACcGV63jCMZEJwN0VaV/Q+OAKsdeR47QbMU0PeI8+3Aua7JChcGNT+9kSaFuQvvxkEAbG8LSOs2c
X-Received: by 2002:a63:182:: with SMTP id 124-v6mr1063070pgb.40.1538672577101;
        Thu, 04 Oct 2018 10:02:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538672577; cv=none;
        d=google.com; s=arc-20160816;
        b=GqICFQGP2+D4btQQ2R6bjR48PeMRWEOh5xz23KBJ94RzHaJXw3JzKg/B1BwO8Onp6t
         ffUBYFqpo8ffl+OQIsZGKrcHKlMG69loHRuBhWwvytDgsPE2qQ9Lqykp9qGeMdFxcxPd
         xnmVbmY7adHZfGAdRvRRe5ckfY+O/tqQ74FvIzy9J8hjr2/FSAzr+Ojh17v87kEh8djm
         QuVEcgCCJhv2CB/XZgjmL/i1TbLoJO6kTL2c6sDOw322AlNkipT0WKy5Zyxd/9brL7aj
         NJZliez2QwVgS0wZ7mhd/232iH5P1fZQgpaeRF1I8eHzTe4ro6tckT02x+nxE61zAVZg
         9qUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=CadgfmQatcTRKfGVd37qPNpXOY0DG5+VQdbYN/Na12o=;
        b=VLvynlIN43vJh1fWNp7LI1W2fy4VjGJTD7jMFRkkWoKBzpr+Vq3EJrUkZfHqJhWvZE
         b92YHCGOyGa6t4rnQhgsN9YmWEoegsuf+hTXE8n8YC6UFDWS9VlvJ9TF9533zVsvWmdF
         bXANpOvKdPhQnw8h8iZZYSvoso1b6TEJsYjld0WGgQM0q/92kTNZ0q4i95tsFtMFwY3w
         +vHEUi0eiENpk+Xu+zgEKcBoJX9DEXZLm7iMAnj4Furb5bMzRXXLOqKmn0kACL69M5hO
         dU6ceyvQVa7ts1gFd+Q3134Hhj0Qs6BHs4gI4P9QSS8IUDYp2YqyZlvB6SQf891iB5M0
         e1XQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vPRjYEOi;
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::434 as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mamtashukla555@gmail.com>
Received: from mail-pf1-x434.google.com (mail-pf1-x434.google.com. [2607:f8b0:4864:20::434])
        by gmr-mx.google.com with ESMTPS id c4-v6si179702pls.4.2018.10.04.10.02.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 04 Oct 2018 10:02:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::434 as permitted sender) client-ip=2607:f8b0:4864:20::434;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vPRjYEOi;
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::434 as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x434.google.com with SMTP id r9-v6so3529663pff.11
        for <outreachy-kernel@googlegroups.com>; Thu, 04 Oct 2018 10:02:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=CadgfmQatcTRKfGVd37qPNpXOY0DG5+VQdbYN/Na12o=;
        b=vPRjYEOiE0p1IDQJYXwv05xBljrQfXXJkJAuMzdpoOpoFz3POUIZ5errYVqfr2dRB1
         Z4KYHNWP0zn5TVhHzhdUq3Kec+JFyQ/KelCuBjZ8z1YJWBWE5LrvRud8aVTBsLqWh6+H
         2U8Xv4eK0E6TYLlDTzM9Ve3+mYe8quxuToB8IS9Heb0gvcyfJSSQLwjOGY3PjAiEEFhW
         OPbPXseac3FoT/bF+iz0SX2ogXbyJquT2KwutAB5Rqll3Ui1Td4MjkcA3kL09iVr7VLw
         K0v+GZqeqIB625AMU3vK4PaQ6Aw7TfgBOx45OtbBq05p83391lZwiXwIr/pQqLrcZ5B+
         w16w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=CadgfmQatcTRKfGVd37qPNpXOY0DG5+VQdbYN/Na12o=;
        b=YH4r5lWPZbbmFI04ojZmsnj7RnZL7uj9sTdlV8U5+Tn3FSXxci2uaiikhQEMqGEu3X
         4GazTW8ZrIZ7tjl5l63Gg3fmiZ+376xm0OIWT/2ez7XryJjXMs1E9LyMigSbbVG0lqV3
         90NWSJEoo8j5RHfsw01tl29oJs3R31D5SVhA37OBt8Dt+A62OvR6nrjr5gQ2fu5TThgp
         DRTsDZX/0dJWl4asNRZ//qB6LHCtWq7wWMgoStfrAYdc+/S2Q/VS5yRLfUhtZFJXg6Wm
         FZn6GyWZQFuviaerggzX8pOosj1b/oYLGDP6hqxJYQosV/DXawCmIznXHjWAjBKKDpAK
         /wHg==
X-Gm-Message-State: ABuFfoiM1LzYJRPnHuRlqDr6wZUQ/5YdVzH43xK4i+RFMexkfq3c522l
	XWKtZl8G1Ko4xmd5XwyNnGjeeK9L
X-Received: by 2002:a63:9b09:: with SMTP id r9-v6mr6543294pgd.307.1538672576656;
        Thu, 04 Oct 2018 10:02:56 -0700 (PDT)
Return-Path: <mamtashukla555@gmail.com>
Received: from armorer ([59.88.104.165])
        by smtp.gmail.com with ESMTPSA id f13-v6sm5856963pgq.63.2018.10.04.10.02.55
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 04 Oct 2018 10:02:55 -0700 (PDT)
Date: Thu, 4 Oct 2018 22:32:52 +0530
From: Mamta Shukla <mamtashukla555@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org, mamtashukla555@gmail.com
Subject: [PATCH v3] staging: fbtft: Prefer using the BIT macro
Message-ID: <20181004170252.GA2688@armorer>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Replace all occurrences of (1<<x) with BIT(x) to fix checkpatch issue.
CHECK:Prefer using the BIT macro

Signed-off-by: Mamta Shukla <mamtashukla555@gmail.com>

---

Changes in v3:
- Fixed Changelog
Changes in v2: 
-'Replace' in place of 'Replacing'.

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


