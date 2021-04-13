X-GM-THRID: 6950506572644614144
X-Received: by 2002:a17:90a:bb02:: with SMTP id u2mr579202pjr.175.1618327747584;
        Tue, 13 Apr 2021 08:29:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6a00:1393:: with SMTP id t19ls7266456pfg.3.gmail; Tue,
 13 Apr 2021 08:29:06 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzhKHjdoBJrBi1IyPgRVipneeVH5VCWfSChYTw9H2+V1d7kan5jvb7jghu4CV8itN02S2Oe
X-Received: by 2002:a62:e50f:0:b029:214:8e4a:ae46 with SMTP id n15-20020a62e50f0000b02902148e4aae46mr30540354pff.73.1618327746379;
        Tue, 13 Apr 2021 08:29:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618327746; cv=none;
        d=google.com; s=arc-20160816;
        b=WQWMffSFuLeJ9m8aIqLctyYcd5gSqmkzrC2VWZlILG7c0QPSeNb1hUfJnSIzAcWpmc
         TbbNClhdeOCibc3kpoPmQ5Fx6+fRya+9FYRdDy76CbwLr/eblUvXECes9sIQR1Bf2WGE
         vI0LOQlCNnP0grYfJrHtjhC15rId0Mdzwddb9qpkuq5CEo1SVf0I95J8lWM02Zd82HdV
         wBX5SDw1wmIIM4cCoenUvuf1UTrh6f4Xq4FwKuCGQjHFdEijTdAtzOjD5A9xEQnIcmUS
         KhB2c3H8veEpUlr60s5y8Pog6wGx76uQcGN3tj6zk4epLz6buETxrZKDDuNIO1/pC6J2
         FEbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=SmF2T8WgYPG3nuJ1m6KJ+pZhfGk3bKG/8cQrek9cOv0=;
        b=eEDUxPGnuWq1a+qSrARM9hq7jfmoj9/xSu4AiRDVQ9KGWFdB9KbhJiBer7oX/ieDgO
         0HM+eM0lGkX0DawX0Gj+7unqA2UgZMVtKoRK1J/KyKA44jWhOe2JrjWUNpYA1PoIP8k0
         R+ig4Zq3flosfUu0V2YlWRSlunKUeGo9iFzQfMqytJ2c+p97nFyOkN1Alj92c7oWYUOo
         EyKVcECN+fipxxkVcNO6eN6U4DcTFh40jfDlYerXKVltj3shRGMZwzwvmAOJZ+Rj3xcH
         59fWWSlY8CfthaEipNG1RcA5MaubNF7zbYUa5HuamlxsXp5rO+ccnzKZrX5fPCXjL/pI
         4ybg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DrhVM3Dx;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::62c as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pl1-x62c.google.com (mail-pl1-x62c.google.com. [2607:f8b0:4864:20::62c])
        by gmr-mx.google.com with ESMTPS id mz7si374519pjb.0.2021.04.13.08.29.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Apr 2021 08:29:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::62c as permitted sender) client-ip=2607:f8b0:4864:20::62c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DrhVM3Dx;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::62c as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x62c.google.com with SMTP id h20so8420211plr.4
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Apr 2021 08:29:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=SmF2T8WgYPG3nuJ1m6KJ+pZhfGk3bKG/8cQrek9cOv0=;
        b=DrhVM3Dxmw6cPxVxOClxUTLttNQwxqwI017j57PAJppH2NIKnUVS8RpduAjDAOWdM3
         MttLZN6H2FOFgBesDbuEaMGGMNVmyC1EavEjBDws1xeuwvSc3YKCsmT9IYBgd2AE7aYq
         uIlbIPJUIq7pcdoAqeFkIjZsnxudbdYDKQSCc5pqJ7EUjGxwPX+FLcgVD7DgsZw//vgU
         CSArOLrAEt0SR4VGP49w0O6i89YNpwXF0OKb1xHxfAVzIpY9PoYciAyndkUNnlJU0Lwc
         VtrAB7Ti12+ANpc6bO3K4/CJS6CXHOkPX8Nc4wu9IGllW6kMSXAdIVweyhV/Ps7PQ6Ut
         /w8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=SmF2T8WgYPG3nuJ1m6KJ+pZhfGk3bKG/8cQrek9cOv0=;
        b=YE7ZbJFtRMW6g7qk/bxZ7EQ3gBqigdG9kA07xcbCis42fD+jTWKk707pOtblKJ383E
         8QJ0Ljtk55sCGC5r/7HrlI3gxqdtXANLNZROjIvbZkQg+uPq89bwX0TTCIkuWxTqNbbu
         KEUN3SRZEDazhANuOSgX8XdbnjCE/iIne7NOPriWUoVuJB1tjCG1IFma91VEEtNYJtna
         8GQp91U6mAnDRkdLgjHgm46HRMaJiulE7mDq134DPWur3zNmcQ9YJV6AD3sPYm31ZGB0
         C0grb8GDBeXF5UKKs8AeW2WFlU2ErubE7xexFIwZjBe666WGhYaWRXKidHrUVsz2SkWd
         LUNA==
