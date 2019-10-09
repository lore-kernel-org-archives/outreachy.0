X-GM-THRID: 6745592460667256832
X-Received: by 2002:ab0:5981:: with SMTP id g1mr61177uad.98.1570580749311;
        Tue, 08 Oct 2019 17:25:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:e28c:: with SMTP id g12ls51610vsf.11.gmail; Tue, 08 Oct
 2019 17:25:48 -0700 (PDT)
X-Google-Smtp-Source: APXvYqy4CiDq1FbpV3Jv6RYVbtkur1gfaNCKyFjNUbkzlCtFuWOp78OQtZSECsT0hAt8ZWrOslzI
X-Received: by 2002:a67:b444:: with SMTP id c4mr310219vsm.217.1570580748182;
        Tue, 08 Oct 2019 17:25:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570580748; cv=none;
        d=google.com; s=arc-20160816;
        b=dw3QIngc7YuxVT7sB5szGbRJEeCT7qarRUzss+FVZC3wf7DNFXlN8gj1F2Ut6Kg/hB
         ToonJMZQuYd46V//j2WjnGe+quP4SRk6HHmY//oAR3NjwrH5yBertZHDNs1vlmKQslON
         O/nn6Qjq7I42jXwLltTMjQW98QIm4IgYvDWx38fhAp6CKWAgOghF6ekNOFyvV0Dj2G37
         GrLcac7WX9R3ytwRZDSIlLhhm/zEqdY97blLq20DtGqwD5DMJDlFIbx5P66wf7lsZSZd
         rFs9dYgpvvbJA05uepeBIfGNqKV0ISYPN2+KQiDrRU1WpZ0xhFqLwK474gBpyWsXClL5
         6vhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=jMr2K+11J76/aI6ualVgVr2mMqDFFe519e5/MH86WE0=;
        b=Jxi98Tqd/KGMOQXrUO/DT4E73WAsP9nMbcfbV1IjiyBfz347QrZwzShqJwds1NTRIW
         E7Zm1k9Toie+d9YWKoONPWx3NmITJlSKTBxNRZ3Y+s4Vssukkl77ofjrQgeXbEXz1SOV
         U39135hX2jCJ0cT/zeOBKrLjx01vzwswHZ7B1wJIai/7E6Mlk07ndfn2TKI1IRZbfEuK
         XOWn9aJ4KAIoNzlgNdp2cgDwU9anGJD5Q4aXulxtHcvaLXOqoT87TnnAyg2igj2BmZ90
         xeS1+EqOk/fDg7tltyMGR5OGLEv9zaZB7qFnYSusMe3zuxwjGdfJpnvO/ibMU+AC6IWP
         ipMw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WtoyfWlP;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::e44 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jarias.linux@gmail.com>
Received: from mail-vs1-xe44.google.com (mail-vs1-xe44.google.com. [2607:f8b0:4864:20::e44])
        by gmr-mx.google.com with ESMTPS id r72si37188vke.5.2019.10.08.17.25.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Oct 2019 17:25:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::e44 as permitted sender) client-ip=2607:f8b0:4864:20::e44;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WtoyfWlP;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::e44 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-vs1-xe44.google.com with SMTP id v19so367272vsv.3
        for <outreachy-kernel@googlegroups.com>; Tue, 08 Oct 2019 17:25:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=jMr2K+11J76/aI6ualVgVr2mMqDFFe519e5/MH86WE0=;
        b=WtoyfWlP/mOwT32TNJqDFVsSSB42gmNhSXkoN9DwWKS7k0ZVndQpcR9inoceusB2pJ
         RWU/4+gm7Bhmgsspid36vrm/P6bp+rusN/wmzqKHO8CVVbcAkGXLgzMxq3bKUlXwvPwc
         u+xSlowU49c46Q/M7yQ9CJPVAW1aZ5deNDxwTrkXQdCCO9CzbLzAjl/a0WvQTkeIBdRq
         un+8nZZUkb6U1z7xqR/33+y4/6vpKMgaHyBTVgbpFLZUF5fRKpAds9VXwroGVU159waa
         p6jSvRwgY7ZRV61K3MAf1ivUGlXMDTAIH1HdoudBQgiBPeEpTw4tUgRCYHoMFVfIyxJ2
         dRjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to:user-agent;
        bh=jMr2K+11J76/aI6ualVgVr2mMqDFFe519e5/MH86WE0=;
        b=IOGx/2Zp1Gi7PvL4niFgjrsnxM74jsHxH1R2jEONefjO9fz5wmIbLgIvrYUZxgHblF
         euBfrIWxOhHvnB6O3DWYug1fSuhU2STBFq6j1l5+5gf3ToQCTPxA76L7HTT8pV/NcZXS
         slyz6C0t13endzGBesxPelFqfbTSRZXlnvqik21klbGaG3E5h+XYGX4043RiJ88kxKsV
         P/Ap/dKkr/ssA7cRZ1oS+mQ/eLHc4HrungLjS8roY6eQmB/5xa7tC3SRqSTIjiZFBgPE
         +e4YOUAdHXjuvpjUQu3Q75ztUVC8PxEe3cqrr/GcKOMPgs//ypFRnkIT93aEMuieAwS2
         OleA==
X-Gm-Message-State: APjAAAWvTWGFne8+pGe52I516WnwbNdeYyZXMhL+eCd/wBMslBiIskw4
	mSQkC4txPSCnOMGmckdnlIoDSAh6m+/mOQ==
X-Received: by 2002:a67:69cb:: with SMTP id e194mr291730vsc.99.1570580748011;
        Tue, 08 Oct 2019 17:25:48 -0700 (PDT)
Return-Path: <jarias.linux@gmail.com>
Received: from gmail.com (dynamic-190-27-96-102.dynamic.etb.net.co. [190.27.96.102])
        by smtp.gmail.com with ESMTPSA id 3sm337985uaj.16.2019.10.08.17.25.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Oct 2019 17:25:47 -0700 (PDT)
Date: Tue, 8 Oct 2019 19:25:45 -0500
From: "Javier F. Arias" <jarias.linux@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 3/3] staging: rtl8723bs: Add space between elements
Message-ID: <a2387d4c10c2ed0cbca9d5c7ded424892452178f.1570577926.git.jarias.linux@gmail.com>
Mail-Followup-To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
References: <cover.1570577926.git.jarias.linux@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1570577926.git.jarias.linux@gmail.com>
User-Agent: NeoMutt/20180716

Concatenated strings should use spaces between elements.
Issue found by checkpatch.

Signed-off-by: Javier F. Arias <jarias.linux@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_ap.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_ap.c b/drivers/staging/rtl8723bs/core/rtw_ap.c
index ca84e4b00310..33b4e1d7a520 100644
--- a/drivers/staging/rtl8723bs/core/rtw_ap.c
+++ b/drivers/staging/rtl8723bs/core/rtw_ap.c
@@ -216,7 +216,7 @@ void expire_timeout_chk(struct adapter *padapter)
 	/* check auth_queue */
 	#ifdef DBG_EXPIRATION_CHK
 	if (phead != plist) {
-		DBG_871X(FUNC_NDEV_FMT" auth_list, cnt:%u\n",
+		DBG_871X(FUNC_NDEV_FMT " auth_list, cnt:%u\n",
 			 FUNC_NDEV_ARG(padapter->pnetdev),
 			 pstapriv->auth_list_cnt);
 	}
-- 
2.20.1


