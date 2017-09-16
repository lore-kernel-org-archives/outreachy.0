X-GM-THRID: 6466329510613614592
X-Received: by 10.176.75.198 with SMTP id b6mr17802052uag.64.1505559681434;
        Sat, 16 Sep 2017 04:01:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.147.195 with SMTP id v186ls7858488iod.2.gmail; Sat, 16 Sep
 2017 04:01:20 -0700 (PDT)
X-Received: by 10.101.70.203 with SMTP id n11mr17073888pgr.102.1505559680929;
        Sat, 16 Sep 2017 04:01:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505559680; cv=none;
        d=google.com; s=arc-20160816;
        b=ipJv3yeFBXXFhha8n+Lvvcz+Ea0ktifUHr0mSM3nkUQEbu3C3AGkdJC3BO4dFK9hm0
         CkUdJWy10emqo25rz0C/PH+q5c6bmnHJyY8EQoj3QGBMFnX7mYH6Qpw7jGbGLkWXYal/
         RwXOdRf6c+PpIEkr+tuEHcZQk75YykTE+YhD78PcQOIxC63nE8pyikGMf9u2SErARqUL
         LMzJl57dfS83ldOmQNRU6QF7h3Vl/zQk7rv2vyR8CYYoQgCTixtmERSP8yyYbYzUVoMr
         ull0VNNesATuLHcWRQJxa3HZmzc5CJdJWvL9mMjFSstJnXhaZzLm1Gi3JEJvME3nN3MG
         Zj3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature:arc-authentication-results;
        bh=zayo3hOe1V4XRjYEQTDANX1AmoL4cnhamxwvb/Wl/qU=;
        b=GnUNzCfe4wIUznu66t5PUfxAtg2tgoynOnmxh0JoaUMPHpm6wbI8xwL6kdHwmuqkrG
         8LwhWOk0kX3Z7yWvsYivAbmWzlHyL5U4ULF7ZoK85V0rl6rr0RAH41BnCjiTlembbnAY
         7Udg0RzrI/1DEn1i77dda82I6yZtk6/XoR+CkiJKKpuEFUM/fBveINcoyBH2zYbAhAFP
         qwDgYegCsxqGQrw3nq7k00dgB8hHlO7YGyUK5ruhUdUP5KL/3/2eZQF8b+oXrbmkkJmC
         mzLuU4aLej1GkcS9aUzDHXTBV2sA4KbBLCsJb0zUcp2ammGyMtVmSYfPBsxWJlnNuewa
         Enww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vgInx7WA;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id e63si270785pfm.12.2017.09.16.04.01.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Sep 2017 04:01:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vgInx7WA;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id m30so2620076pgn.5
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Sep 2017 04:01:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=zayo3hOe1V4XRjYEQTDANX1AmoL4cnhamxwvb/Wl/qU=;
        b=vgInx7WAKI72BPUoV2Amc62FP6L58VllaWNJAowQBh34mF4qxwIHntkqE6Np4BO0t7
         47OrcoHxjhwqTL9eldbV8rMd1K6eGwv9FMU4PHZ9bdUzt/DvggRzUaVvtSmlASDsGKwE
         h3p3NFiht+VFAGgEylI/hPH6NUhWw+hiAl/VEAbbawgNlfAg73WJ13lUWQ6zCuCyYV1j
         ePLQe7cRzaFC3znmYhKDqnpgQyllfX6IQAmMsVjHrlljnLaByGQZFHgZ6dnm2MS97Pza
         sUp8lzgr7MiFN6In79gdM467w/zj/2ggaB0/weSrvxV6PBoI9eNL0M3sbMf36Yqo35N2
         wtKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=zayo3hOe1V4XRjYEQTDANX1AmoL4cnhamxwvb/Wl/qU=;
        b=rb/bMld3d8PpVrOrumY/3eJiuoiK5gpCe0WJHhHW1dvovEPN2s7iQKc3uTEn/8XUEN
         5Fo/UqGBWgJml8w7y0M1VddDbctXOK7z8/Bj7skXM1NPYhLjilkghaeymdewjdWd5+1W
         ONTKm2Qoj6jftdfahQCrb0xlwcjcpf9SXzLA+SLACZrbtLZGBp/Iceg07ISMk24cFqia
         t4lHgFpfQGYS61XdcJOFClSa2DmdD4mxCZDZcnTHmMLxLP+3TyeMKgg1KFlTMesYJUHs
         AURexJ16cDSmHCgLa0U7zJZGVv4zNu6728nA7CqxOEEAdVaiv5NpWUr7v10v2qjE0vw3
         4hMw==
X-Gm-Message-State: AHPjjUidxFQ5O7SzE2zeQoUwE1ACqThfuJwkP3UkbW3thTV2u6Bm/1rW
	4WsA7XM8J18ADg==
X-Google-Smtp-Source: ADKCNb5pImF3B5nvoHfk8juZDKCsnEd8co3yfO4sZLsRkVOa4nRT4pKawyIstrGG85LD2ASHnByqNg==
X-Received: by 10.84.129.68 with SMTP id 62mr31371631plb.186.1505559680672;
        Sat, 16 Sep 2017 04:01:20 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([27.56.167.173])
        by smtp.gmail.com with ESMTPSA id z24sm6988631pfk.3.2017.09.16.04.01.19
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 16 Sep 2017 04:01:20 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH 04/11] staging: rtl8192u: remove space before ')'
Date: Sat, 16 Sep 2017 16:30:47 +0530
Message-Id: <d354643eb8f00c2079b60518cfa9933563011e87.1505559000.git.aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1505559000.git.aastha.gupta4104@gmail.com>
References: <cover.1505559000.git.aastha.gupta4104@gmail.com>
In-Reply-To: <cover.1505559000.git.aastha.gupta4104@gmail.com>
References: <cover.1505559000.git.aastha.gupta4104@gmail.com>

Fixes checkpatch.pl error:
ERROR: space prohibited before that close parenthesis ')'

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211.h b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
index 3f040cc..61b384d 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211.h
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
@@ -412,8 +412,8 @@ typedef struct ieee_param {
 #define IEEE80211_QCTL_TID              0x000F
 
 #define	FC_QOS_BIT					BIT(7)
-#define IsDataFrame(pdu)			(((pdu[0] & 0x0C) == 0x08) ? true : false )
-#define	IsLegacyDataFrame(pdu)	(IsDataFrame(pdu) && (!(pdu[0] & FC_QOS_BIT)) )
+#define IsDataFrame(pdu)			(((pdu[0] & 0x0C) == 0x08) ? true : false)
+#define	IsLegacyDataFrame(pdu)	(IsDataFrame(pdu) && (!(pdu[0] & FC_QOS_BIT)))
 //added by wb. Is this right?
 #define IsQoSDataFrame(pframe)  ((*(u16 *)pframe & (IEEE80211_STYPE_QOS_DATA | IEEE80211_FTYPE_DATA)) == (IEEE80211_STYPE_QOS_DATA | IEEE80211_FTYPE_DATA))
 #define Frame_Order(pframe)     (*(u16 *)pframe & IEEE80211_FCTL_ORDER)
-- 
2.7.4


