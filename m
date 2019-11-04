X-GM-THRID: 6755493300686290944
X-Received: by 2002:a19:ec16:: with SMTP id b22mr18531761lfa.74.1572885853188;
        Mon, 04 Nov 2019 08:44:13 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6512:48f:: with SMTP id v15ls1317919lfq.14.gmail; Mon,
 04 Nov 2019 08:44:12 -0800 (PST)
X-Google-Smtp-Source: APXvYqyxksfTk4eiZbNpyMXygoz7C5A2kTX74dfwymm3Dcdl6U7R1y1pnxi2/y4hLX8blyHlBVZH
X-Received: by 2002:ac2:4ac1:: with SMTP id m1mr12884551lfp.182.1572885852141;
        Mon, 04 Nov 2019 08:44:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572885852; cv=none;
        d=google.com; s=arc-20160816;
        b=yKo0FqOeemckuxf4F6H+yvJ9GfqLtjfLZONEkoftWxl3+2Ra1JQHn/pt0waAABKsMg
         gcpoaLOaV7dgPM3DX2HoU4eJOJyYMnZhuyny/vB9/AVRs1Q9IHjbJORaNze8j15ubA77
         dtz3He9552QElOUQSjO2u2n55A5HChYtsgFbqPYn3Fr4G8f2h1Z4NvhzfOvXDpZ+ywX7
         kbaIxHkUN0hBT0a28HGvxsSsCa7M1A3MUZ/KIWhoq1msP1pVu1c4VZAuZc++O9QVTZSP
         9sdXKJ+jXr5vQf/g+ybb9VaVzyKAvc5+n/GI19Au3JDmWbHdQv3Saa/ngN+YkFQiuJaK
         2Xdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=0t94XLffreVVovHGukxf8hICR+94LpUO6Px1WI34vBE=;
        b=JYIGz6sYXhl0E76pvvTUM5ZF9M0oG4rWgwCeGc+MtnMYY8BgVJkaHsUesrma2+E4vb
         lQfehzhd6D09QpH0Zgs64Rzh0ocRTIkUFIWM686BRT6hW0auc989dYS8mVndb39rZNpC
         KDQngMOK4dJBjBpGjLQuVd813F+m+VUfJ+W+6FIWTFLPhr+X+Di1bDmOY4pc8l/vdBPG
         JTI+YE9j6dRnvFV+FHnyX/p3btS7/lOhA6njBqtP8zs0YLT6dgflQL77B/n4qy6SHrMF
         Do9T+By8cdFaRg+hzA1fnU2TFyIkhVeK0YSMTg5uez42eZVkOjj8lqN8IHdOaELZizj6
         yZ4Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AcFXtNo0;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id k20si479255ljg.0.2019.11.04.08.44.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Nov 2019 08:44:12 -0800 (PST)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AcFXtNo0;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x441.google.com with SMTP id a11so17881220wra.6
        for <outreachy-kernel@googlegroups.com>; Mon, 04 Nov 2019 08:44:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=0t94XLffreVVovHGukxf8hICR+94LpUO6Px1WI34vBE=;
        b=AcFXtNo0+1Chg6ruZiD0XY+IdNfhv36E7xA73VrgzEJE997OtyuA97IC5jhjJfsGu3
         47iEsxh/TcwAuANiseYMYuZXuQEi3IRW1BZdRi5WGnuL/Vq/ITSSMYylJ+Fc+Oolnhtm
         5WuHyw73MZEBQL8SVVy0FKkmClvWc1mYZbctnnf63FIpjur3DFSM1wDa/UJTIHOhk1c5
         RA7jw7Nfgou10yM84n0tipylKj8b+i6f91pvE5R8GsCBH31/omO46FqNYhdFYXeHOtwH
         EJSHO58d9thdkRpzbMuei09+dX8AvcIS2cSSWKf0Vn7DbGCik0oCIjhdLODmwDAbozot
         dIbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=0t94XLffreVVovHGukxf8hICR+94LpUO6Px1WI34vBE=;
        b=UNcIXDyyDowZ+kFE3Yp8813Q/6kn5Xk6AKqKh2oX55dQUaZT2pxVO5iA4RVVuWUvT2
         MZ+GAdBupWjfcjX6FLCZNWfBOhXQSaoJR8shVBp6U+crapvuuAKxnDreaf1Sbog5+B0Q
         mBUps3m+/fPSYQWSX8BNkBu+S4mtEas7ZcNSRcWg6jqqS/adp9NsGPsJEG4sBYvkPyd9
         Tq0ZMpiEEpT5odCfhly3zUnNMv2F4bAWhmQjBBp9O1PwZBlC0rQD7oMKXz/7aAWDKz53
         9UkTxxuRKyl0Ab2Li7SUS8l881cA4uP8w0jA+IrMv3tC9xGvk1Nov720SV84Wtu0tVnw
         i3Ww==
