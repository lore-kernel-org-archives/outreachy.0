X-GM-THRID: 6467597635831201792
X-Received: by 10.25.150.66 with SMTP id y63mr356544lfd.23.1505939540052;
        Wed, 20 Sep 2017 13:32:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.138.131 with SMTP id y3ls301893wry.5.gmail; Wed, 20 Sep
 2017 13:32:19 -0700 (PDT)
X-Received: by 10.223.183.19 with SMTP id l19mr445961wre.6.1505939539238;
        Wed, 20 Sep 2017 13:32:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505939539; cv=none;
        d=google.com; s=arc-20160816;
        b=Of30M3782DLOc7aCTznXzfmpDioGVhy7RLfFq03xEfTC/0Lz/sByVxQ9pXl5mZsPeO
         Ri4nMW6aVbG+v11Zuh+GLLUEPn34iezJdqQRhk9cZSiWXErBFqdRpH3wGM6auXqZ/ImV
         fCHpzxAyKRqZ+0K98MWroX9Jg3LDzTt64XfT2JW8dW3Wi5SnBYbs5CIo+Xvm3FR7FQv+
         FXVxI3I6gxqlNI1DG/lJ7F27eQ+CNvVURMALcmoXexWwLSncBViGGmSO4k6Gd/zFcJqe
         5SaQCmVV0JosigRxoWfe3haUORBH4xRlt7ctSc93LfnRNLcnB5Q0EkpaKbtKxOweZGZN
         oArw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:date:from:dkim-signature:arc-authentication-results;
        bh=/gfstn5zqsFjvGELLQhnAgt10vDG6pbMourVUUGDvK8=;
        b=wOTU5vnNic3g5K7fqeJkOZshdbMOZLHgmsbeSk0h6Mck8Hq0LuJFpsIrWNFDYvXr5L
         JDEiAm84/pCNgNXT5SlsCapFlKOEuJkgI+9uVh7NVOeweMxD7CNSF0VjH9CP3d26oHqd
         opUYL8iAjmKMgk7wRyxRVuKm2r9hpDGBKDqttFPEVtvcVX3WVDF1zreosgp4c3s9PmzU
         6NF278xjawtV2JepSvKnkT3zor1Awda8bP2ZwN8dR7VyPcFBIAS7/w5dl71ToCv5w14I
         bfBzYofVktUzBmsbLTvYlTCwYwH/dHIoesDyUZMLztteXRqc7BZyq4nVhKi/ZzAsCfJl
         A1cg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=i4JufG/l;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-wr0-x244.google.com (mail-wr0-x244.google.com. [2a00:1450:400c:c0c::244])
        by gmr-mx.google.com with ESMTPS id p70si5974wma.1.2017.09.20.13.32.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Sep 2017 13:32:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) client-ip=2a00:1450:400c:c0c::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=i4JufG/l;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x244.google.com with SMTP id p37so2084847wrb.5
        for <outreachy-kernel@googlegroups.com>; Wed, 20 Sep 2017 13:32:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:date:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=/gfstn5zqsFjvGELLQhnAgt10vDG6pbMourVUUGDvK8=;
        b=i4JufG/lsrySQ3X0Jhwu1GSLwDzHcaAfqHjsF0TRmCpO24ytZWsuE9CBLGOepdqJ1r
         Y08LBm46BmzfJ73L3XR94kOoPzlepQNCNKuYoaeFYbyWWcda0Tevgk8DfnKTJMlpF3xe
         tCP1rW3xvvRuzBMsnOMTSq6bGn7Vk3ieiwndj7J8FiwH1UiZyTizh7NSCt/g8SfAMUeO
         LZ+8ingEWcRcsMAkkVmpeo3pX7MBU7NPQ90iRXFqrra/Q00lwcsTzQGTSE7dXuTzi3t9
         /Do4kSCPXcPFwBaSooMpVlTPsuemjMNWiNXvHuU/jZyzHNcClN9Ysmf+0taDHuuUhjRc
         ztJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:date:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=/gfstn5zqsFjvGELLQhnAgt10vDG6pbMourVUUGDvK8=;
        b=Ow3MgR7Ql/hSnbQCi4xSqTXAeHUtizmid1ueQbse5IF/HRP/EWBmiJkmf/zlKlkO2f
         XCQ9Q5pqoOM0KYg+1UHZOR7VLEdfO3yfxgs8dCQ76MnhkaOwpBrVQJltr7XEw67Y1D0Y
         N2l6IT6McoxHSEd3RBrAsCcZc07HxS+DsiJNygUcRC9UqAsKzusA+dFcZgQM038eIBC8
         1VIfoAA4mFzljTnUy8fwFGQKLL5Pz5MDq57qmTN/Rm5fequSWMHrIxXxlz3mlhwfb+Dd
         mFkPOpDXvg7fMv1LQLu73t84rrvQA0mD5N9biC2pX7/OUl0VGiYsGSHicl7PydWF1NOK
         ZN1w==
