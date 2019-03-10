X-GM-THRID: 6666820090157072384
X-Received: by 2002:a25:fd6:: with SMTP id 205mr844673ybp.32.1552240014892;
        Sun, 10 Mar 2019 10:46:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:589:: with SMTP id 131ls173467ybf.7.gmail; Sun, 10 Mar
 2019 10:46:54 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxabvz0GZDmjCYRuhQcbNU2Vy6ntXFQP4tuIlMXI1pHNl/Avk7o7xp7FRWEB/urJHCevOtM
X-Received: by 2002:a25:1c2:: with SMTP id 185mr13733577ybb.87.1552240014398;
        Sun, 10 Mar 2019 10:46:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552240014; cv=none;
        d=google.com; s=arc-20160816;
        b=MUYrgobzfUyGeXQwosystI7NqnRIzQG6gnBTnDXvZMid0BU9nIGIYZrpy+43l4Ubr6
         NLi3iBH5M07KczT8XIDbasTwgMZmpFtJDRcXyIletlijnFkEKBivDFD1ptbT5AEBqUGN
         E7yCTwCzQX38Z/zV0MWoEFU12VrFnktjZneYbv9wZqin3VnUYxfVS3U17OfCOczhJPy2
         gPRYiiGtfpV+ozMBJRrIhxHguFuOJiqdFJSwnufxD+RTFFTQlhKobKYqXp4wyWLWgfVn
         fyUZ/V89rumQf/JsCA9r4IR/bqZ16PD/r9UB/BGPV0Cy+lHkKGTuHZQ0inzpkuOwvawk
         YVJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=TcYVedUcGpZt9Vkr7kzQHCz8bPhmCT1zEAAwXk9JYZY=;
        b=J7rBXbH9w0et9dfFZArdS/DBfAp6Mtd9zRGHbQtFKQg0b6Q3K5YpVKI9tBjEWuJtSW
         eOuS91gjzMoZ7MYmYarHo6sqgz9mH0bgjhDAU5StNAIMjcMc5zhQLKlhulVPUtBr8jeQ
         hwh0Dm7RBHNbKu9ORfyKi6NKuOU9mlSr/hkoSekP0RAt3j+CJ6GBwTM+iQGjmp5Z/Tzn
         6mEN9rAHCN1oE2NXmU0EVhDfHcXxDKeP4f5gxswOm1orveHpBNrlj8xeDoI2C2IZmRBz
         oI4W33nffdzkSpOP8gn/H1sy2EG7N+r03NEn5cfUY9kqXb8JP1g0u84oI8pGDvqSUBvY
         8/KA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cZOC05z2;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id s11si125001ywg.3.2019.03.10.10.46.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 10 Mar 2019 10:46:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cZOC05z2;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id b2so2187677pgl.9
        for <outreachy-kernel@googlegroups.com>; Sun, 10 Mar 2019 10:46:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=TcYVedUcGpZt9Vkr7kzQHCz8bPhmCT1zEAAwXk9JYZY=;
        b=cZOC05z261edQwCXo2/gPf8ASNkEY+mPFEHXCze+WoQZWRh0V2GBz/KDR+Vmzo5TpK
         6+ssFALMqO+7GbNDLz5IbBqm/H7PLa96jkd5auoQiRb05cI76Yseq5LFjZJGkw/SgD+W
         9F2408vPObZvhuGdyb7HWPn6uPxFdYqqSC8vJu+K/yrrVs/Ljq7a4aia98dg+UvjvoSb
         13rZO4ZqdUiMrYtABJr1eflrmXERG8Xcv3yQwpbQB7zpJ8j3rG3EtHn3jdgboU5++4qG
         xZSsWQsgi4mn7ZryyOQ6uIW5ea/hLT7/2MT0A2F+Bgq8/gebZHyFnHmbp9McFXQi4qKy
         H91w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=TcYVedUcGpZt9Vkr7kzQHCz8bPhmCT1zEAAwXk9JYZY=;
        b=gRRHfFktXFxMpwYrIzm5UyASl5gwevTid9QzgvblVgGvUkB5EUWu9rlWCej2+UxQ4i
         M0BOoApds6lDrM8wThK3/uQKWIa/UjmqqtAnHqLE+6dvybN6IX9iwtsKyBmFptRUOuEE
         w2jyjWSE8U6VoyXnruvYAU6XefUeV7z8/u2XTNiHJwWxD7/RUU+6eDkfZ7Lg1AanG3JE
         ifRtBpDKKXbMH9y4g1rVUnezwQVP9hoXXFP49hZLuJbtxrUWNd8WVGWQ8+xcvVgaPrdB
         cwqykwpXbpatORzR2WeS6HlS/Fht0VNTjlGiY1eGEXvQ56+//hMJ+I9m6hrrK9YlKd66
         irWg==
X-Gm-Message-State: APjAAAUvAOkBk4E/aqzjqCW+V5nlRAL/VAGaLv0p7nm7tRuS2C2DSPct
	0sTLGAfLrf7AslrWswXwv+wyuEr7zdM=
X-Received: by 2002:a62:5385:: with SMTP id h127mr28686797pfb.10.1552240013862;
        Sun, 10 Mar 2019 10:46:53 -0700 (PDT)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from localhost.localdomain ([183.83.84.116])
        by smtp.googlemail.com with ESMTPSA id h184sm7340275pfc.78.2019.03.10.10.46.52
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 10 Mar 2019 10:46:53 -0700 (PDT)
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2 2/5] Staging: rtl8192u: Remove typedef for struct _IbssParms
Date: Sun, 10 Mar 2019 23:16:32 +0530
Message-Id: <20190310174635.16923-3-bhanusreemahesh@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190310174635.16923-1-bhanusreemahesh@gmail.com>
References: <20190310174635.16923-1-bhanusreemahesh@gmail.com>

-Avoid typedefs for structure types to maintain kernel coding style.
-Remove typedefs IbssParms and *PIbssParms of struct _IbssParms.
-Change Structure name _IbssParms to ibss_parms to maintain Linux kernel Coding Style.
-Replace occurences of IbssParms to struct ibss_parms.

Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211.h b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
index ce79b8321961..735e86cc6adc 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211.h
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
@@ -1506,9 +1506,9 @@ typedef enum _RT_JOIN_ACTION {
 	RT_NO_ACTION  = 4,
 } RT_JOIN_ACTION;
 
-typedef struct _IbssParms {
+struct ibss_parms {
 	u16   atimWin;
-} IbssParms, *PIbssParms;
+};
 #define MAX_NUM_RATES	264 // Max num of support rates element: 8,  Max num of ext. support rate: 255. 061122, by rcnjko.
 
 // RF state.
@@ -1554,7 +1554,7 @@ typedef struct _RT_POWER_SAVE_CONTROL {
 	struct octet_string			tmpSuppRateSet;
 	u8					tmpSuppRateBuf[MAX_NUM_RATES];
 	bool				bTmpSuppRate;
-	IbssParms				tmpIbpm;
+	struct ibss_parms				tmpIbpm;
 	bool				bTmpIbpm;
 
 	//
-- 
2.17.1


