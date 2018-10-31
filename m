X-GM-THRID: 6618414504788099072
X-Received: by 2002:aca:580a:: with SMTP id m10-v6mr3414255oib.19.1541020160454;
        Wed, 31 Oct 2018 14:09:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:542:: with SMTP id 60ls907006otw.14.gmail; Wed, 31 Oct
 2018 14:09:18 -0700 (PDT)
X-Google-Smtp-Source: AJdET5cLZ2uf30MrY8cFaSiRuxqgi02DMMbfTwmZX9F7RqCPl6nBm5J2Nl2uQ97ykxQ+bFYc7yPz
X-Received: by 2002:a9d:7a55:: with SMTP id z21mr3206911otm.46.1541020158183;
        Wed, 31 Oct 2018 14:09:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1541020158; cv=none;
        d=google.com; s=arc-20160816;
        b=XegC7H3ksH+LludyRcy63VOUJNf9TdYnBUbbE/VIhFMf1tchyqhXoMnqoItx/3lm2N
         iX3zzzG4QaxFIg4YSMN8zqyO8cMojkKoQvVuDKocrRldgFXjTjouF4pMSNelo2rqOPWL
         /T4h0Byj/cOxMf4NwWLWNSTpUk8Sc4lSUZDPoLs9FamsVomvqfCHBHIbOyoT+6ESvKO/
         4J0TfKVql25eO++kZJp0d5NoSpoJLHkGlNx64R1CZOZPhUjH4eRGOTEk/ecNGlV3dxKh
         /nPxx9LhhQ0wKNu6MwyJv5/RaT0/eNQxL9uRen6KNqoLR99yEWwwIljTJiK1Hs2H53W0
         LyTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature;
        bh=ah9njRLU7MjS+KnextS24U74wu/tA4ovEyP3yL+1U0I=;
        b=bghwkB139ms3VSuiMjr55Mo5G/nKUZt1xFTfwPcLIv0n8SNYzTuov9DkaYGFVfzEyT
         uOWkh7alCD0co7qlIC9RSGYq6t3ITD8oUCY+N6ePHZhKEpd/TAtmJAOH5BK4wBXabx4s
         YCmeBHesREd4c6oHbTzTUTZiQ166fKXZlnusPNkipQf9HXYbVtoHtZShD1QKZQEpbsa6
         Q+Fe8m4jaD2sGNA1i5suu4xSzn6mX8jWX0IOcGzwcnzEuiU6gghfv6oJdMjTMO7pWU/G
         IDugEqpVc8/Hj2KaGNeHCBYWIjFJ8253J6yhMbJ92zRHFHt7oNa2IUFEfUy/ifh0YzIA
         4Y3A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XrxeEiJb;
       spf=pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::631 as permitted sender) smtp.mailfrom=m.maya.nakamura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <m.maya.nakamura@gmail.com>
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com. [2607:f8b0:4864:20::631])
        by gmr-mx.google.com with ESMTPS id q6-v6si1096020oia.0.2018.10.31.14.09.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 31 Oct 2018 14:09:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::631 as permitted sender) client-ip=2607:f8b0:4864:20::631;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XrxeEiJb;
       spf=pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::631 as permitted sender) smtp.mailfrom=m.maya.nakamura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x631.google.com with SMTP id t6-v6so7854210plo.9
        for <outreachy-kernel@googlegroups.com>; Wed, 31 Oct 2018 14:09:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=ah9njRLU7MjS+KnextS24U74wu/tA4ovEyP3yL+1U0I=;
        b=XrxeEiJbCcLSVF0Yp/Eiz7ViqWfq0Be8KQDNDMDoKwY1UkQ10K1IeRp/ex16oQp7oG
         EIWn8Y4DBDtk1c8Ola9ozsafhKFH+7gj6VEX8EM2+t4BfkqM6q8ppWLh781HIdP2Obq8
         l8J4ps6QTudnSyWikWMYrmIdcSDleP1aaoa07PgHMmu+TF0zypprkNuvfSQYva9lnB2L
         RclNUGcuTYwHrLuq/jJR+iVrvCA7USGw15ITlRNHGfutXRn28IM7cUu/2Vc893q/nC8Y
         UH4OHi1tKqJK09Tck6SKU1Pc+UqTCMxgFAQTEFf6CLNfclW2HvejqWp8T4t0MtAf/9Of
         odMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=ah9njRLU7MjS+KnextS24U74wu/tA4ovEyP3yL+1U0I=;
        b=Nf3usLG0t8pBXzZpDh3mLLy8PIHFnSWEOHp58oonoGKYTzPpBPCqPucok9zn7SVGvq
         TkN4vYxiUh8CZbXcvguvmIvcviYAJZQcx4LJ20gxPx1wAuxeSaIhNOlDVgFohi7PA/fn
         4Ilf3qkWBOQQnhX+9jxZbqinD+v58GrsU7OB3AaO47zqIosfLZu8mpJYgyqSZrLqbUKg
         iLWmf+dmr3XTUSau2IO0DEtmjPx2QqfsOliqcq68HUde1TeQxjNOuZ+8DdbOX4xtNX9M
         7iwvy8OerpBfm4J2tiaefqZ9briO7gUazX3u1hswiWqw1KgtPGsyGAAG+Oo0ZWx47Lq3
         j4UA==
