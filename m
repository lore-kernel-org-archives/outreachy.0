X-GM-THRID: 6669791309763444736
X-Received: by 2002:a9d:6448:: with SMTP id m8mr10255421otl.66.1552931803454;
        Mon, 18 Mar 2019 10:56:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:4255:: with SMTP id p82ls16020oia.4.gmail; Mon, 18 Mar
 2019 10:56:42 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzlOZevFXg6+GM6LF9didV5zcvtG4mjXFnTwDRhr5UtDKotKM5dhO0cPxCsjFSIN8h4GofJ
X-Received: by 2002:aca:4588:: with SMTP id s130mr11718530oia.44.1552931802198;
        Mon, 18 Mar 2019 10:56:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552931802; cv=none;
        d=google.com; s=arc-20160816;
        b=lWFbFCYBjFKeJpJrP9W9hJp8DVboI5FrsQSri+3Q3QOAliGQ3sUMjSCa9qU/qTAqm5
         Etf+gh+VioXJxDjqA3gCS2yOyXrCY3/IWQx6O+/zs2HEJ6dyXauMXR+ZQJRMANKiMTDK
         tUR5NJ0iylMQ680681uw9SQ1MykyJzzK6+iQvJOlSoLMR4+wAOyw1AUlPePToKx93o3K
         KXKYzEYTT9rkjlAI5WjLkg+7piZlKy26eBvJvjRRhQC2+V9V61Jh7BU8t6bodQN0gsmo
         A2YO8dRpy3UKhtQn94Gqbfy/fTWLOAlwRUyYXP4SdmYytUNSjshXqiJXjfWp+fleUwkU
         Ptrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=auARcuQYd11Tm4K9dDO6TOVwhL6gZMQDOosynm1pCtk=;
        b=t8WkjPc2nPPmF2AfdKUgeoWrC9E5s1t+SuRNUTlLjtaXlgTBBB3RaQXCZyXtDnU2AI
         5Hm4zfVPYHDaSeAWx79ZBdMYNQfYvNOQooAzd/SyEdX2a3O9Mwp1H2wlrVK6RwaFtmA2
         MvUCP7uTNrGPupS0dkec62b+MWPgNS2UDhwZRIbS5wJGSp41gIeFHYZd+iomttOVBIWu
         C4hrswsn2mIHD6EmjsCqKNGEi802uTcwHTiD97z7vRQZ5WaPdWEz51P3gIYZjHBTMX2Z
         3WU8+LVYgJ5r2z7UWtA0ozdULw+Qmu2q3Mqsb90bpgBTpfda1cJYTKJKOU0KJnzKivQ9
         iTKQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uxRSyqrJ;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::531 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pg1-x531.google.com (mail-pg1-x531.google.com. [2607:f8b0:4864:20::531])
        by gmr-mx.google.com with ESMTPS id l92si289398otc.4.2019.03.18.10.56.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Mar 2019 10:56:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::531 as permitted sender) client-ip=2607:f8b0:4864:20::531;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uxRSyqrJ;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::531 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x531.google.com with SMTP id u9so11905779pgo.7
        for <outreachy-kernel@googlegroups.com>; Mon, 18 Mar 2019 10:56:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=auARcuQYd11Tm4K9dDO6TOVwhL6gZMQDOosynm1pCtk=;
        b=uxRSyqrJe9QgDzDgtsxQMvcToHQOKD+5kGfF4mLvZ8I7B9ia2ywD/Xm1Y3KECxhTIs
         dbCB8NrazCl6G+SKt5tfIX8VfXK3hsg/nNbioJ37VExs15A5zavx27BIN2zrtEEwb4v9
         fHzsM1tlPUULO577ArWHKy5TEfi96UEiZygTrXiXY6VFyvwdG//ZQt44LioVHKF74IMP
         V2ArGr2/WQISp5XTTfzULCNN1S2RlkrqGwLCNii1M0EWTRKgOGc5vunHV5cSEf4qVmEJ
         GTxOl0kLgfkz6Nfz4cfgsdsUV7+yGIvH+NSeb0wt6ysRuDSPHWEhUybJI3kQiJVhIcOO
         h/1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=auARcuQYd11Tm4K9dDO6TOVwhL6gZMQDOosynm1pCtk=;
        b=p73cIBjlOjHJwfs3UzqZIZD239zEvwaGCkEWqjapXl1IC7NEsJo3xBrXfsRO9Hgu78
         EMGnBm9YPfA4aPhf9rFB8zJBua7z0Fmai8iUbIXfz6apVFirB4bGwmJ2i3slVCt1Cbvd
         p0WtzuRFjq5xxL/xxbbjzfXIViG87FzYoMZPom4FoIsUole/Hq3bDoBK2hymLmxEBCJm
         q/Y4thVHHcbNif4KiLEvefC1AH0wnW8t9jHAwbUaDYQAoWKjpirVZqS+Ns1GnFtS9JBY
         FNu4y0OSX5ASt2SjKjKg/xNfIEAuMJB10GIaKuZdsb/QINXuCzaHdTJHb0QN4HEx7iqe
         bpmw==
X-Gm-Message-State: APjAAAVjGa/M4rlZYd3BEusEf0B13uS6iKkFsDT3nl4erISlVfsMxfTJ
	e0VfaLFGVEfr2/Oj3icQKshCm7iKKxs=
X-Received: by 2002:a17:902:501:: with SMTP id 1mr20753850plf.72.1552931801924;
        Mon, 18 Mar 2019 10:56:41 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from sanjana-Inspiron-5570.domain.name ([203.109.108.32])
        by smtp.googlemail.com with ESMTPSA id p20sm5004451pgi.3.2019.03.18.10.56.39
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Mar 2019 10:56:41 -0700 (PDT)
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: rtl8188eu: rtw_ieee80211: Fix indent for 'if' statement.
Date: Mon, 18 Mar 2019 23:26:31 +0530
Message-Id: <20190318175631.6579-1-sanjana99reddy99@gmail.com>
X-Mailer: git-send-email 2.17.1

Adjust indentation for the condition statement.
Issue found by checkpatch.pl

WARNING: suspect code indent for condition statements(8,24)

Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_ieee80211.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_ieee80211.c b/drivers/staging/rtl8188eu/core/rtw_ieee80211.c
index 094e8e78f0e8..797ffa6e64d5 100644
--- a/drivers/staging/rtl8188eu/core/rtw_ieee80211.c
+++ b/drivers/staging/rtl8188eu/core/rtw_ieee80211.c
@@ -1008,10 +1008,10 @@ void rtw_get_bcn_info(struct wlan_network *pnetwork)
 	/* parsing HT_INFO_IE */
 	p = rtw_get_ie(pnetwork->network.ies + _FIXED_IE_LENGTH_, _HT_ADD_INFO_IE_, &len, pnetwork->network.ie_length - _FIXED_IE_LENGTH_);
 	if (p && len > 0) {
-			pht_info = (struct HT_info_element *)(p + 2);
-			pnetwork->BcnInfo.ht_info_infos_0 = pht_info->infos[0];
+		pht_info = (struct HT_info_element *)(p + 2);
+		pnetwork->BcnInfo.ht_info_infos_0 = pht_info->infos[0];
 	} else {
-			pnetwork->BcnInfo.ht_info_infos_0 = 0;
+		pnetwork->BcnInfo.ht_info_infos_0 = 0;
 	}
 }
 
-- 
2.17.1


