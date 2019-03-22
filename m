X-GM-THRID: 6671224625234444288
X-Received: by 2002:a6b:b258:: with SMTP id b85mr7998858iof.122.1553265526656;
        Fri, 22 Mar 2019 07:38:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a02:4c81:: with SMTP id q1ls3286768jad.0.gmail; Fri, 22 Mar
 2019 07:38:45 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwqHG1yU9JTSZiFa6lA1E5h5yxVcAL4j332iQhUQa1oy3QutNlAvdDhqv+xVPA6cfRjj1cE
X-Received: by 2002:a02:4802:: with SMTP id p2mr7704949jaa.8.1553265525668;
        Fri, 22 Mar 2019 07:38:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553265525; cv=none;
        d=google.com; s=arc-20160816;
        b=aP+FC6jhkDy9UpFo10hDFZlyfSQ8IJ6lDICUzx/VTSYNbx7uNoIjR9hQ7arK+q6lN5
         /vHzkXOsg9txQIbAtg0qzrZcNCXUYBGQ86PRisE+0v910H8mhJyVOQhJoUkq05ikxnkJ
         3au8ascWEkpNBlSAvU4yWcfp0ZLr9Kdt6o0qrmbJfQ4RW18i7MHhcnXC7Z5uyPgSbbHg
         Buelv/KwQHGAv25Mr48LgVAZKcBGsKFca7i1flgPAWiGmhvZPW+udGy0t24uD3UfW6MD
         hH+OpTNgO7vKbYwyaW9YCziMxcqXVn8Jm5/QRL3L9YcPKfJHEVLlogUHkWe1Uua5mo8C
         +H0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=uMogTxN0E/OXbYfebuvJVFfZHWxnJXRA4N9H/GmdD5k=;
        b=ZMdN//1JanisMpj4rl/JOXj9AlwD3NuQB8ZBM1bLfow3NZCv/hmN7GSNeV6jzh3zG7
         eSUBn+fTrPYpkYEF0AbJ+kwSXmDPg5J8GQcR+h+P3uv2jm7o9LJUXz9kjbmKn9Se+/kK
         rY5y3CEY6udaEBpwrvl99AgnbHJJLBAivtNxZIEK4BrJtlJmTZBe/nzG7MRCXl+oVLcA
         LGRXMgGpCfZu+T0CmYRnFm2W2gS61a8KEGJnSqxIBRY0FLLBKNSaBk8xLP18apBBwq+m
         S9KXlbyWMHew+Lf+9sAjSMsqFvcfnGwXYFQvXw+3ha5xGp0vjkwJD38xtRL2uLMW1try
         ZZ/w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=iaiwHA8N;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.240.143 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
Return-Path: <nishka.dasgupta@yahoo.com>
Received: from sonic314-19.consmr.mail.sg3.yahoo.com (sonic314-19.consmr.mail.sg3.yahoo.com. [106.10.240.143])
        by gmr-mx.google.com with ESMTPS id j6si891359itb.0.2019.03.22.07.38.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Mar 2019 07:38:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.240.143 as permitted sender) client-ip=106.10.240.143;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=iaiwHA8N;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.240.143 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1553265523; bh=uMogTxN0E/OXbYfebuvJVFfZHWxnJXRA4N9H/GmdD5k=; h=From:To:Cc:Subject:Date:In-Reply-To:References:From:Subject; b=iaiwHA8Nu5q/degT7AK9LSi+wE2v7oxVTufCuFplMZ36702l8BD6ztMjD4rv212leg1hV0zLxmxFujwehZRpmPp0DZ603Isdzqu6SDXFnvYmWX5ZRwVZq8kR7hSUJhnpXDk6lpdmDIohMpZxmG2L/VORjmYj/1Q3qcN55xCtSkqCpvKoptN60grKi+7fkz7N74IFzOMevyhvSNjhvj/qiSY/6ia5Lt2EN6TUAzAaEkof3FYxyyhrVCqx4oMow9GRSl74wWFe6o/TtHsablTJmfYZetBSZkKrcf1Q6x8skJwHQMxNY9rcbLsbRY7jG9yB3BX5v1s63gFFiiE0K9cc7Q==
