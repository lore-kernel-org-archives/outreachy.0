X-GM-THRID: 6802341871401041920
X-Received: by 2002:a5b:d47:: with SMTP id f7mr20447113ybr.396.1583793636863;
        Mon, 09 Mar 2020 15:40:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:c102:: with SMTP id r2ls3121401ybf.5.gmail; Mon, 09 Mar
 2020 15:40:35 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsRww14CpPLNkl5TgBBlQobCHYufcE7pApheOV0zwKhYadHzVwg9rbEP1tu52nFmshERANM
X-Received: by 2002:a25:e045:: with SMTP id x66mr20738507ybg.402.1583793635476;
        Mon, 09 Mar 2020 15:40:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583793635; cv=none;
        d=google.com; s=arc-20160816;
        b=XQXrxc9wo6hRiaPVlRSnadG5N15M0KmKqMRYE2kiXfpQLMz2nKDNpHjy3BYUbnfU7u
         qH0yTvgUeCeuT65gGZo4keI/BLxCX+55LinIglW72TTW+YK376b7AVPpPrsYLReRDa62
         yj/9x2gcEPmtbmm6kgdPtGJjs7JIshR88j6fj0kJQm2qOy0mzSkRCjh6sNSlAdCLsMCE
         h/02CVXZS86cBhELZ10DuH8Ku428CLMRcXBREnLzQ2udWM0Q9ZZj0y6jzBaUxnrBo9nQ
         UCJpuXa2x2tqbkuvr9by5V+mj+dADGbn5qMaBzzJ8y4mcYJNjzy4sySPYLmpKzAi2lhL
         kKKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature;
        bh=JgsKbxAfnLuXqL3RsMoezlNM/XmwEKMgzo2b9ZQjGQU=;
        b=gsz0XmYpbm9U5ndXAqnuXfbAssMlWw2gCQ8vYfFJ20qWVPZhqEftviAuaEpF+rqx2b
         UxG2Buf6sP8OExvjcgVi/A17wthk2yU5baP4mLmFcYC90aAQUO6EO8iyjguep7ERZlYm
         DfbeS9I1WccDV6r7xpD2D9IpTUm9IkgAmtYQN47jwttWz6jMP5phWrSGt5AQGu7oGw1f
         IYJEoxRbF51IF6bOEGis3v0+IFO9jJ9UyjiMblzRc2xa3MQSvoDeQ4YnK7y8cezUuVG6
         NNEaABPhNgdnv4fDI4XIYgH6fMKlbIyCbIkQEJqfloLS/LphxUf6AeIoSSqLbEdhon7k
         4xDA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@es-iitr-ac-in.20150623.gappssmtp.com header.s=20150623 header.b=kP4cNXe1;
       spf=neutral (google.com: 2607:f8b0:4864:20::643 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) smtp.mailfrom=kgupta@es.iitr.ac.in;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=iitr.ac.in
Return-Path: <kgupta@es.iitr.ac.in>
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id b127si275851ywf.1.2020.03.09.15.40.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Mar 2020 15:40:32 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::643 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) client-ip=2607:f8b0:4864:20::643;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@es-iitr-ac-in.20150623.gappssmtp.com header.s=20150623 header.b=kP4cNXe1;
       spf=neutral (google.com: 2607:f8b0:4864:20::643 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) smtp.mailfrom=kgupta@es.iitr.ac.in;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=iitr.ac.in
