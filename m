X-GM-THRID: 6666820090157072384
X-Received: by 2002:a25:e648:: with SMTP id d69mr14188895ybh.95.1552302991624;
        Mon, 11 Mar 2019 04:16:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a81:2f02:: with SMTP id v2ls2375467ywv.5.gmail; Mon, 11 Mar
 2019 04:16:30 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxQtJG1xdsCNOE+LukbTP/xVlU8dfGBLy81JwHDe1o/fWQnq/tD0wDsy3kxL98tWdWB2q0b
X-Received: by 2002:a81:9896:: with SMTP id p144mr8115324ywg.0.1552302990775;
        Mon, 11 Mar 2019 04:16:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552302990; cv=none;
        d=google.com; s=arc-20160816;
        b=sfRzDZ2zrGO1w/8bbY5nH+doPmo/tXjtM8gRMKoGo9HM6gx2hntL36ZWwFnvWyBQ57
         fxcvh34Idwqa+T1vG7DQM/oGKMpTkjzvPQgvbXiTVtHswVY7P0xJ7FqcIyKmrS7WaxFF
         /xweGMAwaW2lCG6vchOUZNlMKyTEcnVfefimNMPSXJ2adP2tJ7Xw7eb7QdocmQQnzapw
         pVYnQPxvOPfB0ahqpL0YAKWygh0VsPYQekGJhAV+XJmSyTb8cqZy4PDL77DGtQor1w7B
         /+QeiZiXi14OyFW/wQl5U/G7Xcxm1UPLb36ztp20I8Bhl3TfXRxmKDlyaHafoTxyiSNg
         iIsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=hkw+uWT/PnaDPYTj0ZPNpr40VQubIAJHIHVollLftYQ=;
        b=zx3RzwhZEoukhY25v9UN91hFCHJMdBOt2A/gcGdNSUX73I7arw6yBQvH4Xiwelncfa
         ZfdM1x5nVmHD+wNKTdsFgXnkNomrCyF4LVZMUSU6RjscSKd7g/kqAjKhCCcfYyCLRRrl
         phirT02jzQz6vB686jvL7BrpwXBQLtcUzNgzB/V67VM/W2luzCJP2yWu28/93jS4jF9e
         fP5hQ+sEJ+OIWXSqSY8y3owuxik5IsAcmbCQpTX0iVGMyDjHS5OSKIGoDnTZDJqBPOMO
         wC/s6wPsfenuAjjObE8rKlKKQldy1P9IuiQiBNZIPFQsriVuW690LZoL9PF4GecNtq8A
         DUrw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="B/LkC8cO";
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::52e as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pg1-x52e.google.com (mail-pg1-x52e.google.com. [2607:f8b0:4864:20::52e])
        by gmr-mx.google.com with ESMTPS id l39si300495ywh.5.2019.03.11.04.16.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Mar 2019 04:16:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::52e as permitted sender) client-ip=2607:f8b0:4864:20::52e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="B/LkC8cO";
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::52e as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x52e.google.com with SMTP id h8so3774959pgp.6
        for <outreachy-kernel@googlegroups.com>; Mon, 11 Mar 2019 04:16:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=hkw+uWT/PnaDPYTj0ZPNpr40VQubIAJHIHVollLftYQ=;
        b=B/LkC8cONH7XDXTJCRSBxUJt0/z9mL61VIT9zHt1BTWdCnNNsvZjPBiwLvmcBEVr9n
         RbjBLi6OThz8qFVZ/LNfAZW66czD0fgbmpnWEp8zA86A1Nq04fA79ODqduqCAwtHECEj
         biQbSHaVN7eURuJEnovi155j6m3JUQfZlDpXaOfN2RvbJ68f51R1McLmKFrBxCuwJ/Er
         IBGf9aM7AveNu1ANzMCYXPydC4Hx1Y80Ow2C1XwbbxgIrpMVb7jR6W+32RvfASZ75AJF
         oCAIIX72hwAZQ52RG3lB3vksPmugAPZSr8g4ITO980ELbPq8ap9pOhYO4es6vSxIVMn8
         IelA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=hkw+uWT/PnaDPYTj0ZPNpr40VQubIAJHIHVollLftYQ=;
        b=NMefR6ajkvpWdaKUYpwQt0/9XzGDMifHr6AH/ZPlmWEWynFmWRuE7cbm/6SdbWlGzN
         da6C6c46hPHuHTk6ymnRSRMFV8M73QXoscBWNyiUABZUzPYBZjb+R+GnlQppdTK7qFpb
         sR4dIRwUX4PSShNL/TQ3RtzXxUxB3tEysMnMXxHjXpEDvI6eAZpQfzAHzhmHC+eIYh4H
         e2j3zC6IRhPzBNudwcxhge+ROiE7jgCqdnk2KaZV0X41KyHllLhLpszl2tKpdYNQstyc
         8/fd3ztYymXmfw3zXWSl5xN44+ZSM9ZmeSMClwnObthSoi01ENmYCU/+IMAJ5yfuOCp/
         kKKg==
X-Gm-Message-State: APjAAAXBkDg1ysobp0FH0dC3lduYV5OXhkRLaio2kw3LFaZDEgH1vCuo
	t7FXA5Lc++UDJvt9dXQPuFCDVNunn1E=
X-Received: by 2002:a63:ce4a:: with SMTP id r10mr11695724pgi.336.1552302990221;
        Mon, 11 Mar 2019 04:16:30 -0700 (PDT)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from localhost.localdomain ([183.83.84.116])
        by smtp.googlemail.com with ESMTPSA id p11sm23586700pfi.10.2019.03.11.04.16.28
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Mar 2019 04:16:29 -0700 (PDT)
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v3 4/7] Staging: rtl8192u: Remove typedef for struct _RT_LINK_DETECT_T
Date: Mon, 11 Mar 2019 16:46:04 +0530
Message-Id: <20190311111607.28766-5-bhanusreemahesh@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190311111607.28766-1-bhanusreemahesh@gmail.com>
References: <20190311111607.28766-1-bhanusreemahesh@gmail.com>

-Avoid typedefs for structure types to maintain kernel coding style.
-Remove typedefs RT_LINK_DETECT_T and *PRT_LINK_DETECT_T of struct _RT_LINK_DETECT_T.
-Change Structure name _RT_LINK_DETECT_T to rt_link_detect to maintain Linux kernel Coding Style.
-Replace occurence of RT_LINK_DETECT_T to struct rt_link_detect.

Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211.h b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
index c8c0e4282fea..fc24df42ca8d 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211.h
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
@@ -1586,7 +1586,7 @@ typedef enum {
 } country_code_type_t;
 
 #define RT_MAX_LD_SLOT_NUM	10
-typedef struct _RT_LINK_DETECT_T {
+struct rt_link_detect {
 
 	u32				NumRecvBcnInPeriod;
 	u32				NumRecvDataInPeriod;
@@ -1599,7 +1599,7 @@ typedef struct _RT_LINK_DETECT_T {
 	u32				NumTxOkInPeriod;
 	u32				NumRxOkInPeriod;
 	bool				bBusyTraffic;
-} RT_LINK_DETECT_T, *PRT_LINK_DETECT_T;
+};
 
 
 struct ieee80211_device {
@@ -1876,7 +1876,7 @@ struct ieee80211_device {
 	bool FwRWRF;
 
 	//added by amy for AP roaming
-	RT_LINK_DETECT_T       	LinkDetectInfo;
+	struct rt_link_detect LinkDetectInfo;
 	//added by amy for ps
 	struct rt_power_save_control PowerSaveControl;
 //}
-- 
2.17.1


