X-GM-THRID: 6394973559619321856
X-Received: by 10.129.5.145 with SMTP id 139mr2893175ywf.96.1488986386467;
        Wed, 08 Mar 2017 07:19:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.166.19 with SMTP id p19ls1031807ioe.47.gmail; Wed, 08 Mar
 2017 07:19:45 -0800 (PST)
X-Received: by 10.99.36.131 with SMTP id k125mr3103003pgk.25.1488986385505;
        Wed, 08 Mar 2017 07:19:45 -0800 (PST)
Return-Path: <tahia.khan@gmail.com>
Received: from mail-it0-x243.google.com (mail-it0-x243.google.com. [2607:f8b0:4001:c0b::243])
        by gmr-mx.google.com with ESMTPS id z191si755806itc.0.2017.03.08.07.19.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Mar 2017 07:19:45 -0800 (PST)
Received-SPF: pass (google.com: domain of tahia.khan@gmail.com designates 2607:f8b0:4001:c0b::243 as permitted sender) client-ip=2607:f8b0:4001:c0b::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of tahia.khan@gmail.com designates 2607:f8b0:4001:c0b::243 as permitted sender) smtp.mailfrom=tahia.khan@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-it0-x243.google.com with SMTP id r141so5779367ita.1
        for <outreachy-kernel@googlegroups.com>; Wed, 08 Mar 2017 07:19:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=pRchykxz7b75vZSVkHPZM0cMsMAPI5uRdzQDBkcCCrM=;
        b=qAIQXTxPnVwbSY1812zTftDHL8intZVo33vCdQDiOy6u53ZFXHQSV3yP9zMa1lgHIk
         Vk4mdj1AYCgaEL/OCJHJCQ9NDNfCOU85HqzlLcvkqyX72T0B3MFB3Y79kGQOtBsOWoWx
         VagLLuK3Vh82bG3WdVSl79BwiehRlLx11ranyLbBc1tlNDpvTJvmf0PVENoGzkn+CFHh
         iFavvTCm6OMK6s21IH22ekf9K3gS1zcZWbpor8TYFIO4Hx3hqxEGu1DDyeYFYPlefpK3
         4xVL63cTg0aPqn+LelrIiAELWCYDcq6MN8l/h0HgSs/sJYCH9UMu7ytKVTkMYm4OazJk
         3J2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=pRchykxz7b75vZSVkHPZM0cMsMAPI5uRdzQDBkcCCrM=;
        b=BlplIPT9kMLtMrnKskawHx6wIPpT3L84kCFPnoIewEQFZQ0e/u9v5r/P4QDLz6KZaW
         8XZRMe/8aLC+Z7ujPODQP79oOSgRIn7qtoc0ycui9GS3meqoWn4/WbiBLobrZH+YREyA
         V6N6X12fQwQbgxGLteF/X3YjSZDaSE3UOQyyRpv+RLTXigkMhoyHf4Cuh866LukCLErE
         NiBZkbYHnOaEs9QUZgiuxC/Os385DBxy4Il7KyCFY+C36MSN9k3dVrIsGqlIRDbEYzXP
         dnkcqcsAYAkfe/NXNg+mu5qgk5Goazc2c7na2bPr6ePhN6LBOs5k1Uc72SZDNvVGsaix
         qhgA==
X-Gm-Message-State: AMke39nKqzo6sURsGNrV8pz9re5ey9ByoG2JGiAxg+AIu3V1nIgMLmvjLJcRlE9hqjn0sA==
X-Received: by 10.36.164.75 with SMTP id v11mr7054235iti.101.1488986385303;
        Wed, 08 Mar 2017 07:19:45 -0800 (PST)