Received: by mail-pl1-x643.google.com with SMTP id f8so4581059plt.10
        for <outreachy-kernel@googlegroups.com>; Mon, 09 Mar 2020 15:40:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=es-iitr-ac-in.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=JgsKbxAfnLuXqL3RsMoezlNM/XmwEKMgzo2b9ZQjGQU=;
        b=kP4cNXe1TUWMcCaIVLhEsK5J18lSTa2d3+LlUy2kM9V5wQfpY9zzGPoiF7sBK3xaz+
         JZ4evo2t1QNxtjieW9VjVJ6qgkPrcydyc39LDeM5+6cKTuWTTliPGeecmiaLzroWbx3n
         rJOD1cv6tXRUp0+uL3Qpz5tm5Yt6nAyY/ILEJ7070lbJZ0dqC3H8jY9PbaFPZ+tEV3uh
         69w3lwptwY8r5esDYvPHOZATqR+CKL4E72GFLe6zFmWpnf7JoYzvAhg/BGZTWSCMJMdN
         INQapeJHsT+6Az0EhXRrfyzOhnc3PyDwtkEJufanYwoabwb5KYkue7vywZ0f9MMZONin
         ehUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=JgsKbxAfnLuXqL3RsMoezlNM/XmwEKMgzo2b9ZQjGQU=;
        b=R1L7/DLPIGBSupveUXEqdvdLyThJ++4B16tBqy85lgsFFNEq7iss1waMiIb1u56It0
         dS37wttXfj+mYb3GYBzuP47Pb5CUkHBcmyfq8MjP3XXy34smlT+Y4Zif+izmE7faX+FI
         swdeXjwxwPXiRHaRQwjB4OLxsfMj9NDAJ4UDiDOJupwhB6bjC+NtD6CgMML0oX8T3l9C
         UeCPq4XJNcB9ztjSXTdV1K4mTsrxG3qAZS9J9m55bk76C0+C56UP0r3o/k2663imgbjC
         nqjjZblLF283Lo4LcuOnh9cEDHtxhhIVzvFwXvtObbieVlx6ikb2efp6PuQkK2YvAKQf
         4Mtw==
X-Gm-Message-State: ANhLgQ3Qvc4qmTdsl69+rw9QXk7XoQGaVy1m71R4OjiMZloSerZXcRUZ
	yKXDtZtQhTQJv3601Tu27ppO5A==
X-Received: by 2002:a17:90a:1596:: with SMTP id m22mr1603067pja.73.1583793631848;
        Mon, 09 Mar 2020 15:40:31 -0700 (PDT)
Return-Path: <kgupta@es.iitr.ac.in>
Received: from kaaira-HP-Pavilion-Notebook ([103.37.201.174])
        by smtp.gmail.com with ESMTPSA id u12sm44792921pfm.165.2020.03.09.15.40.28
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 09 Mar 2020 15:40:31 -0700 (PDT)
Date: Tue, 10 Mar 2020 04:10:24 +0530
From: Kaaira Gupta <kgupta@es.iitr.ac.in>
To: Ian Abbott <abbotti@mev.co.uk>,
	H Hartley Sweeten <hsweeten@visionengravers.com>,
	Forest Bond <forest@alittletooquiet.net>,
	=?iso-8859-1?B?Suly9G1l?= Pouiller <jerome.pouiller@silabs.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 4/7] staging: wfx: remove variable declaration
Message-ID: <20200309224024.GA5808@kaaira-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

int r is uneccessarily declared and assigned to 0. Return 0 directly.

Signed-off-by: Kaaira Gupta <kgupta@es.iitr.ac.in>
---
 drivers/staging/wfx/sta.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/wfx/sta.c b/drivers/staging/wfx/sta.c
index 03d0f224ffdb..a60ac03fa73d 100644
--- a/drivers/staging/wfx/sta.c
+++ b/drivers/staging/wfx/sta.c
@@ -293,7 +293,6 @@ int wfx_conf_tx(struct ieee80211_hw *hw, struct ieee80211_vif *vif,
 	struct wfx_dev *wdev = hw->priv;
 	struct wfx_vif *wvif = (struct wfx_vif *) vif->drv_priv;
 	int old_uapsd = wvif->uapsd_mask;
-	int ret = 0;
 
 	WARN_ON(queue >= hw->queues);
 
@@ -307,7 +306,7 @@ int wfx_conf_tx(struct ieee80211_hw *hw, struct ieee80211_vif *vif,
 		wfx_update_pm(wvif);
 	}
 	mutex_unlock(&wdev->conf_mutex);
-	return ret;
+	return 0;
 }
 
 int wfx_set_rts_threshold(struct ieee80211_hw *hw, u32 value)
-- 
2.17.1


