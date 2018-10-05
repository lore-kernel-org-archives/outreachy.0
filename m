X-GM-THRID: 6608871941819334656
X-Received: by 2002:a24:f5c3:: with SMTP id k186-v6mr7987121ith.29.1538747908984;
        Fri, 05 Oct 2018 06:58:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:4d07:: with SMTP id l7-v6ls535879itb.4.gmail; Fri, 05
 Oct 2018 06:58:27 -0700 (PDT)
X-Google-Smtp-Source: ACcGV62ufFHGl+KxRqf51BxG2w6W5os+cGfAqLWL8JN2aH1cACr6w/yQ5xKMZc5zBz3/gXP2ZpOR
X-Received: by 2002:a24:a048:: with SMTP id o69-v6mr8495201ite.39.1538747907939;
        Fri, 05 Oct 2018 06:58:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538747907; cv=none;
        d=google.com; s=arc-20160816;
        b=iZoSXI/fNMFnv7/ksCRPY0b48NmRStxifckopA7A9H/54zxW3dwHpSQk6ooAQrTpvj
         6/1/ap8Gjlsu6xb3RcZCeXUttG/uRrIpGS8Egk5GhH3J1ERgH/XGcbPQIAQDe1RD+cB1
         XMmj6fQKpMReqVpXQwYao5x+/q4W1LxtapGU79NzrcOoF3+srtyMfiuvqFZ+HUqOQ4E3
         EOvYOKN5UBcY09KjH3OZAurCCRqw8wb3LWNPcJMc5Dzrd81QGA9z3BALSOTIZIh5auEb
         EbPckxc5vcN/7eTHx6kEmu6xmpNSi6vbylUocGogBOsoMMkaJClzVtgc8x+Ap35IVKae
         KnqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=6jNqmtvDs8QWBrTcXASjFUjZzy94KGZjXHtSzeZK51M=;
        b=Ah8EqsfbMikuBp+Ib1ZB6H9yMCddWJ86cnRJjrO1wToraOZBMge8/xw7nvCNzmxjax
         Ow7bUjJRYX8zmigYaVzEbEf+ArBqN7K0Rtqko3UpdwxJYJqyrozaFuEHOgwOo6aPtCDi
         a92NWE9Rep4ft0oQ+f44pWFaJ2XmvLGxe/C7a4P2SIAK1F/oUo9820WkHDPUI+gLM6KA
         c1xhjR50GMWQRXYgcoiIUwYhUGp4p6Djhr+p9sJUq7earw7kl4RdMjt2f4n77oy8Dvq9
         VP6x8pHBZ0KgEG/1MCO7KVieutc7S8GGfe3JZ1PBudSbc+G+mQ7qYqi/5daNP7zLskE/
         vphg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gOFpUsXV;
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mamtashukla555@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id 137-v6si52597ita.0.2018.10.05.06.58.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 05 Oct 2018 06:58:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gOFpUsXV;
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id j23-v6so5134909pfi.4
        for <outreachy-kernel@googlegroups.com>; Fri, 05 Oct 2018 06:58:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=6jNqmtvDs8QWBrTcXASjFUjZzy94KGZjXHtSzeZK51M=;
        b=gOFpUsXVN/niaV1TrsCi+s6smeki/AP1/2pSvY9PEoiC9WI1yHgPRBx6QDhU6C4rau
         Y1JkYYNcuq9mYvFTngAhuOsGw4PGpcIbqaATHgBrMXNrXgDEMGcf3HB2BJGgeY4qNUZs
         pnk1dNUb5EHrmfs2ZaAIZlfHwVhCHMFZjP+7GVs7RLPc/rXqjetPqKwEdwiHPLziaAP8
         oLAcg8tFjlhUaNeWj1Ewh5Ro9D4hmfaNYz6L2ojN7q/iA0ckEAofQxWQuuI2cQfEtXFf
         XyNEoGJFAM48KeXZafPDLmDvhDgAjioLUYUZ3f2vPc0bkXyQt8jQXVSLLtXr5QVcNWTe
         yIjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=6jNqmtvDs8QWBrTcXASjFUjZzy94KGZjXHtSzeZK51M=;
        b=ecaOfmZfKW5TD85zPdztfu81JyFGR4XF2nlYvrGBy6P2NHEKtx5OeJgQgZ3yvPRI9O
         XVJBTCUhkFx/5B9PmOJ+8kWOtiwqGD7sjf+NrTnUClMLWgdY1pVfYkWXda0w1vreHnzh
         fqKHUWUM1GQHHa2n5mFdPILHvtCg/lQwE0XJSqtrSjS0MSFej4/4VFWVcYQn7Q9iAbjm
         a8JwG9U+U/dAtXX7422L2PdpIhlk0g6xsor2CHNfGxkb4uUmBpJbMxdUw4KovY8k/E+0
         eLA+bBBqHdBoXegs3eAmrkpnHpzmJk/paE89cZrhEI//5myGnJYjHYIjN1pSw1XTiDrj
         yIcQ==
