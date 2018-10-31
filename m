X-GM-THRID: 6618414504788099072
X-Received: by 2002:a24:10cd:: with SMTP id 196-v6mr1106240ity.21.1540969774899;
        Wed, 31 Oct 2018 00:09:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:624e:: with SMTP id d75-v6ls2851872itc.6.gmail; Wed, 31
 Oct 2018 00:09:34 -0700 (PDT)
X-Google-Smtp-Source: AJdET5cjKTgO6nyXZHkQ/IbcshcbcwG1CxsVPVMdwlo4fJ7BQFiM97LHkER8E851G2rTiRdwBrMm
X-Received: by 2002:a24:7f53:: with SMTP id r80-v6mr1154839itc.2.1540969774236;
        Wed, 31 Oct 2018 00:09:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540969774; cv=none;
        d=google.com; s=arc-20160816;
        b=NI1+g6X36aKYTfVQpj0eZJswRFJgV0/UF48GzfqUSgl9uE05k8E+NmJ6d/0aQv8blG
         xfbMp8+1VnimRc5v0M9V8XZWgkgRxBtqbLWoazSneEo+Qxto5yz6Jf8x7K5xnzyVjzx/
         Sm3y3VlZYLge3INQZaRYX4wY49eANhhPDqBLm1Mx926WxDVFrhDcc7oPWn9fTdYj+t9p
         DG13OTB17g8uhNe9C3odMj9Nd8A9HYHgJbLaWE4ebtbu4zOnM0Y4tAtW6pDRdo1dbacG
         DPwnTG1ry1ozf5Zu8eK3lRSlItNVu614wq7QI+w5XuX5uXS3aaJZNYP5qg9VaXSFsVX6
         Qogw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature;
        bh=GLfu4Vvx+UhRB5HYvJ943tk39UF2/H5o3dGbDetf5w8=;
        b=akyAv026sNSC8HZsRZmcYI0XsEHRVRUHTyJKxxYCTDtL2MEwgXoeBaFegQ+Qr9aZjU
         CerdVyBBwoLG/D5RHjYn4wFKGFMeRJ+hHgg0HQzkuceC+/3iVWLWcBm7kRtfZfIfkUNO
         2SPB9z6qupGoZ+jWW9SVW15glyqTx9vCarbgUSeUczuf/xzZbnAyMFc1qjWNtiYXjtEA
         Qp2xXApggYE+LwFpfqaProbLK7ES0nWkyxsCDHjJELlQwhZfMDK8gLfyoyrBzlpayg2a
         aGC3bXT5WwaUM8ZBgvkKEVYzTnPF9gzDVBdTO0NXVXoOushRvtQp8KmPJta2RY/Jhwv+
         7e9Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rf78vFu3;
       spf=pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::d44 as permitted sender) smtp.mailfrom=m.maya.nakamura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <m.maya.nakamura@gmail.com>
Received: from mail-io1-xd44.google.com (mail-io1-xd44.google.com. [2607:f8b0:4864:20::d44])
        by gmr-mx.google.com with ESMTPS id b133-v6si14665itc.3.2018.10.31.00.09.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 31 Oct 2018 00:09:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::d44 as permitted sender) client-ip=2607:f8b0:4864:20::d44;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rf78vFu3;
       spf=pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::d44 as permitted sender) smtp.mailfrom=m.maya.nakamura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-io1-xd44.google.com with SMTP id d80-v6so8963742iof.1
        for <outreachy-kernel@googlegroups.com>; Wed, 31 Oct 2018 00:09:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=GLfu4Vvx+UhRB5HYvJ943tk39UF2/H5o3dGbDetf5w8=;
        b=rf78vFu3k+sQhJII7ClCVbPwnrv92Lu6uCkL94S/z4l+zKTd8dIw3BviidKW/7UQu9
         utag9LhinD4OmlcPR97EIaek332xtNgNCftVCsJMfghebUkKBR6xTbs68K5wJQz4tlqj
         iUqutleFDnHOLPt/gIqnTemSRdd/6vwXj4H5T3b9OXXRGRFl99nd1x9Ardc3axLYrDTD
         z+8fLEMiC6pp2PYMZqmue2iH+jUJG890d7aP/LodtibUvfIsUlo3cr6lhgErjm511+gg
         H7tWua//Z8Li6jvqul1eFZVML6xTcCH8AlQr7kPQ4L1TtIzlobrCEhg59tAtxzqpteKi
         nw6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=GLfu4Vvx+UhRB5HYvJ943tk39UF2/H5o3dGbDetf5w8=;
        b=OXXBOj5YjAb5vh2rFWcdmUhxpBLuSfKO2gjAd0DHSc7W5sZJDESSORBUBc/deHmyPG
         eJmiFf6+yQFFAdwfxWqUqqd8uywjkD+FKnCbwF/L1ZixMTYJvTQLcfBHT2oPEtB/m9LC
         RY9AmybYSEuE8YyQ7o63LGxoEGGTdSzAClSiF83FIZZ6l1TNrHkUcIzoalPIq2LcCBGu
         AP32SOdSAa0JZuYVVkygmM0j4by9LvkoyCqdTY9t67zIUf/U8AtWJC4Hx6s7+Z+xbBqH
         SsBqdUgkbkjxrq7ddezO07roZw/P6zwnHvr7ENEStnA6/ypTr+meutHq1QKzQ1G5Ftv2
         3GZQ==
X-Gm-Message-State: AGRZ1gKsakuOPr9ov7TwtO44ZGiBgZhuGZPSX478JCoHCK4hbZKQYzy5
	sprUdFwleLiTzEo19Pvz6o0zwL+iJiQ=
X-Received: by 2002:a6b:7a01:: with SMTP id h1-v6mr1126990iom.89.1540969773663;
        Wed, 31 Oct 2018 00:09:33 -0700 (PDT)
Return-Path: <m.maya.nakamura@gmail.com>
Received: from k-vBox (50-47-85-193.evrt.wa.frontiernet.net. [50.47.85.193])
        by smtp.gmail.com with ESMTPSA id p21-v6sm1264571itc.42.2018.10.31.00.09.32
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 31 Oct 2018 00:09:33 -0700 (PDT)
Date: Wed, 31 Oct 2018 00:09:31 -0700
From: Maya Nakamura <m.maya.nakamura@gmail.com>
To: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: [PATCH 1/2] staging: rtlwifi: Remove unnecessary conditions
Message-ID: <df3c2d2e594882103372bf96a8ec4d37971768a6.1540968891.git.m.maya.nakamura@gmail.com>
References: <cover.1540968891.git.m.maya.nakamura@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1540968891.git.m.maya.nakamura@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

Remove conditions with no effect. Issues found by Coccinelle's semantic
patch results for cond_no_effect.cocci. Eliminate checkpatch result, a
line should not end with a parenthesis.

Signed-off-by: Maya Nakamura <m.maya.nakamura@gmail.com>
---
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


