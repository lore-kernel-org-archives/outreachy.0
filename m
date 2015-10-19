X-GM-THRID: 6207450266150633472
X-Received: by 10.66.165.3 with SMTP id yu3mr27517648pab.15.1445284969288;
        Mon, 19 Oct 2015 13:02:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.34.75 with SMTP id k69ls3206288qgk.48.gmail; Mon, 19 Oct
 2015 13:02:48 -0700 (PDT)
X-Received: by 10.31.15.16 with SMTP id 16mr27792256vkp.0.1445284968880;
        Mon, 19 Oct 2015 13:02:48 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x22f.google.com (mail-pa0-x22f.google.com. [2607:f8b0:400e:c03::22f])
        by gmr-mx.google.com with ESMTPS id el2si3500039pbb.0.2015.10.19.13.02.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Oct 2015 13:02:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) client-ip=2607:f8b0:400e:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22f.google.com with SMTP id rc13so199970548pab.0
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Oct 2015 13:02:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=yJxr4TfIbK6XtsRrTSUbl2Oq6EgyNZnIayOrKFkpNrw=;
        b=AaM9zCULdFOdyjncW+TpW+0x+vD3fvZLksbo6tWzUvcBKRTEVuj6vFXBNUHFaGjCz9
         SQyrL/G1rglj7xC8Dc7D1Sm5Rsn0YyJ3tvOcAvhuvlfqJmVfRgbZK73wuDYmDwqu8kZ+
         PNj0Aig5L9VHs0ybmifNSaBIcmHDb7uktiABwjHLZhVFk60ASi0f2voed94e6nDvi6au
         7JPt/7oiMcvSmoAZAuGREIM5M3w66PmlCDmRjeDP/V1n0BDMUmAFCdW4nX3yYo2CGXPC
         nUYTMV2RvtnCt4hVLQP0o40YxZNwBxIuIcHw+9x6av1iHv9jc/0L0tNmsNo2Bqn0ZROw
         Zwjw==
X-Received: by 10.66.222.70 with SMTP id qk6mr37018571pac.68.1445284968722;
        Mon, 19 Oct 2015 13:02:48 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from Ubuntu-D830 (or-67-232-67-97.dhcp.embarqhsd.net. [67.232.67.97])
        by smtp.gmail.com with ESMTPSA id pc8sm37794143pbc.27.2015.10.19.13.02.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Mon, 19 Oct 2015 13:02:48 -0700 (PDT)
Date: Mon, 19 Oct 2015 13:02:47 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 4/5] staging: r8723au: move constant to right of comparison
 test
Message-ID: <65c30e146c9e0fe672a78d4cc51ba07dfd9f4f6d.1445282918.git.amsfield22@gmail.com>
References: <cover.1445282918.git.amsfield22@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1445282918.git.amsfield22@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Move constant to right of comparison test to improve readability.

checkpatch.pl:
	WARNING: Comparisons should place the constant on the
	right side of the test

Signed-off-by: Alison Schofield <amsfield22@gmail.com>
---
 drivers/staging/rtl8723au/core/rtw_cmd.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723au/core/rtw_cmd.c b/drivers/staging/rtl8723au/core/rtw_cmd.c
index 33164d3..6034428 100644
--- a/drivers/staging/rtl8723au/core/rtw_cmd.c
+++ b/drivers/staging/rtl8723au/core/rtw_cmd.c
@@ -637,13 +637,13 @@ int rtw_disassoc_cmd23a(struct rtw_adapter *padapter, u32 deauth_timeout_ms,
 		init_h2fwcmd_w_parm_no_rsp(cmdobj, param, _DisConnect_CMD_);
 		res = rtw_enqueue_cmd23a(cmdpriv, cmdobj);
 	} else {
-		if (H2C_SUCCESS != disconnect_hdl23a(padapter, (u8 *)param))
 
 		/*
 		 * no need to enqueue, do the cmd hdl
 		 * directly and free cmd parameter
 		 */
 
+		if (disconnect_hdl23a(padapter, (u8 *)param) != H2C_SUCCESS)
 			res = _FAIL;
 		kfree(param);
 	}
-- 
2.1.4


