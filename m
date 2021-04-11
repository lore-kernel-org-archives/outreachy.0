X-GM-THRID: 6950041041271521280
X-Received: by 2002:a17:90b:e8b:: with SMTP id fv11mr1045050pjb.66.1618182529351;
        Sun, 11 Apr 2021 16:08:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90b:4d81:: with SMTP id oj1ls7903831pjb.2.canary-gmail;
 Sun, 11 Apr 2021 16:08:48 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzIpR4BO3NRlJP2NByUQaWoUk9/kF7nQZAdAULbgvv1/wbYm4wMXzBLmJ8fe/Pu+L4k0mtI
X-Received: by 2002:a17:902:d507:b029:e7:370d:b3c2 with SMTP id b7-20020a170902d507b02900e7370db3c2mr23748935plg.73.1618182528360;
        Sun, 11 Apr 2021 16:08:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618182528; cv=none;
        d=google.com; s=arc-20160816;
        b=C3D3dkX5ToG0lL70ybsGr5cHlt/OKPajWPh2x6HNkCKXfoZYm37YIPm+AhprBLsb5o
         ikr/Ht/FWFqcrU+ODlwTc+f2VDxTtEVBORwlHDMD4OgBO4SCUdfNwEWjceqZ7IJTrTYb
         21oo69W6eZYsYbekLheuBltv2JqWwQBl71KvD2EoD1B09PCddjJFJlNl1EvnGhStjaB8
         6aZW++mNt7G0pbaFcUVxmDIMUKgpePdXOuf8etIeH0MYZZ290lsiv3tnhWjXQaG2AhSG
         7VZj7BcVcRr2hxpH0vYiX+hkKy/fkSXQSLifhL9QnVQmJrOwxkVNEwtNnmpnLR8v919c
         VU4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=wN/TG9G/h1Rib/nM5b3cCiO0QpW84CE6hHGXQNR8cI0=;
        b=D196t67BWGu7xvt+WvcaxFnA7bIAWFEOpcO4nVkO5mheVerHfPYlkaNTopJNCpSHKw
         ATHaJlKGuCDe7CETNdJefzucD8M5s2ELlKBWmyPzoHsbnU5rPnouiRBNJ2wNxwQtIOLj
         dc+9yUGaWpUBrkiyCUiSKHQobWAZkWFiIb7n2zjppEcwq9P1V2ju75ZLX5zQ9ckcfcf/
         pms+w9zrxlFWJV5KJrvYLjTabOm7L3OZBehOjL5qz6rkavD64knvq5JGC7q9hXV1BnJg
         v8v8LuydQ+yzxcOnGanxZ92W1aIO5+PylX0vMwZw6DCga6uHjtDYOq507g6dwrRux4Px
         sa2A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rh5pqaiU;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::635 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com. [2607:f8b0:4864:20::635])
        by gmr-mx.google.com with ESMTPS id z22si851469pfc.6.2021.04.11.16.08.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 11 Apr 2021 16:08:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::635 as permitted sender) client-ip=2607:f8b0:4864:20::635;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rh5pqaiU;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::635 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x635.google.com with SMTP id e2so1055338plh.8
        for <outreachy-kernel@googlegroups.com>; Sun, 11 Apr 2021 16:08:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=wN/TG9G/h1Rib/nM5b3cCiO0QpW84CE6hHGXQNR8cI0=;
        b=rh5pqaiUmiUpVeJmVx6En6u1S+YgKkamKuYzF1MdTixXIWLDhlRmTVtpCOIX5Q7as0
         poQUBDJlojAtg+++Tooe8Bte60VpCwP+Cq0aQuF9yilyVKcWcohNjbbhw1/eu09+JKhQ
         /CjW8PE5GV7x84QmOjDY93Z9liw2KdpQdaTW/NsXID7CGmQa5khJxEp+I6L+VwNA6AzP
         ZyNjVAIAsZc+vGKjZgY2vaDXjDpKjXQIKuCzc7NBuiKxEZLI0HyyT+6Bs9VsXmGKmuGe
         WQwO4Wwn7o43QiiX1Oo2ZeEYKGVOIfSH29lsB99BKT0k7fzDlfWpDqGgDueJf88hev2T
         qjAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=wN/TG9G/h1Rib/nM5b3cCiO0QpW84CE6hHGXQNR8cI0=;
        b=AeCp6SKEO4N0pmwmlRU37+CAFmD79p+t2eliOrqH0jEhghCBcpsJbJmoNJef1yDVO8
         NlOmmaTrzWyaNfYJNiq4QmV15V4plfqC/xPfugFETg7sMNrlG/DF/q7RBGTJSiK+vBQS
         3PhwjC+W5ZWBUZRN2/liaKfCn/AGLQ7pDKkc2f51JgSSZQ8sJVN0vDwwRurUlR4I462T
         MfCqstv5DMkFnp2qox/hHnFF/AonC3XXemSCLGjJjZTfQS2xJriMwT6d2V4vewqAEnms
         CLs4/ERAh+bkvOc06D1wlEHCNpl/bGigAegc7EvRL2HOUlKyVxwHQuW0DaGA2OBIoQtA
         il9w==
