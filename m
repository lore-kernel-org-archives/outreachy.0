X-GM-THRID: 6209065689827770368
X-Received: by 10.140.233.208 with SMTP id e199mr20322333qhc.8.1445661142520;
        Fri, 23 Oct 2015 21:32:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.109.100 with SMTP id k91ls2276461qgf.38.gmail; Fri, 23 Oct
 2015 21:32:21 -0700 (PDT)
X-Received: by 10.140.129.204 with SMTP id 195mr20314423qhb.1.1445661141950;
        Fri, 23 Oct 2015 21:32:21 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x231.google.com (mail-pa0-x231.google.com. [2607:f8b0:400e:c03::231])
        by gmr-mx.google.com with ESMTPS id vy6si2574805pbc.1.2015.10.23.21.32.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 23 Oct 2015 21:32:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) client-ip=2607:f8b0:400e:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x231.google.com with SMTP id hk11so135131650pad.1
        for <outreachy-kernel@googlegroups.com>; Fri, 23 Oct 2015 21:32:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=hQDHPuLkIB47mrLvlnRKsnp+KuFFZHfQvWvdXeWMQaU=;
        b=lf+YNDbOjOKf/gkfgAkVnwY6UxEw+mMt0+SdPOTi4yeDR9VBuB3IS5Vja06nPTycbl
         xR6zbPcVD5BU5CIvztbCH1HIBQ9JoKYsgzjjHh5fPqnMx3+V9OjwivouU61UeOF1ri5v
         OyQ5clCPILpCrpPvg4kjsRTY+YBjbPDJIb1wVgj9no73kL2kazKPLb1968mCb+79vC68
         jjkYQ+yx1cH5umOhBxDNZL8NM18GhAtluSVmGQAssdJVchWtYkyyQhNkBzyzf7mMeco2
         pwu9SO9x6U9rfOjmsTq55/Wg40++NcLLrIr4ViOU2YWd4Tcn4p6ipeoqe0lHDikpbe6X
         tAIg==
X-Received: by 10.66.220.100 with SMTP id pv4mr9022489pac.46.1445661141798;
        Fri, 23 Oct 2015 21:32:21 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from Ubuntu-D830 (or-67-232-67-97.dhcp.embarqhsd.net. [67.232.67.97])
        by smtp.gmail.com with ESMTPSA id an5sm21712987pbd.45.2015.10.23.21.32.21
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 23 Oct 2015 21:32:21 -0700 (PDT)
Date: Fri, 23 Oct 2015 21:32:20 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 3/4] staging: r8723au: replace explicit NULL comparisons with
 !
Message-ID: <15a44247445850c39fdb2a41cc2570ba19985b67.1445653471.git.amsfield22@gmail.com>
References: <cover.1445653471.git.amsfield22@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1445653471.git.amsfield22@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Replace explicit NULL comparison with ! operator to simplify code.

Addresses checkpatch.pl:
WARNING: Comparisons should place the constant on the right side of the
test

Signed-off-by: Alison Schofield <amsfield22@gmail.com>
---
 drivers/staging/rtl8723au/core/rtw_ap.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8723au/core/rtw_ap.c b/drivers/staging/rtl8723au/core/rtw_ap.c
index 69e3f09..12552f6 100644
--- a/drivers/staging/rtl8723au/core/rtw_ap.c
+++ b/drivers/staging/rtl8723au/core/rtw_ap.c
@@ -670,10 +670,10 @@ static void start_bss_network(struct rtw_adapter *padapter, u8 *pbuf)
 	 * and at first time the security
 	 * ie (RSN/WPA IE) will not include in beacon
 	 */
-	if (NULL == cfg80211_find_vendor_ie(WLAN_OUI_MICROSOFT,
-					    WLAN_OUI_TYPE_MICROSOFT_WPS,
-					    pnetwork->IEs,
-					    pnetwork->IELength))
+	if (!cfg80211_find_vendor_ie(WLAN_OUI_MICROSOFT,
+				     WLAN_OUI_TYPE_MICROSOFT_WPS,
+				     pnetwork->IEs,
+				     pnetwork->IELength))
 		pmlmeext->bstart_bss = true;
 
 	/* todo: update wmm, ht cap */
-- 
2.1.4


