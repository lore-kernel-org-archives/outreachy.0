X-GM-THRID: 6666453061980913664
X-Received: by 2002:a63:193:: with SMTP id 141mr9534369pgb.58.1552154557998;
        Sat, 09 Mar 2019 10:02:37 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:93:: with SMTP id 141ls4478970pga.1.gmail; Sat, 09 Mar
 2019 10:02:37 -0800 (PST)
X-Google-Smtp-Source: APXvYqy4v3RZdfiX8Lg5vhVEUHxlZfZRmj8bB2F+RP5pF5Oxbs5H1Lq4ccl3oIGpirpoD/eNgAqe
X-Received: by 2002:a62:e513:: with SMTP id n19mr9156270pff.125.1552154557083;
        Sat, 09 Mar 2019 10:02:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1552154557; cv=none;
        d=google.com; s=arc-20160816;
        b=WADcUyXhWw8hBSp1yc6ECAtBTCstwxeOIHTGR32BSv5SOJ8w6vU/Jl9PNceF4OuxVL
         7qVcvHPl+JYZt+MvLiVxRVhQFO8W4LR+JLmZr4yWYgIA7W2F2X66RBJtycPBixdyoZ60
         enZBOgmcEW3ynZaMdGyNChUqjRMwWDtMxVGJ7dMXp0R44q1wy26IOc48lcszwJqK6Jgv
         WD3BVyNjBLetpCALzWIo6BBGBsx5WiF9Adl1FNOaVPf5wd6ki1kyYhOCgyhl2yTnJ8Go
         67T8tr0uwnPMyr7L1BXynIJZyMfkE9TzhjRt3J8SP2CwndyIoSz+0bGWyRzRdJT0oM3p
         Lkng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=ZrWpn758/0R8bCIoDVoD8DXuzTkKeDrtUMQL11LZ65w=;
        b=r+EW3eLjdJitNElHjfSRrOrEceo7z7O7GQ5M63YS/Sj8atP0N2ebvFddmDB7ckV1t8
         xiUWrgzt1mJXmTtgHxG8civNHGpxPpoYACwq8aJK/3pOmnovOL4qmMAb0fT9HoVhggIW
         DSqATJN6dkkCMIFmZL37q+i+xywW0wICdBmS3a0cbyUwYTV93O77NM81YWFXfWNYNk2j
         Hi5l7Mv4j760Qh4w3r2wR9gkphUCUWcQ7lnopyx1DdljQOCk86lZMmhGdwv1UxirGPgj
         QmdUTQkDh1owqN3r1/ldowX/Tr5rM/e/utSGa6gSLNmnMt9irD/bnYOn3c94hJ5wRhV7
         uKhw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="F/4DfbCB";
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id r133si54969pgr.4.2019.03.09.10.02.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Mar 2019 10:02:37 -0800 (PST)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="F/4DfbCB";
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x541.google.com with SMTP id j3so703344pgm.11
        for <outreachy-kernel@googlegroups.com>; Sat, 09 Mar 2019 10:02:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=ZrWpn758/0R8bCIoDVoD8DXuzTkKeDrtUMQL11LZ65w=;
        b=F/4DfbCBaU1tTk4eF8kxllNubHCJS05RvkiKoVdSYRdBCdEPEGR0cwNn6nnS3VbW0T
         sbrKveYnMI0/bRug1gYvrO69pWnX2N6QLhmQr2ZjEwr6v7kDtVRSDpVFj4l4jbtbZ1G9
         95kJDPMFI2I7HuSYfQ3mBQpKWLfInPcDLqKsqM6zw/D3A5f9i63iwmV4nnjfZ5qvqQ4q
         22woKrz/SyA2D/YJmo+iIHOQG6xH4CjBFXB4LOOukFOeEMwVRBpn60GyGXMOsHZMJp+O
         TjCIR8rC5cxk7eyRQcHeqTL9nuvslN4t0XTZSZKanBsNPm5n5PGahPCZFZkFxwbqKvf2
         ql4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=ZrWpn758/0R8bCIoDVoD8DXuzTkKeDrtUMQL11LZ65w=;
        b=EHvABiNmmEaK702ar32KoTMpTVo3tuG8vJtOfrSCfRmJd9LOXUkK2z5rPdg7iwsfSz
         e/3/RiM9MD6j5UYv1S2BSAfdo5oWSfSbMwCkb4OsmF33ZBdN39cyTxbAsojsodGFvY63
         w2U4JvHWMWEUbQRKnB6dShqNTC7AGhRc7U6wOqKnp3uyujl+0PuyIgQnUfBOXkSJmTQY
         xpmc2pHCWcZZam9Kh5XnTJ8HxVCP7HWfUgCOM6OCdxgmnIMzddsDnvlMHYtXc8B/xs6T
         e8jJKKfs75i6oqnMdbbiQaT3qvfYr30pu3w9mW7inyShh2eU/ji9PaRsIHeT8NMdz5VW
         7TXA==