X-Gm-Message-State: AOAM533ZTX0MXFiqAp3XTpsJV4dsotxd8i6QuKtWf93s0xTYdhq8hkVh
	XjpTr2x8VVp+ZBLlzLEWrVw=
X-Received: by 2002:a17:902:c407:b029:e7:2272:d12e with SMTP id k7-20020a170902c407b02900e72272d12emr23168759plk.52.1618182528052;
        Sun, 11 Apr 2021 16:08:48 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([103.141.87.253])
        by smtp.gmail.com with ESMTPSA id v11sm9287352pgg.68.2021.04.11.16.08.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Apr 2021 16:08:47 -0700 (PDT)
Date: Mon, 12 Apr 2021 04:38:39 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: sakari.ailus@linux.intel.com, bingbu.cao@intel.com,
	tian.shu.qiu@intel.com, mchehab@kernel.org,
	gregkh@linuxfoundation.org
Cc: linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
	mitali_s@me.iitr.ac.in
Subject: [PATCH 1/6] staging: media: intel-ipu3: replace bit shifts with
 BIT() macro
Message-ID: <cc7b827a3264f08cedb76adddd16a34df48f935f.1618180659.git.mitaliborkar810@gmail.com>
References: <cover.1618180659.git.mitaliborkar810@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1618180659.git.mitaliborkar810@gmail.com>

Added #include <linux/bitops.h> and replaced bit shifts by BIT() macro.
This BIT() macro from linux/bitops.h is used to define IPU3_UAPI_GRID_Y_START_EN
and IPU3_UAPI_AWB_RGBS_THR_B_* bitmask.
Use of macro is better and neater. It maintains consistency.
Reported by checkpatch.

Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
---
 drivers/staging/media/ipu3/include/intel-ipu3.h | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/media/ipu3/include/intel-ipu3.h b/drivers/staging/media/ipu3/include/intel-ipu3.h
index edd8edda0647..589d5ccee3a7 100644
--- a/drivers/staging/media/ipu3/include/intel-ipu3.h
+++ b/drivers/staging/media/ipu3/include/intel-ipu3.h
@@ -5,6 +5,7 @@
 #define __IPU3_UAPI_H
 
 #include <linux/types.h>
+#include <linux/bitops.h>
 
 /* from /drivers/staging/media/ipu3/include/videodev2.h */
 
@@ -22,11 +23,11 @@
 #define IPU3_UAPI_MAX_BUBBLE_SIZE			10
 
 #define IPU3_UAPI_GRID_START_MASK			((1 << 12) - 1)
-#define IPU3_UAPI_GRID_Y_START_EN			(1 << 15)
+#define IPU3_UAPI_GRID_Y_START_EN			BIT(15)
 
 /* controls generation of meta_data (like FF enable/disable) */
-#define IPU3_UAPI_AWB_RGBS_THR_B_EN			(1 << 14)
-#define IPU3_UAPI_AWB_RGBS_THR_B_INCL_SAT		(1 << 15)
+#define IPU3_UAPI_AWB_RGBS_THR_B_EN			BIT(14)
+#define IPU3_UAPI_AWB_RGBS_THR_B_INCL_SAT		BIT(15)
 
 /**
  * struct ipu3_uapi_grid_config - Grid plane config
-- 
2.30.2