X-Gm-Message-State: APjAAAWfbTTC0s+G1YJ9/MghBat6K7qLPYfzTOW2o5bQphtRTCF9ZZw7
	tqjhxrquuXTE070tZiJpMyr3Pl5L8mJg
X-Received: by 2002:adf:d1a3:: with SMTP id w3mr25891043wrc.9.1572885851234;
        Mon, 04 Nov 2019 08:44:11 -0800 (PST)
Return-Path: <jbi.octave@gmail.com>
Received: from buntux.lan (79-73-36-243.dynamic.dsl.as9105.com. [79.73.36.243])
        by smtp.googlemail.com with ESMTPSA id i3sm17371844wrw.69.2019.11.04.08.44.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Nov 2019 08:44:10 -0800 (PST)
From: Jules Irenge <jbi.octave@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	Jules Irenge <jbi.octave@gmail.com>
Subject: [PATCH] staging: rts5208: rewrite macro with GNU extension __auto_type
Date: Mon,  4 Nov 2019 16:44:00 +0000
Message-Id: <20191104164400.9935-1-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.17.1

Rewrite macro function with GNU extension __auto_type
to remove issue detected by checkpatch tool.
CHECK: MACRO argument reuse - possible side-effects?

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 drivers/staging/rts5208/rtsx_chip.h | 92 +++++++++++++++++------------
 1 file changed, 55 insertions(+), 37 deletions(-)

diff --git a/drivers/staging/rts5208/rtsx_chip.h b/drivers/staging/rts5208/rtsx_chip.h
index bac65784d4a1..4b986d5c68da 100644
--- a/drivers/staging/rts5208/rtsx_chip.h
+++ b/drivers/staging/rts5208/rtsx_chip.h
@@ -386,23 +386,31 @@ struct zone_entry {
 
 /* SD card */
 #define CHK_SD(sd_card)			(((sd_card)->sd_type & 0xFF) == TYPE_SD)
-#define CHK_SD_HS(sd_card)		(CHK_SD(sd_card) && \
-					 ((sd_card)->sd_type & SD_HS))
-#define CHK_SD_SDR50(sd_card)		(CHK_SD(sd_card) && \
-					 ((sd_card)->sd_type & SD_SDR50))
-#define CHK_SD_DDR50(sd_card)		(CHK_SD(sd_card) && \
-					 ((sd_card)->sd_type & SD_DDR50))
-#define CHK_SD_SDR104(sd_card)		(CHK_SD(sd_card) && \
-					 ((sd_card)->sd_type & SD_SDR104))
-#define CHK_SD_HCXC(sd_card)		(CHK_SD(sd_card) && \
-					 ((sd_card)->sd_type & SD_HCXC))
-#define CHK_SD_HC(sd_card)		(CHK_SD_HCXC(sd_card) && \
-					 ((sd_card)->capacity <= 0x4000000))
-#define CHK_SD_XC(sd_card)		(CHK_SD_HCXC(sd_card) && \
-					 ((sd_card)->capacity > 0x4000000))
-#define CHK_SD30_SPEED(sd_card)		(CHK_SD_SDR50(sd_card) || \
-					 CHK_SD_DDR50(sd_card) || \
-					 CHK_SD_SDR104(sd_card))
+#define CHK_SD_HS(sd_card)\
+	({__auto_type _sd = sd_card; CHK_SD(_sd) && \
+					 (_sd->sd_type & SD_HS); })
+#define CHK_SD_SDR50(sd_card)\
+	({__auto_type _sd = sd_card; CHK_SD(_sd) && \
+					 (_sd->sd_type & SD_SDR50); })
+#define CHK_SD_DDR50(sd_card)\
+	({__auto_type _sd = sd_card; CHK_SD(_sd) && \
+					 (_sd->sd_type & SD_DDR50); })
+#define CHK_SD_SDR104(sd_card)\
+	({__auto_type _sd = sd_card; CHK_SD(_sd) && \
+					 (_sd->sd_type & SD_SDR104); })
+#define CHK_SD_HCXC(sd_card)\
+	({__auto_type _sd = sd_card; CHK_SD(_sd) && \
+					 (_sd->sd_type & SD_HCXC); })
+#define CHK_SD_HC(sd_card)\
+	({__auto_type _sd = sd_card; CHK_SD_HCXC(_sd) && \
+					(_sd->capacity <= 0x4000000); })
+#define CHK_SD_XC(sd_card)\
+	({__auto_type _sd = sd_card; CHK_SD_HCXC(_sd) && \
+					 (_sd->capacity > 0x4000000); })
+#define CHK_SD30_SPEED(sd_card)\
+	({__auto_type _sd = sd_card; CHK_SD_SDR50(_sd) || \
+					CHK_SD_DDR50(_sd) || \
+					CHK_SD_SDR104(_sd); })
 
 #define SET_SD(sd_card)			((sd_card)->sd_type = TYPE_SD)
 #define SET_SD_HS(sd_card)		((sd_card)->sd_type |= SD_HS)
