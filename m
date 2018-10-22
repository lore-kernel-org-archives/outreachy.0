X-GM-THRID: 6615126444577128448
X-Received: by 2002:aed:39e3:: with SMTP id m90-v6mr35740359qte.3.1540204147939;
        Mon, 22 Oct 2018 03:29:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:257d:: with SMTP id 58-v6ls43803qtn.7.gmail; Mon, 22 Oct
 2018 03:29:07 -0700 (PDT)
X-Google-Smtp-Source: AJdET5cofIW3qzlflEs5Fy4KRv0F6hTdlyHVIA9W158cuavnnTo8GE7CZEtPVE8Lw2paH6abAYLU
X-Received: by 2002:ac8:31f5:: with SMTP id i50-v6mr12721871qte.33.1540204147429;
        Mon, 22 Oct 2018 03:29:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540204147; cv=none;
        d=google.com; s=arc-20160816;
        b=A8ZLB3njeP6N6t0S7GXBJwpEtM6tmvjkf607zu1tvCsfUWnN8VHavbSSDLpMiSUUsK
         Sqe5Tdq3huZ3AVhcdGW3tU0bQBNvYirtcgCjhYZHpRtjUzj5ldQUqwYty6UGx0hZMCVk
         aVlqty0TnzWKMNHDYSlEYjHjNtacro/s+MunbzmYrOcyrr5BsklB9dTGQPtQxkgOdVTI
         roIFy17/LKQOZkqr98d0ZxfLXZCjwIDrQcshni3exqj3qsQebXCl+qco7dD30YC0StgZ
         Nk2rbAP8rberf11ddoS+84KR6NPzNyYZixZULU6i2A48RREiovgdXbjUekb3Xru+GBbQ
         zdHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=SKvj2gI++7yHx+zidD6LEv4VHZaG+Db6CYglQru3Mvo=;
        b=MkLAEgLM2HQhP6DHwwzseIHqNPJ8Ha2ZLD32rAMNA+poZYneG2P0aIG4r6f8kYPoWu
         uhdhadhw9qQY0vRWG/VGfdFkbffBDmKbaxi/wsx9mDRBH4Q75o4jHlnrgDrRQBI/w5m8
         mGtn2zMwLrSAkqq7dpDSmEHBMImpY1DIUccPbrYnxPaaFKasnO50A7k7J5Zh3JGdI26H
         Pt+T7Lt4YN1hVkUmhXNvo+rZxnmEvWusVvwbBhpWRmsL6V5P+vfopq00sDopQDFr569v
         ShVfm9iEDdXSGdMT4GespV1jBFyiI+iG0ocHp4OZQfc2vTGnuI/Xw2JZOhMu+0bf9MFw
         XR5A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GsKq9dzx;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id x41-v6si1796737qth.2.2018.10.22.03.29.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Oct 2018 03:29:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GsKq9dzx;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id 78-v6so17310503pfq.0
        for <outreachy-kernel@googlegroups.com>; Mon, 22 Oct 2018 03:29:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=SKvj2gI++7yHx+zidD6LEv4VHZaG+Db6CYglQru3Mvo=;
        b=GsKq9dzx9baxdwIaexlwWM+OfJfLCaX/yLsP3wvtE9PEZDCcsX2ZDvdX6ZhcsZEKqQ
         geM+7LUt07JTvQ1vCSFZmsjw6iR3eSasQwZyQ2Ky02Ib9cO9J4Mv8/1D2OQbiZGdp2bd
         CSaAHICymOdrinswXFfa4jVEGZR/22oe5jbA3/yrR/fYjoBgyT7/bIVBgCxRe8yE8MZa
         +MrByTBtTqB5kWakJ0p6tLS+40hTzTdbPeZttxavvszXlrz+Z9uzU5iBOHKU7GIuh9JQ
         xiKacrbie0S/7BwzZ+/nhG1PZfZtFVDmHgqTF4rRimNZ7cLTP97d2mzu24cCW6Joq2V8
         URdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=SKvj2gI++7yHx+zidD6LEv4VHZaG+Db6CYglQru3Mvo=;
        b=cKi1LeadpKWaUtw4pIb2Wr2Liwth/eASbM/335GkjXVtlhiO9B1kyUULCXFHRnsfBq
         eSJK59r342Tau6xmGxIMWiyrpyp4EXCK+Z0wJSiLCgBlrJJg5J9QzlQnXBAzIusQ2Lgv
         MNymnC5swAABJrpfzIwbP9bX5mh0L/GFD11YMwnB+TYz+3Q/h+Nfc4Rh/aP0hPm5k0hR
         mB/E7vSiFSkK7UbXlSxyVQ3OcTG/9xQF8kZgdB/kNmQRO0FEeZQ9k6y8YdlhfQNIT9VO
         G9ezHiufd+tyC2kOqL5Ph+ZxkNhUYjEccbZfGfHq10RjW3ctgc+s+90726IVNqVASKed
         06Rw==
