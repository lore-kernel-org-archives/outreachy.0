X-GM-THRID: 6671492660700643328
X-Received: by 2002:a17:902:6b8c:: with SMTP id p12mr14139403plk.282.1553327936482;
        Sat, 23 Mar 2019 00:58:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:1f03:: with SMTP id f3ls4758490pff.2.gmail; Sat, 23 Mar
 2019 00:58:55 -0700 (PDT)
X-Google-Smtp-Source: APXvYqye22vSoLvCI4uF4OXWUO0y/qjIFs9KszNEuhNE9hd3W3wtWIEdid1XiZIfMMhFE04O5q8F
X-Received: by 2002:a63:3f8b:: with SMTP id m133mr12755094pga.91.1553327935700;
        Sat, 23 Mar 2019 00:58:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553327935; cv=none;
        d=google.com; s=arc-20160816;
        b=obBfbOXdvyBiyBlqhdYG/0AkpBFj68yVQv6U7Px66WWB5sozV8MsgeZ9rnGGhTnWfO
         NiWwkeMSCxAfCggtPlJub6NTM1FTJ8EszKV3XuwiIFbSsg/LntKcQvKWZCSYCn06KD86
         bc/8lO8rNWjFOrpJ/e/moYpVUMqNDOODgpETPmzK12eg93J8ABKjb3Zp1jFavNpNaO31
         6Xdjj2E4+O0QZ9BVbr0ui7ueIFNJqyRVIk015kMpE1z34NmUm/CnuixRhoF5kw6yq4s8
         JoyinN1E0idrrSovjMQOGnc911TAh8CvrUFUecyQL4gh5ZOubX63fUofm3pJxyDvSbTT
         8mnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=lTuw8F47U6jB+95PU0ZTgRxq8+9GYZlZwx0qzyfLulE=;
        b=yXuJHJtAQJCLfFs26GqQ2Ydnj5XJfiA7HSq7wFGuI2GptJHLsrkBRkhVcnyad5znB7
         v21zQAAU4Y+UvXt1whu+eU4nPkBp5ezP0IH7gGxJe78YKdojW2+x7friiFEMaWdurGWl
         +8nWr+PqmBkbmMCUaNnhzYjqJyw/5bDOWo9kOQgWfp2cFYxgJkRNoC5EiqGLWWXJaKy9
         ZmDWxfQTcsP2Q5ogJ5pyGd2A4XRgptOa287MsBEIUESljyrRJPYtwpGXfmhgu6BLCq4L
         B8MuFVE43Ek1nap4U5Iy0kHEqx7enqOrwtHzmhgNSUJ+77kmY1yq6lbS3+dZGzl1hDmJ
         ojxg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=quErOaZA;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id b38si466691plb.1.2019.03.23.00.58.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Mar 2019 00:58:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=quErOaZA;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id q206so3049269pgq.4
        for <outreachy-kernel@googlegroups.com>; Sat, 23 Mar 2019 00:58:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references:mime-version:content-transfer-encoding;
        bh=lTuw8F47U6jB+95PU0ZTgRxq8+9GYZlZwx0qzyfLulE=;
        b=quErOaZA2AwwppmpQRbX5RDzM9RwfnrCPa1Ii+Zgeh//rNy4Id3lo5+NcJWyNi3M2k
         1kLAs3aSSz/BXSuWx+/a2YnVkdsIY6o3DkacLib6erS63vRjK+gC4/iSVQwvEYlrTw0l
         i6XjpRTO/DTkBVJvfXrbpqH9NHV9GKHmwsb0sIc3nipw0gjkmM24bEOHdazAHRFKZjf+
         R2UdXTcPd3ou+0aeKK/mLUtSpu9xckqjl8L/rPkEYMipKkbVQ6TuTI7cjaoYbuGmJmdc
         dSsAQUxXgu0dSnLdNPCQJhC63Parsd1EGz7Dt9N6/WnpPBCl3P6S5JKI1iw16Yb3xDh4
         suNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=lTuw8F47U6jB+95PU0ZTgRxq8+9GYZlZwx0qzyfLulE=;
        b=KdX95ee5z58XR9LO/qWX9IHTnv9KNR+IwPufHPSd6eYCNknncBTRKnphievLnNiLe+
         6+Bt98LnHqJAY+KFJx7wm9YVTSg5c4ZyHhJUBoW819WoQLjR7S+VBgyLxneCYTOPaX5D
         fQnUNGzEAyBY/2aGmyYke6202it9C3CT2uZ5loIZFxuAojt65oTECwt7m6LFqisJ9rS4
         uQEUvpj0t/xUnFuzoeuGV189K1uB1vCMTqViaRlfNG/SHJJKh4tWxWWlZTjlhVLqaLgu
         7ZanNW8XgaKweyVxhO6Cuj4Qoa9nWVP8yfYQPmXryG7Z0NdGHPK4PM3gA6B65hCtuYGR
         RKxQ==
