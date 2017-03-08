X-GM-THRID: 6394973559619321856
X-Received: by 10.99.0.79 with SMTP id 76mr1800793pga.145.1488945810388;
        Tue, 07 Mar 2017 20:03:30 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.48.22 with SMTP id d22ls741418otc.43.gmail; Tue, 07 Mar
 2017 20:03:30 -0800 (PST)
X-Received: by 10.129.101.133 with SMTP id z127mr1974864ywb.137.1488945809995;
        Tue, 07 Mar 2017 20:03:29 -0800 (PST)
Return-Path: <tahia.khan@gmail.com>
Received: from mail-it0-x244.google.com (mail-it0-x244.google.com. [2607:f8b0:4001:c0b::244])
        by gmr-mx.google.com with ESMTPS id g205si1105297ita.2.2017.03.07.20.03.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Mar 2017 20:03:29 -0800 (PST)
Received-SPF: pass (google.com: domain of tahia.khan@gmail.com designates 2607:f8b0:4001:c0b::244 as permitted sender) client-ip=2607:f8b0:4001:c0b::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of tahia.khan@gmail.com designates 2607:f8b0:4001:c0b::244 as permitted sender) smtp.mailfrom=tahia.khan@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-it0-x244.google.com with SMTP id r141so3012458ita.1
        for <outreachy-kernel@googlegroups.com>; Tue, 07 Mar 2017 20:03:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=Wi7UZydZqvzjUejETa7Asm5WUm5cb0nTjAlNhtnRaxA=;
        b=R9e9xp6/t1k8bexqSwGzgA4HAvADMD+qDgwmvoZWUsIvJciGGA3cwFEfWzK+Zw8vPN
         Ch47RDJOU+0HLLtu/fBb30kEuLp8nwI+r2g1IbIHyyugl+W+XzaoelruzDFMt37z2yZ2
         x0f59fj7nLoxOYnf3Z6MT+Ec0+2OLna/1bBcYbO2pGIiAvyqaWbgBhm2S9yD018yS5pC
         DrrISN3NLDlp0vfPHmaDZSFvlO1+rrxKohN+adx3PAHn52T/lOyaJaRBokOQrFcdNqVT
         TKeYuW2uK6Sw+ZWZ5iiz4DSrK5e7ADFo5r7CxgXTI5uG+x7H9uzT/XmbeEDwRLI4bLeu
         ejIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Wi7UZydZqvzjUejETa7Asm5WUm5cb0nTjAlNhtnRaxA=;
        b=Rif/vPM7DjJqsXUggUZcuGSsrfXJRUw2J7hT+BiZ3pWAPKk100UZyT9igdkmeRryXQ
         h2qQE1yT/ND3V0Qpzfel6xp8z/C8E4wvgoEU/kuy/YKy6coQcy6TyMtJKaNzLoyCTT3k
         Vg/tm3zuSelH6tSGTkg1fJHucNcEcQ655fLWkM29BWl5zP6ZyN6DmiAo6QMqAtxREBCs
         aRkYnFvlPa92T0G8/bg6q7JXsOirxUlf/QKmzBgBgSIlzg/wlzaZ42qb3lhUSyaTwxAd
         OMwNuH37Cue8opqwo1OZb65WH+3EJ8wV6sNK1Bn5bS7OAW133i3AzR0MMevn2ONDsQ65
         mdSw==
X-Gm-Message-State: AMke39mF0W1SL3+xCIVqzAs3/FCIN+qpLnuKKBG2IEbwDb0ujVSJ135cCTIz5XnElpNvWQ==
X-Received: by 10.36.91.67 with SMTP id g64mr4554833itb.20.1488945809749;
        Tue, 07 Mar 2017 20:03:29 -0800 (PST)
Return-Path: <tahia.khan@gmail.com>
Received: from coolbox (24-212-136-169.cable.teksavvy.com. [24.212.136.169])
        by smtp.gmail.com with ESMTPSA id x69sm543999ite.25.2017.03.07.20.03.29
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 07 Mar 2017 20:03:29 -0800 (PST)
Date: Tue, 7 Mar 2017 23:03:28 -0500
From: Tahia Khan <tahia.khan@gmail.com>
To: outreachy-kernel@googlegroups.com, aditya.shankar@microchip.com,
	ganesh.krishna@microchip.com, gregkh@linuxfoundation.org
Subject: [PATCH] staging: wilc1000: removes redundant 'continue' in while
 loop conditional blocks
Message-ID: <20170308040328.GA24535@coolbox>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Removing 6 continue statements from a while loop. The
continue statements are redundant here since control
already returns to the beginning of the loop upon exit
of any of the conditional blocks.

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


