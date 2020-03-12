X-GM-THRID: 6802879895263248384
X-Received: by 2002:a6b:8b44:: with SMTP id n65mr8826233iod.133.1584040023700;
        Thu, 12 Mar 2020 12:07:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6e02:d0e:: with SMTP id g14ls818849ilj.0.gmail; Thu, 12
 Mar 2020 12:07:02 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vt0SUbPNZthD9hTDQgV6SzIP27u+OJQAmUPm4n70YoNfet3R4QgkATnLohKj5su/AQgcl1X
X-Received: by 2002:a92:de10:: with SMTP id x16mr9735331ilm.88.1584040022273;
        Thu, 12 Mar 2020 12:07:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584040022; cv=none;
        d=google.com; s=arc-20160816;
        b=xfYapls88cioHSi/5Iqzi6Ns1ZT+Os4t1ENuagR/C+gLe2WU/Ya/3kOO8vEz07lKy9
         jNVZayxFXC+F9at3UG4ePHdlcjc2wjIg5Sl4xvpstIDDmRPTNfcdn/tgh1bl+Ukl9g4W
         zo8qNbKkWKL4EMAevrKhRJCT+bO55LanznZ3FiVpiAOZQvIySkqFqWiChkLtGV+6Lq57
         syX4W10zqY136doWsE7z54apxUZI6mCHnj69o32qqtbfaipI5GX6mynWFZNOrfO7vZBa
         wmRbSBFOQ7nga+5in1DuSQsIqhYSKOFWHFKuYCQBsYLdPo3lH0LW9oQzyh1Wxy//HaQa
         ZCKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=seq96FOO6Fl7kn6kfzxlQNVLY8ifRTClMSRlmSc1GzY=;
        b=EuDgyfoiOeUp/VMtRmenqv/Kk9rV0sNmjebjJF59VlY6T3t1wNYjbSTl5QZd3KUI82
         oMO7CgriHSQZE6rV787EA4BIv/tDiSYMYd5NqhY6CLCwosJz07DI8LtxPZp0loza64ru
         BSdsws94YYE4N6SoAPjiUzBXRfHA/P/ohmRc15lSAeXPzmHadnhZ2NFyG8n1hkFaPizi
         nKPPL+y3OXwvbZ/t/Fybi7SqgezrOZT+RdJS0uEBc1nMTwDdxsjBpih9R2kC/mraz9lW
         AueNnYFXtit3bkitzLXXF0p1/tR7KVjFwA0TSFJiSjFakcTt0ZkKpBWMg6LhEjoekeHT
         HnTA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=P3wjG18X;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id a3si105956iog.2.2020.03.12.12.07.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Mar 2020 12:07:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=P3wjG18X;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1044.google.com with SMTP id l41so3041104pjb.1
        for <outreachy-kernel@googlegroups.com>; Thu, 12 Mar 2020 12:07:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=seq96FOO6Fl7kn6kfzxlQNVLY8ifRTClMSRlmSc1GzY=;
        b=P3wjG18XHLI5Q2DaDxSW3S6cPonRBz4hhIlflhQToCrreQjpV5l3hdtpzrsKuxOgiq
         ejPJ+VTj5ADRLHRhvbqqEqZQZ2i1/yUyN469TZH5knJDJk2GK3K3axmnKik+cFV3KFQ4
         hldRbd7ZJJV7dIkkt2cKKuky8JnzkY6KoE/sFL7JH0IKjupM7pMW3FzHlIJJPL4XwXJ+
         ugRlq+HhXHyycelSYI86z2hqltAWCQ3liMEhOyRFXjmkE8KNXcxUkrPMkbGFT1Atmymy
         QFMGQNn8MwsOgwQxTcF+4w0SYl/Jq/ru3RxNPKDdEm+FWvL43HLWarR5phI/6u+uzWS9
         /aWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=seq96FOO6Fl7kn6kfzxlQNVLY8ifRTClMSRlmSc1GzY=;
        b=a4B1nJvjQH6k7kKy0yZu/1QdarfazBAKkqkLCL0cZo1y1W1bY/3UIFLuQng2io9dk4
         mq6EseaKXPdGbONsIgkbzt0jgtEeVH3ddZrCfLyKfCXtWeo9Sk6ZNrmVNGwLWF4+d0Tj
         CzksgmWHOEukjuERVVPcdtqrqCpVGaytbXwNpW0mCZlJvD0daeHW/bL1glUwNeosssOb
         7HV4CY1ZrF7UiftfPxKQj+YjZUgxUkRZOLyRyteEggRTB7fjJ/TBPKwcohiXRY3kNHkU
         Siho/Co2/8TPzO8LLjrBHJj5ZHmZ8x7dMSdUfz4lSiDk2m/FbymiT6lXhWb3D0ntrdAY
         2DEg==
X-Gm-Message-State: ANhLgQ3DNc3fAtoxxg/a6oTR20AbNaubxlrbLLVq8dQhIeZdcNoVm12L
	kbF2uAZT3kVmPgJAc3F4J+M=
X-Received: by 2002:a17:902:bd95:: with SMTP id q21mr9518865pls.148.1584040021853;
        Thu, 12 Mar 2020 12:07:01 -0700 (PDT)
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from payal-desktop ([157.33.142.89])
        by smtp.gmail.com with ESMTPSA id f3sm46825969pgg.46.2020.03.12.12.07.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2020 12:07:01 -0700 (PDT)
From: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
To: manishc@marvell.com,
	GR-Linux-NIC-Dev@marvell.com,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
Subject: [PATCH v2 3/4] staging: qlge: qlge_dbg.c: remove an unneeded variable
Date: Fri, 13 Mar 2020 00:36:23 +0530
Message-Id: <20200312190624.24167-4-payalskshirsagar1234@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200312190624.24167-1-payalskshirsagar1234@gmail.com>
References: <20200312190624.24167-1-payalskshirsagar1234@gmail.com>

Remove unneeded temporary local variable, cleanup suggested by coccinelle.

Signed-off-by: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
---
v2: Keep newline as is for readability(Stefano Brivio).

 drivers/staging/qlge/qlge_dbg.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/qlge/qlge_dbg.c b/drivers/staging/qlge/qlge_dbg.c
index 670361873d1d..cf753b8a6442 100644
--- a/drivers/staging/qlge/qlge_dbg.c
+++ b/drivers/staging/qlge/qlge_dbg.c
@@ -29,15 +29,13 @@ static int ql_write_other_func_reg(struct ql_adapter *qdev,
 				   u32 reg, u32 reg_val)
 {
 	u32 register_to_read;
-	int status = 0;
 
 	register_to_read = MPI_NIC_REG_BLOCK
 				| MPI_NIC_READ
 				| (qdev->alt_func << MPI_NIC_FUNCTION_SHIFT)
 				| reg;
-	status = ql_write_mpi_reg(qdev, register_to_read, reg_val);
 
-	return status;
+	return ql_write_mpi_reg(qdev, register_to_read, reg_val);
 }
 
 static int ql_wait_other_func_reg_rdy(struct ql_adapter *qdev, u32 reg,
-- 
2.17.1


