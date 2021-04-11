X-GM-THRID: 6950041301832171520
X-Received: by 2002:ab0:6ca2:: with SMTP id j2mr8221734uaa.28.1618182589548;
        Sun, 11 Apr 2021 16:09:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1f:96c8:: with SMTP id y191ls613558vkd.6.gmail; Sun, 11 Apr
 2021 16:09:48 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyBwiT1lIEH9o7/FGkou/p0XErdvFnKt0eItD/3lunRJgiVWJvA77PLMHDReQNZQBqCWb9Q
X-Received: by 2002:a1f:2d88:: with SMTP id t130mr17744332vkt.2.1618182588544;
        Sun, 11 Apr 2021 16:09:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618182588; cv=none;
        d=google.com; s=arc-20160816;
        b=bVJ5L1n/1QU2M5XZ5dt430tDWa4AbaVGR1B+d2NtE85ANrKDSoBwzYV7Z8qzgs2a9O
         XWHkNvtjSRQzZ8yOEOIEuJUlfVWI3G6X/1J8zalaQQ89er7rQ+sjogJCiMH6QGAeWu2T
         8jyX2InTzVDr+ErW4q6SSquDUxM/kLxSdYRkGxSFEhaCEnkN/V3wtVS0c5GD/HVmRHGY
         yFJPJVy891T70W12G8rQvTA/72g3Drt/NpAzfzddKISNJH05aKED1zlAm4+wJ0ukZAG9
         6kXm+LufpCL2NvjQDkEKPEX/QtlAqVdQ6W3iiViBKaVw6usovq7RQqtA9TbW1KNYrVjn
         c/QQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=8OUqAAQgCtzhtMv9ajuHg08CbUTBgd3fERbur7EHzCw=;
        b=uvov/PVr0unChydMz4N8V6mLplYWmPXLRMKVmpz9Svyp7fQ1dNEdQIdPd5Tx+Nt4MO
         gRvrZz2UH7UE4iJ8Siufnevk/1Ando+ehoYC53ZtUFL6TuhBmEEcjr76I1WeHaXw0DnX
         OexrMX44uhuN1FHe+3p5qE6RpUQXCxfn1JB71JmFvL/vARveVJ3GgGviN7CTaPewyQio
         Ioj30hd6j5ojwYZoUhB3E0VTIAb9SA/NjquGD98stMifRp7RizW6eOJoK97mjyr1ERE0
         /9pQrSQ67a0nEnPNZjYEB58u3GYlT6SrBMf0Y8KaE+kg8//QsMiF2Vf6wXO2o7ugXIh+
         3vVA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=W73cwcS+;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::534 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pg1-x534.google.com (mail-pg1-x534.google.com. [2607:f8b0:4864:20::534])
        by gmr-mx.google.com with ESMTPS id o198si78218vkc.1.2021.04.11.16.09.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 11 Apr 2021 16:09:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::534 as permitted sender) client-ip=2607:f8b0:4864:20::534;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=W73cwcS+;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::534 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x534.google.com with SMTP id t22so7975865pgu.0
        for <outreachy-kernel@googlegroups.com>; Sun, 11 Apr 2021 16:09:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=8OUqAAQgCtzhtMv9ajuHg08CbUTBgd3fERbur7EHzCw=;
        b=W73cwcS+VWrXZZ4KOKu2Bw4BGTDn0MVmJa9oBAomrRDoLeVpssJreOmZeCxVhTPqw1
         CQbJ8SGoH+EvAqpk017cg4WmUaS0+fS4aU+i6JXudL6JWhVxYGBSpJAKRDgndOU2j+Ay
         oy+5ZIdKs5kb1rH7XL9Ld8ZDGQl6rHMN6dES28cwReC5nDKd95Qzh7pv6K6XXuO/t45p
         9296FfauwtVI12XW0ma0gR3hhI7f9qAy2rIUDnMbBEf+1aHLNHKt4UuTKwVq9/l17fVE
         qBCUSzYFsZo5Gz6+NG0ZSIKgdgdsbqy8xIGjeT850i/7ga48SOCmXh/GQMHhDckSsvQH
         JEHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=8OUqAAQgCtzhtMv9ajuHg08CbUTBgd3fERbur7EHzCw=;
        b=m+eQxc4gK6wySLTyVkd563gcLq2zmID39S1cJ3hIrQf0h3v4qv20YVNXaaF2ofZUTK
         OR8IU8WoyW6O7NtttfxSjcrSQm85stjBV1S0mDOsW1Jh1fHdYEtJUGyacJBznAvfDawF
         ZeK3/xXOGyhTXik/LO1Is+q8PAgKiqItsC6rhtxBTNPqLyfcLpCDns2kQt1bdad7QrQ4
         E0kx0DCRI8bGauM3d9HRYNRqiyoxh4jMLwS/YCnv+1NY5SKBTJ0bfiyx8cHXvtuiJX0F
         rlaRkzXJBARV8u5SSWu5hNdg8KLqm5GY2LQdF4OR6qg/HfyTIUyUDFl9iiHNsNPF/YPe
         xRBQ==
X-Gm-Message-State: AOAM5327NBU/MtkgBvNWIXolqZJxPpT7U80rl6k0gM4iXeisvl1bK5YM
	ejVkClVtDPOOW5qGqCNmozo=
X-Received: by 2002:a63:3047:: with SMTP id w68mr4002681pgw.94.1618182587651;
        Sun, 11 Apr 2021 16:09:47 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([103.141.87.253])
        by smtp.gmail.com with ESMTPSA id c14sm7918082pfj.46.2021.04.11.16.09.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Apr 2021 16:09:47 -0700 (PDT)
Date: Mon, 12 Apr 2021 04:39:39 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: sakari.ailus@linux.intel.com, bingbu.cao@intel.com,
	tian.shu.qiu@intel.com, mchehab@kernel.org,
	gregkh@linuxfoundation.org
Cc: linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
	mitali_s@me.iitr.ac.in
Subject: [PATCH 4/6] staging: media: intel-ipu3: reduce length of line
Message-ID: <a374da6b8cce637dea5a2f2677b70abbd9a87118.1618180660.git.mitaliborkar810@gmail.com>
References: <cover.1618180659.git.mitaliborkar810@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1618180659.git.mitaliborkar810@gmail.com>

Reduced length of line as it was exceeding 100 characters by removing
comments from same line and adding it to previous line. This makes code
neater, and meets linux kernel coding style.
Reported by checkpatch.

Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
---
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