X-Gm-Message-State: AGRZ1gIn3rDfIdP14pFVppnpe4cbBaR9Q7J8eWuNPo3Td56tiSQKMNZi
	ydr9Rew6FUFNTDqyv7eqhT/IOKo+w/Q=
X-Received: by 2002:a17:902:31a4:: with SMTP id x33-v6mr918215plb.105.1541020157672;
        Wed, 31 Oct 2018 14:09:17 -0700 (PDT)
Return-Path: <m.maya.nakamura@gmail.com>
Received: from k-vBox (50-47-85-193.evrt.wa.frontiernet.net. [50.47.85.193])
        by smtp.gmail.com with ESMTPSA id i14-v6sm4441931pfo.121.2018.10.31.14.09.17
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 31 Oct 2018 14:09:17 -0700 (PDT)
Date: Wed, 31 Oct 2018 14:09:15 -0700
From: Maya Nakamura <m.maya.nakamura@gmail.com>
To: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: [PATCH v2 1/2] staging: rtlwifi: Remove unnecessary conditions
Message-ID: <20cfc441c5030f008f1cd03370c8f797212ccd10.1541019721.git.m.maya.nakamura@gmail.com>
References: <cover.1541019721.git.m.maya.nakamura@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1541019721.git.m.maya.nakamura@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

Remove conditions with no effect. Issues found by Coccinelle's semantic
patch results for cond_no_effect.cocci. Eliminate checkpatch result, a
line should not end with a parenthesis.

Signed-off-by: Maya Nakamura <m.maya.nakamura@gmail.com>
---
Changes since v1:
 - None

 drivers/staging/rtlwifi/phydm/phydm_debug.c   | 31 +++++++------------
 drivers/staging/rtlwifi/phydm/phydm_dig.c     |  9 ++----
 .../staging/rtlwifi/phydm/phydm_hwconfig.c    |  2 --
 drivers/staging/rtlwifi/phydm/phydm_psd.c     |  7 +----
 4 files changed, 14 insertions(+), 35 deletions(-)

diff --git a/drivers/staging/rtlwifi/phydm/phydm_debug.c b/drivers/staging/rtlwifi/phydm/phydm_debug.c
index b5b69d5f1a41..1c7faa5840f2 100644
--- a/drivers/staging/rtlwifi/phydm/phydm_debug.c
+++ b/drivers/staging/rtlwifi/phydm/phydm_debug.c
@@ -140,26 +140,17 @@ static inline void phydm_print_csi(struct phy_dm_struct *dm, u32 used,
 		dword_h = odm_get_bb_reg(dm, 0xF74, MASKDWORD);
 		dword_l = odm_get_bb_reg(dm, 0xF5C, MASKDWORD);
 
-		if (index % 2 == 0)
-			PHYDM_SNPRINTF(
-				output + used, out_len - used,
-				"%02x  %02x  %02x  %02x  %02x  %02x  %02x  %02x\n",
-				dword_l & MASKBYTE0, (dword_l & MASKBYTE1) >> 8,
-				(dword_l & MASKBYTE2) >> 16,
-				(dword_l & MASKBYTE3) >> 24,
-				dword_h & MASKBYTE0, (dword_h & MASKBYTE1) >> 8,
-				(dword_h & MASKBYTE2) >> 16,
-				(dword_h & MASKBYTE3) >> 24);
-		else
-			PHYDM_SNPRINTF(
-				output + used, out_len - used,
-				"%02x  %02x  %02x  %02x  %02x  %02x  %02x  %02x\n",
-				dword_l & MASKBYTE0, (dword_l & MASKBYTE1) >> 8,
-				(dword_l & MASKBYTE2) >> 16,
-				(dword_l & MASKBYTE3) >> 24,
-				dword_h & MASKBYTE0, (dword_h & MASKBYTE1) >> 8,
-				(dword_h & MASKBYTE2) >> 16,
-				(dword_h & MASKBYTE3) >> 24);
+		PHYDM_SNPRINTF(output + used,
+			       out_len - used,
+			       "%02x  %02x  %02x  %02x  %02x  %02x  %02x  %02x\n",
+			       dword_l & MASKBYTE0,
+			       (dword_l & MASKBYTE1) >> 8,
+			       (dword_l & MASKBYTE2) >> 16,
+			       (dword_l & MASKBYTE3) >> 24,
+			       dword_h & MASKBYTE0,
+			       (dword_h & MASKBYTE1) >> 8,
+			       (dword_h & MASKBYTE2) >> 16,
+			       (dword_h & MASKBYTE3) >> 24);
 	}
 }
 
