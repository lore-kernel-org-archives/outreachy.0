X-GM-THRID: 6618414504788099072
X-Received: by 2002:a6b:c786:: with SMTP id x128-v6mr1279290iof.1.1540969844642;
        Wed, 31 Oct 2018 00:10:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:5dc6:: with SMTP id w189-v6ls2938948ita.4.canary-gmail;
 Wed, 31 Oct 2018 00:10:44 -0700 (PDT)
X-Google-Smtp-Source: AJdET5dh8bg9Zn6VbaClGZY3VzdPj5Okw3J+TQ7WbLyjGiAHtkjnqk00VXtsgFYwV30F+bWBxkEX
X-Received: by 2002:a24:254a:: with SMTP id g71-v6mr1134630itg.33.1540969844039;
        Wed, 31 Oct 2018 00:10:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540969844; cv=none;
        d=google.com; s=arc-20160816;
        b=QI6qz4x65rSeMsn8pKPASCO/7vqlVFuBA2OW2N/MqWleiEqlMaeSd0vs1W4SHSgqmj
         z9YN6NjhDR1uWgOFFuXEntBi6Knayh6WIaGNBrOGffbmpVKqc9sCI+N2ZNSf3UJ4/Tt0
         VkdZeXx7uEKqDeeRn8pQgxxdQk+wuUyNU1QK1jDZ0HoIyZ6IyHvXdi+fiC475+VcRXIg
         cH96ErSwOHOZDMFFGR4xYSYrbC/8fT+m3OQryKxeF6Y9cJwBaqNCupDlaGNSL9g4TSvr
         I0Dav4ZyxxZJ93SPrvhBGeZszVZnmH98KB6STsL1KPNHij+9tJYNBv8BhNUZRdqRCHqE
         lILQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature;
        bh=5RrP2JpIPy5fvBbNv37H1fHSFRhWgNeNy/kZZ5Kw6gE=;
        b=cWjP1XW9d1JfM2Z51Pt47CFIAQogppT/bKY+vfc/vgKG5KherFVeLfQkPv5LRb3VYa
         Xj4opfwdrk+G6rbLmGShopFgzukByYFGmY8rb9Ok9EkdNunV2VoTVnJOR4hgGUJWiCRN
         SLTAUmgJ804t/y0SJt1ECTPgQmKsLikCQrOIUpBLy9uC6g12KojEReyzC3nCQdouXORk
         AzGXVOWTEHeQoUYNMlnNhRFC8cbaRbzToaF6btRugfceV3AYffhg9Jp/9K6WkBrobD5z
         Av5uHdrNomapmphzIBpSKfTs3a0Q3GhNV1jTZyf4fbydM7BLo4ooftGv0PSqKqNifD9c
         dGyg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OzfCmx80;
       spf=pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::12e as permitted sender) smtp.mailfrom=m.maya.nakamura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <m.maya.nakamura@gmail.com>
Received: from mail-it1-x12e.google.com (mail-it1-x12e.google.com. [2607:f8b0:4864:20::12e])
        by gmr-mx.google.com with ESMTPS id v6-v6si112397iop.0.2018.10.31.00.10.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 31 Oct 2018 00:10:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::12e as permitted sender) client-ip=2607:f8b0:4864:20::12e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OzfCmx80;
       spf=pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::12e as permitted sender) smtp.mailfrom=m.maya.nakamura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-it1-x12e.google.com with SMTP id e17so15258291itk.5
        for <outreachy-kernel@googlegroups.com>; Wed, 31 Oct 2018 00:10:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=5RrP2JpIPy5fvBbNv37H1fHSFRhWgNeNy/kZZ5Kw6gE=;
        b=OzfCmx809SABKUh7geo0WBMrDreC/koM/izTA5moWnYrQEHLcxmDtt/R4wIkzuKJMQ
         E4GcyuOTTtsfiRwLexvVbRv0J1RQgEiry/6tuuNnD/hn3jHcYbDqfJtNgTYR9R0XWEOZ
         ZZ496knKa/ufrvneu/cM9XyI1HY9PyErSiJm8JoCzefqw+MDrsnKjNmAywE8gfuwgVp/
         SSsSiNtOD6jTk39vgsZDH9Q1Yt9DazqSSctStxSCeX/1sHPZ+uIHq6kSd/gmkc8WVtPG
         S2KWJuON9QE1kGva6w9rX+/amGzg0Q93eqdnbcKsE7evc9KEDLu8XcSVSYxeqGtS0Ujy
         sapA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=5RrP2JpIPy5fvBbNv37H1fHSFRhWgNeNy/kZZ5Kw6gE=;
        b=UQzr1DMEoEb44cmFhq6XVZAZYyQRtOKas2jLR/OjUrKU9BmBfxcFqzaojQ+1N7nDZV
         e6vOOj4nKC6gufUyoHKSQyLadxx3c+1KB6rlw+GtC4uC1//t447BuRfWv2QJ/WlWKrK0
         l2XxO/c6qQlg9cGgN4VkndoHxN7gUv4AhcVOV5kOnVxBIzEC6vqfHxvdzUr3KnWx77TG
         gXzzrG8JK+Hl+IYNBtDwWstkOWZaaqyRd+bvd23m+0abvRIWFjfzHKkOxQ5vLnhbIPIZ
         qe2tOIHkcRlJApsURNLiYU+QvGKBHbd47h0odf/T7ogRrlhWnjyzD1+WzeqSXJaOBAWj
         b7yQ==
