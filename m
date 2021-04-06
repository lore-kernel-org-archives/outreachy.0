X-GM-THRID: 6946280249577439232
X-Received: by 2002:a2e:9b14:: with SMTP id u20mr19871086lji.463.1617737688137;
        Tue, 06 Apr 2021 12:34:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:e86:: with SMTP id 128ls1195386lfo.0.gmail; Tue, 06 Apr
 2021 12:34:46 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJz/RtRxiqLJyftkma2lbVATBhxacV36n5WSrb0FSRPC+eQ5dYC1ZClRF6UbKzPswHjx2m0r
X-Received: by 2002:a05:6512:3713:: with SMTP id z19mr944629lfr.659.1617737686116;
        Tue, 06 Apr 2021 12:34:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617737686; cv=none;
        d=google.com; s=arc-20160816;
        b=hV+DvlFtiif7etqFWajpKr2vph7OryR+MP8JS857Hv3fyY8drIMiU6gup3NYmJi0GJ
         n3wOZT9wkbB8hbG8RsZSWeUU3oYJtk7OxwKgQPMW5h0k1ZIFCvgQPjKAhZExTYnVQR1H
         BHFLPpgG4EUezlx5JY+Y1r642eRNBhPxiVwnkWX1gJTW25tbNZgQKT7pKNZWNElTZ5nL
         m/D/aCOnFnF0rVZptFWQlCKPSl3NUKNZ9Zq7nG0coAKyf5MA+Fky5a6y7nZiSLL3YhCZ
         RKNsdKMNBWsu7gR8KG9/coc8QtPytQzvaWn6xRUsF5PFEB2E1tat+vW3bwZ6zQMKBQ5l
         RoHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=8S3Uh23H+gQhsf7YASK94vXEdzHi8M0NhOcwtIIfD7A=;
        b=AxZPmOIXiSN+yR609tZ0EIh//fgHr8zNlGyMku0LbaDJzRsD+5I04p3v1vyvasyMN/
         DkGOL2Q1kIdTmPYGYO/5TKllWfTjehwBWNs3dSyToTjuD9WduFFojuvTirFH32BIV2Wt
         Lgo+V+5t7AnglHONQsvAhBln4Vwp0Eym88qqtoV6Rq4m6mCSI6WNvfxj9q1mYStOkxSm
         IY9MYjY+zTXNUf5GhgG5oJxXsTnSTdaGm8DeMGNjtKnuigxJZs6jXlrVlZ+iJFH7RNhE
         8+pBpXqtDrTlkKKYP4prnASIcBW+ZgcA/HA0X31V4hC7NECBQ5GiZHiaWC8m30nV86Es
         3Fmw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=K1jhGkT0;
       spf=pass (google.com: domain of martinsdecarvalhobeatriz@gmail.com designates 2a00:1450:4864:20::42f as permitted sender) smtp.mailfrom=martinsdecarvalhobeatriz@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <martinsdecarvalhobeatriz@gmail.com>
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com. [2a00:1450:4864:20::42f])
        by gmr-mx.google.com with ESMTPS id z5si1643383ljj.5.2021.04.06.12.34.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Apr 2021 12:34:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of martinsdecarvalhobeatriz@gmail.com designates 2a00:1450:4864:20::42f as permitted sender) client-ip=2a00:1450:4864:20::42f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=K1jhGkT0;
       spf=pass (google.com: domain of martinsdecarvalhobeatriz@gmail.com designates 2a00:1450:4864:20::42f as permitted sender) smtp.mailfrom=martinsdecarvalhobeatriz@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x42f.google.com with SMTP id e12so2361754wro.11
        for <outreachy-kernel@googlegroups.com>; Tue, 06 Apr 2021 12:34:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=8S3Uh23H+gQhsf7YASK94vXEdzHi8M0NhOcwtIIfD7A=;
        b=K1jhGkT0rQRrxYrdUccc9LKWjwtNtE9JBvnSETUmCSElTHz3NOMDx9VPkZFkQy2V3A
         CUvcwCNOaHGF6nFo9RaP8gIvxfiu+K9v2Ag/EaR3c9+GdJV21TX0oREV0piWy6RLVBvn
         evaQ5igK6kZvhfi0Dn7DSZYTP/pF0x6twRofcg0OqKpQ0r/uaFe63z/ZWeVMkr/oviF2
         TYPkZjPba4L358UAql88B6lSPqyq2FPTNyhwHN2jAKLQmiu8HN1Tyrkk18SQHEUWhz/J
         ugkzJOXqhPH23SbPD0Iezga5dB6M2Fk48fMh4ThAQq4tMx7xH0oW0oSZQYIa8YDlNway
         aKvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=8S3Uh23H+gQhsf7YASK94vXEdzHi8M0NhOcwtIIfD7A=;
        b=g+uivcoPodODEgJwoLxSDst9SoarOUCijEuq3REuvKWaLBRH2FISCWfuB4hi/ZoHju
         ihiDjtvSPZsi4JvkvgxNDOzi/rqv9KVRFt+Gnwn8jy5stpLZ8r008j+ar4FWKEsq0ljD
         fAptRk8wCvVsN8rbglxCQgc4gfNpRK9FIRwvD+ID7bac6ZXtMvx8/NjaaWeUrf04ebYf
         2aM420FLIc5XzLU2eIVIs55hwVsBrejJoAi7LsWrDOVLOTQm+tqeMq+4In3fXjGlNldn
         EsAiiR7Bopp8GXYWRGgWOhPu/jJjIiYlpa9+lm4i5KtERDY6AUvdcOsUcLjTgphu77xC
         m2vQ==
X-Gm-Message-State: AOAM532XGNAlLNhaavySkGLPyNaV0e7521vxadhXvNy5nBac+D9vHeMe
	j8Z3OE5zeG/GhXOvFDUu3yo=
X-Received: by 2002:adf:f645:: with SMTP id x5mr14835224wrp.314.1617737685884;
        Tue, 06 Apr 2021 12:34:45 -0700 (PDT)
Return-Path: <martinsdecarvalhobeatriz@gmail.com>
Received: from bcarvalho-Ubuntu.lan ([2001:818:de85:7e00:ef5c:3f2a:a646:d6ec])
        by smtp.gmail.com with ESMTPSA id r11sm18793668wrp.70.2021.04.06.12.34.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Apr 2021 12:34:45 -0700 (PDT)
From: Beatriz Martins de Carvalho <martinsdecarvalhobeatriz@gmail.com>
To: linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	gregkh@linuxfoundation.org
Cc: Beatriz Martins de Carvalho <martinsdecarvalhobeatriz@gmail.com>
Subject: [RESEND PATCH] staging: emxx_udc: Ending line with argument
Date: Tue,  6 Apr 2021 20:34:09 +0100
Message-Id: <20210406193409.96428-1-martinsdecarvalhobeatriz@gmail.com>
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