X-Gm-Message-State: AOAM531H7pjQrpo/kxySZwURRFCYNPYlzg5SrayNwZ6DnbQQSLrYgGDS
	NEhWYAUijcROQIs5he9/hGo=
X-Received: by 2002:a17:902:e9c4:b029:eb:4626:feba with SMTP id 4-20020a170902e9c4b02900eb4626febamr234352plk.39.1618327746013;
        Tue, 13 Apr 2021 08:29:06 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([103.141.87.253])
        by smtp.gmail.com with ESMTPSA id d18sm2146585pjx.46.2021.04.13.08.29.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Apr 2021 08:29:05 -0700 (PDT)
Date: Tue, 13 Apr 2021 20:58:59 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: sakari.ailus@linux.intel.com, bingbu.cao@intel.com,
	tian.shu.qiu@intel.com, mchehab@kernel.org,
	gregkh@linuxfoundation.org
Cc: linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
	mitali_s@me.iitr.ac.in
Subject: [PATCH v3 2/4] staging: media: intel-ipu3: reduce length of line
Message-ID: <93922b42e91a1a22ff7373f2875da55543b8fcb0.1618326535.git.mitaliborkar810@gmail.com>
References: <cover.1618326535.git.mitaliborkar810@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1618326535.git.mitaliborkar810@gmail.com>

Reduced length of line as it was exceeding 100 characters by removing
comments from same line and adding it to previous line. This makes code
neater, and meets linux kernel coding style.
Reported by checkpatch.

Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
---
 
Changes from v2:- No changes.
Changes from v1:- No changes.

 drivers/staging/media/ipu3/include/intel-ipu3.h | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/ipu3/include/intel-ipu3.h b/drivers/staging/media/ipu3/include/intel-ipu3.h
index 438ec3ed7b6b..eb21cbc63af6 100644
--- a/drivers/staging/media/ipu3/include/intel-ipu3.h
+++ b/drivers/staging/media/ipu3/include/intel-ipu3.h
@@ -9,8 +9,12 @@
 /* from /drivers/staging/media/ipu3/include/videodev2.h */
 
 /* Vendor specific - used for IPU3 camera sub-system */
-#define V4L2_META_FMT_IPU3_PARAMS	v4l2_fourcc('i', 'p', '3', 'p') /* IPU3 processing parameters */
-#define V4L2_META_FMT_IPU3_STAT_3A	v4l2_fourcc('i', 'p', '3', 's') /* IPU3 3A statistics */
+
+/* IPU3 processing parameters */
+#define V4L2_META_FMT_IPU3_PARAMS	v4l2_fourcc('i', 'p', '3', 'p')
+
+/* IPU3 3A statistics */
+#define V4L2_META_FMT_IPU3_STAT_3A	v4l2_fourcc('i', 'p', '3', 's')
 
 /* from include/uapi/linux/v4l2-controls.h */
 #define V4L2_CID_INTEL_IPU3_BASE	(V4L2_CID_USER_BASE + 0x10c0)
-- 
2.30.2


