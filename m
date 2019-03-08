X-GM-THRID: 6664981263437266944
X-Received: by 2002:aca:de02:: with SMTP id v2mr24155659oig.0.1552059108850;
        Fri, 08 Mar 2019 07:31:48 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:590f:: with SMTP id t15ls3189675oth.10.gmail; Fri, 08
 Mar 2019 07:31:47 -0800 (PST)
X-Google-Smtp-Source: APXvYqyQCEWRjYwN8iGxj6soqmYbsPRrRGSDC8b9x0sgmCOJnHp38yuZOzpmNYqzkLf3m5dJY1UB
X-Received: by 2002:a9d:5d02:: with SMTP id b2mr9978212oti.61.1552059107809;
        Fri, 08 Mar 2019 07:31:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1552059107; cv=none;
        d=google.com; s=arc-20160816;
        b=0IJ0hg+55nlRxZjvFpGI7IPTGQ+hgr/h4H4rLD9Iayufeq++qg5qGhQAL/0wBR2xaC
         a5BYI2KY/yL7V0Omj5M+A1Nz1lkYFf8DMWmftLzBxuCOp6OdZTPJcUpmQg52KAL3mREG
         I5C9nNtvcUWXNTXOs2VomBatuv9F9syhnIhk/uzj5cddTEFf3WIRaBc/02O9KI44AyoU
         3qRKfUcvYXhc9Iu29tUp1OnE/mRHaE9xPLwk8403WK5SJ7FDLPQ6YPrRbAo6RCpkeWjH
         rQ9G3V0TA8bzd6eM0hZ1qmzgG6neQxMKrByf6c7E75dNd/w7Mji0aZBaoa4nWaXaQ1ob
         eupA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=CxO/z+JNyOd63EGDyPW/Emgb8O/hWsf/7rzXDu1b1pY=;
        b=hV28ZgZ6qPYTUfXjUqAQ9LFoN1aRb6ZZvokSMOahe9y8mUeVBQL/IQSFMcebct/RPd
         ceIe6xAHyZuMaS7DpXJweL59ne4lKf2DHKPntL3Uv/sqV7IYR0lrnOkqhKbfxbByi9ic
         XjUrlA5m/XMNs3sjeK/dEcMokjT4aLOiBkm2T5e1YoGMyqjv3Vc6u6/2IZQ5qtLxwQcZ
         T/eHRa7UV1Ftfb5+lOx/Gc6MZ3xS9rkXn2BeqoPb7Qxvptr7HROnMVXk/Ur4VkGw1MeS
         Qq/Tg45BlxXHNu6ZyPGDFI1kfsMrX+BO69zVPeoliPjrNWOO8ma2Y2/ufVzQcAEMN7zj
         5Iyw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uCjXkQFv;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::42d as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <digholebhagyashri@gmail.com>
Received: from mail-pf1-x42d.google.com (mail-pf1-x42d.google.com. [2607:f8b0:4864:20::42d])
        by gmr-mx.google.com with ESMTPS id d128si527808oia.3.2019.03.08.07.31.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 08 Mar 2019 07:31:47 -0800 (PST)
