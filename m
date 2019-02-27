X-GM-THRID: 6662713846690480128
X-Received: by 2002:a9d:73cf:: with SMTP id m15mr2320502otk.63.1551283953452;
        Wed, 27 Feb 2019 08:12:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:5dc1:: with SMTP id r184ls690641oib.5.gmail; Wed, 27 Feb
 2019 08:12:32 -0800 (PST)
X-Google-Smtp-Source: AHgI3IZvi5Z2nvbEBdcKfnNZT9wrpNlbdlRsXk0H5y41G+YCunhJbKn2X5dlmTaiRYe9ZP3aP2gf
X-Received: by 2002:aca:d6c7:: with SMTP id n190mr1200531oig.41.1551283952648;
        Wed, 27 Feb 2019 08:12:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551283952; cv=none;
        d=google.com; s=arc-20160816;
        b=DCUMrhSw9utjBlZh8wVenj/68B9SU9T3L+syXYJN/zv/epj1oQcGlm1e/XJ15W1rbs
         hyBxRcC6ij45tC4BePP/nvWamKV5m+KfWXeOmDzqJRayCshUTtJ9SnQbZHg5vNdJGCjY
         loPLciFIl3/Brmf4tRvqgFxxWLxe+Gh6O0PB3vjZ8zut4GFRWG7i2ABh92jGppIWR1D/
         jk2s5cSZegAgSgTZvvaBaBSEFsbHjms1w8XjUDIe5od71jZa76mLzzFzN99iBzhQBHB7
         wWVGhQ+6rHLCbdCPnXkA8+q9BDYQQfd1MoGL4bSRJulsVyivzlQtkfNo3/6AUDDwFUyN
         Y0aQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=arYIk51yMCfpwsXxJIHagbhnoEGBWGObhG6vUo4nU4c=;
        b=br8KCaHsEkWqZKg2GeGQwZRmGV1iTwJUtz+kDZGtRFTvpO/2o0m+JmcHaTGHy4oNdz
         sJSIA/6nuOPQPoyeT+PSW70ySIyeJu8dAXrChWHw3Bp2hPe6v0yMuy+iQ1sjnVZjRT9S
         3nhy/8uSXfP7anYxZnqomT+DLRoLdyagrZN/K4i7++gmiK+lVmxQWAC5fzgbl09iqg72
         LR0WpsU+kkLMfQ/WjmpolQ4mvDZ5hc4SNp3irbJNwu5PizM25gEnrPmNGB1jh/7A3yKi
         RlBgfQNFH3H68ah9x+r0XcLuK4uGQp6l9qav4h+a8IKkLW02NPsIj2xaPC8XF5Asi06Q
         5MCw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Xf0kvTyT;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::22e as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x22e.google.com (mail-oi1-x22e.google.com. [2607:f8b0:4864:20::22e])
        by gmr-mx.google.com with ESMTPS id p8si778319oig.5.2019.02.27.08.12.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Feb 2019 08:12:32 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::22e as permitted sender) client-ip=2607:f8b0:4864:20::22e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Xf0kvTyT;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::22e as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x22e.google.com with SMTP id x187so13848924oia.7
        for <outreachy-kernel@googlegroups.com>; Wed, 27 Feb 2019 08:12:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=arYIk51yMCfpwsXxJIHagbhnoEGBWGObhG6vUo4nU4c=;
        b=Xf0kvTyToqm5XgNAtzzQwi0RkNSjCX5c+qWUYjWL3T62EPDLmcWQu0gl4TBIZFbhpE
         cIvXFy6ywVdDxA4L+tqqLkc8WxvCefBH6FZiRQLU04jKIQWUVt1PTH8Vr3ydSS0Hpjsq
         SqpOPUgQdrZMes1+dhgMeP+VNjHnvehEibjMhuBVFEu+Qu8z2h9j+yog3tRNf1CQs4rF
         F1DLcmmcukyuDQzIeWFd1MhssWdffyp6xz78+1VuAwIN2JtvruPTJ5CyWQYDzUSm5FHN
         yuWyho8MMDvGPL8H6HtvTiELpwWZ4xCjaxfznrZnZGa54MRtfR7q5ytaB8QVeBzvqgWH
         UJ1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=arYIk51yMCfpwsXxJIHagbhnoEGBWGObhG6vUo4nU4c=;
        b=jWwIUYdS2uz5mpG8a6MJLtYteDmL1crDnEDTJYmR+AgksWv4Vwxhsf2yWMNoiOZV0h
         ooDau2iEEFVge+42VC9yShCMae9musreZfrODsXV6ZUS8d5AEFzSqHDy4NziDeIWSmp3
         lZBugpt0O+c0pMLXEZAkYxzy21Q2H2Qr2b0hER+g3TZx6y0xVr9ANF7vNe14HuAH7tT9
         BS38+TxSabrEVBKhhHT6d/lte8tTvr1oYwTYa7NWWV7zFt68q+4gDsTHd4pVfu4dxuXA
         mA49Ch+o64SnolNfBcSrtP3TzoyAemH6ro5YcxGUdHTSD/FKFsbih2+J9b2f0zct6YQ9
         XFxA==
X-Gm-Message-State: AHQUAubrjsfDfgirfisi91FGtKbIEZOiEhUyIH6/HNTlLGB5g5rwjqUr
	UR5gyxRaUEKE79oMBejeuAU=
X-Received: by 2002:aca:a847:: with SMTP id r68mr1370037oie.175.1551283952354;
        Wed, 27 Feb 2019 08:12:32 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id x3sm6635015otg.52.2019.02.27.08.12.31
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 27 Feb 2019 08:12:31 -0800 (PST)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH v3] Staging: vt6655: Alignment of function declaration
Date: Wed, 27 Feb 2019 10:12:27 -0600
Message-Id: <20190227161227.22128-1-madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1

Align function arguments and function type to improve readability.

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
Changes in v3-
-Included driver name in subject line

Changes in v2-
- Modified subject line and commit log
---
 drivers/staging/vt6655/card.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vt6655/card.c b/drivers/staging/vt6655/card.c
index 2996bf614caa..8d0182f5725c 100644
--- a/drivers/staging/vt6655/card.c
+++ b/drivers/staging/vt6655/card.c
@@ -499,7 +499,7 @@ bool CARDbRadioPowerOn(struct vnt_private *priv)
 	return bResult;
 }
 
-void CARDvSafeResetTx(truct vnt_private *priv)
+void CARDvSafeResetTx(struct vnt_private *priv)
 {
 	unsigned int uu;
 	struct vnt_tx_desc *pCurrTD;
-- 
2.17.1


