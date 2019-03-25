X-GM-THRID: 6672231072339591168
X-Received: by 2002:aa7:8012:: with SMTP id j18mr23522798pfi.42.1553499855365;
        Mon, 25 Mar 2019 00:44:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:ff24:: with SMTP id k36ls888297pgi.2.gmail; Mon, 25 Mar
 2019 00:44:14 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwxRcbHPH6af55doSa7q0zha+tLzbyljPH15cuxzBLij0N56FeA/Df1K18J1I5epgMBzTah
X-Received: by 2002:a65:5249:: with SMTP id q9mr959418pgp.104.1553499854540;
        Mon, 25 Mar 2019 00:44:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553499854; cv=none;
        d=google.com; s=arc-20160816;
        b=zLW55emqK/nUqCxlS0UVLR0quG57S5rbMXHRku3DVBOwYPAyI/t+HdjFbdkAdsbVNG
         40EFn3vhOqY1GRSeo9O58UPQQ/p0J0NZK6myLIKRVuX130+hEhYBD16C9Hr+FJuYW8h5
         fkKdavGLbj9nS0EN2IL+z9l2X4OGJrrOu+Ur/nqS1NvoVyPHE8PvX/vEgt+xokS0EhoY
         unXT8SbLkO8Ufwn75MVaVaDjQZFkie1tu8GYJmFxNmpMcYr4WDmjIPk9VVlEL+B5/aHt
         L0gq7kWaVfBNKvypep27Y57P+D8mOUS1+PPacDQuv1a47jwpFUu7+37AKnsn5ObjAkef
         ys2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=J1OMAV6dAkNEceeCRM3diKSIcnkkZR/weRNHRx7Xi5I=;
        b=eUanZjVjq0obz3wzRlG3ZoCWkXHebwGTGn8ddAihpUV+UI4NifcX7bxrM3ZMvIIqln
         Dyo5b+ziCV/b5nkHZYRs0vdtan+vx+C1dFEVBymtwDuREbuyVg90VcH3z624nit5bKRk
         Vn6TzkH5k1Dhf9dCbTN7eTKQUy687utYpJhNa3WTpHtxEzaoJT3Rg+OXyLn7wOWsDN+Q
         wT8Iz7RAWO2QuEdx3ZBDH/HTYA+oXEGpfWx/AqpU4QiprjXckCste76HuJL6uIOweDU8
         EbIK4kg6Xk5iR+CcMVYmheIhKC0ou2/EPttbDmG+6aTvCmIlqNxuwUX9orKCpnoh3R6u
         C69A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bzMstlZr;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id j8si725766plk.3.2019.03.25.00.44.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Mar 2019 00:44:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bzMstlZr;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x444.google.com with SMTP id p10so5796202pff.3
        for <outreachy-kernel@googlegroups.com>; Mon, 25 Mar 2019 00:44:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=J1OMAV6dAkNEceeCRM3diKSIcnkkZR/weRNHRx7Xi5I=;
        b=bzMstlZrg3AJPPPs8rYCUO03RHVXuGqBKUcIb3x5KdMOsadahRZWFn15mMckjYRgKT
         ZM9JLCeJqMhCx+o+r+JQ4vtSeIVdwIZBc2ylbYUNfWee+nqwobbGCoadDA/mHKRtbMX6
         F/udaG5gVNOXsqduirewV8TLY1Qky814nHWfDesNEwU4S8nzq5dCnPWdlk8OwCx2EYc+
         /CF3+oPe8meXEQFk+UQ3yx2fs5AUbpAMXgt/tbhOTrUNcNMNBZsgmgrsCsIv8EKtVr5g
         y7lvZKLJHPti8UK3lCAJ6ZqP1J70MYGCDdE90rvrB3Zdg0GpxnsSSORQTtRY1Q9dGwiM
         gEXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=J1OMAV6dAkNEceeCRM3diKSIcnkkZR/weRNHRx7Xi5I=;
        b=HoS8Q1vROfOEI9G4Pqg93AzFNASkk8fH1R93rckyphGql1yuQloga8rufdPWQD4++V
         cGUmF6zPBZR5thodHR4b9DvJfkzMAGmU0PcsjCr+51Bf5zWySExer5o6q090fg+2Ekzt
         leXME6hgc/ursl3u2jLxPVsxBQg8iXVNsmP1Ad8SZN/GRy2Q6xhyDks2sPgZnJCg0DcV
         P3G34PKDOqfxcti3xYMSxsGeRWKEXGnSu3cOkpo5byNuyqkwJgBiClUd0FRVxYPMS7aX
         cr+ZbvwEo9fSkHqHmmTsmQ0Zwm8Xit0ea37ALNcxrZb5y4BHZT40/+sXFImSo9fPclkj
         xh7Q==
X-Gm-Message-State: APjAAAVaEAEAualMUUSKvBjYxS3Q77jDi+R4uHPalh3/i9YFMblevbkE
	fk3Zxg9JLBOv1JtGr8vreOw=
X-Received: by 2002:a17:902:1003:: with SMTP id b3mr24040206pla.306.1553499854198;
        Mon, 25 Mar 2019 00:44:14 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from sanjana-Inspiron-5570.domain.name ([123.201.105.41])
        by smtp.googlemail.com with ESMTPSA id p34sm23269114pgb.18.2019.03.25.00.44.12
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Mar 2019 00:44:13 -0700 (PDT)
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v3] staging: sm750fb: Prefer using the BIT macro
Date: Mon, 25 Mar 2019 13:14:01 +0530
Message-Id: <20190325074401.7844-1-sanjana99reddy99@gmail.com>
X-Mailer: git-send-email 2.17.1

Challenge suggested by coccinelle.

Replace bit shifting on 1 with the BIT(x) macro.
Coccinelle script:

@@
constant c;
@@

-(1 << c)
+BIT(c)

Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
---
Changes in v3:
Change the subject line.

Changes in v2: 
Modify script to remove parentheses around BIT. 
 drivers/staging/sm750fb/ddk750_chip.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
index 4c1f00f551da..eea4c08b8a26 100644
--- a/drivers/staging/sm750fb/ddk750_chip.c
+++ b/drivers/staging/sm750fb/ddk750_chip.c
@@ -45,7 +45,7 @@ static unsigned int get_mxclk_freq(void)
 	OD = (pll_reg & PLL_CTRL_OD_MASK) >> PLL_CTRL_OD_SHIFT;
 	POD = (pll_reg & PLL_CTRL_POD_MASK) >> PLL_CTRL_POD_SHIFT;
 
-	return DEFAULT_INPUT_CLOCK * M / N / (1 << OD) / (1 << POD);
+	return DEFAULT_INPUT_CLOCK * M / N / BIT(OD) / BIT(POD);
 }
 
 /*
-- 
2.17.1


