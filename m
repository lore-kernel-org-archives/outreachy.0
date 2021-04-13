X-GM-THRID: 6950506572644614144
X-Received: by 2002:ac8:58cb:: with SMTP id u11mr29234756qta.348.1618290956361;
        Mon, 12 Apr 2021 22:15:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:622a:606:: with SMTP id z6ls4752420qta.0.gmail; Mon, 12
 Apr 2021 22:15:55 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzTvWIiJZ6o3l28d9yma38F2sJRWWhC8oITWPoO3fJzPi12+lCyp3bPGk1FnOcNolg+dq49
X-Received: by 2002:ac8:5a4e:: with SMTP id o14mr5504576qta.299.1618290955616;
        Mon, 12 Apr 2021 22:15:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618290955; cv=none;
        d=google.com; s=arc-20160816;
        b=siCOwoF3LGyes50ZY44tFZYdnC3MZSE95Kq6T89202dBNaIko8RA7S+vhao39g6P/Z
         mgQpDTB2OAWbHGb1ObFaIEQ8RP/l+gHzE5qjwvQbrcXXPmkIXAvGN4Y8aso+Kv6uxoNV
         iXUUaOPlC8gU/iagxXwNOJR3LMjPj3MX+FSMsa1KzaThUleBxzHzVvULkMCCuJwlLSR/
         oxP6SSEBmrNc/qCUjt0BcJ9UBQYlJgHbg7ZXBh/VBjXDNZNjm17brklumymU0UsFautQ
         jHsl/1sWrF26nF+GWZ31cfPplItg7p4uf6t0ffeWx3C3fW12Y3wiyPO1BGgMgDDwXMF3
         Hxqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=2G4Sv3LtujgUMx6LivaQKJ/nSswqoSp68oTOL36KfQ0=;
        b=fmI5m2Vm4QKMcCo7bnH7TkLdRYbTm6nqIpw35VfCPFPCtKoMlBBXgO+8bCfBY1Z6Hj
         H7ukQ6WL7RXPlV1fz5K9OoDcWWh0XQ3VQxn0yTS1E5FrDqp6+0T/Nsm8bA0PJtN9/YwW
         RHcGvjaDIHopsuxus8E9POopPX2OS0KSgb3RPEba9lTlliedGGLUFp11qSl00MC57G1S
         o8KWSb9dXFC1V+bVXO8WrrmH1HsJEAYNEQk06BYuM015qe4fOvWFK4/xn+zswPtQMYTC
         /ziQ010mPvAENoi6CA8vZHBLguELoFvMRTIfJo32/UFr18SdOiX7mJUwspCd9X7K9R+J
         TXAg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SbpjChqF;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::1032 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pj1-x1032.google.com (mail-pj1-x1032.google.com. [2607:f8b0:4864:20::1032])
        by gmr-mx.google.com with ESMTPS id r26si1191685qtf.3.2021.04.12.22.15.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Apr 2021 22:15:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::1032 as permitted sender) client-ip=2607:f8b0:4864:20::1032;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SbpjChqF;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::1032 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1032.google.com with SMTP id x21-20020a17090a5315b029012c4a622e4aso8369234pjh.2
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Apr 2021 22:15:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=2G4Sv3LtujgUMx6LivaQKJ/nSswqoSp68oTOL36KfQ0=;
        b=SbpjChqFW20CKXahZ4POV1UtDvN7EZHMcmjhnHloxYsyR9lJ3s8QXqewGgXPFGTcKg
         +0B9v1kXbFTIae1pT4fHRcvXs4MS4eujiUV4EsTbVtmvbsGQ65OWuvgr9FtahOrEJnbC
         yzp41Uclbm1fFxCh1sZov1+durPRBitaXYMna7CSlenHsftbO1k/vU6AqULm3VyOIBi4
         esUBbj91i9MiaGAxcsdtI1K+a/5LbAEbD2PI0E4Vaem062urKOYMjevZY2RXrJ8skcjl
         5r///uzZvmhm5aunneiZHzMHljieZWEe2/mvkKN1RUC1h+vX7dsl4C/9U6yUl2G8s9m3
         7MZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=2G4Sv3LtujgUMx6LivaQKJ/nSswqoSp68oTOL36KfQ0=;
        b=c5af11TJQLUBRNTHAuwa9qfVoosvUGGkrinNemjbmDqXyjA55NGZfmhC0yd+hMyTsC
         /HAM/Rt8DcUHYkRS1HDsss3A9vQqZAbWSu/FVfDDlKxqx1cdS25vyXbHmgEeX671LJQ2
         4s+g3S2JEyeNhAthVEVJXFnHBIq4Er0dRcDI/KorbthFutv9hIXE/OAC3fN9jMfKGp8Z
         61T97GuTPL9L+JdyQNlI4YTjmvXUiqixVhUg142sgyoEkui/gRmArL1V5/Si2Acy23BM
         zF+oHm68icrL5gIxr8zIpuflV6dV2REAEFZtXlLW9Opvclt17PYeIyRlkLOCLl7af8t6
         BiBw==
