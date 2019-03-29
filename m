X-GM-THRID: 6673505851539456000
X-Received: by 2002:a05:6830:1543:: with SMTP id l3mr2495113otp.35.1553837664879;
        Thu, 28 Mar 2019 22:34:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:4541:: with SMTP id s62ls339765oia.7.gmail; Thu, 28 Mar
 2019 22:34:24 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwhqEj1KGilBTxlKY3zUzf8c/CLF5jwIatgUpzji6kVi0dc9EdMEDEWCZ3ptPafCOccpZOC
X-Received: by 2002:aca:47d1:: with SMTP id u200mr2623172oia.40.1553837664251;
        Thu, 28 Mar 2019 22:34:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553837664; cv=none;
        d=google.com; s=arc-20160816;
        b=PAzNUsLB8n+GLriRFDY5+jW7PMJbVZeUf88nshviCib9UvSnXWaz/FQPZWDXAdUuD7
         sAHl61ZHFyBnFuCLN+e04QvTkCSFLKuJhwkVLl8Eiuo3rn19tas9+RE1O/zjtlFMR1wL
         iCVdYGvPjF4Z/FBaKhf6wlTXMx5s2nrowRobbkag/Gm7phK/Ih/9tgoFtF8h39pwyzKk
         95lylzUkbnJqM6+VVimJBn4ba6YbDQ3HvXjcHvh5RfCS5ev4YhTHjCSCeYCukM0OKRom
         XMHTtu7tH5qYXfA9jKBjcSOnXJS4CGJZPBL9xN7FGZAEQJJFzWwt2vOoA9qrLVdL/ueA
         AvTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=yqXHBIY0nqKKv6qtTktHx8S6WQ2OXirEOpZEtALQAYY=;
        b=bo0l+BmqQxmXgHieMRQ3YdJLJ6kmM6Weq9e0MXGXOI8HygcTEy8MNv2K8BpFmZscyg
         Jqtug1kTbL9lVP8RE2R+1ilsdM4317PTihScRU7DDfVYXpo0tIjNVI6epSdC/zNVPqfC
         I/CXYG/AoB6k3jwImhNLa303pkRmOwuVuo1RT1za/4Xkk6COT8Ofc5JdsshGcWneYrGZ
         eCyGdWyqTlMcZ3alaCBOR2ncLP5ofklw/PHYZH8ae4fz2TU6lHVnc+heJM5VIz7JQoOh
         Ld+r1Nq5yO8YZeH1cBYrF5Wn8sbvuYWf3oqP+FgkabXabcWSQKRAZUwST89frjklmA9U
         RpgQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="O/jOpQJ3";
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::52b as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pg1-x52b.google.com (mail-pg1-x52b.google.com. [2607:f8b0:4864:20::52b])
        by gmr-mx.google.com with ESMTPS id t14si117828oth.0.2019.03.28.22.34.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Mar 2019 22:34:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::52b as permitted sender) client-ip=2607:f8b0:4864:20::52b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="O/jOpQJ3";
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::52b as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x52b.google.com with SMTP id v12so654678pgq.1
        for <outreachy-kernel@googlegroups.com>; Thu, 28 Mar 2019 22:34:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=yqXHBIY0nqKKv6qtTktHx8S6WQ2OXirEOpZEtALQAYY=;
        b=O/jOpQJ311cpLibcLEUuJ4lIUCRQXmC5t7OIQwO9vWI44J6heBLg/X/CanVGUL8T1d
         TD8ktLQZc4C+7L/D6G7rdvp+SWPaw7Qqka+iBW/OGAUjy47nduTJaFrymMyBB5CK6nwu
         t3v2QtTtBpsK/QukPefk+PXR1z05MDkZzBR/6CbnyklKwDLLhxzkxuaqHjKGuqx3rZDK
         9dJOPCDPznfk8xzXQMpk/lKtoTnYYGRfckebrIeHgWILZFfsLTTfQsvzyIgm4OPdJ2mD
         +69Z5rUMjo6RzujoldEr/XX/JtEExcTMOWfm+vrvbORp0GqwLL1SAroJmqSiAHtflEXm
         8F+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=yqXHBIY0nqKKv6qtTktHx8S6WQ2OXirEOpZEtALQAYY=;
        b=lcVvXu0tD+7gmC07lnyeQ43EHNMxH6KNkJsgRHOilZSrStSOnAdLQLqGbHeI0yL8MK
         yAV6PWkhBXcr1uOfQiuzO/RUbA35piv1AhKlj74jhbF86+haZ5weaCM4C8poqAm0YZ7y
         ins4UghL2kPDlSiObyvy8212AvM/GinDFNt1Vkao8q5cpsA9WYeQoPnhekUe/rmggdVm
         V9RtxryILuk2+AO5/EKs2Yb+wIkIZXEqEgJPYLEioXZlsYunNhSnpc57XZCmDvk6ARSy
         g7golh5wVR5ViKBZ92TS7SEjF46OMX61VTdPH7TkbzzgORYUBPvix1zbD2WAFXRvwhex
         W+ww==
X-Gm-Message-State: APjAAAWuOd801g7OuDXDgq6ol6ZYkR8t/IXqimslbBUNs2mDNltMtKrx
	MQ+nS+Jhg52B1nAUhqH5gACfaWiS1Tk=
X-Received: by 2002:a65:4343:: with SMTP id k3mr25402297pgq.384.1553837664019;
        Thu, 28 Mar 2019 22:34:24 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from sanjana-Inspiron-5570.domain.name ([203.109.108.29])
        by smtp.googlemail.com with ESMTPSA id b7sm1891855pfj.67.2019.03.28.22.34.21
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Mar 2019 22:34:23 -0700 (PDT)
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: wilc1000: wilc_spi.c: Modify return statement.
Date: Fri, 29 Mar 2019 11:04:12 +0530
Message-Id: <20190329053412.9392-1-sanjana99reddy99@gmail.com>
X-Mailer: git-send-email 2.17.1

Challenge suggested by coccinelle.
Remove return variable and directly return the value
Issue found using ret.cocci

Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
---
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


