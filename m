X-GM-THRID: 6250350811445985280
X-Received: by 10.50.56.19 with SMTP id w19mr2674769igp.13.1455273202038;
        Fri, 12 Feb 2016 02:33:22 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.105.75 with SMTP id b69ls1352636qgf.53.gmail; Fri, 12 Feb
 2016 02:33:21 -0800 (PST)
X-Received: by 10.13.238.130 with SMTP id x124mr635060ywe.53.1455273201618;
        Fri, 12 Feb 2016 02:33:21 -0800 (PST)
Return-Path: <rakhish1994@gmail.com>
Received: from mail-pf0-x234.google.com (mail-pf0-x234.google.com. [2607:f8b0:400e:c00::234])
        by gmr-mx.google.com with ESMTPS id u66si1526879pfa.2.2016.02.12.02.33.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Feb 2016 02:33:21 -0800 (PST)
Received-SPF: pass (google.com: domain of rakhish1994@gmail.com designates 2607:f8b0:400e:c00::234 as permitted sender) client-ip=2607:f8b0:400e:c00::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of rakhish1994@gmail.com designates 2607:f8b0:400e:c00::234 as permitted sender) smtp.mailfrom=rakhish1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x234.google.com with SMTP id q63so45686628pfb.0
        for <outreachy-kernel@googlegroups.com>; Fri, 12 Feb 2016 02:33:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=MPCvOFnwvz3NO5ghUb3/6sLTdqJnlUoa5R6AEH4V/GQ=;
        b=b3OUvczRfD6GMUsIPLmKvfmR8ff7HzVNv9w/AoQf67enS6QI6eWIihY4c4Tt4vrHOD
         XrOAVIrWdqfZu5eVlDaf6KQL2c1NYTZHcE+ZlZMzVjp8NG/NJy+dj2AOwBpILeXZAxZ2
         DFj07d9ALxSreOO6iOutmX7vQ/6NY6vjGsE+X3PY9D90cLCQ5HupEhvoJOLLgI9vt73H
         5lkNEUjwn/sc74y3C5IJyyMZRIsIRvXATKyS1uBDk/xId7iWj1MhSOHkLG62qYAncuGh
         hcWd0k1OSmpE0AClsnNu755suny5pEZ6p4Dy+DzB4vx8dsNX7yIuc/QsaiaIvyjLYVH+
         jkmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=MPCvOFnwvz3NO5ghUb3/6sLTdqJnlUoa5R6AEH4V/GQ=;
        b=b6h/ZGqRV1HO6VAk/2NyDR245UabsJcchP8VeFAmAblRd9if/zlZGu3BRR04DDs5ku
         FU5oBFBAyLNkOP6DFwzIsWniAlOTA18v/8b9DrO8p3+mMORCohbpVVwY2bh1PD7A8mH8
         BVoZvec/LepyFkpL7bpeW6wToVQIOrwVaZakqbANhePi6M1oFOzuCuQV1bIRZ9LTYyrF
         A+xH4KjOqvR58h0FP8cidKWcGLX/F9XrnDLUUSX+tqqs5mcJBQacgCuTbnwtkztK8lRw
         fI3/CAs4rVcpS34vC9X057GR1lYdudUYpueO9U2xTOYhxYdu/4ileQc+OrVZTi0YN6ij
         h78A==
X-Gm-Message-State: AG10YOQf74CpnMk1OY1idebGkLzKUBL1TNHaAqAsD5YeZHa1z0plpYF/m2hm5oYd5YhcIw==
X-Received: by 10.98.87.90 with SMTP id l87mr1041490pfb.70.1455273201367;
        Fri, 12 Feb 2016 02:33:21 -0800 (PST)
Return-Path: <rakhish1994@gmail.com>
Received: from rakhi-Inspiron-3542.4.2.2.2 ([182.73.140.109])
        by smtp.gmail.com with ESMTPSA id 17sm18373028pfp.96.2016.02.12.02.33.19
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 12 Feb 2016 02:33:20 -0800 (PST)
From: Rakhi Sharma <rakhish1994@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: julia.lawall@lip6.fr,
	daniel.baluta@gmail.com,
	Rakhi Sharma <rakhish1994@gmail.com>
Subject: [PATCH 4/4] staging: rtl8712: Fixed a comparision coding style warning.
Date: Fri, 12 Feb 2016 16:03:14 +0530
Message-Id: <1455273194-15848-1-git-send-email-rakhish1994@gmail.com>
X-Mailer: git-send-email 1.9.1

WARNING: Comparisons should place the constant on the right side of the test
Fixed this warning by placing the constant on right side.

Signed-off-by: Rakhi Sharma <rakhish1994@gmail.com>
---
 drivers/staging/rtl8712/rtl8712_efuse.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl8712_efuse.c b/drivers/staging/rtl8712/rtl8712_efuse.c
index eaa93fb..76f60ba 100644
--- a/drivers/staging/rtl8712/rtl8712_efuse.c
+++ b/drivers/staging/rtl8712/rtl8712_efuse.c
@@ -161,7 +161,7 @@ static u8 efuse_is_empty(struct _adapter *padapter, u8 *empty)
 
 	/* read one byte to check if E-Fuse is empty */
 	if (efuse_one_byte_rw(padapter, true, 0, &value)) {
-		if (0xFF == value)
+		if (value == 0xFF)
 			*empty = true;
 		else
 			*empty = false;
@@ -345,7 +345,7 @@ static u8 fix_header(struct _adapter *padapter, u8 header, u16 header_addr)
 				ret = false;
 			} else if (pkt.data[i * 2] != value) {
 				ret = false;
-				if (0xFF == value) /* write again */
+				if (value == 0xFF) /* write again */
 					efuse_one_byte_write(padapter, addr,
 							pkt.data[i * 2]);
 			}
@@ -353,7 +353,7 @@ static u8 fix_header(struct _adapter *padapter, u8 header, u16 header_addr)
 				ret = false;
 			} else if (pkt.data[i * 2 + 1] != value) {
 				ret = false;
-				if (0xFF == value) /* write again */
+				if (value == 0xFF) /* write again */
 					efuse_one_byte_write(padapter, addr + 1,
 							     pkt.data[i * 2 +
 								      1]);
@@ -420,7 +420,7 @@ u8 r8712_efuse_pg_packet_write(struct _adapter *padapter, const u8 offset,
 		}
 		/* write header fail */
 		bResult = false;
-		if (0xFF == efuse_data)
+		if (efuse_data == 0xFF)
 			return bResult; /* nothing damaged. */
 		/* call rescue procedure */
 		if (!fix_header(padapter, efuse_data, efuse_addr))
-- 
1.9.1


