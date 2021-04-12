X-GM-THRID: 6950352611043180544
X-Received: by 2002:ac8:4e36:: with SMTP id d22mr13983000qtw.102.1618255072141;
        Mon, 12 Apr 2021 12:17:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:5a88:: with SMTP id c8ls7373477qtc.1.gmail; Mon, 12 Apr
 2021 12:17:51 -0700 (PDT)
X-Received: by 2002:ac8:6f59:: with SMTP id n25mr27508056qtv.307.1618255071407;
        Mon, 12 Apr 2021 12:17:51 -0700 (PDT)
Received: by 2002:a05:620a:1394:b029:2de:7443:c762 with SMTP id k20-20020a05620a1394b02902de7443c762msqki;
        Mon, 12 Apr 2021 04:11:24 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJySVaCMWvRDNwD7FbWCbG8ErhmBRVbW6+q80lhNzBceI+3bQ3kZWQsQu0zPfs6cnPyANimd
X-Received: by 2002:a05:651c:489:: with SMTP id s9mr14753618ljc.62.1618225883986;
        Mon, 12 Apr 2021 04:11:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618225883; cv=none;
        d=google.com; s=arc-20160816;
        b=reoZ2WpiaFPKzEHyetSH2/KOA7geiW/M/nxUQ2LQexp23RWGKFjuC+9XF5ivXqEXY4
         6DmBsKeHFQDjhetwD/kuenIkw3c1/zMSpzvzB2Drviey3FDqmTQ37U1Zp3WMrDvkkUHa
         DK3AQI4c481wJUXN4zNOBAJt+HEpUPzpBpDP42UDcPUrYioHwgI4+w/JwibwoNytE5QC
         8GRTwcDPNxJ7MKI/5xMb7zjZcLFHHb77mHOnp/ZnM3mByyOz1mcqp/4YSjkNB41YMkrP
         tv/990KUXDjLwia9kNULW8ZnRxYOnI+5KIXumwMfcYMGDdlsuOJQBxCLLgXiCnOg/HNK
         1GDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=94/f7OaCtrXkWvxoas2TmSy+SJbkBjSaL/fiP+8FEsk=;
        b=ATrPchTDyb0Eld8xhm2AR2C4Us/depbNXQCaoexyCREjdUZ0RuaPlmIxtEJYQPdwes
         T+tj4NIK/Xli0aSDjZNfNwrpjUvdISJq8Og7PVhsebCRPb310ZcOUkN/S9fjIvbdQKy5
         nmb2ZncLd9oa3FuN6GWlXRfAz/l+5OYG9SiK9JnM03FnYU4uG6wOGaZjmZMuZoYobfI8
         g+Ba5rPb7n4VjZ3JTj8Cpmv7hZznnvXV0kNPt9BvX1bbpbeF/M8IoN4phmYXdC83rpCO
         d0dGdsXPRKSoT0tKHHEY5sbQhc/ESNV/eDGKGFffir/J3gAaBI8eaBsorvNDFtFi54Oi
         mcRg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 2a01:4f9:c010:4572::81:2 is neither permitted nor denied by best guess record for domain of sakari.ailus@linux.intel.com) smtp.mailfrom=sakari.ailus@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
Return-Path: <sakari.ailus@linux.intel.com>
Received: from hillosipuli.retiisi.eu (hillosipuli.retiisi.eu. [2a01:4f9:c010:4572::81:2])
        by gmr-mx.google.com with ESMTPS id f7si484260lfa.0.2021.04.12.04.11.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Apr 2021 04:11:23 -0700 (PDT)
Received-SPF: neutral (google.com: 2a01:4f9:c010:4572::81:2 is neither permitted nor denied by best guess record for domain of sakari.ailus@linux.intel.com) client-ip=2a01:4f9:c010:4572::81:2;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 2a01:4f9:c010:4572::81:2 is neither permitted nor denied by best guess record for domain of sakari.ailus@linux.intel.com) smtp.mailfrom=sakari.ailus@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from lanttu.localdomain (unknown [192.168.2.193])
	by hillosipuli.retiisi.eu (Postfix) with ESMTP id 05F57634C87;
	Mon, 12 Apr 2021 14:10:35 +0300 (EEST)
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: linux-media@vger.kernel.org
Cc: Greg KH <gregkh@linuxfoundation.org>,
	Mitali Borkar <mitaliborkar810@gmail.com>,
	bingbu.cao@intel.com,
	tian.shu.qiu@intel.com,
	mchehab@kernel.org,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	mitali_s@me.iitr.ac.in,
	laurent.pinchart@ideasonboard.com
Subject: [PATCH 1/1] staging: ipu3-imgu: Move the UAPI header from include under include/uapi
Date: Mon, 12 Apr 2021 14:11:20 +0300
Message-Id: <20210412111120.31625-1-sakari.ailus@linux.intel.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

The header defines the user space interface but may be mistaken as
kernel-only header due to its location. Add "uapi" directory under
driver's include directory and move the header there.

Suggested-by: Greg KH <gregkh@linuxfoundation.org>
Signed-off-by: Sakari Ailus <sakari.ailus@linux.intel.com>
---
 Documentation/admin-guide/media/ipu3.rst      | 35 ++++++++++---------
 .../media/v4l/pixfmt-meta-intel-ipu3.rst      |  2 +-
 .../ipu3/include/{ => uapi}/intel-ipu3.h      |  0
 drivers/staging/media/ipu3/ipu3-abi.h         |  2 +-
 4 files changed, 20 insertions(+), 19 deletions(-)
 rename drivers/staging/media/ipu3/include/{ => uapi}/intel-ipu3.h (100%)

