X-GM-THRID: 6956886688242073600
X-Received: by 2002:a05:600c:d6:: with SMTP id u22mr1171518wmm.161.1619776410562;
        Fri, 30 Apr 2021 02:53:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:f68b:: with SMTP id v11ls4125996wrp.2.gmail; Fri, 30 Apr
 2021 02:53:29 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJw+kZQhS5dADULJk8aPpI2O7yKpv9TYXLRC3xAu5DYbHS1UyEkOyRcmk2O0HS6khv9DmkGu
X-Received: by 2002:adf:e947:: with SMTP id m7mr5980888wrn.70.1619776409352;
        Fri, 30 Apr 2021 02:53:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619776409; cv=none;
        d=google.com; s=arc-20160816;
        b=ZmMveJoYLUH5e4vSgi2t0/RSjXzo9H6zi0nwAc2g5RuN7Yee8xZJOhH5Y4WXpwdZm6
         cLWPHn+DpXG9u3IpgX/f2NSse0i8N5QIoCXFRaQ44ibtsFfmLYWexZRBth8gzPlPUQvd
         DO8Q4exahChq8vRlhGhcSW0dcczA1w5B3LGxSbfyYYdCB5ZlnyGMn5p7NkCI66Gh/6ox
         eK4fFnOekgRfpJK7ddqDtZbgYySvYZV0Y/W7UYZ2BJ7Gb+qqC5BVY80/iqZVyWVjAV+d
         63O74AuRI1/BKhrMoA7YBpLmLymYjjGOUaIEaHG55G+xQLFmJEwwHmyaStAQicAhZD4W
         1Zag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=d8rYa6uc2lMrcOYnMsUxtzNfzc4dHA6oZT2T6vUtpxM=;
        b=KzzOB6vNX0uhZq4o75ZbK91W8OYgIDN8RVkIvLzdRU5Tpi+M+HuehV2oZ0E3NKR0Fg
         m1GQV/mstnhyaPaqL2XgJL4mKyaypsNvIcLljE18EX9bJHQo0WBgXk6qNIuq4VwW/M5b
         mY+s5jlpwrlG8LGrovp6XAIVX3ghUNPzPruS1FWrn40iy901adGjfDbWRscEKPM0i6PZ
         TKe07d++lUYTAOt5qopIe80td8wcCXAQVF/uXgceMcRUaaJDQwi8Fl+ODdaGGoWUdr4A
         kemczR5MaS/C1fr5Dpd77Hwt7OFYkJ4Xdp2c0z4pinCLM2RBuH/ifIhGqk0pUMF102b2
         hzEQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JYCxRRsm;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::536 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com. [2a00:1450:4864:20::536])
        by gmr-mx.google.com with ESMTPS id s8si393144wrn.5.2021.04.30.02.53.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Apr 2021 02:53:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::536 as permitted sender) client-ip=2a00:1450:4864:20::536;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JYCxRRsm;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::536 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x536.google.com with SMTP id q6so22638394edr.3
        for <outreachy-kernel@googlegroups.com>; Fri, 30 Apr 2021 02:53:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=d8rYa6uc2lMrcOYnMsUxtzNfzc4dHA6oZT2T6vUtpxM=;
        b=JYCxRRsmeZwUeuImQ6GjgOoTvXLEiyjGQjbjspl0jWf5cuSeF3n7EoVM2d5sASHdBi
         4jOzo5h8eTlE4WyingaYDxYZgRCo0rCoD71a1bQz5dSlQ1lyBtEcroHBHGyLx42C+54F
         ulxS6ja3X9Vf6yLglEQjq3BFxiAGdzz4LYpmHVN3ipiOaSCPW9Mi5SZ1dUsFGauSx9sB
         AO0SC193b/YcT1bFtyQlnLYvUMqz0WMqxguBh0OezzdXpEW9bvO43MuWHO+CdHuwZWTG
         IadOx/DYLxZaGjwfph5p+ru8yUlt8bdvduXcpPmz7mzZrdWS4YoMtkQ1fXFfEaozDtQB
         HJMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=d8rYa6uc2lMrcOYnMsUxtzNfzc4dHA6oZT2T6vUtpxM=;
        b=Y4V8L7jKFIx0UpVJxC5Fj2QNGVtPRp/cSAjUKY5JDlHIwSGwXOsH7uV1UK9Efq/A8G
         oJL81yNQhkTKVs0StBE6/+kExrMYWN1/IgENl0CAo1vuG73h70MlJCVjPI0dxOHYFKbZ
         78CjYekCqbqscD45JQjs9+I7oDwlb63kODRJ0q9mO/SJzgYeOSxGWoyR139z0b9SJfWY
         NIFaS+nleKyUVqz1lxnGdOuDmLaBVyniWdb3ZSvhbEoDUGFXFhSoWk5rUqe6vPPy/9jO
         UaBD/OYGIL490BdvvnSQvC6A04TcV0izCcZVY1ySoVUr2M/ASzG4PY8kUMBoK2/gJ3Rw
         KxGQ==
