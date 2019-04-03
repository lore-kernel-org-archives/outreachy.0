X-GM-THRID: 6674267883353145344
X-Received: by 2002:a6b:720b:: with SMTP id n11mr50698ioc.3.1554307713215;
        Wed, 03 Apr 2019 09:08:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:456a:: with SMTP id y103ls802770ita.2.gmail; Wed, 03 Apr
 2019 09:08:31 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzmT27XoSO1+Sy1NU3+ErTjcrudrAcioKcewNexnP/v8yUCKi+P5XMsSNkzCphlKHvibVaH
X-Received: by 2002:a24:1fc8:: with SMTP id d191mr95827itd.29.1554307711875;
        Wed, 03 Apr 2019 09:08:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554307711; cv=none;
        d=google.com; s=arc-20160816;
        b=YR7Se1h6IDAUnmFT5+uOcbTxVbI9pz/ybu9ubyu7syDfEmJ91L6qNCYBjv1siqhhiy
         u049s0n/MflE/zWAS+h/sijZyS/MK158oYeL6aE7AapqcnxP+UfUsv6y87/WJGF65uvC
         yqBv3Rsv+AeBu9tEhcrFUt8RKKDHlUYtAkoI1OBkQLZsBRkiyYfOt8Xgno8pn0zxTnpz
         IcqsR0nwN/QQslqN+PFrsj2yDwE9hC1vYPfKa+osINtN5DNyhXYtjtAVlnGpPbjo6EFf
         7bL4ex1XD7Rex0tKuC0dz2BZ/vd/e19NLMjtlDby8rDJKr55iwKLtXXh3aMTZjaSbTXG
         EaMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=bXf+D4ptkCCNEWeiMN3D001gymIWnGaxe94xCzlhE/Y=;
        b=gLfx0IWn4d7zOqVGi4XFofvdbjmVDOYNFPopSj+05JkTkf5Mhqy+MRfdN1b6AA0np8
         /TZOylitVCxq2+0uLtqY3j3WKddrzUL+/eOm3JEdzpFx1XU+ao7o6kKxfUVmuX2oUSpY
         xvolv9LaOFjD1W21EEXYWoJYSR2i8vHnybxZ2Do9PWS9/7h089duUwXG9JFkV31oSXvD
         Gd0hDV6OKIRvYSqd1j1NZixrK4U9FK3yXR+PcUFIEDm4PPomsrBptdAETwUmab5V1ioN
         51nG5+02ZEjGQyZqEgq9nrZ+wIxfihaKzi885hshNZpICGW8Zjr3nWEm+Lf76uFttwtJ
         M9kQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=W1JaLqMK;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id w136si910732itb.2.2019.04.03.09.08.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 03 Apr 2019 09:08:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=W1JaLqMK;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x542.google.com with SMTP id y3so8544858pgk.12
        for <outreachy-kernel@googlegroups.com>; Wed, 03 Apr 2019 09:08:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=bXf+D4ptkCCNEWeiMN3D001gymIWnGaxe94xCzlhE/Y=;
        b=W1JaLqMKgJl5Yi+YBPqH7KhWmRNngBD3i8cWKsLP7/9poR2KyAWcJXRUrHMBj/BIgI
         K3jn/qvz2MhsGGUB6/5z6HIm2Zt3WXQCnNo/jXx55bfFPyUWRjqajqlv/z5aNPvzs1FG
         sHvOKIaRsctuHLDEWP9rQ2SgYXwqc+PvteDkJasfaztuobWTCAZgRCulW0rHi0FZ83t7
         GJ5h8w/hd4FwuOcUTgqMUSt+vQ+07Vs/O0R9zUl8rgUAxWFo3iTBa9YdQddZHDuJbyTN
         QVKMh1nO+g60ZxCTnVQXT6VTZC3K/uvoE8t4qkVrzT2rRr2IgmboRIFz4xzFgwwyWBf0
         07Ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=bXf+D4ptkCCNEWeiMN3D001gymIWnGaxe94xCzlhE/Y=;
        b=MWWTbUlBvAvsmZMnk8DTSrSfcD/2j4JODqmcRXTkFqkMzKQ4TEdDivTXG4cp8kkFd4
         xEzrFAfz4KeWJFPBAMuWbUHCNxBlEZp6nhAfeXkiboI56LAckuo44ozJkOYJ1pclaEfX
         nEe903DK1ru+X6nBsnPHodvOARFAolW/cEnH8jkN4id48fIVs/evOSrdcWjc1djlFnKf
         Aaay7dkMXBPwNa8+t+bLlYs9+XLscdj+olGTqXsyne+Y0B+EQ6cwthu602yFqAhfgeAi
         H9E2UaonyFjxNAZkEPpCewbTSX70s5F6dNUzRSSOT9TYkazUSjceUAxopyRv5QIpVsU7
         vxyw==
X-Gm-Message-State: APjAAAUKPWS4sYBgcr7HNssqQGvoM06oPLXQD32qQdwtogOgSr3fgcDK
	NAlvbq+0RTaBREUiRBYCceE=
X-Received: by 2002:a63:cf0d:: with SMTP id j13mr523813pgg.34.1554307710679;
        Wed, 03 Apr 2019 09:08:30 -0700 (PDT)
Return-Path: <himadri18.07@gmail.com>
Received: from localhost.localdomain (mx2.daiict.ac.in. [14.139.122.121])
        by smtp.googlemail.com with ESMTPSA id l88sm29528277pfb.104.2019.04.03.09.08.26
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 03 Apr 2019 09:08:29 -0700 (PDT)
From: Himadri Pandya <himadri18.07@gmail.com>
To: Larry.Finger@lwfinger.net,
	florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Himadri Pandya <himadri18.07@gmail.com>
Subject: [PATCH] staging: rtl8712: remove unnecessary NULL check
Date: Wed,  3 Apr 2019 21:38:16 +0530
Message-Id: <20190403160816.38958-1-himadri18.07@gmail.com>
X-Mailer: git-send-email 2.17.1

List wlan_network is built properly with init_list_head and
list_add_tail which cancels out its probability of being NULL because of
the precence of list_head at the top of this structure. Hence, the NULL
test can be omitted.

Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_mlme.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_mlme.c b/drivers/staging/rtl8712/rtl871x_mlme.c
index e370841a79ca..7c7267d0fc9e 100644
--- a/drivers/staging/rtl8712/rtl871x_mlme.c
+++ b/drivers/staging/rtl8712/rtl871x_mlme.c
@@ -1120,8 +1120,6 @@ int r8712_select_and_join_from_scan(struct mlme_priv *pmlmepriv)
 		}
 		pnetwork = container_of(pmlmepriv->pscanned,
 					struct wlan_network, list);
-		if (!pnetwork)
-			return _FAIL;
 		pmlmepriv->pscanned = pmlmepriv->pscanned->next;
 		if (pmlmepriv->assoc_by_bssid) {
 			dst_ssid = pnetwork->network.MacAddress;
-- 
2.17.1


