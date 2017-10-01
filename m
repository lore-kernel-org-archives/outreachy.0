X-GM-THRID: 6471963734455615488
X-Received: by 10.28.212.14 with SMTP id l14mr1468609wmg.11.1506871481961;
        Sun, 01 Oct 2017 08:24:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.195.40 with SMTP id n37ls1802242wrf.2.gmail; Sun, 01 Oct
 2017 08:24:41 -0700 (PDT)
X-Received: by 10.28.55.209 with SMTP id e200mr1481512wma.0.1506871481008;
        Sun, 01 Oct 2017 08:24:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506871481; cv=none;
        d=google.com; s=arc-20160816;
        b=CiqBbmDcvoagOi+wQcpsh8udlByARYbXjx5uXGzCYeEQCyHD1KrkmPnKmXwdx1hfcP
         5QHT9qBdXeMxEaPFfOrrYVPtxuwp/8fGFIbZpDASfLuhcNEes2R35WMVKNNK0omaUtmH
         Ektf2BJN0MuVP/IxnOcEbX6o0hFXJ7M6l/9Xcny6Mer810IDtrs/gbLRBAmgyBVAMH2I
         e8F8P8upwA7D8naDy6WYxsCoJqF5mTkHWLZ7+1d5/AbEAhAN8658nT98fTfcKp7czKp2
         ZGFAiW4gBYhYkSBvzAKbcfqhvjcuN/SCweGdowlWoMEKoKG8LE/XmDOYgczN5Bt+UYFH
         tNAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=BZM6xZT8xHG10EURF01X8SFBZHhHTD+RYSVvQU108OI=;
        b=dXG6Ar5KWuFyS2XOjo1+LlNKX1uLTQN/UgYs4TBRCLtijNfGONpa4dp/T/Tc6kTn2k
         PSHUILe1hYOFeoAJKm/gE1puRgBZQJskTbT+78tZRfMoeNaCjuElHwDZKv7YAJsxvAV7
         Nqiy5IDsmbWjvfVkcR0ktU/CEa05pG/5uMh6iYJtYVB1Nk4zPxLQEGQqC8B/y3CCJ90q
         CO9voKT6XQt8SzBw3tk6zRS0KEaQW76W/nTrD1oG1jPa5jM5m5T3Pwcs99vLE3YQGlrO
         kayy/YZ7pbQ+AiW7yOUo2Y8hj5OFilJfPYJpk8/26GgRqj19lzHFyQeiohlYIJBInIAP
         2mbw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nJsAJTjL;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::241 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-wr0-x241.google.com (mail-wr0-x241.google.com. [2a00:1450:400c:c0c::241])
        by gmr-mx.google.com with ESMTPS id r65si865634wmf.2.2017.10.01.08.24.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Oct 2017 08:24:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::241 as permitted sender) client-ip=2a00:1450:400c:c0c::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nJsAJTjL;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::241 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x241.google.com with SMTP id 45so2259590wry.5
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Oct 2017 08:24:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=BZM6xZT8xHG10EURF01X8SFBZHhHTD+RYSVvQU108OI=;
        b=nJsAJTjLSguABPkgVzSqVjZMWqTj+BPEgpQUTbDdOxm8voyKvbS4f51ee42Opg1cf1
         BqlNnGPUR9SMHO9tJNf2D6FxktFcfXFKMBbaUST/jqZxKzL7s/9EB9dNpcRJH3BUJvO4
         pik8IyXvZNfdgkF1HeDUyOtEhsaxn7FjCm+b1Itou8OxvRF/rjpIxcDrSuuisPWhStty
         wS5ng3HN5SNhMcq8/LhADMHC0b4wP0LG//3JbDgimzGEUg4/4tbkQzTXZ+zEU0MlsjLo
         HplkcqKxNq9JEUVHfqYS/P6ZR6poy15XydZT3Ad4N2/L/x0QcvP/oVc3qPNY6WErlvqU
         53vQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=BZM6xZT8xHG10EURF01X8SFBZHhHTD+RYSVvQU108OI=;
        b=f2LmUexi6n4qwfuaw9DROxwhAgygmcFx5nwx3zarFLHRYFzEjiByCgV1qdob9UZsA7
         LhPsKvvAu5cfcdSG2qE9TSUfx8Kju3cCxzfSeBAHaK+m5e+Qx67z3VpPRupCZCdPGNNd
         2fWsWIk/28Yc4xt7bZ10vkXF9sG+SnOdgfMjfYd6Xer1gLMo+QIjNVudlV7ynMNH0D68
         wRl2FhCgUOt1bvZwUgJQpshowa+d9T/PzyqqvR/xEmlnJpndiZv5rsEoZvwHnM5SkZ9q
         +MqSWB5vKck88JHcpIUmIcjRwbXqt/+ZRNr14jt6PwfKqvRxRepimcbHaa7FdBT0p8G6
         cH6Q==
