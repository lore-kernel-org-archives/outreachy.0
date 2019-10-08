X-GM-THRID: 6744906774126526464
X-Received: by 2002:a62:5e42:: with SMTP id s63mr36387173pfb.96.1570502602936;
        Mon, 07 Oct 2019 19:43:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:5107:: with SMTP id f7ls522815pfb.2.gmail; Mon, 07 Oct
 2019 19:43:21 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwFGLAV7aX4S1dpM2U/9DTIRvOkdGimMyKDqYrEj480guCXY5Tmqvvo6xRDdkX8jK9OB8ud
X-Received: by 2002:aa7:9735:: with SMTP id k21mr37284813pfg.174.1570502601783;
        Mon, 07 Oct 2019 19:43:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570502601; cv=none;
        d=google.com; s=arc-20160816;
        b=OOrH8FuXCxQA3H0KbSlVEUniZPZ4Ef0Gbm1HclC0+mdHjzNlYy98ohQYTV4wvNJcpf
         JyG/qsbFpLFIYvJePcV3aZCvVjB5Unl3s02+sEEH5aI/paP3eBV3eD7+TTIfHriv8c4i
         5/gJPUG/lwfMrsHdJXDN7H0bske8GAUKAbrqJhlAMSE1rZn+bBkjYO/gEhNtFebdZAOP
         H8RwDm2CmIy3E7Rv4Y64yfDgk5dNeDMDiblIhZkYFhDf6jtiNDbMu9K0Fhpt6CZZ9oYh
         ECxUuieXjo/szDFeo0iucc1QAfnVoQQ5NpH74cZ2idxHAAautxB4ML0TdEcIRzQm/6Pn
         V8tQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:mail-followup-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=5DAvYUjVgj3qlk5+GWZqe3eppSO1QNYl+HaRKYOhenA=;
        b=NtanN1X7HEv+2Lb90YJ2/Ie67tgOuqYeJvzSB45pyt+2mTKnHW8o121p3bAOWDnaGt
         vPTfjVrGkb35ZlUGrDcunGEqkUGLJtS6FvPGY03S470LsMS/ZvsvTux61Acq2lWD9Qav
         rMx61Zab5SFelHE/cc6RBewStN/KeeTQEaTTy+WgaYrz3QiRgJ7Qsze9H4PuD8+6V9MP
         dL/DkhsvnbAwZ5S6/WwgNtWlt6zMpAC4vEqqvljSkab6DUo1bFXrs2JvFp/H7F1oopXp
         3fR/c58ifytP/oK9FAMstCdPPK1Q/sKl43lk4MG699NTVLNNzM4T5hUmRfaKDN0EtV30
         0LYQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vXEk+mPO;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::d42 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jarias.linux@gmail.com>
Received: from mail-io1-xd42.google.com (mail-io1-xd42.google.com. [2607:f8b0:4864:20::d42])
        by gmr-mx.google.com with ESMTPS id x137si464070pfd.1.2019.10.07.19.43.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Oct 2019 19:43:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::d42 as permitted sender) client-ip=2607:f8b0:4864:20::d42;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vXEk+mPO;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::d42 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-io1-xd42.google.com with SMTP id h144so33275957iof.7
        for <outreachy-kernel@googlegroups.com>; Mon, 07 Oct 2019 19:43:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mail-followup-to:mime-version
         :content-disposition:user-agent;
        bh=5DAvYUjVgj3qlk5+GWZqe3eppSO1QNYl+HaRKYOhenA=;
        b=vXEk+mPOtsjybckqIy0vWrLHhd2ZneC7pvo46oDHI/PL6dIEwNxd2Myv3FFwnQxoMC
         qD2EvMrtXjnbV3+CAZbAztkOGi80rxT1yvQasjOeYebA41J7rFapVH6wCY2h5PqDHKfU
         oaZb5c/uMMMJejoOBmcVbf1W3I0j0j04mAc+VDSDhCO9yHnP5FY/4o1ztvWz17+0MPRs
         2KW+ylq9Dbh2HQnvOo/7HWmUEdssKPT9aQKQ/QjLzDb6xHmjTthmxyUYfNoXQsYGNj1M
         e11QQ8C6TpxqGH9Hu95SQ04AUU+Q1OEktFzpNYTBqulkNpCmTI3Z5Geez8PuYEvb10yz
         lR8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:mime-version:content-disposition:user-agent;
        bh=5DAvYUjVgj3qlk5+GWZqe3eppSO1QNYl+HaRKYOhenA=;
        b=D5dEXPo97oSICGv+DtbzgbEADrUGOWJcAgjd4pX2tvE/1gpvd81fBdGRY+AAvXM56s
         gGI1CSqmSkivKyfEZFQvaRdaPTRSXPVyMqngtn5sJCoApwEh80jbLS84M9FulqezKnNU
         hlMKykJQEiyyt3OkCL7+nzQIZT6nRZbHqshmrL5tsDkZk9V7Mlzjd0/dlHCUs9n+ciVI
         JIPZbM2M1yTAibp6kOLK0O94LJkHgrJA+yq7fEoQc/2TP9o6dB2rbfuNsmUsXiXGBxY9
         OjrSgwRMbBVe4Y6s8kBQfkKKxq6PTYSLndhSVt2NJXrkY4i+eMFFFEA556qCFWQhMYhD
         s57A==
