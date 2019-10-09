X-GM-THRID: 6746163892430307328
X-Received: by 2002:ac8:6144:: with SMTP id d4mr11909371qtm.282.1570728714788;
        Thu, 10 Oct 2019 10:31:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:1a73:: with SMTP id q48ls599933qtk.14.gmail; Thu, 10 Oct
 2019 10:31:54 -0700 (PDT)
X-Received: by 2002:aed:3e87:: with SMTP id n7mr12240409qtf.48.1570728714065;
        Thu, 10 Oct 2019 10:31:54 -0700 (PDT)
Received: by 2002:a37:9804:0:0:0:0:0 with SMTP id a4msqke;
        Wed, 9 Oct 2019 05:56:40 -0700 (PDT)
X-Google-Smtp-Source: APXvYqynAwyQSifAlR5nv9YcBlxV1hzM+GZUAv3mpfcVGEV6fWCm/36CKrRWbCG8PbP82ZD7YPOb
X-Received: by 2002:ac8:1903:: with SMTP id t3mr3539508qtj.344.1570625800241;
        Wed, 09 Oct 2019 05:56:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570625800; cv=none;
        d=google.com; s=arc-20160816;
        b=mnMGE26fp/5g1ucA7W3XU2vN+i7e5t42ZLtuHTByOYZ23SYfy+4Q7SEubWVQH0LUq7
         U8vNnrb1vxjtLYxHO2kg5reHWcD4foOh5mSDI0zmcoQYWw71AfrUYA7hSMf4dr5Ar8NZ
         CWwqJ8jHhfj/hbGka0c+2I/uOMSRJraojT+YYrHklvRzFcGXe5n8c+5SHmNZJ6zqVYfl
         lBoxcTpYigvo0tVlMRtHrtZX4dg4z90MKPsLBgXkWhzymkjmSvoyNHIXYV51S4FiyRHH
         ZGX0j1CTotreFlbYOr/OUWN/r2xSERg6mqj0hPtEpWe6LpyXldrbxxm6yuUMRr473Am2
         dGPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=Qz+7rPg9IaVXbUeQGvWbDSA0CPdda16F1Us+6yD+v8I=;
        b=Vd50e+u2IJFxfyKvhbiQJ0V5d3PDJlR1gb0MgkQL/D2eLHxCsMSQ9Pve6EPXODJY9W
         qQ/242tWWg/tYBE5FBFs7HydP+epCVt8Dy/vdgRMyCwLjszCHeMmSDL7jDzr7tAzEaeS
         6+la4QTfyhI7LLjWp6c8fyeT9XMo99hxbTtaCCqSlIIGJMP0PpCUDTgG4N5B2kAsB7qU
         D2e29OZ3hMwiv4/FHKu65LYqrHo5bnMAm//oWER2IFAi3g/ZstwM28NxLwod2ejZULNH
         unLSOAtjdVvoyu9iUavgb2Zt35+UaThMsmc6/ITS2FgYwRLOitkoHNDGYjTZ5G4RrEZL
         Mv7w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UU1LBVP0;
       spf=pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=wambui.karugax@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <wambui.karugax@gmail.com>
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id t53si82105qte.2.2019.10.09.05.56.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Oct 2019 05:56:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UU1LBVP0;
       spf=pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=wambui.karugax@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x543.google.com with SMTP id 23so1376842pgk.3
        for <outreachy-kernel@googlegroups.com>; Wed, 09 Oct 2019 05:56:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Qz+7rPg9IaVXbUeQGvWbDSA0CPdda16F1Us+6yD+v8I=;
        b=UU1LBVP0Y1kilLbnQ2hmVv5pt7AbdsB3gCqLdktP2qH4tlTVBQ2lFE20LDjRgeI6xn
         tBzRuyJP2ToJKWCbC+k2+wRCYlj3YvIcpq3S82xttFpuZOA/WAGYWhSwH4IABZUxnh5l
         yjVczg9pHkjvUu19dTAu5KVfjGwFqK3qZyMBREpRQwKW8zlbMIOlcJyXUyylGimRWmUB
         xD8cqhULQuECwMICi04cwUrHAbKqT0nFQGauG9JNIpZR4E1CDA+esMYMGTouyladzLIP
         /e5AlFHZDlyrHiT2/HUvTIMVR+G5cd3UEr+5kuXIOcUksSXi/I8G3MMITOvjA6mi6jBX
         SYXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Qz+7rPg9IaVXbUeQGvWbDSA0CPdda16F1Us+6yD+v8I=;
        b=WzcNIH5akizkBYewQnVD91cVwIFXLKQnxnvcvL/lMtkb9kxUvNML0V9W+OnlDPCz4R
         jxrtuZ61gyI0x5K+N9e/4KCnXPfo+1Qq/XCynjsT4l2tcMJGOVMY3YsTAE8rA4QZN52R
         MtJcLHaHhdmwlw5VWCT7vGZONQqEqkcIUYN/FPUyITW5uj/Zjhm9ym8k6ku3G/XFM/vE
         IZFkfn0l5tzAMQPjbQ0dXQ6FG9qpBcze7qlYZksxO0L7NaD5CPA92l2GUUcZZmrt7suc
         +ej433V/UtAiebOUX5vu47inbNFsejCHJh1VwjGNGXH9u0VpBw31n94sIpWBWK5s5cIJ
         muCg==
X-Gm-Message-State: APjAAAWZGlQufaLZcJ1gRZ4owqm4vo+DwDTBVWhdTuUWL6M6RsWJVnMz
	ngcixUR0dOzl7ZPU99BG+oc=
X-Received: by 2002:a63:ba05:: with SMTP id k5mr3985314pgf.195.1570625799234;
        Wed, 09 Oct 2019 05:56:39 -0700 (PDT)
Return-Path: <wambui.karugax@gmail.com>
Received: from wambui.brck.local ([197.254.95.158])
        by smtp.googlemail.com with ESMTPSA id j16sm2020094pje.6.2019.10.09.05.56.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Oct 2019 05:56:37 -0700 (PDT)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Cc: Wambui Karuga <wambui.karugax@gmail.com>
Subject: [PATCH] rtl8723bs: Remove comparison to NULL
Date: Wed,  9 Oct 2019 15:56:05 +0300
Message-Id: <20191009125605.29099-1-wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove comparison to NULL in drivers/staging/rtl8723bs/core/rtw_ap.c:1449.
Issue found by checkpatch.pl

Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_ap.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_ap.c b/drivers/staging/rtl8723bs/core/rtw_ap.c
index 6d18d23acdc0..fb34f7d80afb 100644
--- a/drivers/staging/rtl8723bs/core/rtw_ap.c
+++ b/drivers/staging/rtl8723bs/core/rtw_ap.c
@@ -1446,7 +1446,7 @@ u8 rtw_ap_set_pairwise_key(struct adapter *padapter, struct sta_info *psta)
 	u8 res = _SUCCESS;
 
 	ph2c = rtw_zmalloc(sizeof(struct cmd_obj));
-	if (ph2c == NULL) {
+	if (!ph2c) {
 		res = _FAIL;
 		goto exit;
 	}
-- 
2.23.0