X-Gm-Message-State: AHPjjUjedojRu9DOiDhV/Dy13CtQLNhk9B3H8dXu+M5VLcHsw7wAYMfn
	ZskD+hb6oI1d7ox6LeRMmKvXEw==
X-Google-Smtp-Source: AOwi7QDOKRtHZuS/c+BbZSEQ/KTeEZchJvpTNeFpa6QzelahCaf/AN3v/X9P1iZsx6M3vt4CqWNByQ==
X-Received: by 10.223.186.201 with SMTP id w9mr11718224wrg.230.1506871480702;
        Sun, 01 Oct 2017 08:24:40 -0700 (PDT)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from fireworks ([86.127.134.154])
        by smtp.gmail.com with ESMTPSA id z192sm9098366wmz.28.2017.10.01.08.24.39
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 01 Oct 2017 08:24:40 -0700 (PDT)
From: Georgiana Chelu <georgiana.chelu93@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] Staging: rtl8723bs: Use kstrto<type> instead of single variable sscanf
Date: Sun,  1 Oct 2017 18:24:28 +0300
Message-Id: <20171001152428.11054-1-georgiana.chelu93@gmail.com>
X-Mailer: git-send-email 2.11.0

Use kstro<type> instead of single variable sscanf to
convert a string to the appropriate integer type.
Also, check the return value.

Issue found by checkpatch.pl script:
Prefer kstrto<type> to single variable sscanf

Signed-off-by: Georgiana Chelu <georgiana.chelu93@gmail.com>
---
 drivers/staging/rtl8723bs/os_dep/rtw_proc.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/rtw_proc.c b/drivers/staging/rtl8723bs/os_dep/rtw_proc.c
index 92277457aba4..58eb50aa8098 100644
--- a/drivers/staging/rtl8723bs/os_dep/rtw_proc.c
+++ b/drivers/staging/rtl8723bs/os_dep/rtw_proc.c
@@ -70,7 +70,11 @@ static ssize_t proc_set_log_level(struct file *file, const char __user *buffer,
 		return -EINVAL;
 
 	if (buffer && !copy_from_user(tmp, buffer, sizeof(tmp))) {
-		sscanf(tmp, "%d ", &log_level);
+		int num = kstrtoint(tmp, 10, &log_level);
+
+		if (num != 1)
+			return count;
+
 		if (log_level >= _drv_always_ && log_level <= _drv_debug_)
 		{
 			GlobalDebugLevel = log_level;
@@ -476,7 +480,7 @@ ssize_t proc_set_odm_dbg_comp(struct file *file, const char __user *buffer, size
 
 	if (buffer && !copy_from_user(tmp, buffer, sizeof(tmp))) {
 
-		int num = sscanf(tmp, "%llx", &dbg_comp);
+		int num = kstrtoull(tmp, 16, &dbg_comp);
 
 		if (num != 1)
 			return count;
@@ -510,7 +514,7 @@ ssize_t proc_set_odm_dbg_level(struct file *file, const char __user *buffer, siz
 
 	if (buffer && !copy_from_user(tmp, buffer, sizeof(tmp))) {
 
-		int num = sscanf(tmp, "%u", &dbg_level);
+		int num = kstrtouint(tmp, 10, &dbg_level);
 
 		if (num != 1)
 			return count;
@@ -544,7 +548,7 @@ static ssize_t proc_set_odm_ability(struct file *file, const char __user *buffer
 
 	if (buffer && !copy_from_user(tmp, buffer, sizeof(tmp))) {
 
-		int num = sscanf(tmp, "%x", &ability);
+		int num = kstrtouint(tmp, 16, &ability);
 
 		if (num != 1)
 			return count;
-- 
2.11.0