X-Gm-Message-State: AOAM531giGyFbTwvTBL2XiqZqBX92FUsF3mQSdzG1bGA4IYOYJFsOrZi
	zLv35cWO4Enqjh1PT6QbC/8=
X-Received: by 2002:a17:90b:a0c:: with SMTP id gg12mr2889193pjb.184.1618290955215;
        Mon, 12 Apr 2021 22:15:55 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([103.141.87.254])
        by smtp.gmail.com with ESMTPSA id 19sm1833627pfy.77.2021.04.12.22.15.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Apr 2021 22:15:54 -0700 (PDT)
Date: Tue, 13 Apr 2021 10:45:46 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: sakari.ailus@linux.intel.com, bingbu.cao@intel.com,
	tian.shu.qiu@intel.com, mchehab@kernel.org,
	gregkh@linuxfoundation.org
Cc: linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
	mitali_s@me.iitr.ac.in
Subject: [PATCH v2 2/4] staging: media: intel-ipu3: reduce length of line
Message-ID: <a374da6b8cce637dea5a2f2677b70abbd9a87118.1618289130.git.mitaliborkar810@gmail.com>
References: <cover.1618289130.git.mitaliborkar810@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1618289130.git.mitaliborkar810@gmail.com>

Reduced length of line as it was exceeding 100 characters by removing
comments from same line and adding it to previous line. This makes code
neater, and meets linux kernel coding style.
Reported by checkpatch.

Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
---
 
Changes from v1:- No changes.

 drivers/staging/media/ipu3/include/intel-ipu3.h | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/ipu3/include/intel-ipu3.h b/drivers/staging/media/ipu3/include/intel-ipu3.h
index 335522e7fc08..53f8e5dec8f5 100644
--- a/drivers/staging/media/ipu3/include/intel-ipu3.h
+++ b/drivers/staging/media/ipu3/include/intel-ipu3.h
@@ -10,8 +10,10 @@
 /* from /drivers/staging/media/ipu3/include/videodev2.h */
 
 /* Vendor specific - used for IPU3 camera sub-system */
-#define V4L2_META_FMT_IPU3_PARAMS	v4l2_fourcc('i', 'p', '3', 'p') /* IPU3 processing parameters */
-#define V4L2_META_FMT_IPU3_STAT_3A	v4l2_fourcc('i', 'p', '3', 's') /* IPU3 3A statistics */
+/* IPU3 processing parameters */
+#define V4L2_META_FMT_IPU3_PARAMS	v4l2_fourcc('i', 'p', '3', 'p')
+/* IPU3 3A statistics */
+#define V4L2_META_FMT_IPU3_STAT_3A	v4l2_fourcc('i', 'p', '3', 's')
 
 /* from include/uapi/linux/v4l2-controls.h */
 #define V4L2_CID_INTEL_IPU3_BASE	(V4L2_CID_USER_BASE + 0x10c0)
-- 
2.30.2


