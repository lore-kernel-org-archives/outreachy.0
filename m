X-GM-THRID: 6661982581807906816
X-Received: by 2002:a05:6830:118d:: with SMTP id u13mr12669980otq.2.1551140580783;
        Mon, 25 Feb 2019 16:23:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:c4c1:: with SMTP id u184ls45315oif.8.gmail; Mon, 25 Feb
 2019 16:22:59 -0800 (PST)
X-Google-Smtp-Source: AHgI3IZ8lgmIeo+yLkt4SSKdm4U2f20Vk3dwCJPfuZabTMicVOudxxr6Pldy5n1BcrsxFs3P9zwq
X-Received: by 2002:aca:5381:: with SMTP id h123mr12251453oib.16.1551140579940;
        Mon, 25 Feb 2019 16:22:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551140579; cv=none;
        d=google.com; s=arc-20160816;
        b=dKnacddvWkYGbhY8ICIZeMIANFE/RDDO8kn4poCgbqO3qdgVFlHyLp3bIKcS0hvTBF
         JXMRMzklSdUJRoxnrVWZHJh6UZaLvsng8539J/8Nh9cXHoi8sKO37T7vHVSPnzCbj84v
         DhwHnLmDhsEO7OfMe5KknD7q1su2pLfULELWhqlYHqFQbPF2Winq/ucx8O/vt/qNr4Ay
         P9aMdhm0kyUzQ8MwxJ6PyOIv4GOLpEWNkRDJg5w4YX/Jwack8cQtbFr/FA2yad1LH9ba
         FhFrBV/vJBVRFG+4TBj7/AdwvG3zOqelWgr9Ft5cCtUpISP6WkGKTw8k9Ld79qOt77zp
         HFqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=fK8eLySSFZsuLDSadQsKAw1JXucLkEVPKQ4bdqOaV8Q=;
        b=e3mA7eji1tlIHs6Kw8eiIHHV2NlORRznY20BENT4jOY46vEIRR9jOS2NW2LOob87VR
         U3AuJBs7TWLoinftlBD+jymT8fcWpky09OUyguYrtU6UUHEkq08M5tqqg/3zXtuhlpKB
         LyyqLqzTxphy7CEmPl7wsDF2q4d+0LFIjDLs5qx0SVWQlQO9dE8UKoAFAMdEOGHq3eJU
         zyJ9Ge++EPwvpIZ+/xnLX9eQYjVPSYxeX7ykXzy/soPkBrzbkUQAv0SMiZ5NJvX8MgQs
         jmsqtNeGkRYAZLEFDxZraqPYNNNlj2kxF1tp/CN+LOmvFPDMVVC++853Sx2os8u6JAYS
         2epw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oF3U0yCT;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id 135si601646oia.1.2019.02.25.16.22.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Feb 2019 16:22:59 -0800 (PST)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oF3U0yCT;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x441.google.com with SMTP id q17so5281431pfh.10
        for <outreachy-kernel@googlegroups.com>; Mon, 25 Feb 2019 16:22:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=fK8eLySSFZsuLDSadQsKAw1JXucLkEVPKQ4bdqOaV8Q=;
        b=oF3U0yCTTkop4zsKuoOJl2VWgbiR2uw3p+o8Ap3NXyOmrDQea9uMYr+LM/+IoeCrCl
         sVkUhv81zM9t80SZTGvywb5KbQcdGIdPObpxcUeq47fcsdN4pyRBj0hmgsY7E7Acy4Ni
         mqwyifsIvKmrwM90WOeToQOAmhrgqqbj7HmEti0W5XS2j2BMmINnSNaMZ0LrLMyD9WTC
         x2Zw4x49KwUWcACMiL5DlTDY20hwrzisTt+Qx+iW3VY8cPgu6+LB5rriOy5tBhA3mShy
         Ab1KPUVs9RxAZcv9IcGJ5r2ayo0MiOPRkGRwThcL0+kvhYynPQdKtQsStoClad5JbLYC
         SHYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=fK8eLySSFZsuLDSadQsKAw1JXucLkEVPKQ4bdqOaV8Q=;
        b=lvrjgpOtWNc4PEL50j5HZ820wTZZ4jj+YG2mFXEkVVZlCt2qmL9H8/pv/7VsFRBvCS
         CszNbXtEEh07RWHuc/1K5n7ptOu+ulIYVtiX9yAuE7TS8eLU1zB6V1OAgndFi2PD0taF
         mRywtqPNS00mB8/QnJXKFmw0QhQ2kpkEX5gLxC16gwAIYlUV7m8rysxpSvhvKDnb6I8a
         q80af4EbgAJKgKDzMZmQD8DEcRIbMTdODesxpEWxFn7oTGmA+8ZL4RQTbyOXfuuOLseg
         izXYnrhiUZ/1BPhMWOjBQwAKiKldYp5mhI5kqk2T+zwrBBA+Hy3pmeBGKU845FZGH6ER
         QhYg==
X-Gm-Message-State: AHQUAuYEAyowv1FBMXsPIBWk32R6++ZQvO+0wCEjyBTpFNXPgoRmc1wW
	zWDh36QGRd7iNFAubrNHBskKEBwLyU8=
X-Received: by 2002:a65:63c2:: with SMTP id n2mr21511687pgv.439.1551140579039;
        Mon, 25 Feb 2019 16:22:59 -0800 (PST)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from localhost.localdomain ([183.83.84.116])
        by smtp.googlemail.com with ESMTPSA id y14sm18824337pgc.17.2019.02.25.16.22.57
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Feb 2019 16:22:58 -0800 (PST)
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Larry Finger <Larry.Finger@lwfinger.net>
Subject: [PATCH] Staging: rtlwifi: rtl8822be: Use __func__ instead of func name
Date: Tue, 26 Feb 2019 05:52:43 +0530
Message-Id: <20190226002243.15322-1-bhanusreemahesh@gmail.com>
X-Mailer: git-send-email 2.17.1

Fix checkpatch warning:
WARNING: Prefer using '"%s...", __func__' to using 'rtl8822be_set_fw_rsvdpagepkt', this function's name, in a string

Use __func__ instead of using complete function name.
Avoid line over 80 characters

Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
---
 drivers/staging/rtlwifi/rtl8822be/fw.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtlwifi/rtl8822be/fw.c b/drivers/staging/rtlwifi/rtl8822be/fw.c
index f061dd1382aa..43a56962e37a 100644
--- a/drivers/staging/rtlwifi/rtl8822be/fw.c
+++ b/drivers/staging/rtlwifi/rtl8822be/fw.c
@@ -736,10 +736,10 @@ void rtl8822be_set_fw_rsvdpagepkt(struct ieee80211_hw *hw, bool b_dl_finished)
 	totalpacketlen = TOTAL_RESERVED_PKT_LEN;
 
 	RT_PRINT_DATA(rtlpriv, COMP_CMD, DBG_LOUD,
-		      "rtl8822be_set_fw_rsvdpagepkt(): HW_VAR_SET_TX_CMD: ALL\n",
+		      ("%s: HW_VAR_SET_TX_CMD: ALL\n", __func__),
 		      &reserved_page_packet[0], totalpacketlen);
 	RT_PRINT_DATA(rtlpriv, COMP_CMD, DBG_LOUD,
-		      "rtl8822be_set_fw_rsvdpagepkt(): HW_VAR_SET_TX_CMD: ALL\n",
+		      ("%s: HW_VAR_SET_TX_CMD: ALL\n", __func__),
 		      u1_rsvd_page_loc, 3);
 
 	skb = dev_alloc_skb(totalpacketlen);
-- 
2.17.1


