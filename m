X-GM-THRID: 6387958804710948864
X-Received: by 10.200.55.205 with SMTP id e13mr1903292qtc.13.1487312570134;
        Thu, 16 Feb 2017 22:22:50 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.191.134 with SMTP id p128ls1074311iof.31.gmail; Thu, 16
 Feb 2017 22:22:49 -0800 (PST)
X-Received: by 10.107.162.209 with SMTP id l200mr2176242ioe.4.1487312569459;
        Thu, 16 Feb 2017 22:22:49 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id z3si560894pfj.0.2017.02.16.22.22.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Feb 2017 22:22:49 -0800 (PST)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id 5so4068550pgj.0
        for <outreachy-kernel@googlegroups.com>; Thu, 16 Feb 2017 22:22:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=/gILbOnKqal+7H6wtZ3ucZuS0OlEp2ozZS8NO8GTOjo=;
        b=uiGm6YDoAEWEw8kpHrXrClp1p0WFkaUc4HN0pK0PDvt4EN+unKjFFcJI6MKoO5IslC
         ngAHAE7NFekejOOOa6vvALUjHaHvxZ8KBGjStlXzhmHemY656UnKWAsf6bAfEC5m8CMj
         EByU79c/cr7/1MOXFDhkCYt8Z1TLnuRE8LJ6LMwGuQi9Sx7alTPkOVv3Droq8nKvha7c
         jhtBrp04wloj7fdJ6OX6Mt2Ddlz4d4CgxQMLpEg2sU4D3NwmN2Q9Lkdpv5iqHWIc2QjA
         DPYEOcabK6+nMllvrYlh6HysVqc8YvkxVD2L1ueZljC2Imgr9pL1jOneisBgzOjPO0ax
         DvYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=/gILbOnKqal+7H6wtZ3ucZuS0OlEp2ozZS8NO8GTOjo=;
        b=auQPPgzD4NBy+VffcpYl6za0FZj6/3Cx7VW5UDZwRZIlb2r49sZ+Gs+F6xtQ/k2P6c
         wUs4ZgJYlnq95hNCmA54ySm63Q4oBwOF4ET2ZPkLgmZTbfqY3Iyojwt7MUiG+MMyaMyX
         BOitKkNWLHN67IS/zmXdssdJoEQ4EOzxGcDW9tOJOHDzCjB+zcuQ8lu5ZofZIUrOK94e
         T3JcAt253nwenQPtb4fbQ1LNcFLCQu24+P+pzgpGYX4uhryEb1edGij89U2U81hAy3pV
         61p5oN+1ZlBvKou7SEbkG2kNpVUW9t2GFSj9tIkOS876Pw2DdBfEs8xPKuNbwGupd9wJ
         /v9A==
X-Gm-Message-State: AMke39nDSe+BDEVxt+kEOFaLINSGC+ZDwmfcfZ3tleongC6G4e0Bm1uVY2d8s60tX07o9Q==
X-Received: by 10.98.19.145 with SMTP id 17mr7428461pft.26.1487312569269;
        Thu, 16 Feb 2017 22:22:49 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id l3sm17141628pgn.10.2017.02.16.22.22.47
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 16 Feb 2017 22:22:48 -0800 (PST)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH 4/6] staging: rtl8188eu: Remove unnecessary blank lines
Date: Fri, 17 Feb 2017 11:50:28 +0530
Message-Id: <dab6bd329520168bda6570e1b8140f7ceee9f72b.1487312015.git.gs051095@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1487312015.git.gs051095@gmail.com>
References: <cover.1487312015.git.gs051095@gmail.com>
In-Reply-To: <cover.1487312015.git.gs051095@gmail.com>
References: <cover.1487312015.git.gs051095@gmail.com>

Remove unnecessary blank lines to fix the checkpatch issue,
blank lines are not required before '}'.

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_mlme.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme.c b/drivers/staging/rtl8188eu/core/rtw_mlme.c
index 8bdb539..289e809 100644
--- a/drivers/staging/rtl8188eu/core/rtw_mlme.c
+++ b/drivers/staging/rtl8188eu/core/rtw_mlme.c
@@ -392,7 +392,6 @@ void update_network(struct wlan_bssid_ex *dst, struct wlan_bssid_ex *src,
 	dst->PhyInfo.SignalStrength = ss_final;
 	dst->PhyInfo.SignalQuality = sq_final;
 	dst->Rssi = rssi_final;
-
 }
 
 static void update_current_network(struct adapter *adapter, struct wlan_bssid_ex *pnetwork)
@@ -494,7 +493,6 @@ void rtw_update_scanned_network(struct adapter *adapter, struct wlan_bssid_ex *t
 
 exit:
 	spin_unlock_bh(&queue->lock);
-
 }
 
 static void rtw_add_network(struct adapter *adapter,
-- 
2.7.4


