X-GM-THRID: 6946280249577439232
X-Received: by 2002:a1c:28a:: with SMTP id 132mr9920271wmc.2.1617306901599;
        Thu, 01 Apr 2021 12:55:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:6a89:: with SMTP id s9ls2384988wru.2.gmail; Thu, 01 Apr
 2021 12:55:00 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJx9y30D3LLTVkSdV3/KOdTn1CW0u5s68C45syCHB+PnElvhOzDW8WZF5en4mzqCwtqZbtpq
X-Received: by 2002:adf:f908:: with SMTP id b8mr11292658wrr.184.1617306900220;
        Thu, 01 Apr 2021 12:55:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617306900; cv=none;
        d=google.com; s=arc-20160816;
        b=sniuRHHTEPDqA2hVYtJrR8k37P825nP9et8fPBnz6MHzBM7hYkKSjW2rzv2MdHycIl
         7uirom1aerHQZUpbFftDMMpq9UHllELgcm2WK+IAgyj7Bk5/hlcIaljbltDszqh5n6/u
         YwRWFNriJ2c8eo0JCnfPGdYN6wvVi8g23yyAKbzhCMzUmZiYLMsuPKNDfSXGiP3y2Bsn
         e+hGnjVUan3GLVpKQC1GRC7PtSiR3ECHaYWpY4eABsDXSw3ySE7ETMf0OY+m7I4P3rrE
         QbP8n6NCwG6IbPx3gJW5u6wJLTddJ+yWedBF1MgSxkleIF0vQqvifsP0dpU/MN7kVbL7
         XsTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=8S3Uh23H+gQhsf7YASK94vXEdzHi8M0NhOcwtIIfD7A=;
        b=nFY7emSB3G5HY1Sh4m6SMY5CZqEHSiOgFeuLwNLjSf8+r0Mm5TIREKInMAypDy5mXs
         U7HWcBCDzaJ/lOys6/CYor/rVPNMDQS8abpX0fIR6gogsct08UsghwhQwWYpGAZ66Bur
         BP8vTxS7jZzQ86Y+TQVVfDc5JQLYsfazW15uVIOXFf06lq3ABmURtNFjigRzLBhqsB6O
         ZWgfJsW2cBwP0B707h2bDd4URfv1jGl9zmRcqVU6gOGH5xsyTiSWwO3Aj/ndMMvWg+49
         ExHB7smBKY+TtdLp8XLWHTUPruEyyRNZHpmpagcEvbv+N5id0LxRc8gQkJWc+yge0ekG
         IBCA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FhBhCegf;
       spf=pass (google.com: domain of martinsdecarvalhobeatriz@gmail.com designates 2a00:1450:4864:20::430 as permitted sender) smtp.mailfrom=martinsdecarvalhobeatriz@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <martinsdecarvalhobeatriz@gmail.com>
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com. [2a00:1450:4864:20::430])
        by gmr-mx.google.com with ESMTPS id h16si856803wrx.2.2021.04.01.12.55.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Apr 2021 12:55:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of martinsdecarvalhobeatriz@gmail.com designates 2a00:1450:4864:20::430 as permitted sender) client-ip=2a00:1450:4864:20::430;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FhBhCegf;
       spf=pass (google.com: domain of martinsdecarvalhobeatriz@gmail.com designates 2a00:1450:4864:20::430 as permitted sender) smtp.mailfrom=martinsdecarvalhobeatriz@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x430.google.com with SMTP id j7so2938876wrd.1
        for <outreachy-kernel@googlegroups.com>; Thu, 01 Apr 2021 12:55:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=8S3Uh23H+gQhsf7YASK94vXEdzHi8M0NhOcwtIIfD7A=;
        b=FhBhCegfx9/JsWqLF1NrB74XyOFOPKGNuaiYUD+JF/Zj93OlXZR4UpVjGkZMDsBgPD
         E5ePdeCeKbf5jfa72arvobZIwCXXaklwXo+i8gVdj/7TgseX6xjTXMtlYJmyXdnEW9mE
         R6RLUZlv3qnOhLaoeTeRfSXiibcxF6/3YvT0v/xv/Fm7tS4kx6jNy+GyjPbuXeDoIFgO
         254MlEJ6mPlN16Sfya+TpS+K/4k6zISSYVkeut7cdZ0CGB+6piNc7+rQwPgQNDZBXoB0
         47Pb5zIq4aMpWr7iFOBeBFeYmbMq82piF6TwdPSN9Z9eqTCh+7JLQy+K0IwGBr7751Bm
         dwAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=8S3Uh23H+gQhsf7YASK94vXEdzHi8M0NhOcwtIIfD7A=;
        b=hsr3wuTZhKr3uMR8/HNQzm7xg2dL7ome0doQiq1koQL2T3cdv96QyYQZsCWVB7fHaL
         Athq/B9ITe9ORlrD7uhBctmZtSl5ixBSWenTELpxVC3c+YNPYmpyy2oIbveCu8ySd8Bn
         +xYcRlcuDnxqnfi7LvXnxQ3+cBQEDtvSCHDcao/qUmzjLtHl3Lukt2HTKUUuTpk7vGoH
         CYKLybUxt+MyIum7xA7DiD/8OyoZSqzCVlyPkhC5iSaJEc9HBAoHrIgIkZD2IxcLbpX3
         InwfTdgA0NKWPuziUQwfnh9E7Z5CcspuoYqxIjjF0aqM8OWrx11gRTBxoGJ8PXsDhZMD
         1Iyg==
