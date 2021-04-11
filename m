X-GM-THRID: 6950041214498373632
X-Received: by 2002:a63:da04:: with SMTP id c4mr23514987pgh.144.1618182569554;
        Sun, 11 Apr 2021 16:09:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:b48:: with SMTP id a8ls6213452pgl.10.gmail; Sun, 11 Apr
 2021 16:09:28 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyNngFEqJ8XuCF0Lkwz2jMRTmbqbkYnXRgri0TcwKQujWtBfPUomS3AeDHmANGO/aYpfoip
X-Received: by 2002:a62:1a12:0:b029:248:9023:6aca with SMTP id a18-20020a621a120000b029024890236acamr10153024pfa.5.1618182568551;
        Sun, 11 Apr 2021 16:09:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618182568; cv=none;
        d=google.com; s=arc-20160816;
        b=m3otY0hjhNJxQproMNuzEvxOxHruKV+J5p3419h3D5IeguCaa8NhkuuhmEmm1LR7ux
         XQGhCTJkz5DaTHS/G8mOzBIv/RXFMUsWyR5wVgWE0qtEZHPhKFbieQoaqhpHpc5a/z4M
         ndpLmsaLnwdtDR9MyWydAwFaLAtq9DrwNBISKvvSnqT5vCSsHtewSLzC+wFKhqSLK1er
         KyZ2NPLxhAMzo6FZ0lzupCKvxrc4qJLIOT++C7aHuihMMJDaUsucKiLyr7brEZdF3bJJ
         5I+8TGWJGrEpOQClPWQiwzxqSiCUnq7deWSJczt72ubdboW+BgH0dxHESbOJ8fV7dMjX
         4M2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=TMplUBdDdPxuSIZsBm3m2+MMOTC46FBVLik1YxyG7nI=;
        b=OY6D+aAXykaX5S0z0A7wjozKWalvevIFaWbaM0clcaXNu3WHKg7ZUZOuNeZE+GmUvV
         Pv5WtAnJ34hyzra9LoLJOK+QjDHM14vOpHpkOFYoyo0kunGIEvg+clnGxtk76ebTzm7Q
         tKVsCdY8OpKgd9xUT/gbu70sF2K1UxVEFLXPF5LE/2mUO2QT2UIyqvtdKzeQVVH1yTF6
         zg0iiODsTPGOHjF7mKsLtrRxZXh3gfkQb8Lrz36Innnt9KPZuHaIy228tA3T6T9SHiaL
         UlUjRr59yadhp1TbypCdKp7VXxNTvF5DKmwAbk6xc7Imy5o/CwvUrTZNnsEeuXh3zsQD
         afYw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NMmNEDda;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::531 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pg1-x531.google.com (mail-pg1-x531.google.com. [2607:f8b0:4864:20::531])
        by gmr-mx.google.com with ESMTPS id t5si846396pgv.4.2021.04.11.16.09.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 11 Apr 2021 16:09:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::531 as permitted sender) client-ip=2607:f8b0:4864:20::531;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NMmNEDda;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::531 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x531.google.com with SMTP id p12so7933624pgj.10
        for <outreachy-kernel@googlegroups.com>; Sun, 11 Apr 2021 16:09:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=TMplUBdDdPxuSIZsBm3m2+MMOTC46FBVLik1YxyG7nI=;
        b=NMmNEDdajLxowNhnm8F753vA1wuuG2UM8b2mp/9Bv/VxwQ/wkw4by+7wcSJtQJyXfA
         eak4V3YQrbFquPuJd8wKblNdpy2mWEPTF5++Rtvlq7CQiMUMiYTY4cNt0mh5O+Di7zYX
         O/rMn0Z4VpBG4Q/lMKLz20PglnyXsMZj8v+hG1WQwMC2WAPRfj8MzHE/QzPLP2zyuEFY
         ua7L3I5607LQilgMgRYkkVEoynsI3fHKNWjMCgbSMRQYUAqVY3S2PV0lN38PcxpozTpd
         aLzaRo9pYkiPvwDI8QQ7DmO7th6Dr/Ynu6NJcE7+N8Cc2/dpG6El5TYbus6EzL3GOhOU
         7sUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=TMplUBdDdPxuSIZsBm3m2+MMOTC46FBVLik1YxyG7nI=;
        b=PEwk4EpS3k5rmJXrPoMhChhL92WHpqbN6VXTdjGF6BMjaqAh7sPPrIr/bShdheS6+d
         8igOtM1o/w1CS36Gv3BaiVGGi1eOPH0j6Afb0CdZFQf27y/S97LfZkd7GnSJ69DJzd0I
         DxwkcNes8lgbFLYWjx3ugoyRfXUGeN/ZI6Qx0OH6BpapMV+KGsGHokmzum9fsArufq0W
         v1mqdAWDBBiObHoAuzg79UcpYsi09975LJmRes2Fn13V2Oo1Ec0dDj26m5kcMe7xlCAu
         RoZQequ9bV7H8BGmjfNkgK9YipCQ4ufm6nn/bK5Iq3boocngalscPRp3bQ9zSa6I4dAP
         ux7Q==
X-Gm-Message-State: AOAM532vf8RWRi3UFr/gtNNQ1cgUSX9bQ9yfSNraMk1NlcKEDfek+Ro6
	BdFs4CYZdTXtJl1F34I4ksM=
X-Received: by 2002:a62:8c13:0:b029:241:db2a:11b6 with SMTP id m19-20020a628c130000b0290241db2a11b6mr22533133pfd.74.1618182568196;
        Sun, 11 Apr 2021 16:09:28 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([103.141.87.253])
        by smtp.gmail.com with ESMTPSA id a13sm9339796pgm.43.2021.04.11.16.09.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Apr 2021 16:09:27 -0700 (PDT)
Date: Mon, 12 Apr 2021 04:39:19 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: sakari.ailus@linux.intel.com, bingbu.cao@intel.com,
	tian.shu.qiu@intel.com, mchehab@kernel.org,
	gregkh@linuxfoundation.org
Cc: linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
	mitali_s@me.iitr.ac.in
Subject: [PATCH 3/6] staging: media: intel-ipu3: remove unnecessary blank line
Message-ID: <79b543d96fa0bd613090984b98c5665344b4dddf.1618180660.git.mitaliborkar810@gmail.com>
References: <cover.1618180659.git.mitaliborkar810@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1618180659.git.mitaliborkar810@gmail.com>

Removed an unnecessary blank line to meet linux kernel coding style.
Reported by checkpatch.pl

Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
---
 drivers/staging/media/ipu3/include/intel-ipu3.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/media/ipu3/include/intel-ipu3.h b/drivers/staging/media/ipu3/include/intel-ipu3.h
index d95ca9ebfafb..335522e7fc08 100644
--- a/drivers/staging/media/ipu3/include/intel-ipu3.h
+++ b/drivers/staging/media/ipu3/include/intel-ipu3.h
@@ -75,7 +75,6 @@ struct ipu3_uapi_grid_config {
 	(IPU3_UAPI_AWB_MAX_SETS * \
 	 (IPU3_UAPI_AWB_SET_SIZE + IPU3_UAPI_AWB_SPARE_FOR_BUBBLES))
 
-
 /**
  * struct ipu3_uapi_awb_raw_buffer - AWB raw buffer
  *
-- 
2.30.2


