X-GM-THRID: 6805867897863274496
X-Received: by 2002:a5d:498f:: with SMTP id r15mr3608744wrq.81.1584614608679;
        Thu, 19 Mar 2020 03:43:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:660a:: with SMTP id a10ls928102wmc.0.gmail; Thu, 19 Mar
 2020 03:43:27 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsdBtmDpOQxOINwjtJt+6Sa2MLbIBrtZ94PHsC8GNLyk8fdd4CDuXrgtULVRpb1GFxvAsb0
X-Received: by 2002:a7b:cdfa:: with SMTP id p26mr3075959wmj.39.1584614607225;
        Thu, 19 Mar 2020 03:43:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584614607; cv=none;
        d=google.com; s=arc-20160816;
        b=QIPLZVUoKjjJmvlqNnLy9iU3GNMWr8zJvCk8RQMYRriWJ0FGzPGFLPAxzpSXTp5Xav
         /olXfov0If7tfPNhONUIXYnL8XVmAbtILrKNKDG9v/TSYLJ3Maa5I0I1BJHOS7aCd5AB
         ljaZXblR797Im829SNRXPIv7zMeKeGfeJkZrbHr8Ez8zU6XMP2QwaQhowBi3LPoUmFDp
         oTfxP9olFLUeNGhBg6dwCsNKhNyvq1Cdv3ICTtsG2hGmpikwyXoePTQtVErxWAY3wSzG
         x6tXnABEUvL/tMZnr3sHPFacCZtA1XyDZWNCn4cYn4Cu9ZMWGgihG46KwlRdPJKD8o7k
         +06g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=qr5r2VOkjvscCpn6Ir+0qKkDr4hsaqDjQt07vETG3w4=;
        b=V3hcLL4WO0qrWRG05pXoF7YF/B27Y7Dh6iek5hdP3cFbphiYw3cpLkBpqDmwuey5lx
         rW/R7ArJHeZdcRO6aNEqUBdtEMF8CJ69xhC6qJi2D/72r1ghhA8dM74v4XuMNK6zlnx4
         uNmdkVUmmXLJsrmZydpw20Ihh5rb+qb0J9c36oXSRNBZiu2cVaqClJwaNCOiDPAwElhg
         dc7lesbfCqfRrf+DXR6ENtu0JNZ6SYTxPGz6nW7obnIw5p+8gOZ/jQXRbQ5dBeqsTbwK
         FU7mry5waR1EF2isvLtN3yS5MoAYoG8Lj/iVghGCf9IAD8XHTvWARN+g5zx0dVZO+Tjb
         n+YA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Return-Path: <vkor@vkten.in>
Received: from vkten.in (vkten.in. [104.244.73.96])
        by gmr-mx.google.com with ESMTP id m2si274030wmi.3.2020.03.19.03.43.27
        for <outreachy-kernel@googlegroups.com>;
        Thu, 19 Mar 2020 03:43:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) client-ip=104.244.73.96;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Received: (qmail 27219 invoked from network); 19 Mar 2020 10:43:26 -0000
Received: from unknown (HELO localhost) (vkor@vkten.in@117.202.245.105)
  de/crypted with TLSv1.3: TLS_AES_256_GCM_SHA384 [256/256] DN=none
  by vkten with ESMTPSA; 19 Mar 2020 10:43:26 -0000
From: R Veera Kumar <vkor@vkten.in>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: R Veera Kumar <vkor@vkten.in>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH v2 1/7] staging: rtl8723bs: core: Correct typos in comments
Date: Thu, 19 Mar 2020 16:12:51 +0530
Message-Id: <d372618f09d387688c2fadf1ebbe47f71f5bb6cd.1584519269.git.vkor@vkten.in>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1584519269.git.vkor@vkten.in>
References: <cover.1584519269.git.vkor@vkten.in>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Correct typos in comments.
Misspellings found using checkpatch.pl.

Signed-off-by: R Veera Kumar <vkor@vkten.in>
---
Changes in v2:
 - Remove word "Fix" from subject line
 - Change "C comments" to "comments" in subject line
 - Change "C comments" to "comments" in body
---
 drivers/staging/rtl8723bs/core/rtw_cmd.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
index 61a9bf61b976..4d4b3778e1e4 100644
--- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
+++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
@@ -520,7 +520,7 @@ int rtw_cmd_thread(void *context)
 				rtw_free_cmd_obj(pcmd);
 			} else {
 				/* todo: !!! fill rsp_buf to pcmd->rsp if (pcmd->rsp!= NULL) */
-				pcmd_callback(pcmd->padapter, pcmd);/* need conider that free cmd_obj in rtw_cmd_callback */
+				pcmd_callback(pcmd->padapter, pcmd);/* need consider that free cmd_obj in rtw_cmd_callback */
 			}
 		} else {
 			RT_TRACE(_module_rtl871x_cmd_c_, _drv_err_, ("%s: cmdcode = 0x%x callback not defined!\n", __func__, pcmd->cmdcode));
@@ -989,7 +989,7 @@ u8 rtw_setstakey_cmd(struct adapter *padapter, struct sta_info *sta, u8 unicast_
 		memcpy(&psetstakey_para->key, &psecuritypriv->dot118021XGrpKey[psecuritypriv->dot118021XGrpKeyid].skey, 16);
 	}
 
-	/* jeff: set this becasue at least sw key is ready */
+	/* jeff: set this because at least sw key is ready */
 	padapter->securitypriv.busetkipkey = true;
 
 	if (enqueue) {
-- 
2.20.1


