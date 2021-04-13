X-GM-THRID: 6950658650787545088
X-Received: by 2002:ac2:5936:: with SMTP id v22mr14420436lfi.648.1618326327498;
        Tue, 13 Apr 2021 08:05:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6512:3b95:: with SMTP id g21ls4973788lfv.1.gmail; Tue,
 13 Apr 2021 08:05:25 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwPT9MDPNIJwoXK6mnjVOq00Wk5Xlhuiupx1ZBfrK+vTwjAfAgQpk7F2Yt6oLGzVy+fpaEP
X-Received: by 2002:a05:6512:48d:: with SMTP id v13mr18058431lfq.485.1618326322570;
        Tue, 13 Apr 2021 08:05:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618326322; cv=none;
        d=google.com; s=arc-20160816;
        b=Rn2Uzc1uRd98+GvWDKVXWVPCGeYc+SrqTIuxl68oGMy43sI2M4fsSbDjNgldp1kGqj
         Z3gL1lWGGNDUgGXgwjveyPlyZq4xZwPlE+DaZzN0Cl1me6YfAYaiygE/mKnuEJmyx0Ol
         Cd5neiXHvgeiY9iXeXXUmj3T/HbaafwSaPqcSYCKBLxKqE2F6mVTdoh3aLdhkVptQPmn
         JCHkPjoaIuQZX73ysv+M9JCJv22e9oe/QlYnpAl0c8q6duXs3bNuVglUIH4J2xHZF8ef
         vXIT2NokgRBZf/cGXWcDzHejTEagAuoZwx3HpNKbMOMf6KRi71+t4ZfwdF9M1ppuluPG
         q4xQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=0xoku/gJZVifospo6o1WZ6Sg1aj10S84grdNkCx2C9U=;
        b=twV0AAXCqnTofce5utyKsLEvXMobE07Wvvn3iwLiYtOyF96TDTmDIRuy2iJSQeE8ce
         CUAHpZW2cWa4ZWGoiS7piCrxRWx6CYKkceX5vHXy5wahxfTB50OYXliBb3CgWEY+cbtU
         L6xH/4/kBwR7g+1RBHql/qNAMGVzMK5RhoLzR0husG66+SYxNcx8oKMIvuuWeLJgvddM
         yRxR+NZEPFTER3bEel2i0DJZqvHDUF+FwRiFuPh8DqjWSng45N6FYDesDesTyWTCfRZ6
         fiEA6/RoPnUfXn2unCXHv9kvhVv80S4ZzZ0uD++/W7PM8jn5XYYSq46PuQrEEMz6bOdb
         ixew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OqO69w81;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62c as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com. [2a00:1450:4864:20::62c])
        by gmr-mx.google.com with ESMTPS id c17si801054ljn.7.2021.04.13.08.05.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Apr 2021 08:05:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62c as permitted sender) client-ip=2a00:1450:4864:20::62c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OqO69w81;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62c as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ej1-x62c.google.com with SMTP id x12so5680019ejc.1
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Apr 2021 08:05:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=0xoku/gJZVifospo6o1WZ6Sg1aj10S84grdNkCx2C9U=;
        b=OqO69w81Xg78+Yg0PKNTUy5lhRRTv55K3xIP+2wpLNf6aoNyj65s9aDl+EfNz5FAZj
         lokQ+1koIWlndO5ZgnqKwEuO0sPxthTNiMd0tDwsrRcY29v8PpL59hn9iwqkCYW4eRp4
         GMwpTNqls1vwDO3tjCQ3C25pZQ7lPrwiM+cLl1Y91YX/qLN2sT4HXjzV+WnroSNDHaS/
         FymL1SocfkRLXCWHe7hctEoy890ucotx/E2pan7eEMplNJr+DJL30cVAROuWfTJZqLNg
         a2XwW4eUNcz/F120dcCdkqiBDhHktew8M7ilJyH7W2Nr5pj7hAv/2DMDfkFtnBEswujV
         k8Pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=0xoku/gJZVifospo6o1WZ6Sg1aj10S84grdNkCx2C9U=;
        b=a4TmjqFWVAu4ZpeFYqj8aN8eJiuCRWNkEbCBTQkk37l26AsGRnGZ6K9+j/cYRsrnCL
         HlefUxjTFV/7ptteYV3FeDHxvvOz1hf5gHRf0YYr/BU7qniLiSkdOWtkzGRu3wbB2ghz
         IsSjkna/sQ+s+i3luVfzaoZWiFXL0KvqPSZq5AJCMn+BOdliKBN/7EdeG5GHFUoZBRCw
         N6qn4vl+5ppOw/XQziQbGFHUz2Txz8aXjvTNgp+VI2myjm3mQrOLsc5Mbh133g4ERl8T
         yo9h9JkwI2LSGLlq39xvOua2yCzEwB+aiRL07UwoXc1Fch13CQmLRrK9WEPHL5YekBuF
         xpCA==
X-Gm-Message-State: AOAM533pWnsm++Tvdw7Xe3X9NSak8/ydf4S7bxI4vbCmR4VkZcSDcf78
	4VlDlLyOsyFC4AaUZT3OPvq5gUeACy8MLws0
X-Received: by 2002:a17:907:33cb:: with SMTP id zk11mr16188048ejb.231.1618326322074;
        Tue, 13 Apr 2021 08:05:22 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from linux.local (host-95-237-55-30.retail.telecomitalia.it. [95.237.55.30])
        by smtp.gmail.com with ESMTPSA id t1sm9681085edy.6.2021.04.13.08.05.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Apr 2021 08:05:21 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Subject: [Outreachy kernel] [PATCH] staging: rtl8723bs: core: Remove unused but set variable
Date: Tue, 13 Apr 2021 17:05:17 +0200
Message-Id: <20210413150517.12533-1-fmdefrancesco@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Removed "ledBlink_param" because it was set to the value of "pbuf" but was
never reused. This set was made by direct assignment (no helper had been
called), therefore it had no side effect to the location pointed by "pbuf".

Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
index f19a15a3924b..440e22922106 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
@@ -6191,12 +6191,10 @@ u8 set_chplan_hdl(struct adapter *padapter, unsigned char *pbuf)
 
 u8 led_blink_hdl(struct adapter *padapter, unsigned char *pbuf)
 {
-	struct LedBlink_param *ledBlink_param;
 
 	if (!pbuf)
 		return H2C_PARAMETERS_ERROR;
 
-	ledBlink_param = (struct LedBlink_param *)pbuf;
 	return	H2C_SUCCESS;
 }
 
-- 
2.31.1