X-Gm-Message-State: AHPjjUhWh9oz9i2F4Jq5l63c4iPefoTFQNB2CKCBArT3VN6DT/RGnlbE
	9LK29T5LCyLqbO+UcXKLPC0=
X-Google-Smtp-Source: AOwi7QBkQV/n4e6ct8xZyCkx6+BD5iSDbKveM8MwFqbVJN3Q8f3ELzSeGegX4RKrrZsBkSnN3cwtJg==
X-Received: by 10.223.131.99 with SMTP id 90mr5660699wrd.198.1505939538781;
        Wed, 20 Sep 2017 13:32:18 -0700 (PDT)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from fireworks ([86.124.247.82])
        by smtp.gmail.com with ESMTPSA id 90sm2365487wrl.52.2017.09.20.13.32.18
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 20 Sep 2017 13:32:18 -0700 (PDT)
From: Georgiana Chelu <georgiana.chelu93@gmail.com>
X-Google-Original-From: Georgiana Chelu <georgiana.chelu93@example.com>
Date: Wed, 20 Sep 2017 23:32:17 +0300
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2] Staging: rtlwifi: halmac: Remove unnecessary 'out of
 memory' messages
Message-ID: <20170920203217.33igeua3t2kmprtm@fireworks>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)

Remove unnecessary messages because OOM (Out Of Memory Manager)
reports memory allocation fail messages. The return value
is clear regarding the problem, so there is no need for the
'out of memory' comments. Also, delete braces {} for single
if statement blocks to improve the coding style.

Fix issues found by by checkpatch.pl.
WARNING: Possible unnecessary 'out of memory' message.
WARNING: braces {} are not necessary for single statement blocks

Signed-off-by: Georgiana Chelu <georgiana.chelu93@example.com>
---

Changes in v2:
* Remove 'out of memory' comments
* Delete braces {} for single if statement blocks
* Improve the patch message

 .../rtlwifi/halmac/halmac_88xx/halmac_func_88xx.c  | 44 ++++++----------------
 1 file changed, 11 insertions(+), 33 deletions(-)

diff --git a/drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_func_88xx.c b/drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_func_88xx.c
index f33024e4d853..29dd9cf28db7 100644
--- a/drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_func_88xx.c
+++ b/drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_func_88xx.c
@@ -276,17 +276,13 @@ halmac_dump_efuse_drv_88xx(struct halmac_adapter *halmac_adapter)
 
 	if (!halmac_adapter->hal_efuse_map) {
 		halmac_adapter->hal_efuse_map = kzalloc(efuse_size, GFP_KERNEL);
-		if (!halmac_adapter->hal_efuse_map) {
-			pr_err("[ERR]halmac allocate efuse map Fail!!\n");
+		if (!halmac_adapter->hal_efuse_map)
 			return HALMAC_RET_MALLOC_FAIL;
-		}
 	}
 
 	efuse_map = kzalloc(efuse_size, GFP_KERNEL);