diff --git a/drivers/staging/rtlwifi/phydm/phydm_dig.c b/drivers/staging/rtlwifi/phydm/phydm_dig.c
index f10776fbe2d9..99c805cc380b 100644
--- a/drivers/staging/rtlwifi/phydm/phydm_dig.c
+++ b/drivers/staging/rtlwifi/phydm/phydm_dig.c
@@ -599,13 +599,8 @@ void odm_dig_init(void *dm_void)
 		       (DM_DIG_MAX_PAUSE_TYPE + 1));
 	dig_tab->pause_cckpd_level = 0;
 
-	if (dm->board_type & (ODM_BOARD_EXT_PA | ODM_BOARD_EXT_LNA)) {
-		dig_tab->rx_gain_range_max = DM_DIG_MAX_NIC;
-		dig_tab->rx_gain_range_min = DM_DIG_MIN_NIC;
-	} else {
-		dig_tab->rx_gain_range_max = DM_DIG_MAX_NIC;
-		dig_tab->rx_gain_range_min = DM_DIG_MIN_NIC;
-	}
+	dig_tab->rx_gain_range_max = DM_DIG_MAX_NIC;
+	dig_tab->rx_gain_range_min = DM_DIG_MIN_NIC;
 
 	dig_tab->enable_adjust_big_jump = 1;
 	if (dm->support_ic_type & ODM_RTL8822B) {
diff --git a/drivers/staging/rtlwifi/phydm/phydm_hwconfig.c b/drivers/staging/rtlwifi/phydm/phydm_hwconfig.c
index e1544e38944b..e7dcb5b02ad4 100644
--- a/drivers/staging/rtlwifi/phydm/phydm_hwconfig.c
+++ b/drivers/staging/rtlwifi/phydm/phydm_hwconfig.c
@@ -1719,8 +1719,6 @@ static void phydm_get_rx_phy_status_type2(struct phy_dm_struct *dm,
 					  ODM_RTL8710B)) { /* JJ ADD 20161014 */
 		if (rxsc == 3)
 			bw = ODM_BW40M;
-		else if ((rxsc == 1) || (rxsc == 2))
-			bw = ODM_BW20M;
 		else
 			bw = ODM_BW20M;
 	}
diff --git a/drivers/staging/rtlwifi/phydm/phydm_psd.c b/drivers/staging/rtlwifi/phydm/phydm_psd.c
index badc514ac0be..c93d871f1eb6 100644
--- a/drivers/staging/rtlwifi/phydm/phydm_psd.c
+++ b/drivers/staging/rtlwifi/phydm/phydm_psd.c
@@ -336,12 +336,7 @@ void phydm_psd_init(void *dm_void)
 			2; /*2b'11: 20MHz, 2b'10: 40MHz, 2b'01: 80MHz */
 	}
 
-	if (dm->support_ic_type == ODM_RTL8812)
-		dm_psd_table->psd_pwr_common_offset = 0;
-	else if (dm->support_ic_type == ODM_RTL8821)
-		dm_psd_table->psd_pwr_common_offset = 0;
-	else
-		dm_psd_table->psd_pwr_common_offset = 0;
+	dm_psd_table->psd_pwr_common_offset = 0;
 
 	phydm_psd_para_setting(dm, 1, 2, 3, 128, 0, 0, 7, 0);
 	/*phydm_psd(dm, 0x3c, 0, 127);*/ /* target at -50dBm */
-- 
2.17.1