X-Gm-Message-State: APjAAAVqY3k2XgiKvy7gONxHYsF3pjc5WBB4VEv6agPu4Ux3TcNlvMhY
	hPr01zED67ES3RXFcIGkNW9+HLVUbLI=
X-Received: by 2002:aa7:8d53:: with SMTP id s19mr25347165pfe.16.1552154556676;
        Sat, 09 Mar 2019 10:02:36 -0800 (PST)
Return-Path: <himadri18.07@gmail.com>
Received: from localhost.localdomain ([157.32.145.116])
        by smtp.gmail.com with ESMTPSA id u13sm2107965pfa.169.2019.03.09.10.02.22
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Mar 2019 10:02:35 -0800 (PST)
From: Himadri Pandya <himadri18.07@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Himadri Pandya <himadri18.07@gmail.com>
Subject: [PATCH] staging: rtlwifi: phydm: remove unnecessary parentheses
Date: Sat,  9 Mar 2019 23:32:12 +0530
Message-Id: <20190309180212.54071-1-himadri18.07@gmail.com>
X-Mailer: git-send-email 2.17.1

Remove unnecessary parentheses around the right hand side of assignment
operator. Suggested by Coccinelle.

Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
---
 drivers/staging/rtlwifi/phydm/phydm.c          | 2 +-
 drivers/staging/rtlwifi/phydm/phydm_hwconfig.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtlwifi/phydm/phydm.c b/drivers/staging/rtlwifi/phydm/phydm.c
index 52b85b3ddb34..a69be1c19f25 100644
--- a/drivers/staging/rtlwifi/phydm/phydm.c
+++ b/drivers/staging/rtlwifi/phydm/phydm.c
@@ -1767,7 +1767,7 @@ static u8 phydm_calculate_intf_distance(void *dm_void, u32 bw, u32 fc,
 		int_distance = (fc >= f_interference) ? (fc - f_interference) :
 							(f_interference - fc);
 		tone_idx_tmp =
-			(int_distance << 5); /* =10*(int_distance /0.3125) */
+			int_distance << 5; /* =10*(int_distance /0.3125) */
 		ODM_RT_TRACE(
 			dm, ODM_COMP_API,
 			"int_distance = ((%d MHz)) Mhz, tone_idx_tmp = ((%d.%d))\n",
diff --git a/drivers/staging/rtlwifi/phydm/phydm_hwconfig.c b/drivers/staging/rtlwifi/phydm/phydm_hwconfig.c
index a4ad39ab3ddf..4d2630e63789 100644
--- a/drivers/staging/rtlwifi/phydm/phydm_hwconfig.c
+++ b/drivers/staging/rtlwifi/phydm/phydm_hwconfig.c
@@ -1790,7 +1790,7 @@ phydm_process_rssi_for_dm_new_type(struct phy_dm_struct *dm,
 
 		if (undecorated_smoothed_pwdb <= 0) {
 			accumulate_pwdb =
-				(phy_info->rx_pwdb_all << scaling_factor);
+				phy_info->rx_pwdb_all << scaling_factor;
 			undecorated_smoothed_pwdb = phy_info->rx_pwdb_all;
 		} else {
 			accumulate_pwdb = accumulate_pwdb -
-- 
2.17.1


