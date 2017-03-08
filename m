X-GM-THRID: 6394973559619321856
X-Received: by 10.107.16.83 with SMTP id y80mr3238688ioi.75.1489015301394;
        Wed, 08 Mar 2017 15:21:41 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.170.68 with SMTP id y4ls4481004iti.0.canary-gmail; Wed, 08
 Mar 2017 15:21:40 -0800 (PST)
X-Received: by 10.99.173.66 with SMTP id y2mr4003636pgo.18.1489015300601;
        Wed, 08 Mar 2017 15:21:40 -0800 (PST)
Return-Path: <tahia.khan@gmail.com>
Received: from mail-it0-x242.google.com (mail-it0-x242.google.com. [2607:f8b0:4001:c0b::242])
        by gmr-mx.google.com with ESMTPS id b188si1625071ite.3.2017.03.08.15.21.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Mar 2017 15:21:40 -0800 (PST)
Received-SPF: pass (google.com: domain of tahia.khan@gmail.com designates 2607:f8b0:4001:c0b::242 as permitted sender) client-ip=2607:f8b0:4001:c0b::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of tahia.khan@gmail.com designates 2607:f8b0:4001:c0b::242 as permitted sender) smtp.mailfrom=tahia.khan@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-it0-x242.google.com with SMTP id g138so8348239itb.0
        for <outreachy-kernel@googlegroups.com>; Wed, 08 Mar 2017 15:21:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=wEIo+apJw64tNRis3OWrKcqQSf6oNuruGF8FfSw7HfA=;
        b=Rgs5cDMSfM1a1MN+g0MU+fLngOC1TDbeY9bdU3JY99unGIDcNfaXLb1utAGIrji+CT
         f/egxiKhT+vq8eZALhbYjqZ1nrHtV40dro+gV3eb2rpxQh3Sn3qrfH8oWIq6/ilQ0CJ5
         Ti0cM2bpGz8wusoj8OHL+NuVgvLH+mhBSJUMjscaQH5GmID0tRLgHKY/oGmGCwnH0tQz
         4e1c+QIB/6ZwuCGXLGJfcBUl79tY+/VFKlU6nL9tvxJ1XxoGpxWtmbTs6Co0k4fgNDGE
         QVP3KoVBgbXKeAGEyIqKQcv79lN8uYjuwqlwHL5xvutuhRqne1mWUrlHsRlAna3+kk6c
         5x3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=wEIo+apJw64tNRis3OWrKcqQSf6oNuruGF8FfSw7HfA=;
        b=rVkG7ycpe5eNBoo/BXM0IxhZgrdVEd49geVR92ua+JFILJdSTmHUcKUnZ3fSJVJTbk
         kBSJrhfMWWGifJah4vHPox1ENNVXHPGLUaFNq0dB/fCGXUi4vABXLnwQjyMRJnXzIp75
         UoIMEA0vIU+HdFdeHOQY+xySzj0dkcxQQjRqzaMYYaVKrSWfqtFKjc9e32g0AOvgLwCF
         A9nxDALE69Iw0gXFDdOQRL4fh2bOq7ZSUd4pfvH6rRo84dvGsbqRan+zkHCY+haUSYs5
         QwMKOKB0eNrBjwgnsaQvBUGrVPGP6NGoYOCg6hZLSaA0aNAOlCuplnCAR3fi2NXmekuq
         M37Q==
X-Gm-Message-State: AMke39l04YDBRSRqOCraNP5y9K1SVkh3j3VH+yF4DJazgQsy4yAWHZ/dj3z/Z7DM9B1XrA==
X-Received: by 10.36.44.12 with SMTP id i12mr8704601iti.92.1489015300353;
        Wed, 08 Mar 2017 15:21:40 -0800 (PST)
Return-Path: <tahia.khan@gmail.com>
Received: from coolbox (24-212-136-169.cable.teksavvy.com. [24.212.136.169])
        by smtp.gmail.com with ESMTPSA id j13sm2182292ioe.41.2017.03.08.15.21.39
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 08 Mar 2017 15:21:39 -0800 (PST)
Date: Wed, 8 Mar 2017 18:21:38 -0500
From: Tahia Khan <tahia.khan@gmail.com>
To: outreachy-kernel@googlegroups.com, aditya.shankar@microchip.com,
	ganesh.krishna@microchip.com, gregkh@linuxfoundation.org
Subject: [PATCH v3] staging: wilc1000: removes redundant 'continue' in while
 loop conditional blocks
Message-ID: <20170308232138.GA16127@coolbox>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Removing 6 continue statements from a while loop. The
continue statements are redundant here since control
already returns to the beginning of the loop upon exit
of any of the conditional blocks. Found using Coccinelle.

Signed-off-by: Tahia Khan <tahia.khan@gmail.com>
---
Changes in v3: 
 - Fixes patch formatting.
Changes in v2: 
 - Credits Coccinelle in commit message.

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


