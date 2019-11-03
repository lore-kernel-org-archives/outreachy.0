X-GM-THRID: 6753896393761357824
X-Received: by 2002:a25:a0c8:: with SMTP id i8mr17388102ybm.242.1572755844429;
        Sat, 02 Nov 2019 21:37:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:c7c9:: with SMTP id w192ls1778457ybe.8.gmail; Sat, 02
 Nov 2019 21:37:23 -0700 (PDT)
X-Google-Smtp-Source: APXvYqymyR7oa9/HYmAiJcx8b7omZ/O0NneqQyl6xT7ixT6/ea23PDdr68HI2lmIHDCVHutGccit
X-Received: by 2002:a25:54c:: with SMTP id 73mr5111779ybf.68.1572755843257;
        Sat, 02 Nov 2019 21:37:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572755843; cv=none;
        d=google.com; s=arc-20160816;
        b=abm5rXa2jf+9r7i/7Tx60fNFGtrKy2YB47bSfG1Idh/3911kmx++zyHfX5Q0V3hts6
         fqTvs+8FhvTwpW8/VPEIJs3UbU2H3tGtBmRE+6pdUFzKPVTl5sK56jxb5R0P1mJAlDBB
         /QJ+y+gbDBWgSugL+UbCUKCmo1yR1ONVCOQsaJM+Xp5h0HneKUlMkllArFSJXNQuhww5
         BGsrATJd96KBagMr9JW7UCrV8O+zmdxrwdI12RzqRPcvoqKL5lpoCyDbDrzww3CQFP4B
         P11vgirn+HE/ygMM8/WrxiKRt63Z5a2CjqF4CFyXcSo816xntbpMTi3cJ9Bl7xjA8Qz+
         vLZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=632zSglLZV7gLfaKNcRj3CQHlUUPadni0I4ndM7o/bo=;
        b=OMj43b1HLDzGQwj5j4PcKT+tWNv1Mb8UOwvkvoQXg+LODXbbVQAo6Qj8llW0o87IYN
         x7/hCrfiUREuzVVkX9Y0/n/Ler7SyB0XZdjViwT+0k7ex3gvSR1dHWMVfqOMoaQxEQje
         Ijmbn2tCGwhxrHXQ3XQnqml+ywwkweEvnm0p40htpoSsCJpKzITr6CbkWlhlVQtLm7Hq
         KwALCh9uFV3xmR5Ft6aF/y1BuPnmwtijU5CkmVup+MWTXgJ5DOCIPMFI5pQRSHL/xyQc
         WGi8n8PmfkVHKjI4gpCgnccb2c66OyIe2grkg+oI4JLwbl+q2R1lPp8HWX02C4KAXLCm
         ESNA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="U/It7o0V";
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jamal.k.shareef@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id t73si628240ybi.4.2019.11.02.21.37.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 02 Nov 2019 21:37:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="U/It7o0V";
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id e10so9061648pgd.11
        for <outreachy-kernel@googlegroups.com>; Sat, 02 Nov 2019 21:37:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=632zSglLZV7gLfaKNcRj3CQHlUUPadni0I4ndM7o/bo=;
        b=U/It7o0V4Nc9oGh/zodlLTM7CvQJxNE7WMLxTmjlh/Mo0J/YcZTiuoDy4CLozw1sli
         wV44t5izR3h70a9TmWNJg3oGy1iqF4EzTZ4J0DtWDfNx6Xi1Gs5mo5WDyhkBKL0xRn+f
         9GqHQYxSHdFHoxRnkrVVaOZS3t5oG2SnCp+/V823oVyQ31WNkay7pSdOwBobftPqJI76
         aeHI0AtJ1mMR6bVjChm0UJpGu+rciVH+mCTQDQMp/uVGwZhUxstsrubd7vot3VRUMjjL
         dfnegsxEyiXBSKpkxRXXMrA6ErCfdFPl4yag3LQiuOQzgrizhNTPQO3h76jcfRAe+MFE
         WqbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=632zSglLZV7gLfaKNcRj3CQHlUUPadni0I4ndM7o/bo=;
        b=hqpKRrJiq8GHFYov3E8ktJL2cYjTa+s12kXzWZmEdhT4TgsV2FFysDTukVw1Fw6xuZ
         KnIbYij43uUjFv0eFuo46X9C0YpqFbR9vmMtCJOEgGgSsp0Aa6V0aN9bVM2CKthwHhCw
         n5cLeO1trUFtkRhJ1l58G/CFPQJ53rHln6DZvPJbYjLSMRKpH7xZuDva17QLkBfZ64uX
         fRZ4FRhK8h2LsyIJrQwIpHvR34gWMXY63K6CUPLc4GaaRJzY+hoxLIF3hfx2Eoqy4uyi
         4dDz9/jzx2u90UYS+wJ78h0xATGhkqh5K97rtuNaYUUsc3xwZpZH0t3ZJqA++XYZhmXI
         iHzg==