X-Gm-Message-State: ABuFfoj2NrRY2HUXdO1e921ARZxuejXvcL+WmL4Tr1FSn3rWJE+T4Pj3
	VHwktvFnyLJKwlJKGVanR+k=
X-Received: by 2002:a63:7156:: with SMTP id b22-v6mr10258714pgn.342.1538747907340;
        Fri, 05 Oct 2018 06:58:27 -0700 (PDT)
Return-Path: <mamtashukla555@gmail.com>
Received: from armorer ([59.88.105.99])
        by smtp.gmail.com with ESMTPSA id c1-v6sm8649487pgp.34.2018.10.05.06.58.26
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 05 Oct 2018 06:58:26 -0700 (PDT)
Date: Fri, 5 Oct 2018 19:28:20 +0530
From: Mamta Shukla <mamtashukla555@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org, sudipm.mukherjee@gmail.com,
	teddy.wang@siliconmotion.com, mamtashukla555@gmail.com
Subject: [PATCH] staging: sm750fb: Remove space after cast
Message-ID: <20181005135820.GA29318@armorer>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove space after cast to fix checkpatch issue.
CHECK: No space is necessary after a cast

Signed-off-by: Mamta Shukla <mamtashukla555@gmail.com>
---
 drivers/staging/sm750fb/ddk750_sii164.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_sii164.c b/drivers/staging/sm750fb/ddk750_sii164.c
index 4b34a08..8391f57 100644
--- a/drivers/staging/sm750fb/ddk750_sii164.c
+++ b/drivers/staging/sm750fb/ddk750_sii164.c
@@ -39,8 +39,8 @@ unsigned short sii164GetVendorID(void)
 {
 	unsigned short vendorID;
 
-	vendorID = ((unsigned short) i2cReadReg(SII164_I2C_ADDRESS, SII164_VENDOR_ID_HIGH) << 8) |
-		    (unsigned short) i2cReadReg(SII164_I2C_ADDRESS, SII164_VENDOR_ID_LOW);
+	vendorID = ((unsigned short)i2cReadReg(SII164_I2C_ADDRESS, SII164_VENDOR_ID_HIGH) << 8) |
+		    (unsigned short)i2cReadReg(SII164_I2C_ADDRESS, SII164_VENDOR_ID_LOW);
 
 	return vendorID;
 }
@@ -56,8 +56,8 @@ unsigned short sii164GetDeviceID(void)
 {
 	unsigned short deviceID;
 
-	deviceID = ((unsigned short) i2cReadReg(SII164_I2C_ADDRESS, SII164_DEVICE_ID_HIGH) << 8) |
-		    (unsigned short) i2cReadReg(SII164_I2C_ADDRESS, SII164_DEVICE_ID_LOW);
+	deviceID = ((unsigned short)i2cReadReg(SII164_I2C_ADDRESS, SII164_DEVICE_ID_HIGH) << 8) |
+		    (unsigned short)i2cReadReg(SII164_I2C_ADDRESS, SII164_DEVICE_ID_LOW);
 
 	return deviceID;
 }
-- 
1.9.1