X-Gm-Message-State: AOAM532uXqjtZKWmTZPX8KNqGI7VjDln3w2v1ATcCABNdoiY9ha4EudO
	AdLAi+SQXCFiW1165OP3290bZvWiiIaKnYKJ
X-Received: by 2002:a05:6402:17fc:: with SMTP id t28mr4833221edy.283.1619776408947;
        Fri, 30 Apr 2021 02:53:28 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from linux.local (host-79-52-107-152.retail.telecomitalia.it. [79.52.107.152])
        by smtp.gmail.com with ESMTPSA id f30sm1626861ejl.62.2021.04.30.02.53.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Apr 2021 02:53:28 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Dan Carpenter <dan.carpenter@oracle.com>
Cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Subject: [Outreachy kernel] [PATCH v2 2/2] staging: rtl8723bs: core: Remove set but unused variable
Date: Fri, 30 Apr 2021 11:53:19 +0200
Message-Id: <20210430095319.23226-3-fmdefrancesco@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210430095319.23226-1-fmdefrancesco@gmail.com>
References: <20210430095319.23226-1-fmdefrancesco@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Removed set but unused variable. Issue detected by gcc.

Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
---

Changes from v1: As suggested by Dan Carpenter, removed no more needed 
curly braces around single statement blocks.

 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
index a2fdd5ea5fc4..4df03f0a1242 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
@@ -1019,7 +1019,7 @@ unsigned int OnAssocReq(struct adapter *padapter, union recv_frame *precv_frame)
 	u16 capab_info;
 	struct rtw_ieee802_11_elems elems;
 	struct sta_info *pstat;
-	unsigned char 	reassoc, *p, *pos, *wpa_ie;
+	unsigned char 	*p, *pos, *wpa_ie;
 	unsigned char WMM_IE[] = {0x00, 0x50, 0xf2, 0x02, 0x00, 0x01};
 	int		i, ie_len, wpa_ie_len, left;
 	unsigned char 	supportRate[16];
@@ -1039,13 +1039,10 @@ unsigned int OnAssocReq(struct adapter *padapter, union recv_frame *precv_frame)
 		return _FAIL;
 
 	frame_type = GetFrameSubType(pframe);
-	if (frame_type == WIFI_ASSOCREQ) {
-		reassoc = 0;
+	if (frame_type == WIFI_ASSOCREQ) 
 		ie_offset = _ASOCREQ_IE_OFFSET_;
-	} else { /*  WIFI_REASSOCREQ */
-		reassoc = 1;
+	else /*  WIFI_REASSOCREQ */
 		ie_offset = _REASOCREQ_IE_OFFSET_;
-	}
 
 
 	if (pkt_len < sizeof(struct ieee80211_hdr_3addr) + ie_offset)
-- 
2.31.1


