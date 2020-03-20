X-GM-THRID: 6806430751874088960
X-Received: by 2002:a2e:8719:: with SMTP id m25mr6962554lji.17.1584746771413;
        Fri, 20 Mar 2020 16:26:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:651c:550:: with SMTP id q16ls1714425ljp.1.gmail; Fri, 20
 Mar 2020 16:26:10 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vt/nKoJjbSyQyXnFVU9Irazvw44k5ZVifxDysdiEDjgiVx0Rowa4sq8i+Xa+QaGuTaj6EGC
X-Received: by 2002:a2e:9243:: with SMTP id v3mr6596178ljg.12.1584746770032;
        Fri, 20 Mar 2020 16:26:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584746770; cv=none;
        d=google.com; s=arc-20160816;
        b=qv47vLXAScihCCrqH/ixEhcQUDwTrQR57zKknUXloGYFa1sQrDNHEsUvbX8V0SdnCm
         Lo928ZS8HzpsdKGkcIJZtRXua2oBrCDK0RvYSJ0VzDiLMPiW0gftwLFUScPqw+Ys/+K4
         UdtjPksWi32/u56DfPwtTA5K+TO91mXKdz/XWI8a0hWrKMASO8yG0ayqJbTLisfOoaM3
         ihPbJ70w2QO4BLaO1aJhNiBIYG+piU24mkjr4lULxoD4/mOBp8jFCyI19s4vp+q4AWS/
         oxkZNqZ75lDxpxMIKttRf5URSVd2j3fjhY8lme5fgdkwJrbuCfkA+/eZHnrQhtSzLgFE
         k0gQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=+zSWXiJAwc+l7iBHwROFHsAoeGF1/PvwhJdRVtXPYec=;
        b=qLt+bEIQiQ1GUGOdEiLsLfoiZSs4BS/wfAHD3gjLQwK/bxAvhzqmTLsz875C/rGAiw
         N/ErTk67A8ADKxlr8P2kjKpVevkENOGjC3Bcem14HkPpMF01Sas5nR7o8+zNshlAU481
         oGClT8lB4bbG/gI9722DyBR+9dGE642e/rNykE9eTiONFPsfTLqEqFxXBLHHfwU1F+xD
         LJTAprbB2LrIZfFUDGHQqmfk0xkvjWI8Wnv4Pop3DCHRP44is/EXkvFTBJ7ea44Oq5bi
         CZpkqbe4dvU/oHzJSmLVUq0TBUeRMNasMHF6JZcHC9JUHFm5WErUY4w+DalYrFwlx1dK
         BoMQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TM0Ytf+7;
       spf=pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::143 as permitted sender) smtp.mailfrom=gokcekuler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <gokcekuler@gmail.com>
Received: from mail-lf1-x143.google.com (mail-lf1-x143.google.com. [2a00:1450:4864:20::143])
        by gmr-mx.google.com with ESMTPS id w6si352873lfa.1.2020.03.20.16.26.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Mar 2020 16:26:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::143 as permitted sender) client-ip=2a00:1450:4864:20::143;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TM0Ytf+7;
       spf=pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::143 as permitted sender) smtp.mailfrom=gokcekuler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lf1-x143.google.com with SMTP id s1so5869692lfd.3
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Mar 2020 16:26:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=+zSWXiJAwc+l7iBHwROFHsAoeGF1/PvwhJdRVtXPYec=;
        b=TM0Ytf+72QSBN7yaNM6VJ5JW/W5rjeOyI3pcSK8AspdOyDSbbGoufUXjvY/PXMwiPh
         OmIGX+WKWihz7ubccmm1HMnJ75sldnjHGtCuAduiklWRF4Olxc6NfAQzexFyVOG5ytdK
         u7QrKXwWUq2H28XBhnV6J/AqQws6QRehJ/1OJLCNls5bp0d/AwYuOg8gouetpaPri+VS
         KJnOOtevtMhXWmAwoufrH3q/wAHxA6HE5LFvee18Xsg3m3F13llRrrY4tDK02/jNLSp4
         hdRYmkEky0SII+R9hjf585GyTq5WhVaAvxuOwUXGkSBns91jHGAiT4vfj9gScdex65ic
         /j8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=+zSWXiJAwc+l7iBHwROFHsAoeGF1/PvwhJdRVtXPYec=;
        b=gvIKssv+L2JFLPlxTCQ9nlkgHox/9zD/NsWfbyYm/XVBvoEL82mgAscuYKRiaOGvew
         Zp8lG11ut/fWMv/r9ujUxR8aFyFexE7CzoVIABKP12QKUq7ow2EyJz0hJjex2byig3My
         fxzT2bIlKXzzQR2zsynRcbR4MW20Z/ZigJyLeKXW9znBe2AzJb9bXdKhFFxIZaionJeM
         +MsAAKQ0Qy+j9VJpx+Lv1csZ8kXEC1S+e8s8WWo1XjcVMAx58KffvGudf7XTC1XV7Xmy
         buXWfLuiNOpgpemTcMeukqbbsm5scFgBcSiwej2x/byuNpv4CpXgVIRX8RQWY4UQI9VN
         WXzQ==
X-Gm-Message-State: ANhLgQ3ODDlWuC4YkTt3ZzGHRE3NLNZP65lltFkTBzl84ErdQ8Fg9tYo
	ph4Rd3yCvU2T9XgvJwLqV7V20c6Il28=
X-Received: by 2002:ac2:41c9:: with SMTP id d9mr6656577lfi.41.1584746769788;
        Fri, 20 Mar 2020 16:26:09 -0700 (PDT)
Return-Path: <gokcekuler@gmail.com>
Received: from siyah2 ([88.241.68.50])
        by smtp.gmail.com with ESMTPSA id r23sm4183645lfi.89.2020.03.20.16.26.08
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 20 Mar 2020 16:26:09 -0700 (PDT)
Date: Sat, 21 Mar 2020 02:26:07 +0300
From: Gokce Kuler <gokcekuler@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH] staging: mt7621-dma: quoted string split across lines
Message-ID: <20200320232607.GA8601@siyah2>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

quoted string merge to upper line

Signed-off-by: Gokce Kuler <gokcekuler@gmail.com>
---
 drivers/staging/mt7621-dma/mtk-hsdma.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/mt7621-dma/mtk-hsdma.c b/drivers/staging/mt7621-dma/mtk-hsdma.c
index e194dfa..e619d75a 100644
--- a/drivers/staging/mt7621-dma/mtk-hsdma.c
+++ b/drivers/staging/mt7621-dma/mtk-hsdma.c
@@ -219,8 +219,7 @@ static void hsdma_dump_reg(struct mtk_hsdam_engine *hsdma)
 			mtk_hsdma_read(hsdma, HSDMA_REG_RX_CRX),
 			mtk_hsdma_read(hsdma, HSDMA_REG_RX_DRX));
 
-	dev_dbg(hsdma->ddev.dev, "info %08x, glo %08x, delay %08x, "
-			"intr_stat %08x, intr_mask %08x\n",
+	dev_dbg(hsdma->ddev.dev, "info %08x, glo %08x, delay %08x, intr_stat %08x, intr_mask %08x\n",
 			mtk_hsdma_read(hsdma, HSDMA_REG_INFO),
 			mtk_hsdma_read(hsdma, HSDMA_REG_GLO_CFG),
 			mtk_hsdma_read(hsdma, HSDMA_REG_DELAY_INT),
-- 
2.7.4