X-Gm-Message-State: ABuFfojrTapX2OazcLbI64uy6bs9CVNe04mqj1iL71uxsSdLlVYBEhMi
	0BLnNkEatVI0h/SjGSMGB16hiBmP
X-Received: by 2002:a63:5224:: with SMTP id g36-v6mr42965547pgb.253.1540204146513;
        Mon, 22 Oct 2018 03:29:06 -0700 (PDT)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from aakashd-VirtualBox ([183.82.102.247])
        by smtp.gmail.com with ESMTPSA id x186-v6sm33448037pfb.125.2018.10.22.03.29.05
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 22 Oct 2018 03:29:06 -0700 (PDT)
Date: Mon, 22 Oct 2018 15:57:52 +0530
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg KH <gregkh@linuxfoundation.org>
Subject: [Outreachy kernel][PATCH] staging: rtlwifi: Unneeded function
 halbtc_get_wifi_rssi()
Message-ID: <20181022102752.GA12423@aakashd-VirtualBox>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

In the function halbtc_get_wifi_rssi:

if and else are functionally identical.
Unneeded return variable undec_sm_pwdb.
Function not needed and so assigned value rtlpriv->dm.undec_sm_pwdb where
the function halbtc_get_wifi_rssi() is called.

Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
---
 drivers/staging/rtlwifi/btcoexist/halbtcoutsrc.c | 13 +------------
 1 file changed, 1 insertion(+), 12 deletions(-)

diff --git a/drivers/staging/rtlwifi/btcoexist/halbtcoutsrc.c b/drivers/staging/rtlwifi/btcoexist/halbtcoutsrc.c
index 24e19ff..b519d18 100644
--- a/drivers/staging/rtlwifi/btcoexist/halbtcoutsrc.c
+++ b/drivers/staging/rtlwifi/btcoexist/halbtcoutsrc.c
@@ -476,17 +476,6 @@ static u32 halbtc_get_wifi_link_status(struct btc_coexist *btcoexist)
 	return ret_val;
 }
 
-static s32 halbtc_get_wifi_rssi(struct rtl_priv *rtlpriv)
-{
-	int undec_sm_pwdb = 0;
-
-	if (rtlpriv->mac80211.link_state >= MAC80211_LINKED)
-		undec_sm_pwdb = rtlpriv->dm.undec_sm_pwdb;
-	else /* associated entry pwdb */
-		undec_sm_pwdb = rtlpriv->dm.undec_sm_pwdb;
-	return undec_sm_pwdb;
-}
-
 static bool halbtc_get(void *void_btcoexist, u8 get_type, void *out_buf)
 {
 	struct btc_coexist *btcoexist = (struct btc_coexist *)void_btcoexist;
@@ -585,7 +574,7 @@ static bool halbtc_get(void *void_btcoexist, u8 get_type, void *out_buf)
 		*bool_tmp = false;
 		break;
 	case BTC_GET_S4_WIFI_RSSI:
-		*s32_tmp = halbtc_get_wifi_rssi(rtlpriv);
+		*s32_tmp = rtlpriv->dm.undec_sm_pwdb;
 		break;
 	case BTC_GET_S4_HS_RSSI:
 		*s32_tmp = 0;
-- 
2.7.4


