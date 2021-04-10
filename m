X-GM-THRID: 6949544081527668736
X-Received: by 2002:a17:906:bfcc:: with SMTP id us12mr20938411ejb.266.1618066844222;
        Sat, 10 Apr 2021 08:00:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:907:c24:: with SMTP id ga36ls6141103ejc.9.gmail; Sat, 10
 Apr 2021 08:00:43 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJx96FdVyFj698TMoDpklUBR50E8t1veCv3iD2aYJNfL4Yx37DSOnax7HROB/dSGwwQ0EvRK
X-Received: by 2002:a17:906:26d4:: with SMTP id u20mr21246875ejc.114.1618066843000;
        Sat, 10 Apr 2021 08:00:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618066842; cv=none;
        d=google.com; s=arc-20160816;
        b=zc4qCj0CNxi98zw82pOI0Dircpgqu0z6K8mJUATZ3e9NG8feDZcB6MSB4X5mlrLV1P
         r6XtESW4dLMCW02YqmSs0uy4vudSi2AfI0JRXdphVE4VlKCGmtycx5BvbPiCwnpo3azM
         syybTWcKp/qLdBYfkfO9tC1uTS0++KYa3X1qD3bheWOahyfGQZc3HVfNhfZYs+gWbA24
         cmL3Jnvvdt3rRPJXXyh7G5r6MFW93Kg4Gf4XYHFN2lmbDzoW5WjI2VgnOC7UBI2g3Nu8
         As3OIRpy/fu20XoZ1r58flUp7BCYeJ2HAfN6FEqbsc4kCgf0cA4CjBu750C3FSmEYos+
         Gkvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=HBudnlgBbgfTMMB5wWvaY2YPBfD3jKz3AvHUYC6wfiU=;
        b=0MlWR5J2HTeOjzSQCiLWQoL9L5DwOpJGjkreNRjN9ZCa4b1JOxrDRMARz4YgTsCifE
         oKxhjfV5DpKLtjPUR+KVMSJPQQ3tC+YwTglwBWJYPW6tjuNowoHaD/6LOkNmu2WSVgVo
         TN+8WhdH1yp2N+6/vSssV6TmKu45CCWDJmmoK7S73apn0S6rZoRpdzlkayPczz17D/hV
         hllcp2QLAUunOYoIb+k2a1v2Oz/+m97OxtyUuk89SDn1bAfGBIj3CQ7GFGlLQM8eviqH
         aF/ObzPkRMCDqSb4X33UWs/q340KXbTTn0Xqsml/UDz7Ea7us5k8anGDkcGO0tfZwd4V
         z7eg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="KXn/WS0n";
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62e as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com. [2a00:1450:4864:20::62e])
        by gmr-mx.google.com with ESMTPS id df6si672776edb.3.2021.04.10.08.00.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 10 Apr 2021 08:00:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62e as permitted sender) client-ip=2a00:1450:4864:20::62e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="KXn/WS0n";
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62e as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ej1-x62e.google.com with SMTP id g17so10359124ejp.8
        for <outreachy-kernel@googlegroups.com>; Sat, 10 Apr 2021 08:00:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=HBudnlgBbgfTMMB5wWvaY2YPBfD3jKz3AvHUYC6wfiU=;
        b=KXn/WS0nh8U5TCwCHs9nhls7+Wi1VipCJrtUFEWprx4nvj05F0iCWB/h+lQGtbTTVd
         5GqPxxgtnUH8u1uUkNYjYxa0KaxwjC38zR7sJyZZ4Q4FDxbNU6bxN2QBsofVr11NVb/w
         /Ub0Gz0e/QrXCmviLRWnpZQNuWzv1dGrVpfNJYN/OyP0NkE4khGkp+s5XHOfV5LPSO4X
         1OO3f1IeNn34shVpRBlzlqtHkp1pU7p6UyVIMdRpRo6ytbn+E2yg40K8rU0BNLgHuwSD
         5rMoxaSOMmebyLrC88halSacUYyBuGGoqSMQcqFbXHtFZEPvknuWPdqX1aV8LmY/tp6J
         ioOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=HBudnlgBbgfTMMB5wWvaY2YPBfD3jKz3AvHUYC6wfiU=;
        b=Phq+NZ0iItberL6keWBqeAmmLiKI8fFROf0UlcvRTCVnZDkrcc8SMz+yYW9DXG2m1Z
         e2elPpunVr9h3QirHyIbSWF+cs210himld986oMVqtUooIY04wnkt3j9xAN8cjYZqehV
         el5rXrwxyrTeC3M+LDfbd7aolPDN+EDCCz1bHXhSOLtnBmGHfB4FdGTt+AWNc1A/eixY
         tfywWrP3Te8LymdjrCnQB4psWy9Swwsbehd7FFnEh4eMqS8vkQYGWIfqCHoRXQt3QsXO
         b7cA4Xtriq1PJFr1+GlGO4exLTiOKEZRIB6hFXRXRj9rQeJC0j57Cjmmua6RQWSZkSCA
         3gXw==
X-Gm-Message-State: AOAM532N4c3tx0+dlMSTYKhWXOqCIZL+5caga5d5LUdf4G2XjFjXNx90
	rA8Em8GZYCJNaZBpOfO2IfA=
X-Received: by 2002:a17:907:9858:: with SMTP id jj24mr20174686ejc.212.1618066842785;
        Sat, 10 Apr 2021 08:00:42 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from localhost.localdomain (host-95-237-55-30.retail.telecomitalia.it. [95.237.55.30])
        by smtp.gmail.com with ESMTPSA id gb4sm2719494ejc.122.2021.04.10.08.00.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 10 Apr 2021 08:00:42 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Subject: [Outreachy kernel] [PATCH v2 5/5] staging: rtl8723bs: core: Change a controlling expression
Date: Sat, 10 Apr 2021 17:00:08 +0200
Message-Id: <20210410150008.5460-6-fmdefrancesco@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210410150008.5460-1-fmdefrancesco@gmail.com>
References: <20210410150008.5460-1-fmdefrancesco@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Change a controlling expression within an 'if' statement: don't compare
with 'true'.

Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
---

Changes from v1: No changes. This related patch is new to this series.

 drivers/staging/rtl8723bs/core/rtw_cmd.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
index 32079e0f71d5..600366cb1aeb 100644
--- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
+++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
@@ -1507,7 +1507,7 @@ static void rtw_lps_change_dtim_hdl(struct adapter *padapter, u8 dtim)
 	if (pwrpriv->dtim != dtim)
 		pwrpriv->dtim = dtim;
 
-	if ((pwrpriv->fw_current_in_ps_mode == true) && (pwrpriv->pwr_mode > PS_MODE_ACTIVE)) {
+	if ((pwrpriv->fw_current_in_ps_mode) && (pwrpriv->pwr_mode > PS_MODE_ACTIVE)) {
 		u8 ps_mode = pwrpriv->pwr_mode;
 
 		rtw_hal_set_hwreg(padapter, HW_VAR_H2C_FW_PWRMODE, (u8 *)(&ps_mode));
-- 
2.31.1