-	if (!efuse_map) {
-		/* out of memory */
+	if (!efuse_map)
 		return HALMAC_RET_MALLOC_FAIL;
-	}
 
 	if (halmac_read_hw_efuse_88xx(halmac_adapter, 0, efuse_size,
 				      efuse_map) != HALMAC_RET_SUCCESS) {
@@ -325,10 +321,8 @@ halmac_dump_efuse_fw_88xx(struct halmac_adapter *halmac_adapter)
 	if (!halmac_adapter->hal_efuse_map) {
 		halmac_adapter->hal_efuse_map = kzalloc(
 			halmac_adapter->hw_config_info.efuse_size, GFP_KERNEL);
-		if (!halmac_adapter->hal_efuse_map) {
-			/* out of memory */
+		if (!halmac_adapter->hal_efuse_map)
 			return HALMAC_RET_MALLOC_FAIL;
-		}
 	}
 
 	if (!halmac_adapter->hal_efuse_map_valid) {
@@ -537,10 +531,8 @@ halmac_read_logical_efuse_map_88xx(struct halmac_adapter *halmac_adapter,
 
 	if (!halmac_adapter->hal_efuse_map_valid) {
 		efuse_map = kzalloc(efuse_size, GFP_KERNEL);
-		if (!efuse_map) {
-			pr_err("[ERR]halmac allocate local efuse map Fail!!\n");
+		if (!efuse_map)
 			return HALMAC_RET_MALLOC_FAIL;
-		}
 
 		status = halmac_func_read_efuse_88xx(halmac_adapter, 0,
 						     efuse_size, efuse_map);
@@ -554,7 +546,6 @@ halmac_read_logical_efuse_map_88xx(struct halmac_adapter *halmac_adapter,
 			halmac_adapter->hal_efuse_map =
 				kzalloc(efuse_size, GFP_KERNEL);
 			if (!halmac_adapter->hal_efuse_map) {
-				pr_err("[ERR]halmac allocate efuse map Fail!!\n");
 				kfree(efuse_map);
 				return HALMAC_RET_MALLOC_FAIL;
 			}
@@ -592,10 +583,8 @@ halmac_func_write_logical_efuse_88xx(struct halmac_adapter *halmac_adapter,
 	driver_adapter = halmac_adapter->driver_adapter;
 
 	eeprom_map = kzalloc(eeprom_size, GFP_KERNEL);
-	if (!eeprom_map) {
-		/* out of memory */
+	if (!eeprom_map)
 		return HALMAC_RET_MALLOC_FAIL;
-	}
 	memset(eeprom_map, 0xFF, eeprom_size);
 
 	status = halmac_read_logical_efuse_map_88xx(halmac_adapter, eeprom_map);
@@ -687,10 +676,8 @@ halmac_func_pg_efuse_by_map_88xx(struct halmac_adapter *halmac_adapter,
 	enum halmac_ret_status status = HALMAC_RET_SUCCESS;
 
 	eeprom_mask_updated = kzalloc(eeprom_mask_size, GFP_KERNEL);
-	if (!eeprom_mask_updated) {
-		/* out of memory */
+	if (!eeprom_mask_updated)
 		return HALMAC_RET_MALLOC_FAIL;
-	}
 
 	status = halmac_update_eeprom_mask_88xx(halmac_adapter, pg_efuse_info,
 						eeprom_mask_updated);
@@ -743,12 +730,10 @@ halmac_update_eeprom_mask_88xx(struct halmac_adapter *halmac_adapter,
 	driver_adapter = halmac_adapter->driver_adapter;
 
 	eeprom_map = kzalloc(eeprom_size, GFP_KERNEL);
-	if (!eeprom_map) {
-		/* out of memory */
+	if (!eeprom_map)
 		return HALMAC_RET_MALLOC_FAIL;
-	}
-	memset(eeprom_map, 0xFF, eeprom_size);
 
+	memset(eeprom_map, 0xFF, eeprom_size);
 	memset(eeprom_mask_updated, 0x00, pg_efuse_info->efuse_mask_size);
 
 	status = halmac_read_logical_efuse_map_88xx(halmac_adapter, eeprom_map);
@@ -2548,10 +2533,8 @@ halmac_parse_efuse_data_88xx(struct halmac_adapter *halmac_adapter, u8 *c2h_buf,
 		halmac_adapter->efuse_segment_size = segment_size;
 
 	eeprom_map = kzalloc(eeprom_size, GFP_KERNEL);
-	if (!eeprom_map) {
-		/* out of memory */
+	if (!eeprom_map)
 		return HALMAC_RET_MALLOC_FAIL;
-	}
 	memset(eeprom_map, 0xFF, eeprom_size);
 
 	spin_lock(&halmac_adapter->efuse_lock);
@@ -3354,10 +3337,8 @@ enum halmac_ret_status halmac_query_dump_logical_efuse_status_88xx(
 		*size = eeprom_size;
 
 		eeprom_map = kzalloc(eeprom_size, GFP_KERNEL);
-		if (!eeprom_map) {
-			/* out of memory */
+		if (!eeprom_map)
 			return HALMAC_RET_MALLOC_FAIL;
-		}
 		memset(eeprom_map, 0xFF, eeprom_size);
 
 		if (halmac_eeprom_parser_88xx(
@@ -3578,10 +3559,8 @@ halmac_verify_send_rsvd_page_88xx(struct halmac_adapter *halmac_adapter)
 
 	rsvd_buf = kzalloc(h2c_pkt_verify_size, GFP_KERNEL);
 
-	if (!rsvd_buf) {
-		/*pr_err("[ERR]rsvd buffer malloc fail!!\n");*/
+	if (!rsvd_buf)
 		return HALMAC_RET_MALLOC_FAIL;
-	}
 
 	memset(rsvd_buf, (u8)h2c_pkt_verify_payload, h2c_pkt_verify_size);
 
@@ -3598,7 +3577,6 @@ halmac_verify_send_rsvd_page_88xx(struct halmac_adapter *halmac_adapter)
 			    GFP_KERNEL);
 
 	if (!rsvd_page) {
-		pr_err("[ERR]rsvd page malloc fail!!\n");
 		kfree(rsvd_buf);
 		return HALMAC_RET_MALLOC_FAIL;
 	}
-- 
2.11.0


