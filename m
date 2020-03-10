X-GM-THRID: 6802585330019991552
X-Received: by 2002:a67:3102:: with SMTP id x2mr81623vsx.193.1583850353319;
        Tue, 10 Mar 2020 07:25:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:f315:: with SMTP id p21ls1709448vsf.1.gmail; Tue, 10 Mar
 2020 07:25:52 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vt1mazs29icyT+KvLzro41eFNAslvhK2e3sZ3skjGN5INM3uDRCLdQ4mqxmqogThiieTSjo
X-Received: by 2002:a67:7f04:: with SMTP id a4mr13331061vsd.57.1583850352176;
        Tue, 10 Mar 2020 07:25:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583850352; cv=none;
        d=google.com; s=arc-20160816;
        b=jBEwmxXF9ckdNJw5TCshnfhsRzCHkTvNTXwroS9RsxuP37JYtLWweglFPB2Pyxilh4
         75MsagBgffmYKDbVhG0vQrhKszR3CH40852iqdm7fR2BoVXZ+oIT7a+6ck3VRHs2qTu3
         TqpG3eqB09bI5cMslgqBXx5eOXJswIRz1TZeysnCCASI4xPNxOZ+15x4ul6jMO0KsLu1
         GAeU4FX7dpx8NCmx5TBrDm/CodSuC2sAP+HKjri08AOmG34t+hYZdTpdv8JGjVh5OhnZ
         zrirSM6ofkZlMYzEPGTuS4V4yqvAvKhC/mkO9gIgmPqmWyhYiqbjyZjui8BX3sCaGD5u
         2PFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:to:from
         :dkim-signature;
        bh=HHPW1qnHET2jaNwFUaBNzEhbpxMNFhHQijClZiv3ZO8=;
        b=a8UQMDG5j2YG+/UbvphrOwlrpef/BzNHaEBMTkN2iORJ/CKkeecbcFBUll8coHg2gy
         qnnK7ybaiqTzRXAt33j8l+9F366SyaE5ZUWGVNsb7eh3CBt0/WA4BwI+kcJ9RxBsPnUe
         /WA+yO8xWV8/ugkpmakJ3W10ouU8sTZnzNS1e9k4AXVho7EOWqgG0ObMVLViypCacnWx
         S08fpFAqUl/8GFXFz2EGm1lQ43TYt1q4UbJulgX1+4rj4czPvFQNhTdeu2aj82pZKahZ
         Fmo9/h+BckHscwKHKyrbr8H/s7GO5w719vw4DONr5XzaD5royZOxtLTghNPwV/lrBQap
         ro6g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@es-iitr-ac-in.20150623.gappssmtp.com header.s=20150623 header.b=uK4XpJdh;
       spf=neutral (google.com: 2607:f8b0:4864:20::1043 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) smtp.mailfrom=kgupta@es.iitr.ac.in;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=iitr.ac.in
Return-Path: <kgupta@es.iitr.ac.in>
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id w4si851703vse.2.2020.03.10.07.25.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Mar 2020 07:25:51 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::1043 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) client-ip=2607:f8b0:4864:20::1043;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@es-iitr-ac-in.20150623.gappssmtp.com header.s=20150623 header.b=uK4XpJdh;
       spf=neutral (google.com: 2607:f8b0:4864:20::1043 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) smtp.mailfrom=kgupta@es.iitr.ac.in;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=iitr.ac.in
Received: by mail-pj1-x1043.google.com with SMTP id a16so484430pju.3
        for <outreachy-kernel@googlegroups.com>; Tue, 10 Mar 2020 07:25:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=es-iitr-ac-in.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=HHPW1qnHET2jaNwFUaBNzEhbpxMNFhHQijClZiv3ZO8=;
        b=uK4XpJdh36s75jWSuE+aN9fWSSBLkpbRwiEghlhn7zRUTB7UqgcbAXcwzeLYQyngSj
         hq6UXjQRYzLMgy1oX5Rd166B0srFbzQTsHsN2J+d3QwvISsPeK+zoQWJQTXmVAKKfrEj
         1r3v7HevIa/KVSxeFjkqsgkBqQT8uHm4/pMmCMGP2FBMK5EYKMud6DkK5wLgi6x+slzs
         Xnw3cIOVP5NymU4JRO4DZijYrbMBgargRayYXf6lRP0gskeaPrPW3VNwGwLthSjIZoz0
         YhD5dBnDGyljOtDVTkwOA/QcAQlZAzOpAAES4Zbc2l4JQRLVhRU0JnnOue1HetYeklhi
         rkZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=HHPW1qnHET2jaNwFUaBNzEhbpxMNFhHQijClZiv3ZO8=;
        b=oTQYUno78nV8NEUFvcuASlnuQnjFtmEVvOOObOwOHEjvFNCSzE/+XxwxcdwG7l+xkd
         SWXSOM3plxC3XX95zxofnR0uMSKMlJTU2ZZ0QmBbf7gPL6RYqt8wjY1XtBc+ON47WH5+
         igWRhquKz3B6O7bMCHKwS/BV20VHGov1uQSjy4fr+IXfM1iPL3brmLBrj64Go0z/nI+k
         KL3bBH1Bve/RZOI8JEToIAZCezhDBbDLimMA0uFmlD6QbejSRKISMMptBJnGgxmsjY4A
         0ZG/lB8YUKwrYcq3KSIYNSgZkItKSPfwpaLPWrYE8caxFE5dESdU9dZ0Og4vt36POPpH
         MaKw==
X-Gm-Message-State: ANhLgQ3DrW8Oz+xfxdDwWxzMlxEnt2BBtwW4eUJZMR+tMRqmn2TxHTut
	dlDKL0oiFlut3fBRjb07wx5ScA==
X-Received: by 2002:a17:90a:778a:: with SMTP id v10mr1940421pjk.135.1583850350487;
        Tue, 10 Mar 2020 07:25:50 -0700 (PDT)
Return-Path: <kgupta@es.iitr.ac.in>
Received: from kaaira-HP-Pavilion-Notebook ([103.37.201.174])
        by smtp.gmail.com with ESMTPSA id y7sm7799737pfq.159.2020.03.10.07.25.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2020 07:25:49 -0700 (PDT)
From: Kaaira Gupta <kgupta@es.iitr.ac.in>
To: jerome.pouiller@silabs.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com,
	kgupta@es.iitr.ac.in
Subject: [PATCH 5/6] staging: wfx: remove variable declaration
Date: Tue, 10 Mar 2020 19:55:08 +0530
Message-Id: <20200310142509.25632-6-kgupta@es.iitr.ac.in>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200310142509.25632-1-kgupta@es.iitr.ac.in>
References: <20200310142509.25632-1-kgupta@es.iitr.ac.in>

int ret is uneccessarily declared and 0 assigned to it. Return o
directly instead.

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


