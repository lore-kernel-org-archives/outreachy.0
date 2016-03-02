X-GM-THRID: 6257480922194509824
X-Received: by 10.66.171.167 with SMTP id av7mr10837181pac.17.1456933310624;
        Wed, 02 Mar 2016 07:41:50 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.92.69 with SMTP id ck5ls585619igb.23.canary; Wed, 02 Mar
 2016 07:41:49 -0800 (PST)
X-Received: by 10.107.7.200 with SMTP id g69mr28000533ioi.3.1456933309692;
        Wed, 02 Mar 2016 07:41:49 -0800 (PST)
Return-Path: <anchalj109@gmail.com>
Received: from mail-pf0-x22d.google.com (mail-pf0-x22d.google.com. [2607:f8b0:400e:c00::22d])
        by gmr-mx.google.com with ESMTPS id ui7si5343805pab.0.2016.03.02.07.41.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 02 Mar 2016 07:41:49 -0800 (PST)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c00::22d as permitted sender) client-ip=2607:f8b0:400e:c00::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c00::22d as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22d.google.com with SMTP id 124so74143795pfg.0
        for <outreachy-kernel@googlegroups.com>; Wed, 02 Mar 2016 07:41:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=vKGXQFpBSR47jslRUBew8Njo7kJC8mdrvfskq06z5yg=;
        b=ATT5CO+2dHq2fmYRdyZLdsti9zyV6ukQ4++81DVVZnB3RiJwa7qoqrRWsvjJ6B9ZNm
         GoCbv2pl6tFbpqVxQQVzEFa3rou/pJHDEWVUVaijA0/k1E0JX7JjwSeFLyDr5bRo6jeI
         GQBoAH9uedNjMsftvynkNWHnyXG5ctyqwgKTpR82voPV7+0yrsqcH2UYhltCT6Mann/M
         nEEMGe2VvYDIRNC/nBLsqqQnzQStuKKnSTbG6gxQtILIM0nN7MW214qIDTveHOI8z67O
         3mI16MKiB/IOnPAPsYqBV9zr8hDO4o3HjpkRtioSW3e7K4mCKOT2PUL0en1CqbpM1fq5
         qaJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=vKGXQFpBSR47jslRUBew8Njo7kJC8mdrvfskq06z5yg=;
        b=hoCy9AJiSBRRpBntdXsic934+2wVhPICI5VUz6V0bTKMqiNrm2CqBIhl8PHgmGCZoY
         XJxnMwVyTzhBO+f4Rf23HqdwsBk9BFrF/TjPRVA8mGSCHcrXufapALrYbZaPaYSLiqRp
         2q0uSi0+vkBJ9VAMFZMccWkaOKzNO2nGU1nV0lgiIOQywp8SlkyKjLi1gUR+gbyc7kUo
         WODCm77tB5JrkRu3q6AipdYMW9DFxI5ZMpmWuFttovnmnZBG9M2M6+Q7k2kq1nX3RO8w
         Hswxy5Qayvv0E7UlWiiwurbRF5wLFVkeGddYjA0DWgneLLNigWNBCIx/7jTlW8cXj95F
         61iQ==
X-Gm-Message-State: AD7BkJKvfRapUdP6ifSJTW/osCVjCtCpjjPaR13W35jlsGNYxv5BW1gtZeEI59yBaK88pA==
X-Received: by 10.98.16.69 with SMTP id y66mr39573235pfi.86.1456933309541;
        Wed, 02 Mar 2016 07:41:49 -0800 (PST)
Return-Path: <anchalj109@gmail.com>
Received: from life-desktop ([182.73.140.109])
        by smtp.gmail.com with ESMTPSA id h19sm11939368pfh.43.2016.03.02.07.41.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Wed, 02 Mar 2016 07:41:49 -0800 (PST)
Date: Wed, 2 Mar 2016 21:12:19 +0530
From: Anchal Jain <anchalj109@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: wilc1000: Remove a whitespace before parenthesis
Message-ID: <20160302154200.GA2599@life-desktop>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove a whitespace before parenthesis "("

Signed-off-by: Anchal Jain <anchalj109@gmail.com>
---
 drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
index 378c350..d41834b 100644
--- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
+++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
@@ -1442,7 +1442,7 @@ static void WILC_WFI_CfgParseTxAction(u8 *buf, u32 len, bool bOperChan, u8 iftyp
 	}
 }
 
-void WILC_WFI_p2p_rx (struct net_device *dev, u8 *buff, u32 size)
+void WILC_WFI_p2p_rx(struct net_device *dev, u8 *buff, u32 size)
 {
 	struct wilc_priv *priv;
 	u32 header, pkt_offset;
-- 
1.9.1