@@ -420,18 +428,24 @@ struct zone_entry {
 /* MMC card */
 #define CHK_MMC(sd_card)		(((sd_card)->sd_type & 0xFF) == \
 					 TYPE_MMC)
-#define CHK_MMC_26M(sd_card)		(CHK_MMC(sd_card) && \
-					 ((sd_card)->sd_type & MMC_26M))
-#define CHK_MMC_52M(sd_card)		(CHK_MMC(sd_card) && \
-					 ((sd_card)->sd_type & MMC_52M))
-#define CHK_MMC_4BIT(sd_card)		(CHK_MMC(sd_card) && \
-					 ((sd_card)->sd_type & MMC_4BIT))
-#define CHK_MMC_8BIT(sd_card)		(CHK_MMC(sd_card) && \
-					 ((sd_card)->sd_type & MMC_8BIT))
-#define CHK_MMC_SECTOR_MODE(sd_card)	(CHK_MMC(sd_card) && \
-					 ((sd_card)->sd_type & MMC_SECTOR_MODE))
-#define CHK_MMC_DDR52(sd_card)		(CHK_MMC(sd_card) && \
-					 ((sd_card)->sd_type & MMC_DDR52))
+#define CHK_MMC_26M(sd_card)\
+	({__auto_type _sd = sd_card; CHK_MMC(_sd) && \
+					 (_sd->sd_type & MMC_26M); })
+#define CHK_MMC_52M(sd_card)\
+	({__auto_type _sd = sd_card; CHK_MMC(_sd) && \
+					 (_sd->sd_type & MMC_52M); })
+#define CHK_MMC_4BIT(sd_card)\
+	({__auto_type _sd = sd_card; CHK_MMC(_sd) && \
+					 (_sd->sd_type & MMC_4BIT); })
+#define CHK_MMC_8BIT(sd_card)\
+	({__auto_type _sd = sd_card; CHK_MMC(_sd) && \
+	 (_sd->sd_type & MMC_8BIT); })
+#define CHK_MMC_SECTOR_MODE(sd_card)\
+	({__auto_type _sd = sd_card; CHK_MMC(_sd) && \
+					 (_sd->sd_type & MMC_SECTOR_MODE); })
+#define CHK_MMC_DDR52(sd_card)\
+	({__auto_type _sd = sd_card; CHK_MMC(_sd) && \
+					 (_sd->sd_type & MMC_DDR52); })
 
 #define SET_MMC(sd_card)		((sd_card)->sd_type = TYPE_MMC)
 #define SET_MMC_26M(sd_card)		((sd_card)->sd_type |= MMC_26M)
@@ -448,8 +462,9 @@ struct zone_entry {
 #define CLR_MMC_SECTOR_MODE(sd_card)	((sd_card)->sd_type &= ~MMC_SECTOR_MODE)
 #define CLR_MMC_DDR52(sd_card)		((sd_card)->sd_type &= ~MMC_DDR52)
 
-#define CHK_MMC_HS(sd_card)		(CHK_MMC_52M(sd_card) && \
-					 CHK_MMC_26M(sd_card))
+#define CHK_MMC_HS(sd_card)\
+	({__auto_type _sd = sd_card; CHK_MMC_52M(_sd) && \
+					 CHK_MMC_26M(_sd); })
 #define CLR_MMC_HS(sd_card)			\
 do {						\
 	CLR_MMC_DDR52(sd_card);			\
@@ -560,12 +575,15 @@ struct xd_info {
 #define HG8BIT			(MS_HG | MS_8BIT)
 
 #define CHK_MSPRO(ms_card)	(((ms_card)->ms_type & 0xFF) == TYPE_MSPRO)
-#define CHK_HG8BIT(ms_card)	(CHK_MSPRO(ms_card) && \
-				 (((ms_card)->ms_type & HG8BIT) == HG8BIT))
-#define CHK_MSXC(ms_card)	(CHK_MSPRO(ms_card) && \
-				 ((ms_card)->ms_type & MS_XC))
-#define CHK_MSHG(ms_card)	(CHK_MSPRO(ms_card) && \
-				 ((ms_card)->ms_type & MS_HG))
+#define CHK_HG8BIT(ms_card)\
+	({__auto_type _ms = ms_card; CHK_MSPRO(_ms) && \
+		((_ms->ms_type & HG8BIT) == HG8BIT); })
+#define CHK_MSXC(ms_card)\
+	({__auto_type _ms = ms_card; CHK_MSPRO(_ms) && \
+				 ((_ms)->ms_type & MS_XC); })
+#define CHK_MSHG(ms_card)\
+	({__auto_type _ms = ms_card; CHK_MSPRO(_ms) && \
+				 ((_ms)->ms_type & MS_HG); })
 
 #define CHK_MS8BIT(ms_card)	(((ms_card)->ms_type & MS_8BIT))
 #define CHK_MS4BIT(ms_card)	(((ms_card)->ms_type & MS_4BIT))
-- 
2.17.1