X-YMail-OSG: ID_F_tYVM1kRP1S5iQMfkwlDc7E6_fkbCfybIGDNlwxGN48tXpkAql1nhRGH8u5
 nYMcwqEmj0r0bn8Ck0rXN5DkKOqsShvd6etrPtzkSts_jNe6wkePvVJ4yjmXiNtn2wfjz_hrpTdz
 afWqViP4LsOUIuPu7mlhf2yX9nG2UMVpwOMXUstUvQbxbFijgus6uj0pd6v91LiOc9dqr7rHXKDk
 ryoSJdYuOGDS8.uuLY3c_FAGBwf25o_rDaNR6TsdJngkjgAIbU1rCSKRcqbNe8Wqji1OHyGGzczx
 hESxQY9FFzemDPH4ZyAeVeRH6B0CoL2P3uDuAulV..c_GkLHTObi3KYsDlJvp4OQ0_Ci_qh5fHHq
 w6bM99.QaObX8sgmS5uSeNCHRdk6Fu463BNFGB7vBDm9vApg8XnQdbzuv.PCaGvJob3EQmCecPMp
 UfioCWnwi0rErZeDWdj8G4D7ZPqCR11sXoLTs8RW6UlH8CntApTnaUdipvfhiTlp8f_ut0hPzdYp
 gE7khNTWz2D9fQHqCAhjOmh7ZhV.F2Yib2_agKiElxsOlftUcCNXiOaYDNTEWnWelD4b76SnAC9M
 7NoIN_yNZAF0SwVUsxqMXrqqbXW8K1Plujcdiv4YoNpumRKJRDatpPB9B1AMWAwTCpHwYc0RE02k
 wLqGXK7ZpxXBKjw9DErZ.ytH5iepLoGdemA7Y4uwHHunsydE0eqrB6nQAbZsCpCot_Wuc8bQ5G_J
 SbPQyx3vClnwkftDYdISMKS9Vn0B8R7iuwCyuzFy42L861dU5hyRbqkRaPRbQXVTKjXBmg.AwY.G
 JOOJ9Wbgl_JpJ0daUIJGuLmtTKsU2GZecU5_RKhViBQr.yHNR2lDb6h12esu7tk.112QM5W56NN3
 tX_gymYKCU8LfkGUZ6tsKuShpPkcmsYe.zlUP3Wliz_AW.Hwoi3GsC5F9ebOvLUFPjD7rKLjwpDn
 sSoUNPUKDD6lIIeFjrJ0v819I.FwJwwMgaPyzehEwkbvOFg4qnaoHSn_dM0zD1Ct1FYDcyytvCId
 zjy9UcwxjBWWJ81nIHnb3dAnq9wy5oxtzguZyhrLgopbJ1E0mWr.tCJjbJBIvv8IVgPB8BnpOSS7
 56g8ESU1Hf.2WquLkW8eI3yfCMpI-
Received: from sonic.gate.mail.ne1.yahoo.com by sonic314.consmr.mail.sg3.yahoo.com with HTTP; Fri, 22 Mar 2019 14:38:43 +0000
Received: from 125.22.40.140 (EHLO localhost.localdomain) ([125.22.40.140])
          by smtp412.mail.sg3.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID d1d8be53419bbc2dc6b4659a7081bd03;
          Fri, 22 Mar 2019 14:38:42 +0000 (UTC)
From: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
Subject: [PATCH v2 3/5] staging: rtl8723bs: core: Remove parentheses
Date: Fri, 22 Mar 2019 20:08:25 +0530
Message-Id: <20190322143827.24480-4-nishka.dasgupta@yahoo.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190322143827.24480-1-nishka.dasgupta@yahoo.com>
References: <20190322143827.24480-1-nishka.dasgupta@yahoo.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove unnecessary parentheses around variables. Issue found with
Checkpatch.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
---
Changes in v2:
- Add this patch to the series.

 drivers/staging/rtl8723bs/core/rtw_mlme.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme.c b/drivers/staging/rtl8723bs/core/rtw_mlme.c
index 599958819d2d..8b3a095f0c4c 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme.c
@@ -29,9 +29,9 @@ int	rtw_init_mlme_priv(struct adapter *padapter)
 	pmlmepriv->cur_network.network.InfrastructureMode = Ndis802_11AutoUnknown;
 	pmlmepriv->scan_mode = SCAN_ACTIVE;/*  1: active, 0: pasive. Maybe someday we should rename this varable to "active_mode" (Jeff) */
 
-	spin_lock_init(&(pmlmepriv->lock));
-	_rtw_init_queue(&(pmlmepriv->free_bss_pool));
-	_rtw_init_queue(&(pmlmepriv->scanned_queue));
+	spin_lock_init(&pmlmepriv->lock);
+	_rtw_init_queue(&pmlmepriv->free_bss_pool);
+	_rtw_init_queue(&pmlmepriv->scanned_queue);
 
 	set_scanned_network_val(pmlmepriv, 0);
 
@@ -48,9 +48,9 @@ int	rtw_init_mlme_priv(struct adapter *padapter)
 	pnetwork = (struct wlan_network *)pbuf;
 
 	for (i = 0; i < MAX_BSS_CNT; i++) {
-		INIT_LIST_HEAD(&(pnetwork->list));
+		INIT_LIST_HEAD(&pnetwork->list);
 
-		list_add_tail(&(pnetwork->list), &(pmlmepriv->free_bss_pool.queue));
+		list_add_tail(&pnetwork->list, &pmlmepriv->free_bss_pool.queue);
 
 		pnetwork++;
 	}
-- 
2.19.1