X-Gm-Message-State: APjAAAWUsq4cMcK5/YrSxHGMWR28oB2zPCm/6ucrZnkQ6xPOGlJueJwS
	voumW2jn10zba/KuGCP9ZByBpmcH
X-Received: by 2002:a17:902:6b05:: with SMTP id o5mr13786432plk.90.1553327935099;
        Sat, 23 Mar 2019 00:58:55 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([157.33.173.66])
        by smtp.gmail.com with ESMTPSA id n24sm22379150pfi.123.2019.03.23.00.58.52
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 23 Mar 2019 00:58:54 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>,
	pkbehappyallthetime@gmail.com
Subject: [PATCH 2/5] staging: rtl8712: avoid camelcase variable name 'bResult'
Date: Sat, 23 Mar 2019 13:28:28 +0530
Message-Id: <50922ca3cde06ba196507d204610e3274cc6cced.1553327467.git.payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <6b2beffe41d8256284179eda6eadd8b9cf0a24fb.1553327467.git.payal.s.kshirsagar.98@gmail.com>
References: <6b2beffe41d8256284179eda6eadd8b9cf0a24fb.1553327467.git.payal.s.kshirsagar.98@gmail.com>
In-Reply-To: <cover.1553327467.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1553327467.git.payal.s.kshirsagar.98@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Eliminate camelcase variable names to fix the style issue – ‘avoid
camelcase’

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/rtl8712/rtl8712_efuse.c | 42 ++++++++++++++++-----------------
 1 file changed, 21 insertions(+), 21 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl8712_efuse.c b/drivers/staging/rtl8712/rtl8712_efuse.c
index 3275f7a..1a6cd42 100644
--- a/drivers/staging/rtl8712/rtl8712_efuse.c
+++ b/drivers/staging/rtl8712/rtl8712_efuse.c
@@ -65,7 +65,7 @@ void r8712_efuse_reg_uninit(struct _adapter *padapter)
 
 static u8 efuse_one_byte_read(struct _adapter *padapter, u16 addr, u8 *data)
 {
-	u8 tmpidx = 0, bResult;
+	u8 tmpidx = 0, result;
 
 	/* -----------------e-fuse reg ctrl --------------------------------- */
 	r8712_write8(padapter, EFUSE_CTRL + 1, (u8)(addr & 0xFF)); /* address */
@@ -78,17 +78,17 @@ static u8 efuse_one_byte_read(struct _adapter *padapter, u16 addr, u8 *data)
 		tmpidx++;
 	if (tmpidx < 100) {
 		*data = r8712_read8(padapter, EFUSE_CTRL);
-		bResult = true;
+		result = true;
 	} else {
 		*data = 0xff;
-		bResult = false;
+		result = false;
 	}
-	return bResult;
+	return result;
 }
 
 static u8 efuse_one_byte_write(struct _adapter *padapter, u16 addr, u8 data)
 {
-	u8 tmpidx = 0, bResult;
+	u8 tmpidx = 0, result;
 
 	/* -----------------e-fuse reg ctrl -------------------------------- */
 	r8712_write8(padapter, EFUSE_CTRL + 1, (u8)(addr & 0xFF)); /* address */
@@ -101,16 +101,16 @@ static u8 efuse_one_byte_write(struct _adapter *padapter, u16 addr, u8 data)
 	       (tmpidx < 100))
 		tmpidx++;
 	if (tmpidx < 100)
