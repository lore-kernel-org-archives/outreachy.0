X-GM-THRID: 6673505851539456000
X-Received: by 2002:a24:df45:: with SMTP id r66mr370997itg.21.1553796662832;
        Thu, 28 Mar 2019 11:11:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:a01:: with SMTP id 1ls1362997itw.3.gmail; Thu, 28 Mar
 2019 11:11:01 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxWLtEIdboWIspscMU3v+pOMhh4HO2CCp00T4HFFOrx5igZlmxV581urTsVucFJdDAMbPCZ
X-Received: by 2002:a24:6b05:: with SMTP id v5mr392884itc.38.1553796661816;
        Thu, 28 Mar 2019 11:11:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553796661; cv=none;
        d=google.com; s=arc-20160816;
        b=j9ZST5FyXqFYo7JsATlTj1JHZkuKV/g9JTw7+b5Yx6L/6A3rTZRFuH4pw4+MGamenk
         mLbwjz+IrPe5/TaxGLpoJSwP6DPJ1eD05rOCq7Yu2yEw0Dp6J3eLAJo8q10bZhzTcFyn
         j16Ps0M0SvoXnYkqgMFV/q3fWPlZkLIdp6ErmK9GKxcxvMmYOc/6hyznULI2e4nxlSNC
         /rwRreuz8V30NjRTXlYCV7KiB05Ui7uvVovIh4QhvKt7gc3jqiVxyxTG0gH8HI8ywtLU
         XAUow6WDx1GTAz10+OqSMeEWMRQLXopUZGAsYYF96GZOGuNKN9NjVCLDqkhaRbZ4bBCr
         M2IQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=v+/7WoGQcHQCGv7tD0IdVJNkWNlnjR1/f3w+CWhFQXE=;
        b=jB5a5Fy3zSHCpPKSWsfwaMze5JJLjP49DHdPg0Epbh/+hg0iKcVv6S3iMMNBZd/cXq
         XRaWRdCHAPBnv+bD68eHywLQWCmcb4FGBxit0qetLj9IbammEJW6Gh2tipANNiZaFkZg
         LCbapd7HYKsml1VNbgVyfvrjscT5q6cqr0U2D7NYUrmulZN+88GRb0QbXN60i4TQct1G
         Y0ONnYyRM+z86wpWP1LBkQakc1i0DsERuxadVHA1l0Q4ZSITf2KezX+HJdSS/tMF/1nA
         HpkfHt7QUbAT/uGZ86ecpiGsi8tfNchYdd5D+CH3FL1i53gxt1T2RBkwLZD71UuJFYjX
         1vwA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ntMyzYNI;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id q130si107297itb.1.2019.03.28.11.11.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Mar 2019 11:11:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ntMyzYNI;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x441.google.com with SMTP id b3so10350015pfd.1
        for <outreachy-kernel@googlegroups.com>; Thu, 28 Mar 2019 11:11:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=v+/7WoGQcHQCGv7tD0IdVJNkWNlnjR1/f3w+CWhFQXE=;
        b=ntMyzYNITSnhIjD6EjnAzLtudKjIzlgTuFwdUOw2ysXXHqHKmuJImwoTL/5rubkGH/
         IHB3KZhiE+0gEZJg7j3eYOFJC80N4Cn9WPAK0Y5m36SmqoxwaRQXiNxDOusxT9DM1bVz
         TdqTtt/GgXgy9AFF6g7/QgZP32kXANpqEeBSZlk/e3JjjIX25q+9OHvP0pVKq6EDt3Jz
         2WzOqTq5XFuGBmdpbSWZ+mpZ/rbhO+FIM7+Y9PJOU8HBsm3VKWauVggjkwyL6VPy4jWs
         bt5hxL43DHypMJOqbVi8SDLOXZvBm88qFfXOWzL/s1fRSe90744aOiMFjzgarkDKHd2d
         LmCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=v+/7WoGQcHQCGv7tD0IdVJNkWNlnjR1/f3w+CWhFQXE=;
        b=QZQhTZ8T7a9QPDlU2DFaQDUFmObIbAP6Qt5L/N7NSGiL4mV81YEwx8vnKU+ZD8LWwT
         +I+CYpkbVb/0n3w9hGSgZUAfK8G0wJNGTx1efAfLhdjq1EMJu5amipivpD1XUUCFZtHM
         oFHUH0/zLl+TYgebG3p9FcIILUICjEgNwK9iEOpeTBdTLnrnI19YJbXHaCmDyScKeXIL
         9CDxGSu0nm6c7iesYSi+ePyQa5Txsx5s66hS2HcalQ8vEnML8hJdfGfNb2+9xh316lhP
         5hharJCZ5M2RVeCkGYFEsLQzcXwpemAAWytJsmUEudpvoXR1GLNbfyGsNQGSdwBtZ3rf
         SQ5Q==
X-Gm-Message-State: APjAAAXQWexqfuQeQxWb5UAHCKnCcd7ldqlLvlqhKYsMBzMCugYL95c9
	HKxEVV29RYTAN/5OrTS6lpV9hGjb
X-Received: by 2002:a63:d250:: with SMTP id t16mr8437762pgi.288.1553796661390;
        Thu, 28 Mar 2019 11:11:01 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from localhost.localdomain ([2405:204:6105:9194:4d26:756d:e157:1b31])
        by smtp.googlemail.com with ESMTPSA id z77sm54201751pfi.155.2019.03.28.11.10.58
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Mar 2019 11:11:00 -0700 (PDT)
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: wilc1000: wilc_spi.c: Modify return statement.
Date: Thu, 28 Mar 2019 23:40:46 +0530
Message-Id: <20190328181046.30172-1-sanjana99reddy99@gmail.com>
X-Mailer: git-send-email 2.17.1

The last two lines in the function could
be compressed into one. Avoid usage of local variable.
Issue found with Coccinelle using ret.cocci.

Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
---
 drivers/staging/wilc1000/wilc_spi.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/wilc1000/wilc_spi.c b/drivers/staging/wilc1000/wilc_spi.c
index 4a1be9e60d74..9959a794edc7 100644
--- a/drivers/staging/wilc1000/wilc_spi.c
+++ b/drivers/staging/wilc1000/wilc_spi.c
@@ -934,9 +934,8 @@ static int wilc_spi_read_int(struct wilc *wilc, u32 *int_status)
 	int k = IRG_FLAGS_OFFSET + 5;
 
 	if (spi_priv->has_thrpt_enh) {
-		ret = spi_internal_read(wilc, 0xe840 - WILC_SPI_REG_BASE,
+		return spi_internal_read(wilc, 0xe840 - WILC_SPI_REG_BASE,
 					int_status);
-		return ret;
 	}
 	ret = wilc_spi_read_reg(wilc, WILC_VMM_TO_HOST_SIZE, &byte_cnt);
 	if (!ret) {
@@ -982,9 +981,8 @@ static int wilc_spi_clear_int_ext(struct wilc *wilc, u32 val)
 	u32 tbl_ctl;
 
 	if (spi_priv->has_thrpt_enh) {
-		ret = spi_internal_write(wilc, 0xe844 - WILC_SPI_REG_BASE,
+		return spi_internal_write(wilc, 0xe844 - WILC_SPI_REG_BASE,
 					 val);
-		return ret;
 	}
 
 	flags = val & (BIT(MAX_NUM_INT) - 1);
-- 
2.17.1


