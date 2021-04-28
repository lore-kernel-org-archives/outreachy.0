X-GM-THRID: 6956170409670606848
X-Received: by 2002:ac2:54ad:: with SMTP id w13mr19973583lfk.437.1619609636465;
        Wed, 28 Apr 2021 04:33:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac2:5624:: with SMTP id b4ls792899lff.0.gmail; Wed, 28 Apr
 2021 04:33:54 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwRO1ZvLzIZSiMa8Ea2eqv0vJI+uxmPr8VmxBudyqxwqj8P1Lu8af68104CfkkMF1E32ILS
X-Received: by 2002:ac2:5612:: with SMTP id v18mr21322738lfd.309.1619609634879;
        Wed, 28 Apr 2021 04:33:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619609634; cv=none;
        d=google.com; s=arc-20160816;
        b=qGyeDhkw3ge/PG73VDlzRysyac/MLsXgiGzg9bH971FLaXEIL9EUwTsgvj1PzuHinw
         xwgrKHMDLKSIRScRpOiVNNBgzWC5u+jSJt5rT3RVkVs3xJSpwCpnK+r5EfYqJ+ClDWlF
         +KwH7yJKwfeLk2d+q2n6NfrG2estg0qA0em12c+GjXUBIO1DziFS0y4OLR6kjA77I9fU
         MlpOAdKLoSEH9W/sD8bFBQf4npaFcSOWGCEJKERbJhgqSZcIc2uxoybqGQjDYoV19Mkp
         aHm2mFuV/80bwKe2DvIHjCwowpZfpShW+t/7uPhDJnrYl7rwBK5xoNm62I7MQKWdnT6C
         2otg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=3hJ076sy9pVna7YQDPLSat0KUjjKGv3lXcjm2Wa8PnI=;
        b=rSMZdnS5V2C/hv2ZkdpaYJmsq63MRKumbYZpkiyuf1GEME5f0rq/VIyp149kVBjjXD
         nZnwPG0bX4h7nBWtQGnxnsT4guO0TqZUMEP+RvmAVE3/BeWT+FO1NaHegAfZK6/99H47
         9CPUua823qs8eIzS0GglQaITUYJgqQT/wr3ib1IQ7kJjuDhiYP7F7TZXiP4HmdeA3Z8p
         N6/IxRbuFU6wCPKexTlDAFXpCqRuQ1Qw/ag2DrQdjp/4ZvdTWa43bNx3kH5DwI0Xs3Q4
         pyIo55tHg72fFxfbhrH8eZBmzVLRxHequNGsdvVw+BYRF4WyrFcrfzkvsENRXvX2HId/
         cedA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MGPO7igd;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::529 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com. [2a00:1450:4864:20::529])
        by gmr-mx.google.com with ESMTPS id b12si788476ljo.3.2021.04.28.04.33.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Apr 2021 04:33:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::529 as permitted sender) client-ip=2a00:1450:4864:20::529;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MGPO7igd;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::529 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x529.google.com with SMTP id s15so73809015edd.4
        for <outreachy-kernel@googlegroups.com>; Wed, 28 Apr 2021 04:33:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=3hJ076sy9pVna7YQDPLSat0KUjjKGv3lXcjm2Wa8PnI=;
        b=MGPO7igde+CUkjMBdr0MSCg4rDhl1Wmpu/RDuySNCtNXEWFnpTm6knupqo9XDt5TkZ
         5cvq/83Z9Lp2W3kwTSj8PKvvrMIyeAJEiW7sNKN09ER+WhAPXB2jzyVuv5xWujAAvwM2
         RtbVTQlS75qSFDhQO53ahu594ISkP1uI+cl5TXqfZt6wsuDp5mExfKQ873vs6S7nwHnW
         t3zQsrwuSRquAKGjOqOAlyVNaPde6ltHTHNzZBGcBd3IUUxGJYLfFC0gGU/owwzo3vRj
         as0Dg9j6KlKFoqBYhrVbvVASkLgImGwlW+tY8q5+p6ryFz9ohSN9DVudUbma+96U3peX
         8gwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=3hJ076sy9pVna7YQDPLSat0KUjjKGv3lXcjm2Wa8PnI=;
        b=axjXYFgop7f+w0RlLJGGRSUE3utC7hNu5hJyzKvdY/jo1MUKGqrvTv/LxSPEfhnuWg
         gMYruMBHfzKBf8BUdcJG+zG5EgZkEa0Ij6nULyRnAvWBSkvCRNOKI0Xs85nVJVXg+Thc
         LY7VMwzjMmE/qRbEbHHMaqUJAlxDtiHTdGhn0gamfwhlKUQ/Bc+0S/1zSmRf2d7xQ9Xt
         MTXfuoOxD3b5nbQA992MFqB74mqEQ1V19dLbpyvitzfqyHPoPd701dYll6IipngZAga0
         q5FpRj2cJaaQ8HtPtFK/0TJtYpsnJBgNsi1n2VzAMN05OFEKKVzhgClBgh1pniyZTTC6
         g8Wg==
X-Gm-Message-State: AOAM532BmuDGp7OCedS2WXRyRrWqrSbAw+veq0D7DirJoxT/k4V4VzRQ
	gQkdoccMT1BOjioQgFRCzERg+Vve+vZuGqf8
X-Received: by 2002:a05:6402:484:: with SMTP id k4mr10478955edv.321.1619609634249;
        Wed, 28 Apr 2021 04:33:54 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from linux.local (host-79-52-107-152.retail.telecomitalia.it. [79.52.107.152])
        by smtp.gmail.com with ESMTPSA id u19sm4677187edy.23.2021.04.28.04.33.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Apr 2021 04:33:53 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Subject: [Outreachy kernel] [PATCH 1/2] staging: rtl8723bs: hal: Remove set but unused variables
Date: Wed, 28 Apr 2021 13:33:45 +0200
Message-Id: <20210428113346.28305-2-fmdefrancesco@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210428113346.28305-1-fmdefrancesco@gmail.com>
References: <20210428113346.28305-1-fmdefrancesco@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Removed four set but unused variables. Issue detected by gcc.

Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
---
 drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
index 082448557b53..96cb4426a0f4 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
@@ -3900,14 +3900,11 @@ u8 GetHalDefVar8723B(struct adapter *padapter, enum hal_def_variable variable, v
 			u32 cmd;
 			u32 ra_info1, ra_info2;
 			u32 rate_mask1, rate_mask2;
-			u8 curr_tx_rate, curr_tx_sgi, hight_rate, lowest_rate;
 
 			cmd = 0x40000100 | mac_id;
 			rtw_write32(padapter, REG_HMEBOX_DBG_2_8723B, cmd);
 			msleep(10);
 			ra_info1 = rtw_read32(padapter, 0x2F0);
-			curr_tx_rate = ra_info1&0x7F;
-			curr_tx_sgi = (ra_info1>>7)&0x01;
 
 			cmd = 0x40000400 | mac_id;
 			rtw_write32(padapter, REG_HMEBOX_DBG_2_8723B, cmd);
@@ -3916,8 +3913,6 @@ u8 GetHalDefVar8723B(struct adapter *padapter, enum hal_def_variable variable, v
 			ra_info2 = rtw_read32(padapter, 0x2F4);
 			rate_mask1 = rtw_read32(padapter, 0x2F8);
 			rate_mask2 = rtw_read32(padapter, 0x2FC);
-			hight_rate = ra_info2&0xFF;
-			lowest_rate = (ra_info2>>8)  & 0xFF;
 
 		}
 		break;
-- 
2.31.1


