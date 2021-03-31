X-GM-THRID: 6945912104921595904
X-Received: by 2002:a17:902:b28b:b029:e6:375:69b0 with SMTP id u11-20020a170902b28bb02900e6037569b0mr4752318plr.25.1617221206706;
        Wed, 31 Mar 2021 13:06:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90b:1057:: with SMTP id gq23ls1962060pjb.0.gmail; Wed,
 31 Mar 2021 13:06:45 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyOazX71rtMwsqIx46B2UwkfMW7q6Mk2OmGY7o4BzdYIlRmmCyBVpKkLPQDVZI0DHeDklQG
X-Received: by 2002:a17:902:f24a:b029:e6:3d73:f90e with SMTP id j10-20020a170902f24ab02900e63d73f90emr4732393plc.63.1617221205576;
        Wed, 31 Mar 2021 13:06:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617221205; cv=none;
        d=google.com; s=arc-20160816;
        b=Jf1Mo9twOzAVccRTBH2vc6Vzg0WzCss3XXCR3luixVxRRMEdui3CnbBBtnuZtrHgPL
         UoSYzCepyA4hbzg/NsegIl+4ixcg3xC59c8oCiVEv3et2C5cTBJhW2kHFS26zxFmNxiO
         FK/wcOsMuMPHMR1q+/eMvNbJUr0EgdUmXbldF6DV/QR3sA0f2xsfuzVrLeHTtJlddy9y
         2G0JyuP3eAk/s1zci/11C7OaSYECi2wr9Lq8BDwoR42v8T9lEGeq0DIvH3crqeUh63bq
         +QUYIdGxONYL4WogzkjM2GbxHsrNf+l9t6Sn8IPHgJg+9eMNAjbEtL4zcBLuHVBjdQ1U
         TECQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=GMg/FFR0ECC47+tfo5vkmf+ZSs0QnHlqZW6AgseZadw=;
        b=QE+u8eH98l2REA4CWIiCBC6z1r+qJR6G9qJtMKDhnRYk+Bft5mWs+j+eg2YVFZQcg2
         OK/OA/eQxjM7IrmWJ4M6Xj6FV8axyMq4tRlI67kjzn5q9H7CfEflI4ykyTTLemJJY6Kl
         Q8gCA+6adW9zEvcAb9yZUIwksR0rXLnHJul0P7b2o/9QynHuKBXZPNVHzSADeBojRxw1
         JKAwA7Wuv5CcNvis83cMem9eFkTd8r2XfY1yHGTM8KHrW2oUyTM2y6thGW5sSWD8RH6M
         4BmR9lj5+C/x4FVFqY7X8JKp6XOZ1nBAf3Iggz0CK/uEBJe2/+p6zm949m34yDysKGnP
         jpCg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lN+dORtk;
       spf=pass (google.com: domain of deborahbrouwer3563@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=deborahbrouwer3563@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <deborahbrouwer3563@gmail.com>
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id e8si286061pgl.0.2021.03.31.13.06.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 Mar 2021 13:06:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of deborahbrouwer3563@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lN+dORtk;
       spf=pass (google.com: domain of deborahbrouwer3563@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=deborahbrouwer3563@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x642.google.com with SMTP id o2so8477490plg.1
        for <outreachy-kernel@googlegroups.com>; Wed, 31 Mar 2021 13:06:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=GMg/FFR0ECC47+tfo5vkmf+ZSs0QnHlqZW6AgseZadw=;
        b=lN+dORtkNG9cCkyJSGFHpXAsiz/Q6/h+13fjotQ6LWYeLUUHC5GeustujfD6HgNxNw
         nzdmPyx4NTcLGw1nuFacO2WCG1ykHJJTf0qUgxahC8Czw2gbcWBNNlARBl+gpag+hERD
         /wM+pxztUDyQ7YxNwqXM53vyoPa/Iyw0br2ftrXCVyHL7dPs0gtWflqIrSGb57TCjz2U
         FFBQBiKJ+J2SSALq1e518H43gFqIlNvIs4tDyQb/JHmiPBQUOi7vkDwAVCkE8TEKhpYH
         yBqzsokASb23RcFuvX/5wuvG1qgSsui2427xkHMg570wnxL6k5lrdu+UFRMOXx8Nk75h
         JOBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=GMg/FFR0ECC47+tfo5vkmf+ZSs0QnHlqZW6AgseZadw=;
        b=Sh/B5nkaTIxOjAPINrtfnUr+DIr3M9lQGcozE1M/c/lphYxx/Zlc5DuChisA3aI92Z
         oVDbT4JzyOFfb6mi8/mloC/OPvg2H/nRaAC73XQk6lJuA7yRn3LYBZtt1Yao4XWHvMMw
         maqv24vo8YrXHSUgymdnIpIcjQKtNvDehVXiOznMdpo/7dxunWczGQcQZkhFSZ4agL/w
         eBBMzdGZSlnpYCO66M8pNP8BYRQtv/qbq2jQghT3/6eDhWULlEk7A4iYbk9b/3iKUSQg
         Ryuv+XJcEKbtFM9ThTxmIxH2qLEBisJEedzltsvIgJapSMeGnbphiXSHDSvCMO5wS43i
         3QZQ==
X-Gm-Message-State: AOAM533ujg0ZrEyZU17yevNV1oGE10+onJ62YeuOHvpcoveM4crDLhSl
	Lm+M//KpiyBtGw2Ox8pLkuE=
X-Received: by 2002:a17:90b:38f:: with SMTP id ga15mr4994722pjb.149.1617221205384;
        Wed, 31 Mar 2021 13:06:45 -0700 (PDT)
Return-Path: <deborahbrouwer3563@gmail.com>
Received: from djbComp.hitronhub.home (S0106ac202ecb0523.gv.shawcable.net. [70.67.120.89])
        by smtp.gmail.com with ESMTPSA id d22sm2985668pjx.24.2021.03.31.13.06.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Mar 2021 13:06:45 -0700 (PDT)
From: Deborah Brouwer <deborahbrouwer3563@gmail.com>
To: gregkh@linuxfoundation.org,
	ross.schm.dev@gmail.com,
	marcocesati@gmail.com,
	fabioaiuto83@gmail.com,
	dan.carpenter@oracle.com,
	phil@philpotter.co.uk,
	amarjargal16@gmail.com
Cc: linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Deborah Brouwer <deborahbrouwer3563@gmail.com>
Subject: [PATCH 3/3] staging: rtl8723bs: core: remove empty comment
Date: Wed, 31 Mar 2021 13:05:37 -0700
Message-Id: <f6be2f84ff5b29a51ca6be0d269c50d54568b2e2.1617221075.git.deborahbrouwer3563@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1617221075.git.deborahbrouwer3563@gmail.com>
References: <cover.1617221075.git.deborahbrouwer3563@gmail.com>
In-Reply-To: <cover.1617221075.git.deborahbrouwer3563@gmail.com>
References: <cover.1617221075.git.deborahbrouwer3563@gmail.com>

Remove empty comment instead of fixing the checkpatch warning that it was
generating.

Signed-off-by: Deborah Brouwer <deborahbrouwer3563@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_xmit.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_xmit.c b/drivers/staging/rtl8723bs/core/rtw_xmit.c
index 428c71ce0334..7b4c0f22cd90 100644
--- a/drivers/staging/rtl8723bs/core/rtw_xmit.c
+++ b/drivers/staging/rtl8723bs/core/rtw_xmit.c
@@ -876,8 +876,6 @@ static s32 xmitframe_addmic(struct adapter *padapter, struct xmit_frame *pxmitfr
 					*(payload+curfragnum), *(payload+curfragnum+1), *(payload+curfragnum+2), *(payload+curfragnum+3),
 					*(payload+curfragnum+4), *(payload+curfragnum+5), *(payload+curfragnum+6), *(payload+curfragnum+7)));
 			}
-/*
-*/
 	}
 	return _SUCCESS;
 }
-- 
2.17.1