Received-SPF: pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::42d as permitted sender) client-ip=2607:f8b0:4864:20::42d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uCjXkQFv;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::42d as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x42d.google.com with SMTP id d25so14399170pfn.8
        for <outreachy-kernel@googlegroups.com>; Fri, 08 Mar 2019 07:31:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=CxO/z+JNyOd63EGDyPW/Emgb8O/hWsf/7rzXDu1b1pY=;
        b=uCjXkQFvu2kBXsU07BfaeB5p61mfBGWzYIRLcDRVHgLZ5zCxFnsk1tr+m4gCWNfpJF
         3GOGzdfJTv4QxCJ94y4vyoiJSzuYH+csOeU0E/IDotpnTS5qPbzuBhdi+D2w4MQqzHSZ
         dYUhcjOhfOp/S+k3c2uPcONgYjRJzOA2A/D5GNZEMl0xua3X3NQLiKjRyqqGtwwJzsQa
         sj6yP5NX1Uf/Voov17qr/wbubnlwnxLotSdW3jcOnbmPZ/2oEpKMHHgOqjIZ2wZ8sFIx
         wGdW5wy9kt297Oh3+dGU+gryAqmPrdtP6tFSc/UCpAb1qc4MpU4GeoWgtpXiGXwZXKC7
         d0Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=CxO/z+JNyOd63EGDyPW/Emgb8O/hWsf/7rzXDu1b1pY=;
        b=TtRWbUWw+dzWLI07z2VX8xol2O3ggg3090sRnEcrd6unfNMX4+C5kCBNpkrqDUkQWP
         tYLcUzD3dlAYtX/0gtdJUhBaoA/SxkMzRCp1d4oiuSRzHL7r0ONQ7Hbm/Xl1rDjxvoE0
         gwaJAuh5sHSlecsrmNIztsYr/Su03h/ic6g4GIeanVT4cqI3/JPLHckH0wl7kD4B/P9u
         54PAwZB2QnEq1Rq6hKlNCJ+mWaSk2ld9jci6sDg59eY5pxHvknlH8HQ4y2XPkjWMUdKl
         N2yTdnY8oXcZFDBMenKliqNrB8UTL8eqpISDw1KVoCpdPjjV7csf0J9KkAHV5aqV6e5b
         M4Nw==
X-Gm-Message-State: APjAAAUw4JHnx49d/eF028wNtY7Q09+aeSNAp7+rb9AUBwZE8ssTc3Wa
	qKc64araHa3Lz2yh5neb2FgXdJyheVS8tQ==
X-Received: by 2002:a17:902:7042:: with SMTP id h2mr19087037plt.323.1552059106923;
        Fri, 08 Mar 2019 07:31:46 -0800 (PST)
Return-Path: <digholebhagyashri@gmail.com>
Received: from bhagyashri-Lenovo-G570 ([2409:4042:2e8c:9ce5:e51b:7fdf:2aef:571])
        by smtp.gmail.com with ESMTPSA id c127sm21104000pfg.133.2019.03.08.07.31.44
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 08 Mar 2019 07:31:46 -0800 (PST)
Date: Fri, 8 Mar 2019 21:01:28 +0530
From: Bhagyashri Dighole <digholebhagyashri@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Outreachy <outreachy-kernel@googlegroups.com>
Subject: [PATCH v4 2/2] staging: fbtft: convert a macro to a function.
Message-ID: <20190308153128.GA13043@bhagyashri-Lenovo-G570>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Convert a macro to an inline function to improve type safety and make
the code simpler.

Signed-off-by: Bhagyashri Dighole <digholebhagyashri@gmail.com>
---
Changes in v4:
  -- Modify log messages.
  -- Use one space around operators.

Changes in v3:
  -- Change the subject line according to log messages.
  -- Remove extra spaces.

Changes in v2:
  -- Make the converion from macro to inline function

 drivers/staging/fbtft/fb_watterott.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/fbtft/fb_watterott.c b/drivers/staging/fbtft/fb_watterott.c
index 502d67f..27cc8ea 100644
--- a/drivers/staging/fbtft/fb_watterott.c
+++ b/drivers/staging/fbtft/fb_watterott.c
@@ -90,9 +90,10 @@ static int write_vmem(struct fbtft_par *par, size_t offset, size_t len)
 	return 0;
 }
 
-#define RGB565toRGB332(c) ((((c) & 0xE000) >> 8) |\
-			   (((c) & 000700) >> 6) |\
-			   (((c) & 0x0018) >> 3))
+static inline int rgb565_to_rgb332(u16 c)
+{
+	return ((c & 0xE000) >> 8) | ((c & 000700) >> 6) | ((c & 0x0018) >> 3);
+}
 
 static int write_vmem_8bit(struct fbtft_par *par, size_t offset, size_t len)
 {
@@ -116,7 +117,7 @@ static int write_vmem_8bit(struct fbtft_par *par, size_t offset, size_t len)
 	for (i = start_line; i <= end_line; i++) {
 		pos[1] = cpu_to_be16(i);
 		for (j = 0; j < par->info->var.xres; j++) {
-			buf8[j] = RGB565toRGB332(*vmem16);
+			buf8[j] = rgb565_to_rgb332(*vmem16);
 			vmem16++;
 		}
 		ret = par->fbtftops.write(par,
-- 
2.7.4


