X-GM-THRID: 6249299693524746240
X-Received: by 10.107.6.163 with SMTP id f35mr33515755ioi.25.1455028470704;
        Tue, 09 Feb 2016 06:34:30 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.45.161 with SMTP id o1ls1888662obm.27.gmail; Tue, 09 Feb
 2016 06:34:30 -0800 (PST)
X-Received: by 10.182.243.135 with SMTP id wy7mr31125404obc.8.1455028470338;
        Tue, 09 Feb 2016 06:34:30 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-qk0-x232.google.com (mail-qk0-x232.google.com. [2607:f8b0:400d:c09::232])
        by gmr-mx.google.com with ESMTPS id v197si2315114ywa.1.2016.02.09.06.34.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 06:34:30 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c09::232 as permitted sender) client-ip=2607:f8b0:400d:c09::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c09::232 as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x232.google.com with SMTP id s5so70768222qkd.0
        for <outreachy-kernel@googlegroups.com>; Tue, 09 Feb 2016 06:34:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=dSoZ86GnAiDRHk3kQ7Emhg/UfMJ7RhFenGVpo13bd3Q=;
        b=bZdWPwOKfIAQx8t6QKeO7ybRFNsWnxunDamzoEahHx9TN3s0cmCmEMTXImdZCRZKj/
         HgBBrHLdvPqAKi27iWMlqQfzio/fe3iwBPOlfekEW6yNwb3tQeewMVqIBdhG0y8x+psW
         HUqsL6NaFXnI6doHk7wCwCRSABL98vUVOYVVxs8thIr8Z1ANd48OagSs1VfzWzM9ZJ5w
         j33DX3MhCD2vjmqyBbDh1xcIU2//YyBPUtSCI1b4F+/rGCPZpVj8rBVno3lAl4DcCvy1
         eetxgvLEJkZ1CeMKuBuXINnCxCNdz4gDllStB6OLtiHzJFqxxfJPRKZ4E+PPfNdFHgFt
         abMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=dSoZ86GnAiDRHk3kQ7Emhg/UfMJ7RhFenGVpo13bd3Q=;
        b=R44mZfVDUmI/pL3kDxsxtamku32ZFQVqlK1IsNvwOfWXZiR4cqZCn1V+fTFJADBrwe
         eza/5/osWdfvFSHfbDMD5OjaB/T/ltQM3yXEX+kl9SgkonN3M/MSMtqfST65rx+a/7mV
         DxvFuG3T/0U1CTPCnt4VJgWE5vqoacKyzeSeRn4nPptz2Sxvcv5R5B0x4zETGhBLZtFG
         0qSNagDSmpgS/3mWpVrm58Eh2lAWGBoaoe4NuJ52mj00124JdlicwLMuf3DbppBNLKk6
         x0lPJy9dtLdbNKLWnYAMD/oypah52+13eqGsYCPFW1KS7amkC9TRfqyTD2ajhMAR1sxd
         UuMA==
X-Gm-Message-State: AG10YOSYonUA30/dfMY5N9PAh5lBrmkHiJmufpKl/GsZgqZzogPsMAi2IF5uzPnvtladPA==
X-Received: by 10.55.26.136 with SMTP id l8mr30779801qkh.103.1455028470187;
        Tue, 09 Feb 2016 06:34:30 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id c17sm15875099qgd.29.2016.02.09.06.34.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 06:34:29 -0800 (PST)
Date: Tue, 9 Feb 2016 14:33:53 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rdma: Use kcalloc instead of kzalloc
Message-ID: <20160209193352.GA6417@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Use kcalloc rather than kzalloc when multiplied with size to prevent
integer overflows. This change also makes code nicer to read.

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
 drivers/staging/rdma/hfi1/efivar.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rdma/hfi1/efivar.c b/drivers/staging/rdma/hfi1/efivar.c
index 7dc5bae..feef163 100644
--- a/drivers/staging/rdma/hfi1/efivar.c
+++ b/drivers/staging/rdma/hfi1/efivar.c
@@ -83,7 +83,7 @@ static int read_efi_var(const char *name, unsigned long *size,
 	if (!efi_enabled(EFI_RUNTIME_SERVICES))
 		return -EOPNOTSUPP;
 
-	uni_name = kzalloc(sizeof(efi_char16_t) * (strlen(name) + 1),
+	uni_name = kcalloc((strlen(name) + 1), sizeof(efi_char16_t),
 			   GFP_KERNEL);
 	temp_buffer = kzalloc(EFI_DATA_SIZE, GFP_KERNEL);
 
-- 
2.5.0


