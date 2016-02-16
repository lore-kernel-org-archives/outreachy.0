X-GM-THRID: 6251940862989697024
X-Received: by 10.107.185.4 with SMTP id j4mr24194096iof.21.1455643666762;
        Tue, 16 Feb 2016 09:27:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.89.165 with SMTP id v34ls4269303qgd.33.gmail; Tue, 16 Feb
 2016 09:27:46 -0800 (PST)
X-Received: by 10.13.194.67 with SMTP id e64mr21781944ywd.17.1455643666190;
        Tue, 16 Feb 2016 09:27:46 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-ig0-x234.google.com (mail-ig0-x234.google.com. [2607:f8b0:4001:c05::234])
        by gmr-mx.google.com with ESMTPS id iq8si1325106igb.0.2016.02.16.09.27.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Feb 2016 09:27:46 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c05::234 as permitted sender) client-ip=2607:f8b0:4001:c05::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c05::234 as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ig0-x234.google.com with SMTP id 5so83464843igt.0
        for <outreachy-kernel@googlegroups.com>; Tue, 16 Feb 2016 09:27:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=264ZT8Vkj9GDgUrbh01eaHbXUwvhoyFcTnQBJDFGG4A=;
        b=UWk4M3V0/4fuSSNqRTn0w1T2LK6UjEEuXIZyDbgT8OdjZexs5aa3BIT60Id69jiMCR
         ypy+TjyGiLT56c3SB/MkUJ4Tr15RI+BrK0l/+5BM38XQAne0RUWiWiAbWiPGK9X+/rTw
         JJ3EVpYWPU8kuKS6cQK+dobAVWz9aeE5oki9Wky3q1zYKB5Ayg63oFmkn3jQ2rVp1N9h
         phYZ2ucHl8yIt9GARA0qK5g+LmFebeUxLgQawqIQq7wmL3dWTeIWavzQCoG7k3dmQqa4
         eNhlmlHohjQXHs0fZmZ1mwTimhuApHeLVcLHKZerNDUNL/xA0D/n9igG8tTp5p+9fTRw
         5shw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-type:content-disposition:in-reply-to
         :user-agent;
        bh=264ZT8Vkj9GDgUrbh01eaHbXUwvhoyFcTnQBJDFGG4A=;
        b=CnWHpRS1/VyHfUFqGjbgjLIuiR1Xv1FT8cCPSd0DlspmyxlTb3HZGG5buZ6YqxzvXk
         EKEmAsTbX1pfIeQBN93K3vdkU9RCcB4PIFYj1zjNX/h/SxWGNsbK60TtFHQMJhUGlx1E
         KmzuLtLdLuCOhAAcQZsIssBxGzlgzLtjSXxjTWqJ/j/UBaBwz8///sNpM6gNR6T1Lp1P
         SQJDS/J7ReNr8fRow/bTdISlL3fkR/Of+nzHkbV2Gdxf1nhk2I+LTRCkXWvADrQ+F3mp
         efrwhDMsFNc+wxywsc2nXV0NzmZ0daU1IwTHyTLlmaFGYOl2xC4LM2wTodc9UAsCeDGu
         COuQ==
X-Gm-Message-State: AG10YOTu5K76GiqbmFQmkqd1MZIpiSe4H8EJC/jsWG3Bc7yL9GvzyE76tDdnE3auVi2tiQ==
X-Received: by 10.50.25.229 with SMTP id f5mr4509450igg.17.1455643666038;
        Tue, 16 Feb 2016 09:27:46 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id n8sm8951036igv.1.2016.02.16.09.27.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Feb 2016 09:27:45 -0800 (PST)
Date: Tue, 16 Feb 2016 17:27:03 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/2] staging: wilc1000: Rearrange statement to respect 80
 char limit
Message-ID: <b04f3e4f1be0b50f771d3ec18e942961b9d29bf7.1455661012.git.janani.rvchndrn@gmail.com>
References: <cover.1455661012.git.janani.rvchndrn@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1455661012.git.janani.rvchndrn@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Split statement across multiple lines as the line modified is over 80
chars in length.

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
 drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
index 7554cd4..eeb9843 100644
--- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
+++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
@@ -664,7 +664,10 @@ static int scan(struct wiphy *wiphy, struct cfg80211_scan_request *request)
 		PRINT_D(CFG80211_DBG, "Number of SSIDs %d\n", request->n_ssids);
 
 		if (request->n_ssids >= 1) {
-			strHiddenNetwork.net_info = kmalloc_array(request->n_ssids, sizeof(struct hidden_network), GFP_KERNEL);
+			strHiddenNetwork.net_info =
+				kmalloc_array(request->n_ssids,
+					      sizeof(struct hidden_network),
+					      GFP_KERNEL);
 			strHiddenNetwork.n_ssids = request->n_ssids;
 
 
-- 
2.5.0


