X-GM-THRID: 6668981360875536384
X-Received: by 2002:a25:d287:: with SMTP id j129mr5587928ybg.9.1552764353014;
        Sat, 16 Mar 2019 12:25:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a81:5888:: with SMTP id m130ls2852317ywb.9.gmail; Sat, 16
 Mar 2019 12:25:52 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzHa30VrKJWPbhKyndUD2xGP1WzfTNc9pe08/cRt9DCRbWdFyYfYqGcUHjSess19+CJjJGP
X-Received: by 2002:a81:9896:: with SMTP id p144mr4980379ywg.0.1552764352157;
        Sat, 16 Mar 2019 12:25:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552764352; cv=none;
        d=google.com; s=arc-20160816;
        b=oRxE0MgXquxiF6yde7XWJMSgbT08G1yq314ddVB1Yq8P/CTY0ChMU5rjCLLb2CiVN9
         WnFakCgeKJM9yTADDiGPINbTG1hdevfo65jFyiGdPOSfkY7L8HCzpCdhaZTKeFqWDHyw
         KIjJ66pENtv+gPpt/g8cyVd1ZaFvRjLdGKSYNy1WUir/6R3LuySjY0MNPFBsXbabjBnq
         lQXwHENcAILaP1lcf5lqvBkjf5WHzJyEiPsX96DwXALIc9t6Ed3ruzlQmGE8BseAv4hM
         mxdOXsWukBUB5P0LKUVRTTzHd3xY3uqmfZWpq43r2S0VfJ8wWaO2Es01Vp18FOrbQSkC
         7yfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=IwQ58i7wWegb3OtIvblQMnM2CgK8c8PSGoGKqy7kZok=;
        b=u7cVBPl0YLi/KwQjK5sf2zTtU1NbbrNs9i/BLcwTBIScO0n3I25J3jGpQQos/4UCFi
         MOW+IJkNXYYqyIHhJ7Dxmjg1Fmo7mO587FV08h0M+OGYkjF7EEyTGyQubGHTsrSJaT/T
         8fKKPH8FcC4L4lAr41xMJyGur52TqAW7mj3V0VroGeYIGRXO+FGt967TqR7hmud4Lx+L
         xWAAPgixA7YzbcCrr2j4TAlOIhfPSJkYFR9e81vqHnS050eHmdi4Zuf3xRCyGvFngCnr
         YZBsA7CpwcBPKmOd9/gzdbPsYknD4OVcd4+5ZNSdkJetimbN5mPdkDm4tzVC7LkckFTk
         P1oA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ukQwmmZG;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id l39si268150ywh.5.2019.03.16.12.25.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 12:25:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ukQwmmZG;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id l11so8656334pgq.10
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Mar 2019 12:25:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=IwQ58i7wWegb3OtIvblQMnM2CgK8c8PSGoGKqy7kZok=;
        b=ukQwmmZGmq7hLvTRj2hbIIAi9gmj4Gx1rw1YzsK4rvocxdRIiUO4nybpOeH5l7inCb
         unXfaKIO5E1+oQifNlgifI7qX9JUw3YgqE16Zo9latHz69mTjOYIwt+BnfSz+leU09/T
         qdw/q/1BRsdaujtF1m5+LISniQGh2N7qQqSzSUsKv1/diYlkKRrQ0KTW3OKPNhkJRPLZ
         59DdAOmrhafemnCg34Lw8aCg85R1o0m3rKR99V5j2ug/OWbHFgi3WsXiHsmJMFpl6H7O
         g+OjlXsX/zr85Sq0x5lcaleYs2PvV0L+PGcWBXhDV90Fz8mHRmTeMYiCayUo65Jzue0q
         YyoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=IwQ58i7wWegb3OtIvblQMnM2CgK8c8PSGoGKqy7kZok=;
        b=rmaZRvTbB0KF85Xg6KgSaalnoPgc0YZr/ShNQgQbSWAveTeg7JIgPTXRwR15OiClpi
         ZS+XqH7A+wLTtoT7tjzLNj7pgZDupbTA5Ofri1TLdo89oglPbtUaDRCExnp46FpTavtY
         WifUcHP8WcuMOeXg30YLCphMBrMvL9dRDmbBMX7YfumzRCazaErqTH2bD51ZPv0xeQyD
         HnTrYOo+WLJy9biK3psiIdSgXtSehH5HY3zd8uPJdZhJ0j049nU0C9XvNK1WNCEfhLAi
         Ssu4fSuUyPScrGTkWlQOTDjKjzUJRtq+0pN3l3VfNAySWG+NtytSckpFf6PzbtW5o5M/
         wPRw==
X-Gm-Message-State: APjAAAWibolwDheciadepehoKGYUM/dWMlWofnZ2JIB6N6c5j6waf38g
	s33c7dKNT0TKmkfU/wJezNA=
X-Received: by 2002:a65:518b:: with SMTP id h11mr9706089pgq.41.1552764351431;
        Sat, 16 Mar 2019 12:25:51 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from sanjana-Inspiron-5570.domain.name ([123.201.165.92])
        by smtp.googlemail.com with ESMTPSA id a4sm7780204pga.52.2019.03.16.12.25.49
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 12:25:50 -0700 (PDT)
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 1/3] Staging: rtl8188eu: rtw_recv.c: fix a tab indent issue
Date: Sun, 17 Mar 2019 00:55:41 +0530
Message-Id: <20190316192541.23197-1-sanjana99reddy99@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190316133306.8747-1-sanjana99reddy99@gmail.com>
References: <20190316133306.8747-1-sanjana99reddy99@gmail.com>

Fix a tab indent issue.Issue found by checkpatch.pl semantic patch results for
rtw_recv.c.

[WARNING]:No extra space at the beginning of a line.

Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
---
Changes in v3:
Change the log message from the [PATCH v2 1/3]

Changes in v2:
Remove "From" line from the [PATCH 1/3]

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


