X-GM-THRID: 6668981360875536384
X-Received: by 2002:a9d:74d8:: with SMTP id a24mr4660918otl.43.1552743363898;
        Sat, 16 Mar 2019 06:36:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:bbc5:: with SMTP id l188ls1076546oif.6.gmail; Sat, 16
 Mar 2019 06:36:03 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwAcly1podmnKFzAMgKnNqffFpE0Q19LwH4MiCyDR8v1IZlMqqZSt4wWyKv1TeBnGLmWuSR
X-Received: by 2002:aca:fc83:: with SMTP id a125mr1260398oii.20.1552743363299;
        Sat, 16 Mar 2019 06:36:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552743363; cv=none;
        d=google.com; s=arc-20160816;
        b=Ys5uO96K9exRvdtyHQ1N94sXHIZvQHJRYshdJ2GFW0aj3OhaWYJbBnEUCl6no9kziv
         4TOM7DWD/8i/K/RubdpOU/0r14/in5DQRs8QUXng2SpO8zZLnBQemDHggHfXLgWKzad1
         5od4WWoVO9OsvRQG7uu4BhnUKMn81SU/P0KukTXBqNtSZZbm5pvqrqdFdfAgGqddYTqp
         wbnFJoyak9mFZjBny/Aui84LMix8ZMXVweCpb1Y31DF1KMYJ2x/bkExf4h5aivLQy1ay
         HMbcdkT49pcqKD8fiKxj+S4uJvmQjNKdS4zzQeuIxvABlD6lB1vHgyokPcNGh6Yitol9
         KMwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=tJOHqoxQh7BQ2nqXwpAudyRo/+cLEHhkGMRY1iX4pyI=;
        b=eDfmStX+LLZzrWsmV+3Qfl8tuKm9YSTleEcTND5t4GTRmGUP6qbmABmmvVHttPTdQ8
         T6zfrCpI9sK/QuA7qntxIzxGtF34GdZGiBvUChVJjzCLAqgpofJYKI8jmg8gR5dzMDdx
         QPpmHgockg+vXVSB363vFIaV79s5Ace61qgSadh11WCH/b3Q4spqvEac8yqrkyS6efgI
         0iBtfWVEShLo/M1JK7Fvcj8AybGvlZHAOtMJR+UW286M+6tvQkY3uR+uobBv3Pm4FZwP
         RNkh2xfFLDXKyUqId4WYMzszcOI0irwRA+waU8LCGE1wvW0+YhP3sGbvkniPzS505dFi
         uGVA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TnOcE573;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id l26si234509otf.0.2019.03.16.06.36.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 06:36:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TnOcE573;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x543.google.com with SMTP id b2so8325580pgl.9
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Mar 2019 06:36:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=tJOHqoxQh7BQ2nqXwpAudyRo/+cLEHhkGMRY1iX4pyI=;
        b=TnOcE573g2MRT5LsM2kq8St52qTaAe8duFufuYzzEotqxPQxnQsSj9ui4Mm8EdzKVu
         qM/5PkmnT6SojEeu5KMZ8AKyZ3lKx3fnKNdnAmiLNdeLYM+7jeIVEMuuwZjwxFUoKBee
         uN3CkkXGtCvPURIInMA52A7V7dcLzfkogZp+pQ9AGcjjwvy9jl2j/l5At6O6+WOHQtje
         LMTE3FwCcmwzyGLjEFjCNKpde2sT213/w/D1Q7u0BnjVjeha5i7vrGyWRGPEYpys9sTq
         JhTAZpxLqqCvNHRjLG9Ywyx5f2YWV/zFI4fOyFPe4U4z1dDzNuOn0wVyFdTkLoQTJLid
         6Dpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=tJOHqoxQh7BQ2nqXwpAudyRo/+cLEHhkGMRY1iX4pyI=;
        b=UWRn01yWV/XpDFXcaisvpKcce+9NfU8dqGERAjpRIHOM644tJOOriQwusjDgxvQ8ET
         aPQD1Ug3aDdQKWGNxiFJUf4Lt2BKNXqJX9z0+FCY2Z4i+YavZLcFoKk1JQNIAR1JvJBo
         c27eqnyhTqisouQ50NXEOaMxt64xeQ9RNRh10vfcsAiZvevYlc22GTIcCqikdDxLdBs0
         mzDPFX0f2VqTym7tDb5Zrgd6lV10B85OLLZfY4+bZnvLElZFdubvAxy+TlJSZdg2CkI/
         0OM7L/HnZQPmim7A8TrFK+1h/h36PsNyBEWF4AMDbmZaDR6DxbKDDd1ovfT2PJRJiscZ
         1X9w==
X-Gm-Message-State: APjAAAVrbF2zuhpW0T7ccUNQUXItu5DqLshmMmAaZKTO2KsmyUB2Hf5B
	zIg4tvqFzYdBWs0VzScvEjc=
X-Received: by 2002:a63:fc49:: with SMTP id r9mr8505815pgk.447.1552743362702;
        Sat, 16 Mar 2019 06:36:02 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from sanjana-Inspiron-5570.domain.name ([219.91.254.23])
        by smtp.googlemail.com with ESMTPSA id d23sm9503758pfn.69.2019.03.16.06.36.00
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 06:36:01 -0700 (PDT)
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Sanjana <sanjana99reddy99@gmail.com>
Subject: [PATCH 1/3] Staging: rtl8188eu: rtw_recv.c: fix a tab indent issue
Date: Sat, 16 Mar 2019 19:05:43 +0530
Message-Id: <20190316133543.8865-1-sanjana99reddy99@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190316133306.8747-1-sanjana99reddy99@gmail.com>
References: <20190316133306.8747-1-sanjana99reddy99@gmail.com>

From: Sanjana <sanjana99reddy99@gmail.com>

Fix a tab indent issue which removed warnings after compilation using
checkpatch.pl.

[WARNING]:No extra space at the beginning of a line.

Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_recv.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_recv.c b/drivers/staging/rtl8188eu/core/rtw_recv.c
index 1d83affc08ce..0d04057e6cf6 100644
--- a/drivers/staging/rtl8188eu/core/rtw_recv.c
+++ b/drivers/staging/rtl8188eu/core/rtw_recv.c
@@ -24,11 +24,11 @@ static u8 SNAP_ETH_TYPE_APPLETALK_AARP[2] = {0x80, 0xf3};
 
 /* Bridge-Tunnel header (for EtherTypes ETH_P_AARP and ETH_P_IPX) */
 static u8 rtw_bridge_tunnel_header[] = {
-       0xaa, 0xaa, 0x03, 0x00, 0x00, 0xf8
+	0xaa, 0xaa, 0x03, 0x00, 0x00, 0xf8
 };
 
 static u8 rtw_rfc1042_header[] = {
-       0xaa, 0xaa, 0x03, 0x00, 0x00, 0x00
+	0xaa, 0xaa, 0x03, 0x00, 0x00, 0x00
 };
 
 static void rtw_signal_stat_timer_hdl(struct timer_list *t);
-- 
2.17.1