X-Gm-Message-State: APjAAAXu4eXydh2yMpJZHaPtvUpDK/hBPyPoG+18KHihYJnsUsq1Lt/Q
	wgFbnEOP8IRM59WNGgecwck=
X-Received: by 2002:a62:ae11:: with SMTP id q17mr286515pff.103.1572755842517;
        Sat, 02 Nov 2019 21:37:22 -0700 (PDT)
Return-Path: <jamal.k.shareef@gmail.com>
Received: from jamal-desktop (97-126-66-56.tukw.qwest.net. [97.126.66.56])
        by smtp.gmail.com with ESMTPSA id f13sm10540055pgs.83.2019.11.02.21.37.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 02 Nov 2019 21:37:22 -0700 (PDT)
From: Jamal Shareef <jamal.k.shareef@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: eric@anholt.net,
	wahrenst@gmx.net,
	gregkh@linuxfoundation.org,
	Jamal Shareef <jamal.k.shareef@gmail.com>
Subject: [PATCH v5 03/10] staging: vc04_services: Rename function pointer typedef
Date: Sat,  2 Nov 2019 21:37:00 -0700
Message-Id: <578e5163c028b427c9a9a7844dee6f198df78f68.1572755439.git.jamal.k.shareef@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1572755439.git.jamal.k.shareef@gmail.com>
References: <cover.1572755439.git.jamal.k.shareef@gmail.com>
In-Reply-To: <cover.1572755439.git.jamal.k.shareef@gmail.com>
References: <cover.1572755439.git.jamal.k.shareef@gmail.com>

Renames callback function pointer typedef in vchi files to better match
kernel code style.

Signed-off-by: Jamal Shareef <jamal.k.shareef@gmail.com>
---
 drivers/staging/vc04_services/interface/vchi/vchi.h        | 2 +-
 drivers/staging/vc04_services/interface/vchi/vchi_common.h | 7 ++++---
 .../staging/vc04_services/interface/vchiq_arm/vchiq_shim.c | 3 +--
 3 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchi/vchi.h b/drivers/staging/vc04_services/interface/vchi/vchi.h
index 05fb5c3e8ba0..56b1037d8e25 100644
--- a/drivers/staging/vc04_services/interface/vchi/vchi.h
+++ b/drivers/staging/vc04_services/interface/vchi/vchi.h
@@ -45,7 +45,7 @@ struct vchi_held_msg {
 struct service_creation {
 	struct vchi_version version;
 	int32_t service_id;
-	VCHI_CALLBACK_T callback;
+	vchi_callback callback;
 	void *callback_param;
 };
 
diff --git a/drivers/staging/vc04_services/interface/vchi/vchi_common.h b/drivers/staging/vc04_services/interface/vchi/vchi_common.h
index fba37559aa83..7b18d2346e09 100644
--- a/drivers/staging/vc04_services/interface/vchi/vchi_common.h
+++ b/drivers/staging/vc04_services/interface/vchi/vchi_common.h
@@ -86,9 +86,10 @@ enum vchi_service_option {
 };
 
 //Callback used by all services / bulk transfers
- typedef void (*VCHI_CALLBACK_T)(void *callback_param, //my service local param
-				enum vchi_callback_reason reason,
-				void *handle); //for transmitting msg's only
+ typedef void (*vchi_callback)(void *callback_param, //my service local param
+                               enum vchi_callback_reason reason,
+                               void *handle); //for transmitting msg's only
+
 
 /*
  * Define vector struct for scatter-gather (vector) operations
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
index c8e62789a540..781c2916c5b8 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
@@ -15,8 +15,7 @@ struct shim_service {
 	VCHIQ_SERVICE_HANDLE_T handle;
 
 	struct vchiu_queue queue;
-
-	VCHI_CALLBACK_T callback;
+	vchi_callback callback;
 	void *callback_param;
 };
 
-- 
2.17.1


