X-GM-THRID: 6251919067627651072
X-Received: by 10.66.102.69 with SMTP id fm5mr22354576pab.47.1455638340195;
        Tue, 16 Feb 2016 07:59:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.214.7 with SMTP id nw7ls1766349obc.93.gmail; Tue, 16 Feb
 2016 07:58:59 -0800 (PST)
X-Received: by 10.182.236.34 with SMTP id ur2mr21505369obc.10.1455638339539;
        Tue, 16 Feb 2016 07:58:59 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-ig0-x22e.google.com (mail-ig0-x22e.google.com. [2607:f8b0:4001:c05::22e])
        by gmr-mx.google.com with ESMTPS id mu6si1256051igb.1.2016.02.16.07.58.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Feb 2016 07:58:59 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c05::22e as permitted sender) client-ip=2607:f8b0:4001:c05::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c05::22e as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ig0-x22e.google.com with SMTP id 5so81313279igt.0
        for <outreachy-kernel@googlegroups.com>; Tue, 16 Feb 2016 07:58:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=M0fS8sBxe2Y2ancgT9rzQzACgdGzmVoBd+W4LnPQTnY=;
        b=vutQdTKnjHr25U6qG9gdmHkHj1x6XEiXAo4+DvoWztFC+4ctPrMzL2b/ZzaTAoMYe8
         OuBYAV+bYdDufNe/LtwGpriQ42RSDb1OkqmVZZFcfZhwlW/kQ3LDIKW9gVIqHItbEqtU
         7YMioUR/Bcmnacvvo390XC6LSjNSNDWhsIMYJEQyJqs8E8TCOlpDUBMAe7mkJfvoIJFN
         18OpAubaXLIpYY8Fc8MIQ3HMI1/BMLyUB2DmgetYmR/DRS+zy+S35cxtx6zBUAP++D36
         eee8UX1hjgAZyV852vwd8cVIOITr81w8Lm6KoFH2eZ5Uhq56Z+o01uyT8/q0eHGwT65a
         8HlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=M0fS8sBxe2Y2ancgT9rzQzACgdGzmVoBd+W4LnPQTnY=;
        b=IfMtJ1pwz5P+sK27BIetR3KU8/cOmj6zLigPweWjG6HQr6TXXaIymf6gXJNm2+nyEP
         ZSfJ6Sw4ZeLVEEBsAuMLVvF0uMIO+v66bWTpiEnjCDCserXMhkuE+ftsmneO2UjsRNEb
         NxF8vgJrcI0sPyrei5pNw1NskCCs1VuUbu5lQJGzcx8g8bvjtr4n6RL+kRksrXUYRwdj
         2ufLPtt9aakuzRalt5vqgq7sMRyEnWE+G2bYpxRwk6juONeoPZgplzN5bwjW6vAGRGEA
         6aMsQKQH8NeHx4LVYv8YYmmDCrYUMwPnc1wyThT9wcX27RA9WXMdpZjj0oHxiFAmQJI6
         z28w==
X-Gm-Message-State: AG10YORv82FMjxkbGl/5aOGqbEHZUXfYJCkSZdiCxJQHq/jhHVnIOPVREGfogRkHl1EI3w==
X-Received: by 10.50.73.168 with SMTP id m8mr20080455igv.53.1455638339376;
        Tue, 16 Feb 2016 07:58:59 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id k16sm8839787igf.0.2016.02.16.07.58.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Feb 2016 07:58:58 -0800 (PST)
Date: Tue, 16 Feb 2016 15:58:17 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: wilc1000: Use kmalloc_array instead of kmalloc
Message-ID: <20160216205817.GA16090@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Use kmalloc_array instead of kmalloc for arrays to prevent integer
overflows.

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
 drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
index 81a2ee9..7554cd4 100644
--- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
+++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
@@ -664,7 +664,7 @@ static int scan(struct wiphy *wiphy, struct cfg80211_scan_request *request)
 		PRINT_D(CFG80211_DBG, "Number of SSIDs %d\n", request->n_ssids);
 
 		if (request->n_ssids >= 1) {
-			strHiddenNetwork.net_info = kmalloc(request->n_ssids * sizeof(struct hidden_network), GFP_KERNEL);
+			strHiddenNetwork.net_info = kmalloc_array(request->n_ssids, sizeof(struct hidden_network), GFP_KERNEL);
 			strHiddenNetwork.n_ssids = request->n_ssids;
 
 
-- 
2.5.0


