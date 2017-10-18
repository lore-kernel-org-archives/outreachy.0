X-GM-THRID: 6478086724175003648
X-Received: by 10.98.157.144 with SMTP id a16mr3558539pfk.44.1508297424769;
        Tue, 17 Oct 2017 20:30:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.98.185.6 with SMTP id z6ls767681pfe.1.gmail; Tue, 17 Oct 2017
 20:30:23 -0700 (PDT)
X-Received: by 10.84.142.1 with SMTP id 1mr2437131plw.36.1508297423885;
        Tue, 17 Oct 2017 20:30:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508297423; cv=none;
        d=google.com; s=arc-20160816;
        b=0WtGB+qpk4BbYno20q8fi0mYhQ10wihKKvGJoWYxNPKGmuCT3Vd8u6vnx4199sKikh
         u9G7YBcamgLz3NYi96AeuB3lwhdBD8F6pN7+5/6pn0ZfY04ZU/nPxsyMXeHXR8iTQ9d6
         YfTMkl1rU/FXMGuebPpRy3AAwDenxefbIWO2ZLJI2DGzfbN9FuIV1jygA7t9Wcr6SYqg
         ArhrkEqFb0ctK8yNAjSIwgRWZYYsmQDxYAHCOPbFgRWvx7nd6KmtbO8GM8utUFbUdlW/
         4Tr7cokkd4crvvcIT10FYlMMiQ6+iGKGZCl2KFn/KWXNDiz/UwRWdGBTjyq3UXlMVFK4
         GrkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=HyZOCDpAs94juO2ST29hyw0tPVzw4IC0FgsmsZW6dZI=;
        b=YW0+zsw4NHoKhVr0O9kzHVA8sAC2PvU/DT6UUtPt5kbd9Dj1Z7BeTdvpY4qLaAuB4q
         e//u9Q9uZdxpcTPNiWBy98AcxRFsqEPWh/6EuDgMiwbg38GgEKMQnWU5jMpYqp5iUDQv
         bsdKoRmXfDVO1NWtdhnQPSF1BmyTkBJDOmgM16UfbJmyO1warMqeqrIU3Jplg44fLCh7
         8G+gji7DtNdYSqlMMJ7ble2X0/FCvs4MvSaQ6WZJTDRz9qw8iOWbTu3A3HlMOrUYjffM
         a1I0JfzZIOscPDVXidMlNWBxqIE7pcvvEZ6ADhMUd9QymxvRUVd3RhHmNHoPY0TVavi9
         iEdg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=rIyKRsr6;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:400c:c05::234 as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Return-Path: <frank@generalsoftwareinc.com>
Received: from mail-vk0-x234.google.com (mail-vk0-x234.google.com. [2607:f8b0:400c:c05::234])
        by gmr-mx.google.com with ESMTPS id b9si723974pfm.1.2017.10.17.20.30.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Oct 2017 20:30:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:400c:c05::234 as permitted sender) client-ip=2607:f8b0:400c:c05::234;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=rIyKRsr6;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:400c:c05::234 as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Received: by mail-vk0-x234.google.com with SMTP id q13so2466018vkb.2
        for <outreachy-kernel@googlegroups.com>; Tue, 17 Oct 2017 20:30:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=generalsoftwareinc-com.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=HyZOCDpAs94juO2ST29hyw0tPVzw4IC0FgsmsZW6dZI=;
        b=rIyKRsr6DD4RAobHHmF+Uzko7g4YRpZN9uFdM0mwgCYC9b79Y1QTlOu2TivYuXG7RB
         WNyzL++cDi2/m9n/ufLBQqaAaXh7Hw78B9kfmPTSwaXeA+RwEdzdPpZg7PSyV8oUrRDk
         A+OyDqdBBu6fmBeM3ZOYvdo9KGdVcHKC11rGFnYfkdPts0MOj5Dr0N/6MtQQ3SpXY6Ll
         M3gE8h/h8U1ZtAmnGF2jhl++M8hd4XC/ldutaK2OfIGUnOhZqGTH5pa2E/nRz+C8TEQE
         Dd8wcE5ux5CoH1VO15MbNOJSp4SZkeWi/17AV+0B5LkUARZprbaY3v5JXal6HItlbhCz
         CHxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=HyZOCDpAs94juO2ST29hyw0tPVzw4IC0FgsmsZW6dZI=;
        b=gUKY574R77kizMfTjMJPfKmxgOBfoDPcLVEB6B01h54pFHD9cPCjbrZzXnLJ7DYyuw
         mcYsdK4NWZXdS0V7xlCng2GZ/6C/LqGYsrcP6e+nDZh0mbNCD+Z4co9e0eftFh2Dz7Zt
         /UafaFYUC6yyqlvl9FoG4vA5Y79Qo/tDxVDaz+R8OxHYQDChALHeSrA3YXvu7F+xlCSH
         7HIVw8nIHsW8dziNbAsmpb/4hc7OS7xK9vSb3VowwYqIaOKmtSr/Js2TJzy8YawVpYPf
         3djNhaN5BCyJPFRqv2JJ8ZdBMLf/Bdf+teHfH60wRRy5lbd8mjUbA1oyC60Hpg4o1hqF
         lbzA==
