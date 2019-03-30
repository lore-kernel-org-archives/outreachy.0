X-GM-THRID: 6674230099683835904
X-Received: by 2002:a05:6830:112:: with SMTP id i18mr3782011otp.50.1553965383528;
        Sat, 30 Mar 2019 10:03:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:4255:: with SMTP id p82ls947972oia.4.gmail; Sat, 30 Mar
 2019 10:03:03 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzZzP0gka6KZNoPJHcj4JY4qkkzl9rU636xnw30Mbam23gD1eDxYMwiPFdwtSY2tXLHQpq1
X-Received: by 2002:aca:c6c8:: with SMTP id w191mr5005075oif.24.1553965383002;
        Sat, 30 Mar 2019 10:03:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553965382; cv=none;
        d=google.com; s=arc-20160816;
        b=X3IpyXZV3ihTAGC8uDfsU8QNG9rIuFYM1/1xVDaI2M4pUEBs1UuN0sfmWqkMjJqDa6
         CPYMW0XmiMib1JdP2vgZq2xYzZShi1aT6l839Z93w79gdS0GzVBV9TyNgnpRqtQWMNd2
         7+9XeNA8Tto90Ay1CTDZ+brwZWzMw0c590k0hLe7Asj5/cJ5/qdikQYQPQp0bxkQM6k2
         NVqE1lewJ/rX5htFw4PYY0rkwibE/PEFYJ44lbUFzRAUsLyC5nIO1CfRJmGotazTe8EA
         V+wOU0CwrNTK3ufS0lJ7yDSojX4ZM2RDPqWyxTh9r+iJpJe+jhVt3GfKp4cRZxxhLOsp
         2Mew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=vOR2odhUtTjuqwJgZrmXw1rnlFgodhqJuEqW/7LYmJE=;
        b=fOlXXzytzTwgg71rmJI7QO/TfF1L86v1uf+R0kdjDszXwnx9nY3+/gwxIJFagJcS9X
         tv4h2T/V7apZCZBN3vmoy3hJEJDPYFtNzr0zbiMvlMnNw5B4D/X6DHRpTuAItXkPKgfF
         /tCBAS6tFjwf6PMfZef537hoK2SoMtSqP3XtnD5eesxgglQe80nGg/FYkE+fdbLSV7L8
         lnGyFtIHfvfow9dQ59k9nVwTFt73v/jL5GYkBd0CvhlEJqRDfCIRs2+g56a/n0zVEfRQ
         yHBu56f60xZdx9q3l4nSSgP5SLCTSgRD/rx7FLKQzqnZpVlgi7HWZSh+T0QtVsNd/rEI
         J6iA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kCIN+v8c;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id 196si246303oii.2.2019.03.30.10.03.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Mar 2019 10:03:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kCIN+v8c;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id c8so2485932pfd.10
        for <outreachy-kernel@googlegroups.com>; Sat, 30 Mar 2019 10:03:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=vOR2odhUtTjuqwJgZrmXw1rnlFgodhqJuEqW/7LYmJE=;
        b=kCIN+v8cef6lnvzGWAomqAY7sPu/etO1CvLY+Y0xrEAAgfPtPhVqo72tN4hdgeibaw
         gft0KAUpQzNrVnA9TYMtW8nw3vs3c4biRJCsgOuwfYoRnS/ot8qLdM2Y92b1L71MKPO6
         8wKUlnxrAG/+4HHUpogLC3qXRfqTGSMXOlD6UMICz0Eol9DPW36RXAKBPG+uUx57y1Jj
         jqBx0AiMwsfIF8ZlL/xPwCG65KhrFODSg1X1C9J6klJgeOg48Fa44YFq/834Pbi5F7by
         FNCSyd+Lxwg6hIam1ixL7F/2ESqoVnohKt6dmxexBqwK4aNf0KMzf1uOR1De6hAjQfQ3
         KqBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=vOR2odhUtTjuqwJgZrmXw1rnlFgodhqJuEqW/7LYmJE=;
        b=T++fHHqWKTykNDVbqM9hlF/6Rq2SgOKt9CRNNi6OSirYr87VA/osnP2+pHOtrSYEE/
         CMvborXEwWHTnY+3sQRdaavvNrqEDRtiBf7SHT55olh0i7zZpR7wvToWCPrbQiyHwQPH
         DKSn2zV0jSxIOphpen8wHR7E5+m1UNMM/e0K6GCKFf7gEmgQMGdW79juvROsrh8fFuMs
         5omxDe/AS//xrllVDqvY15EW4pz0affmuZ91vJLhI1m8wF6iVG8JZSpFzi12WPH253wf
         nDNnMUNXKq5BPkWnDy9EtUKrctTVBDqA7bnzVPTbC6mGnBYks7YXGwnoeZwn+mggaWjz
         WLxA==
X-Gm-Message-State: APjAAAWoIy2TAOIybuLAO9CrxRN4qFsWV50aByaKSe5/loBBejsJMQkN
	lTnKJ/59VOlaA9ei/UYf5ek=
X-Received: by 2002:a63:88c3:: with SMTP id l186mr52608880pgd.148.1553965382390;
        Sat, 30 Mar 2019 10:03:02 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from sanjana-Inspiron-5570.domain.name ([123.201.165.90])
        by smtp.googlemail.com with ESMTPSA id v19sm10789899pfa.138.2019.03.30.10.03.00
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Mar 2019 10:03:01 -0700 (PDT)
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 1/2] staging: wilc1000: wilc_spi.c: Modify return statement.
Date: Sat, 30 Mar 2019 22:32:51 +0530
Message-Id: <20190330170251.4818-1-sanjana99reddy99@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190330170116.4761-1-sanjana99reddy99@gmail.com>
References: <20190330170116.4761-1-sanjana99reddy99@gmail.com>

Challenge suggested by coccinelle.
Remove return variable and directly return the value
Issue found using ret.cocci

Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
---
Changes in v3:
Make a patch series.

Changes in v2: 
Adjust space for last argument in return statement.

 drivers/staging/wilc1000/wilc_spi.c | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/wilc1000/wilc_spi.c b/drivers/staging/wilc1000/wilc_spi.c
index 4a1be9e60d74..47c777c5d1a7 100644
--- a/drivers/staging/wilc1000/wilc_spi.c
+++ b/drivers/staging/wilc1000/wilc_spi.c
@@ -934,9 +934,8 @@ static int wilc_spi_read_int(struct wilc *wilc, u32 *int_status)
 	int k = IRG_FLAGS_OFFSET + 5;
 
 	if (spi_priv->has_thrpt_enh) {
-		ret = spi_internal_read(wilc, 0xe840 - WILC_SPI_REG_BASE,
-					int_status);
-		return ret;
+		return spi_internal_read(wilc, 0xe840 - WILC_SPI_REG_BASE,
+					 int_status);
 	}
 	ret = wilc_spi_read_reg(wilc, WILC_VMM_TO_HOST_SIZE, &byte_cnt);
 	if (!ret) {
@@ -982,9 +981,8 @@ static int wilc_spi_clear_int_ext(struct wilc *wilc, u32 val)
 	u32 tbl_ctl;
 
 	if (spi_priv->has_thrpt_enh) {
-		ret = spi_internal_write(wilc, 0xe844 - WILC_SPI_REG_BASE,
-					 val);
-		return ret;
+		return spi_internal_write(wilc, 0xe844 - WILC_SPI_REG_BASE,
+					  val);
 	}
 
 	flags = val & (BIT(MAX_NUM_INT) - 1);
-- 
2.17.1


