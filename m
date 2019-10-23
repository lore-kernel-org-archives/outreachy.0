X-GM-THRID: 6751114890360913920
X-Received: by 2002:a81:288b:: with SMTP id o133mr4153559ywo.307.1571867471730;
        Wed, 23 Oct 2019 14:51:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:68cd:: with SMTP id d196ls618972ybc.13.gmail; Wed, 23
 Oct 2019 14:51:10 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyPvcV18a3MKVj0ufheCEYRLdsrK1xG4u/akUqqfIiU3Aa/jFJlv1SDaRseZ2gwtbXXaUmA
X-Received: by 2002:a25:828e:: with SMTP id r14mr8347689ybk.252.1571867470285;
        Wed, 23 Oct 2019 14:51:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571867470; cv=none;
        d=google.com; s=arc-20160816;
        b=kAeNSmD7XxwJveHVHpG9oHj7/V/cKpzBziGJHd0m2t4vwXsYTEdll4VTEiIWBFFRnM
         GhMfUbGlmsrekfuMMeLFBYF9NlLE8zLxFkI/qmPiJMd80pvxoE+7iGVJERFFH/ZfZRCp
         Mjn0OuZwYbC0e+wEtwurV9AF7FYxZOOfrsMJcm6CO+NiX7ZZRLBE7WqBiqBkbT7BbwbY
         VQdWyv9O6DJSHWslPeF9m85npxIM4cWxINdSkjOQr3gCxQz6HfcgXHoi/OY0aXcwFbHx
         65Cc7yaFFe1krhz/X/shYVVFojVIyU/BCjfRVjZ72djsdLv0VXB2yoAG0RdNIjKGDzfF
         743A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=6/47U8HJGQz0TitDPWbZWc/Fvi3AvOuqYBxUu/oaGwc=;
        b=ECqGVVHLmvASw+4LSHg1OS5F321kcDZId8y0Jbe3eMzAUOFFUhC4PJDY5Gx17eALfp
         hictwaNTPvSKJbhy0R4CtW4cBOrnZ1hy+uc/IUfl4HuVbmH0JHVqh5FX4cF8pmUrWO6c
         GKAO6jf8oh5uLFt2wvK4+Tdg0Gr96xgyw64Qcqul89+XxtHv+rz123s7v1nvLhJtNSw5
         UvsSK4O9ylz1MTMRudRWMzalH34txf4rUTooIBoXzGhAOWIqXqVtKXkPBknc85gmoa3a
         Qy7j/eryI2BiQPMAK1kZsfkaOvz5FCwEn050xcb2qzcROflwYXZzlJBGElMmAUiKg7PZ
         1P9w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FLYZXJOq;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jamal.k.shareef@gmail.com>
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id u8si70461ybc.2.2019.10.23.14.51.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Oct 2019 14:51:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FLYZXJOq;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x541.google.com with SMTP id u23so2229306pgo.0
        for <outreachy-kernel@googlegroups.com>; Wed, 23 Oct 2019 14:51:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=6/47U8HJGQz0TitDPWbZWc/Fvi3AvOuqYBxUu/oaGwc=;
        b=FLYZXJOqubhzP0PmltPvDkVAbiQqox3IoTuXca7zAzZp1DkEwMol3WR4ezbsgsDo7C
         yy4mYF0WOM74THf67w6CgmD5EL4PAD3XL4uWv/JYzmj3ahf5PVwkf2OQQOf+W8lt0Txj
         OVyhAn/lBZus//Yt4VfTfj82eQtag3oMJey8JpJpDPHKCEPJAlMJV43iKjHAC3NkVupO
         IijuKzzIWYvUogbugS52k6LzM7kFUQWmUx6HrUTV+5KMGP3vP/CbcM9xVyCcoO/1C+l1
         QpjhiBlcAb86HIacqWcqM/JtLJGlYw24t3X3iT1kwO0r0kSVISfQJ7j4huaEYWc18dio
         xVyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=6/47U8HJGQz0TitDPWbZWc/Fvi3AvOuqYBxUu/oaGwc=;
        b=mm+qCZUlMZQs9W+6ROZMbfIenP71LRgUcZvzE6zzI4aHTH14oJ07jiCCa7ByokqZfk
         /r5mtys4oEoIV00EdflnbmMvdQ77p4sjY6T6MpWlu7wsHwrL1NXxUIP8ZkQezZpbY+M/
         3T4sAYQN30kjvIEgbw5girUnemQoR+JZXqaZ3WiGtqjlReNKqaaULAi/v7Rl4cj1w2Ku
         0tUrQ0USnMlOcQf8xQShIPUlLy0potpz2wOpXOngMc0585OdK9R+RB8NViD0tMGUUx0y
         MA1F6EzPj7ad3r0SGx4JjaSsxBsOe/HMtM43mA0vpg9Dqwn4wFjjICbTUluhhxkfKN2Q
         ZQ8g==
X-Gm-Message-State: APjAAAWgA4d3+axuOTsh2TZhzV/2XIcTaTe4qklGsS2gmUbEr3TM/tuR
	x0UI1H41D2Jce3wOZ3IsZQkxYUUa