diff --git a/Documentation/admin-guide/media/ipu3.rst b/Documentation/admin-guide/media/ipu3.rst
index f59697c7b374..d6454f637ff4 100644
--- a/Documentation/admin-guide/media/ipu3.rst
+++ b/Documentation/admin-guide/media/ipu3.rst
@@ -234,22 +234,23 @@ The IPU3 ImgU pipelines can be configured using the Media Controller, defined at
 Running mode and firmware binary selection
 ------------------------------------------
 
-ImgU works based on firmware, currently the ImgU firmware support run 2 pipes in
-time-sharing with single input frame data. Each pipe can run at certain mode -
-"VIDEO" or "STILL", "VIDEO" mode is commonly used for video frames capture, and
-"STILL" is used for still frame capture. However, you can also select "VIDEO" to
-capture still frames if you want to capture images with less system load and
-power. For "STILL" mode, ImgU will try to use smaller BDS factor and output
-larger bayer frame for further YUV processing than "VIDEO" mode to get high
-quality images. Besides, "STILL" mode need XNR3 to do noise reduction, hence
-"STILL" mode will need more power and memory bandwidth than "VIDEO" mode. TNR
-will be enabled in "VIDEO" mode and bypassed by "STILL" mode. ImgU is running at
-“VIDEO” mode by default, the user can use v4l2 control V4L2_CID_INTEL_IPU3_MODE
-(currently defined in drivers/staging/media/ipu3/include/intel-ipu3.h) to query
-and set the running mode. For user, there is no difference for buffer queueing
-between the "VIDEO" and "STILL" mode, mandatory input and main output node
-should be enabled and buffers need be queued, the statistics and the view-finder
-queues are optional.
+ImgU works based on firmware, currently the ImgU firmware support run 2 pipes
+in time-sharing with single input frame data. Each pipe can run at certain mode
+- "VIDEO" or "STILL", "VIDEO" mode is commonly used for video frames capture,
+and "STILL" is used for still frame capture. However, you can also select
+"VIDEO" to capture still frames if you want to capture images with less system
+load and power. For "STILL" mode, ImgU will try to use smaller BDS factor and
+output larger bayer frame for further YUV processing than "VIDEO" mode to get
+high quality images. Besides, "STILL" mode need XNR3 to do noise reduction,
+hence "STILL" mode will need more power and memory bandwidth than "VIDEO" mode.
+TNR will be enabled in "VIDEO" mode and bypassed by "STILL" mode. ImgU is
+running at “VIDEO” mode by default, the user can use v4l2 control
+V4L2_CID_INTEL_IPU3_MODE (currently defined in
+drivers/staging/media/ipu3/include/uapi/intel-ipu3.h) to query and set the
+running mode. For user, there is no difference for buffer queueing between the
+"VIDEO" and "STILL" mode, mandatory input and main output node should be
+enabled and buffers need be queued, the statistics and the view-finder queues
+are optional.
 
 The firmware binary will be selected according to current running mode, such log
 "using binary if_to_osys_striped " or "using binary if_to_osys_primary_striped"
@@ -586,7 +587,7 @@ preserved.
 References
 ==========
 
-.. [#f5] drivers/staging/media/ipu3/include/intel-ipu3.h
+.. [#f5] drivers/staging/media/ipu3/include/uapi/intel-ipu3.h
 
 .. [#f1] https://github.com/intel/nvt
 
diff --git a/Documentation/userspace-api/media/v4l/pixfmt-meta-intel-ipu3.rst b/Documentation/userspace-api/media/v4l/pixfmt-meta-intel-ipu3.rst
index 5f33d35532ef..84d81dd7a7b5 100644
--- a/Documentation/userspace-api/media/v4l/pixfmt-meta-intel-ipu3.rst
+++ b/Documentation/userspace-api/media/v4l/pixfmt-meta-intel-ipu3.rst
@@ -78,4 +78,4 @@ hardware and algorithm details.
 Intel IPU3 ImgU uAPI data types
 ===============================
 
-.. kernel-doc:: drivers/staging/media/ipu3/include/intel-ipu3.h
+.. kernel-doc:: drivers/staging/media/ipu3/include/uapi/intel-ipu3.h
diff --git a/drivers/staging/media/ipu3/include/intel-ipu3.h b/drivers/staging/media/ipu3/include/uapi/intel-ipu3.h
similarity index 100%
rename from drivers/staging/media/ipu3/include/intel-ipu3.h
rename to drivers/staging/media/ipu3/include/uapi/intel-ipu3.h
diff --git a/drivers/staging/media/ipu3/ipu3-abi.h b/drivers/staging/media/ipu3/ipu3-abi.h
index e1185602c7fd..c76935b436d7 100644
--- a/drivers/staging/media/ipu3/ipu3-abi.h
+++ b/drivers/staging/media/ipu3/ipu3-abi.h
@@ -4,7 +4,7 @@
 #ifndef __IPU3_ABI_H
 #define __IPU3_ABI_H
 
-#include "include/intel-ipu3.h"
+#include "include/uapi/intel-ipu3.h"
 
 /******************* IMGU Hardware information *******************/
 
-- 
2.29.2