X-Gm-Message-State: APjAAAW2O8v5Den9ox796L4yFqb7k96i1nJuO21xheEExJ1hc5106Cq0
	kHhvakOtkbdzvlr46WdPstY=
X-Received: by 2002:a92:3912:: with SMTP id g18mr33612825ila.80.1570502601294;
        Mon, 07 Oct 2019 19:43:21 -0700 (PDT)
Return-Path: <jarias.linux@gmail.com>
Received: from gmail.com (dynamic-190-27-96-102.dynamic.etb.net.co. [190.27.96.102])
        by smtp.gmail.com with ESMTPSA id d14sm6948890ilm.15.2019.10.07.19.43.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Oct 2019 19:43:20 -0700 (PDT)
Date: Mon, 7 Oct 2019 21:43:18 -0500
From: "Javier F. Arias" <jarias.linux@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: rtl8723bs: Replace string with identifier
Message-ID: <20191008024316.rqpvni26uqoulru3@gmail.com>
Mail-Followup-To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20180716

Replace the hardcoded function name with it's predefined identifier.
Issue found by checkpatch.

Signed-off-by: Javier F. Arias <jarias.linux@gmail.com>
---
Changes in v2:
  - Fixed a typo in the commit message.

 drivers/staging/rtl8723bs/core/rtw_xmit.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_xmit.c b/drivers/staging/rtl8723bs/core/rtw_xmit.c
index 6f7a63f53d4f..fef9f1f9ba2c 100644
--- a/drivers/staging/rtl8723bs/core/rtw_xmit.c
+++ b/drivers/staging/rtl8723bs/core/rtw_xmit.c
@@ -2310,7 +2310,7 @@ s32 rtw_xmit(struct adapter *padapter, _pkt **ppkt)
 
 	if (!pxmitframe) {
 		drop_cnt++;
-		RT_TRACE(_module_xmit_osdep_c_, _drv_err_, ("rtw_xmit: no more pxmitframe\n"));
+		RT_TRACE(_module_xmit_osdep_c_, _drv_err_, ("%s: no more pxmitframe\n", __func__));
 		DBG_COUNTER(padapter->tx_logs.core_tx_err_pxmitframe);
 		return -1;
 	}
@@ -2318,7 +2318,7 @@ s32 rtw_xmit(struct adapter *padapter, _pkt **ppkt)
 	res = update_attrib(padapter, *ppkt, &pxmitframe->attrib);
 
 	if (res == _FAIL) {
-		RT_TRACE(_module_xmit_osdep_c_, _drv_err_, ("rtw_xmit: update attrib fail\n"));
+		RT_TRACE(_module_xmit_osdep_c_, _drv_err_, ("%s: update attrib fail\n", __func__));
 		#ifdef DBG_TX_DROP_FRAME
 		DBG_871X("DBG_TX_DROP_FRAME %s update attrib fail\n", __func__);
 		#endif
-- 
2.20.1