X-Received: by 2002:a65:5b02:: with SMTP id y2mr12960742pgq.365.1571867469244;
        Wed, 23 Oct 2019 14:51:09 -0700 (PDT)
Return-Path: <jamal.k.shareef@gmail.com>
Received: from jamal-desktop (97-126-66-56.tukw.qwest.net. [97.126.66.56])
        by smtp.gmail.com with ESMTPSA id y8sm27741801pgs.34.2019.10.23.14.51.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Oct 2019 14:51:08 -0700 (PDT)
From: Jamal Shareef <jamal.k.shareef@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Jamal Shareef <jamal.k.shareef@gmail.com>,
	gregkh@linuxfoundation.org
Subject: [PATCH v2] staging: fbtft: Fix duplicate arguments to bitwise AND
Date: Wed, 23 Oct 2019 14:51:05 -0700
Message-Id: <20191023215105.18049-1-jamal.k.shareef@gmail.com>
X-Mailer: git-send-email 2.17.1

Fix duplicated arguments to bitwise & operator.
Issue detected by coccinelle.

Signed-off-by: Jamal Shareef <jamal.k.shareef@gmail.com>
---
Changed in v2
 - Added parenthesis to bitwise operations to ensure
   correct precedence
---
 drivers/staging/fbtft/fb_uc1611.c | 22 +++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/fbtft/fb_uc1611.c b/drivers/staging/fbtft/fb_uc1611.c
index 65681d0fe200..e763205e9e4f 100644
--- a/drivers/staging/fbtft/fb_uc1611.c
+++ b/drivers/staging/fbtft/fb_uc1611.c
@@ -91,7 +91,7 @@ static int init_display(struct fbtft_par *par)
 	write_reg(par, 0x2C | (pump & 0x03));
 
 	/* Set inverse display */
-	write_reg(par, 0xA6 | (0x01 & 0x01));
+	write_reg(par, 0xA6 | 0x01);
 
 	/* Set 4-bit grayscale mode */
 	write_reg(par, 0xD0 | (0x02 & 0x03));
@@ -157,8 +157,8 @@ static int set_var(struct fbtft_par *par)
 		/* Set RAM address control */
 		write_reg(par, 0x88
 			| (0x0 & 0x1) << 2 /* Increment positively */
-			| (0x1 & 0x1) << 1 /* Increment page first */
-			| (0x1 & 0x1));    /* Wrap around (default) */
+			| (0x1 << 1)	   /* Increment page first */
+			| 0x1);		   /* Wrap around (default) */
 
 		/* Set LCD mapping */
 		write_reg(par, 0xC0
@@ -171,11 +171,11 @@ static int set_var(struct fbtft_par *par)
 		write_reg(par, 0x88
 			| (0x0 & 0x1) << 2 /* Increment positively */
 			| (0x0 & 0x1) << 1 /* Increment column first */
-			| (0x1 & 0x1));    /* Wrap around (default) */
+			| 0x1);		   /* Wrap around (default) */
 
 		/* Set LCD mapping */
 		write_reg(par, 0xC0
-			| (0x1 & 0x1) << 2 /* Mirror Y ON */
+			| (0x1 << 2)	   /* Mirror Y ON */
 			| (0x0 & 0x1) << 1 /* Mirror X OFF */
 			| (0x0 & 0x1));    /* MS nibble last (default) */
 		break;
@@ -183,13 +183,13 @@ static int set_var(struct fbtft_par *par)
 		/* Set RAM address control */
 		write_reg(par, 0x88
 			| (0x0 & 0x1) << 2 /* Increment positively */
-			| (0x1 & 0x1) << 1 /* Increment page first */
-			| (0x1 & 0x1));    /* Wrap around (default) */
+			| (0x1 << 1)	   /* Increment page first */
+			| 0x1);		   /* Wrap around (default) */
 
 		/* Set LCD mapping */
 		write_reg(par, 0xC0
-			| (0x1 & 0x1) << 2 /* Mirror Y ON */
-			| (0x1 & 0x1) << 1 /* Mirror X ON */
+			| (0x1 << 2)	   /* Mirror Y ON */
+			| (0x1 << 1)	   /* Mirror X ON */
 			| (0x0 & 0x1));    /* MS nibble last (default) */
 		break;
 	default:
@@ -197,12 +197,12 @@ static int set_var(struct fbtft_par *par)
 		write_reg(par, 0x88
 			| (0x0 & 0x1) << 2 /* Increment positively */
 			| (0x0 & 0x1) << 1 /* Increment column first */
-			| (0x1 & 0x1));    /* Wrap around (default) */
+			| 0x1);		   /* Wrap around (default) */
 
 		/* Set LCD mapping */
 		write_reg(par, 0xC0
 			| (0x0 & 0x1) << 2 /* Mirror Y OFF */
-			| (0x1 & 0x1) << 1 /* Mirror X ON */
+			| (0x1 << 1)	   /* Mirror X ON */
 			| (0x0 & 0x1));    /* MS nibble last (default) */
 		break;
 	}
-- 
2.17.1