X-Gm-Message-State: AGRZ1gKe2BvVSX1ItObhcePOqryL357/eiZMmIGaHLkmTRzzYO4VsDYl
	TLgCVvUKCjrsfd8lgMR3o/Q+2e5jymQ=
X-Received: by 2002:a02:1043:: with SMTP id 64-v6mr1453471jay.27.1540969843619;
        Wed, 31 Oct 2018 00:10:43 -0700 (PDT)
Return-Path: <m.maya.nakamura@gmail.com>
Received: from k-vBox (50-47-85-193.evrt.wa.frontiernet.net. [50.47.85.193])
        by smtp.gmail.com with ESMTPSA id j19-v6sm9020488itb.25.2018.10.31.00.10.42
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 31 Oct 2018 00:10:43 -0700 (PDT)
Date: Wed, 31 Oct 2018 00:10:41 -0700
From: Maya Nakamura <m.maya.nakamura@gmail.com>
To: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: [PATCH 2/2] staging: rtlwifi: Keep expressions on one line
Message-ID: <368f5b749807cd02336274f978f3c6451655583d.1540968891.git.m.maya.nakamura@gmail.com>
References: <cover.1540968891.git.m.maya.nakamura@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1540968891.git.m.maya.nakamura@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

Edit two statements to keep expressions on one line--one from Julia's
feedback.

Signed-off-by: Maya Nakamura <m.maya.nakamura@gmail.com>
---
 drivers/staging/rtlwifi/phydm/phydm_debug.c    | 4 +---
 drivers/staging/rtlwifi/phydm/phydm_hwconfig.c | 4 ++--
 2 files changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtlwifi/phydm/phydm_debug.c b/drivers/staging/rtlwifi/phydm/phydm_debug.c
index 1c7faa5840f2..91f2c054d83b 100644
--- a/drivers/staging/rtlwifi/phydm/phydm_debug.c
+++ b/drivers/staging/rtlwifi/phydm/phydm_debug.c
@@ -159,9 +159,7 @@ void phydm_init_debug_setting(struct phy_dm_struct *dm)
 	dm->debug_level = ODM_DBG_TRACE;
 
 	dm->fw_debug_components = 0;
-	dm->debug_components =
-
-		0;
+	dm->debug_components = 0;
 
 	dm->fw_buff_is_enpty = true;
 	dm->pre_c2h_seq = 0;
diff --git a/drivers/staging/rtlwifi/phydm/phydm_hwconfig.c b/drivers/staging/rtlwifi/phydm/phydm_hwconfig.c
index e7dcb5b02ad4..2f4f273a0239 100644
--- a/drivers/staging/rtlwifi/phydm/phydm_hwconfig.c
+++ b/drivers/staging/rtlwifi/phydm/phydm_hwconfig.c
@@ -45,8 +45,8 @@ static u32 phydm_process_rssi_pwdb(struct phy_dm_struct *dm,
 	u32 weighting = 0, undecorated_smoothed_pwdb;
 	/* 2011.07.28 LukeLee: modified to prevent unstable CCK RSSI */
 
-	if (entry->rssi_stat.ofdm_pkt ==
-	    64) { /* speed up when all packets are OFDM*/
+	if (entry->rssi_stat.ofdm_pkt == 64) {
+		/* speed up when all packets are OFDM*/
 		undecorated_smoothed_pwdb = undecorated_smoothed_ofdm;
 		ODM_RT_TRACE(dm, ODM_COMP_RSSI_MONITOR,
 			     "PWDB_0[%d] = (( %d ))\n", pktinfo->station_id,
-- 
2.17.1