X-Gm-Message-State: AOAM531TMfV4XdbJ7/ggd7CCIShvi2YYxwKllpcwysos9Sgcpgk3m8aR
	9tu3TDjf2762gcF3P5yezaay9oglRgblZWW1
X-Received: by 2002:adf:fbc8:: with SMTP id d8mr11730071wrs.94.1617306900074;
        Thu, 01 Apr 2021 12:55:00 -0700 (PDT)
Return-Path: <martinsdecarvalhobeatriz@gmail.com>
Received: from bcarvalho-Ubuntu.lan ([2001:818:de85:7e00:a182:b5f0:9f7c:c891])
        by smtp.gmail.com with ESMTPSA id s8sm11097662wrn.97.2021.04.01.12.54.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Apr 2021 12:54:59 -0700 (PDT)
From: Beatriz Martins de Carvalho <martinsdecarvalhobeatriz@gmail.com>
To: gregkh@linuxfoundation.org,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: emxx_udc: Ending line with argument
Date: Thu,  1 Apr 2021 20:54:57 +0100
Message-Id: <20210401195457.24512-1-martinsdecarvalhobeatriz@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Cleans up check of "Lines should not end with a '('"
with argument present in next line in file emxx_udc.c

Signed-off-by: Beatriz Martins de Carvalho <martinsdecarvalhobeatriz@gmail.com>
---
 drivers/staging/emxx_udc/emxx_udc.c | 11 ++++-------
 1 file changed, 4 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/emxx_udc/emxx_udc.c b/drivers/staging/emxx_udc/emxx_udc.c
index 741147a4f0fe..20f53cf6e20f 100644
--- a/drivers/staging/emxx_udc/emxx_udc.c
+++ b/drivers/staging/emxx_udc/emxx_udc.c
@@ -1073,9 +1073,8 @@ static int _nbu2ss_epn_in_pio(struct nbu2ss_udc *udc, struct nbu2ss_ep *ep,
 		i_word_length = length / sizeof(u32);
 		if (i_word_length > 0) {
 			for (i = 0; i < i_word_length; i++) {
-				_nbu2ss_writel(
-					&preg->EP_REGS[ep->epnum - 1].EP_WRITE,
-					p_buf_32->dw);
+				_nbu2ss_writel(&preg->EP_REGS[ep->epnum - 1].EP_WRITE,
+					       p_buf_32->dw);
 
 				p_buf_32++;
 			}
@@ -1225,8 +1224,7 @@ static void _nbu2ss_restert_transfer(struct nbu2ss_ep *ep)
 		return;
 
 	if (ep->epnum > 0) {
-		length = _nbu2ss_readl(
-			&ep->udc->p_regs->EP_REGS[ep->epnum - 1].EP_LEN_DCNT);
+		length = _nbu2ss_readl(&ep->udc->p_regs->EP_REGS[ep->epnum - 1].EP_LEN_DCNT);
 
 		length &= EPN_LDATA;
 		if (length < ep->ep.maxpacket)
@@ -1462,8 +1460,7 @@ static void _nbu2ss_epn_set_stall(struct nbu2ss_udc *udc,
 		for (limit_cnt = 0
 			; limit_cnt < IN_DATA_EMPTY_COUNT
 			; limit_cnt++) {
-			regdata = _nbu2ss_readl(
-				&preg->EP_REGS[ep->epnum - 1].EP_STATUS);
+			regdata = _nbu2ss_readl(&preg->EP_REGS[ep->epnum - 1].EP_STATUS);
 
 			if ((regdata & EPN_IN_DATA) == 0)
 				break;
-- 
2.25.1