Return-Path: <tahia.khan@gmail.com>
Received: from coolbox (24-212-136-169.cable.teksavvy.com. [24.212.136.169])
        by smtp.gmail.com with ESMTPSA id b25sm1626060iod.32.2017.03.08.07.19.44
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 08 Mar 2017 07:19:44 -0800 (PST)
Date: Wed, 8 Mar 2017 10:19:43 -0500
From: Tahia Khan <tahia.khan@gmail.com>
To: outreachy-kernel@googlegroups.com, aditya.shankar@microchip.com,
	ganesh.krishna@microchip.com, gregkh@linuxfoundation.org
Subject: [PATCH v2] staging: wilc1000: removes redundant 'continue' in while
 loop conditional blocks
Message-ID: <20170308151943.GA28915@coolbox>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Removing 6 continue statements from a while loop. The
continue statements are redundant here since control
already returns to the beginning of the loop upon exit
of any of the conditional blocks. Found using Coccinelle.

Changes since v1: Updating commit message to credit
 Coccinelle.

Signed-off-by: Tahia Khan <tahia.khan@gmail.com>
---
 drivers/staging/wilc1000/host_interface.c | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
index 2429c85..fdd902f 100644
--- a/drivers/staging/wilc1000/host_interface.c
+++ b/drivers/staging/wilc1000/host_interface.c
@@ -3890,7 +3890,6 @@ static void *host_int_ParseJoinBssParam(struct network_info *ptstrNetworkInfo)
 					pNewJoinBssParam->supp_rates[i + 1] = pu8IEs[index + i];
 
 				index += suppRatesNo;
-				continue;
 			} else if (pu8IEs[index] == EXT_SUPP_RATES_IE) {
 				extSuppRatesNo = pu8IEs[index + 1];
 				if (extSuppRatesNo > (MAX_RATES_SUPPORTED - suppRatesNo))
@@ -3902,11 +3901,9 @@ static void *host_int_ParseJoinBssParam(struct network_info *ptstrNetworkInfo)
 					pNewJoinBssParam->supp_rates[suppRatesNo + i + 1] = pu8IEs[index + i];
 
 				index += extSuppRatesNo;
-				continue;
 			} else if (pu8IEs[index] == HT_CAPABILITY_IE) {
 				pNewJoinBssParam->ht_capable = true;
 				index += pu8IEs[index + 1] + 2;
-				continue;
 			} else if ((pu8IEs[index] == WMM_IE) &&
 				   (pu8IEs[index + 2] == 0x00) && (pu8IEs[index + 3] == 0x50) &&
 				   (pu8IEs[index + 4] == 0xF2) &&
@@ -3918,7 +3915,6 @@ static void *host_int_ParseJoinBssParam(struct network_info *ptstrNetworkInfo)
 				if (pu8IEs[index + 8] & BIT(7))
 					pNewJoinBssParam->uapsd_cap = true;
 				index += pu8IEs[index + 1] + 2;
-				continue;
 			} else if ((pu8IEs[index] == P2P_IE) &&
 				 (pu8IEs[index + 2] == 0x50) && (pu8IEs[index + 3] == 0x6f) &&
 				 (pu8IEs[index + 4] == 0x9a) &&
@@ -3948,8 +3944,6 @@ static void *host_int_ParseJoinBssParam(struct network_info *ptstrNetworkInfo)
 				memcpy(pNewJoinBssParam->start_time, pu8IEs + u16P2P_count, 4);
 
 				index += pu8IEs[index + 1] + 2;
-				continue;
-
 			} else if ((pu8IEs[index] == RSN_IE) ||
 				 ((pu8IEs[index] == WPA_IE) && (pu8IEs[index + 2] == 0x00) &&
 				  (pu8IEs[index + 3] == 0x50) && (pu8IEs[index + 4] == 0xF2) &&
@@ -3995,7 +3989,6 @@ static void *host_int_ParseJoinBssParam(struct network_info *ptstrNetworkInfo)
 				}
 				pNewJoinBssParam->rsn_found = true;
 				index += pu8IEs[index + 1] + 2;
-				continue;
 			} else {
 				index += pu8IEs[index + 1] + 2;
 			}
-- 
2.7.4


