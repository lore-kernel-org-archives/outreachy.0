X-GM-THRID: 6745889659545452544
X-Received: by 2002:a17:906:7202:: with SMTP id m2mr4422257ejk.138.1570650093004;
        Wed, 09 Oct 2019 12:41:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:6957:: with SMTP id c23ls364702ejs.9.gmail; Wed, 09
 Oct 2019 12:41:32 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzFthPHz6URSxdm5hW/AozYnI9oJwudPfDSJK+gOuTWBs7h1WUXhMMSqZKhdipuqXqlbgvD
X-Received: by 2002:a17:906:4d50:: with SMTP id b16mr4442548ejv.245.1570650092081;
        Wed, 09 Oct 2019 12:41:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570650092; cv=none;
        d=google.com; s=arc-20160816;
        b=f5SQ95cyVfBx3JAvxb7BfJ0chWJFeddsL6EsyEspeIdqEBeIsiFH/BMITUnpG+v32x
         TyGIpeD/L/F5uTCPMLFVoJ2bO93mgZeRxHI4hzPs765LcpXyX5dDjBRUXq0wiaWmMrBr
         RDi7Q4rT1Tlz88nrIYqs02XlZeTsdaVS5T1+ezPVMegIhaAhDg97AOSK3tJ8iwNCRYRr
         8d16RfW1dXNl9i/4Z4m8Ovhqzd6Vsdp6kTXj0NRzdCl45TK7FZ0zdckOTjfg7ejpD3id
         vBbbclwxjc/IqL+n0ntDIYx4ygd0F3VvSv9XRYDIwFSQxyf1Btg+rX39WYTBjQQADFNu
         /zrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=Y7r5Z69fE1yE+XsafCfc/oZ4rs1PL76oFBNneE1EVE8=;
        b=KhxWJ2zwcoesIjSReUC5HyuG65DwkOjuzfYXyo4PDe4qcM7ySfabGIbmzB/k6r1BRw
         AoQiJvMFe/sbWlKdHK6uVtUurpgrgIv41iGcXXAxw4f5iszzkWRCZDHooFq3DjXxjUrA
         KCrdOSojCP++GmfKlMOy+aOZoKs7TNkDUO/mutVGs8EU5p1CpL/80hJAquHhyjaXZKxG
         HmoA2i8hGSdQCfElZxK963CL3kNomiasMe/t44eM9mI2GQOx5xYlwFOLV6bR//c/UQ+z
         XENm8vSewDQ8oFMwMLHkL6zdqtEVTuqrLK8HTo0bDvlxRKpK+sHsaZGnNPlUIBePzZ8T
         7f9w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LwKsNBbU;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id a27si214978ejg.1.2019.10.09.12.41.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Oct 2019 12:41:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LwKsNBbU;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x442.google.com with SMTP id z9so4440432wrl.11
        for <outreachy-kernel@googlegroups.com>; Wed, 09 Oct 2019 12:41:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Y7r5Z69fE1yE+XsafCfc/oZ4rs1PL76oFBNneE1EVE8=;
        b=LwKsNBbUjphzvxLVVmv4VzwfwtPcZvTdS5KjCiLe4++bOSZD2bOs2Ec8NvYA4sJATt
         5bTyZZEynuXgqk9X3svjHdfNbkQ/YTzF8MnSOBMJmXqGXb2LznE3jsq0aC1rasDsIqTg
         YMQele48ovAMzUrz2Qe/Atjyp0/Wi6lSufvNt5UexqedsGf/CFaxrZfqBpuOTnCEWN3b
         02gKCRE4TaRRZX1OlzOGbFjBh5qxg2fJozhqqWt8DdtojE+XOFxVAgfYEixG+abptIfZ
         a64nfpB8/lCRaDFqL4NftVPnqJPqNOgIfhbDXth5yyWY6j4CpXKeNNHifS9cTkY5yZdO
         ARGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Y7r5Z69fE1yE+XsafCfc/oZ4rs1PL76oFBNneE1EVE8=;
        b=BfcAsapG35Hg34rdUNc0gVjAfKJj4N/XVCpxfTh+V7Y3QsvJr3z9MHgBNEl3pz8c+S
         tZXFciC5fDzZxxIatDsFlO2ufLNJ7Q8ff9A068RdBXzJBgPZCwkYDpsFNEkSO2e7p82X
         S9FmnB/D344eaxx5TOwhAkYfnvj9Hwnwok/LbYxmD/nSIlbLk69piLsM+pCqBN7Jqgx9
         Q5JGRkSDTCAWat+qiVu/YUmfDj6MdixCsA4wWirXVpUgdtJq6GjGGk9nM8AKYUzaWA8t
         yghNALPTbDYI9d3w3t13mVoCYcGYtc7jOuCODOhUzaq/+HnX36u5eAwSl12pfuewZSox
         aQ0Q==
X-Gm-Message-State: APjAAAXU/NqgaGWt83ijvl1s/4Q0KcG/egtQ/l4OcRJrjPBd5t984IXa
	B1GaTx7spR0vsEA59ISZl/eHQO/mWx2oKdU=
X-Received: by 2002:adf:f40d:: with SMTP id g13mr4103031wro.368.1570650091469;
        Wed, 09 Oct 2019 12:41:31 -0700 (PDT)
Return-Path: <jbi.octave@gmail.com>
Received: from ninjahub.lan (host-2-102-13-201.as13285.net. [2.102.13.201])
        by smtp.googlemail.com with ESMTPSA id t18sm3685646wmi.44.2019.10.09.12.41.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Oct 2019 12:41:31 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	GR-Linux-NIC-Dev@marvell.com,
	netdev@vger.kernel.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	Jules Irenge <jbi.octave@gmail.com>
Subject: [PATCH] staging: qlge: correct misspelled word
Date: Wed,  9 Oct 2019 20:41:15 +0100
Message-Id: <20191009194115.5513-1-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Correct misspelled word " check
 issued by checkpatch.pl tool:
"CHECK: serveral may be misspelled - perhaps several?".

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 drivers/staging/qlge/qlge_dbg.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/qlge/qlge_dbg.c b/drivers/staging/qlge/qlge_dbg.c
index 086f067fd899..097fab7b4287 100644
--- a/drivers/staging/qlge/qlge_dbg.c
+++ b/drivers/staging/qlge/qlge_dbg.c
@@ -354,7 +354,7 @@ static int ql_get_xgmac_regs(struct ql_adapter *qdev, u32 *buf,
 
 	for (i = PAUSE_SRC_LO; i < XGMAC_REGISTER_END; i += 4, buf++) {
 		/* We're reading 400 xgmac registers, but we filter out
-		 * serveral locations that are non-responsive to reads.
+		 * several locations that are non-responsive to reads.
 		 */
 		if ((i == 0x00000114) ||
 			(i == 0x00000118) ||
-- 
2.21.0