X-Gm-Message-State: AMCzsaVlzZsaDhKhgCP7Kfwb+A22q/x+1QBlH0wPZRLP0JAyiZKqCT1P
	SdBojGkS6tIjqWmWqTU5RULxaPtI
X-Google-Smtp-Source: ABhQp+RIcnlWLmwpMmprcLg5qEQLKnE1q0CkLtKuYFqsF/1tqnXHq3FSzLyTPu80GY0C7spqQzbCGw==
X-Received: by 10.31.73.129 with SMTP id w123mr4504063vka.163.1508297422770;
        Tue, 17 Oct 2017 20:30:22 -0700 (PDT)
Return-Path: <frank@generalsoftwareinc.com>
Received: from ubuntu-server-1604 ([152.206.125.129])
        by smtp.gmail.com with ESMTPSA id 5sm3392295vkh.10.2017.10.17.20.30.21
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 17 Oct 2017 20:30:22 -0700 (PDT)
Date: Tue, 17 Oct 2017 23:30:20 -0400
From: "Frank A. Cancio Bello" <frank@generalsoftwareinc.com>
To: pablo@netfilter.org, Julia.Lawall@lip6.fr
Cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: [PATCH 1/4] staging: rtlwifi: rtl8822be: Balance braces in else
 statement
Message-ID: <d00f40fcdf006d232220524b368bb849b785ace5.1508295702.git.frank@generalsoftwareinc.com>
References: <cover.1508295702.git.frank@generalsoftwareinc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1508295702.git.frank@generalsoftwareinc.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Add braces to else statements to comply with section 3) of  'Linux
kernel coding style' and avoid the following checkpatch message:
'CHECK: Unbalanced braces around else statement'

Credits to checkpatch.

Signed-off-by: Frank A. Cancio Bello <frank@generalsoftwareinc.com>
---
 drivers/staging/rtlwifi/rtl8822be/fw.c  | 3 ++-
 drivers/staging/rtlwifi/rtl8822be/phy.c | 3 ++-
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtlwifi/rtl8822be/fw.c b/drivers/staging/rtlwifi/rtl8822be/fw.c
index 8e24da1..02f5004 100644
--- a/drivers/staging/rtlwifi/rtl8822be/fw.c
+++ b/drivers/staging/rtlwifi/rtl8822be/fw.c
@@ -766,9 +766,10 @@ void rtl8822be_set_fw_rsvdpagepkt(struct ieee80211_hw *hw, bool b_dl_finished)
 		rtl8822be_fill_h2c_cmd(hw, H2C_8822B_RSVDPAGE,
 				       sizeof(u1_rsvd_page_loc),
 				       u1_rsvd_page_loc);
-	} else
+	} else {
 		RT_TRACE(rtlpriv, COMP_ERR, DBG_WARNING,
 			 "Set RSVD page location to Fw FAIL!!!!!!.\n");
+	}
 }
 
 /* Should check FW support p2p or not. */
diff --git a/drivers/staging/rtlwifi/rtl8822be/phy.c b/drivers/staging/rtlwifi/rtl8822be/phy.c
index 921226b..589ef15 100644
--- a/drivers/staging/rtlwifi/rtl8822be/phy.c
+++ b/drivers/staging/rtlwifi/rtl8822be/phy.c
@@ -1562,9 +1562,10 @@ static char _rtl8822be_phy_get_txpower_limit(struct ieee80211_hw *hw, u8 band,
 						      [channel_index]
 						      [rate_section]
 						      [channel_index][rf_path];
-	} else
+	} else {
 		RT_TRACE(rtlpriv, COMP_INIT, DBG_LOUD,
 			 "No power limit table of the specified band\n");
+	}
 
 	return power_limit;
 }
-- 
2.7.4