-		bResult = true;
+		result = true;
 	else
-		bResult = false;
-	return bResult;
+		result = false;
+	return result;
 }
 
 static u8 efuse_one_byte_rw(struct _adapter *padapter, u8 bRead, u16 addr,
 			    u8 *data)
 {
-	u8 tmpidx = 0, tmpv8 = 0, bResult;
+	u8 tmpidx = 0, tmpv8 = 0, result;
 
 	/* -----------------e-fuse reg ctrl --------------------------------- */
 	r8712_write8(padapter, EFUSE_CTRL + 1, (u8)(addr & 0xFF)); /* address */
@@ -124,10 +124,10 @@ static u8 efuse_one_byte_rw(struct _adapter *padapter, u8 bRead, u16 addr,
 			tmpidx++;
 		if (tmpidx < 100) {
 			*data = r8712_read8(padapter, EFUSE_CTRL);
-			bResult = true;
+			result = true;
 		} else {
 			*data = 0;
-			bResult = false;
+			result = false;
 		}
 	} else {
 		r8712_write8(padapter, EFUSE_CTRL, *data); /* data */
@@ -136,11 +136,11 @@ static u8 efuse_one_byte_rw(struct _adapter *padapter, u8 bRead, u16 addr,
 		       (tmpidx < 100))
 			tmpidx++;
 		if (tmpidx < 100)
-			bResult = true;
+			result = true;
 		else
-			bResult = false;
+			result = false;
 	}
-	return bResult;
+	return result;
 }
 
 static u8 efuse_is_empty(struct _adapter *padapter, u8 *empty)
@@ -360,7 +360,7 @@ u8 r8712_efuse_pg_packet_write(struct _adapter *padapter, const u8 offset,
 	u8 efuse_data, target_word_cnts = 0;
 	int repeat_times;
 	int sub_repeat;
-	u8 bResult = true;
+	u8 result = true;
 
 	/* check if E-Fuse Clock Enable and E-Fuse Clock is 40M */
 	efuse_data = r8712_read8(padapter, EFUSE_CLK_CTRL);
@@ -382,7 +382,7 @@ u8 r8712_efuse_pg_packet_write(struct _adapter *padapter, const u8 offset,
 		while (!efuse_one_byte_read(padapter, efuse_addr,
 					    &efuse_data)) {
 			if (++sub_repeat > _REPEAT_THRESHOLD_) {
-				bResult = false; /* continue to blind write */
+				result = false; /* continue to blind write */
 				break; /* continue to blind write */
 			}
 		}
@@ -400,16 +400,16 @@ u8 r8712_efuse_pg_packet_write(struct _adapter *padapter, const u8 offset,
 				if (!efuse_one_byte_read(padapter,
 							 efuse_addr + i,
 							 &efuse_data))
-					bResult = false;
+					result = false;
 				else if (*(data + i) != efuse_data) /* fail */
-					bResult = false;
+					result = false;
 			}
 			break;
 		}
 		/* write header fail */
-		bResult = false;
+		result = false;
 		if (efuse_data == 0xFF)
-			return bResult; /* nothing damaged. */
+			return result; /* nothing damaged. */
 		/* call rescue procedure */
 		if (!fix_header(padapter, efuse_data, efuse_addr))
 			return false; /* rescue fail */
@@ -418,7 +418,7 @@ u8 r8712_efuse_pg_packet_write(struct _adapter *padapter, const u8 offset,
 			break;
 		/* otherwise, take another risk... */
 	}
-	return bResult;
+	return result;
 }
 
 u8 r8712_efuse_access(struct _adapter *padapter, u8 bRead, u16 start_addr,
-- 
2.7.4


