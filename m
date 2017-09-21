X-GM-THRID: 6468320417923727360
X-Received: by 10.36.41.210 with SMTP id p201mr1274069itp.35.1506023206974;
        Thu, 21 Sep 2017 12:46:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.120.3 with SMTP id p3ls1605390itc.7.gmail; Thu, 21 Sep 2017
 12:46:46 -0700 (PDT)
X-Received: by 10.107.107.13 with SMTP id g13mr5197739ioc.56.1506023206174;
        Thu, 21 Sep 2017 12:46:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506023206; cv=none;
        d=google.com; s=arc-20160816;
        b=0NDEOqtoJNmyuZr8U8kBXzlYBgoXwxQGV3LqppdsFRSsSHUXN4Sd/GUp0QqPK/LleB
         ySfxC/Phw+yPT4Gy9r+xOOPzWRfYtSmzolzasq/Sm3PlO7pVOi5S1zERF5bpMt3SRSFw
         VARKbQEgSXtOBQCCAFVj+0ik4Kr7WaIiECwlH0CUj9kLFVMjoANfvTDLiVuNQIaO5qoM
         KxU9zXJUNzz+D2ti8KRN7hFCJhDOhbzkgnaNRlkE0AmQbUucd9ehOzSQOR2oipbKh7a9
         MtYnYLnaGGEj7zQBVojNiy5TrUAj/DS2hMz/eGjKsXnPbotgvlSlQcMLCaq1JRrmPDJc
         HdBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=IbC/lG5GLlOdEtfGe5TalJX8+juDZV2wTDBocMEdM00=;
        b=RHkangZEFogsb+1JJ7u3DPx3YzzbY8QDtCzbs7rNEipjfvIvQHy/RzEA2T4BCgMWYa
         CUfLmQFvoUMCxnKbwW5iQJohCDyPVnfXF2EHoDlU613E1tvCOo/dW9y6G6nx6gR9q56D
         gPCarOmvElE8ri0Pw5PbOCbPCuXANuMbEij9duf6qreRSHaTqTfh2CqVcxlmJGOiNqG4
         1zPKiL8zB7F7KWCahLGfboQmlaDfq8L7U9fqy1feB1KC5t+142itJkbgh81BaCJ6AMA1
         m+JGibSiXtYp4Xmg5iVpLvnPaY6A/mlEcApTr2nOu0BMle6BF66usrCta+a+qVYzVK15
         7WGw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=T6EN/o6U;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aishpant@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id t77si215637pfi.13.2017.09.21.12.46.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Sep 2017 12:46:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=T6EN/o6U;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id g65so2861854pfe.1
        for <outreachy-kernel@googlegroups.com>; Thu, 21 Sep 2017 12:46:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=IbC/lG5GLlOdEtfGe5TalJX8+juDZV2wTDBocMEdM00=;
        b=T6EN/o6UvcScBTFBAhaPFloa0ouzONdHnHiH0DZFgiGzlmb48BnMsRjHtSOIutIUa6
         WOwawLfuqAEq2InSoy9tXJzMNm99c7qhnqzjVCXJuHwDd9mfgRqzcAWbsNZlgt7CDki7
         JAVYj8AlhNB69KTuvW/lVxRXipsKIUE6L2hz4dsHo9g3gaXKbnGJ8e1aERn+DpQPG6nM
         nvuEPGZijxzB6tT23yd61V/7ursxUZqdSgoXWOHVWM4/CsLqq1Z5oglsG7pWMKCNY38h
         kVLx5XAVRTsBVytRgHhtCklrnDvpB2RWFmkqInVtjjXbOps76amOCzocyaXait5xWqG9
         WH7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=IbC/lG5GLlOdEtfGe5TalJX8+juDZV2wTDBocMEdM00=;
        b=sQ3Qtfd1U/l2+PDy9txQO9ILP735FFpXjm6UXSnExp72KPWK8AJ0BWm3G8iQwN+ny+
         zJhYshupWO1BlF8g44V/BrRIAMdJdEAug8a67nnOL7hQXlIzFxG/HKuSX+sIB8cH1GI2
         lYHbXJUn5JvVdbzQ8345NqZSSAZsFkzteasva9LRyFjEvhWrogjYSqeyUP31edRS55+w
         Mk71CGWc4LSWeCYlKif5J2PBjRUzXkybsJVZQ6bIMqynsYjw6klh9mgjW3Qgt38R2LXn
         ZO8Ju/bVrzfA9ZJ/cqkMd4G0LE8dRr+afBa1EzjF8OkhCDbgJBO4Z4vHrioPd3g5foUc
         dNRg==
X-Gm-Message-State: AHPjjUiBQsvKKr3HIa3/u5BKez0ky9pZh4xukfksHhZBQMc4lyOenqWw
	NSeILx/J+RWZX3wz8BaVSUwlYEzV
X-Google-Smtp-Source: AOwi7QAdwXJld3hzEwhLA+jLn+uddFTKIeUkkU4A9yBnW1S3gMOPpq89/Dqo21otKtHMDQjHhxkfPg==
X-Received: by 10.84.195.1 with SMTP id i1mr6552737pld.70.1506023205893;
        Thu, 21 Sep 2017 12:46:45 -0700 (PDT)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([122.166.181.88])
        by smtp.gmail.com with ESMTPSA id n18sm3702464pgd.69.2017.09.21.12.46.42
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Sep 2017 12:46:45 -0700 (PDT)
Date: Fri, 22 Sep 2017 01:16:40 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Daniel Vetter <daniel.vetter@intel.com>,
	Jani Nikula <jani.nikula@linux.intel.com>,
	Sean Paul <seanpaul@chromium.org>, David Airlie <airlied@linux.ie>,
	dri-devel@lists.freedesktop.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/2] drm/tilcdc: replace reference/unreference with get/put
Message-ID: <cover.1506023126.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patchset introduces drm_dev_get() and drm_dev_put() functions that are
intented to be replacements for drm_dev_{ref/unref}.

Then all usages of ref/reference and unref/unreference suffixes are replaced by
get/put reference count functions in tilcdc. The following cocci script was used
to make the tilcdc patch:

@@
expression ex;
@@

(
-drm_framebuffer_unreference(ex);
+drm_framebuffer_put(ex);
|
-drm_dev_unref(ex);
+drm_dev_put(ex);
|
-drm_framebuffer_reference(ex);
+drm_framebuffer_get(ex);
)

Aishwarya Pant (2):
  drm: introduce drm_dev_{get/put} functions
  drm/tilcdc: replace reference/unreference() with get/put

 drivers/gpu/drm/drm_drv.c            | 64 +++++++++++++++++++++++++-----------
 drivers/gpu/drm/tilcdc/tilcdc_crtc.c |  6 ++--
 drivers/gpu/drm/tilcdc/tilcdc_drv.c  |  2 +-
 include/drm/drm_drv.h                |  4 ++-
 4 files changed, 52 insertions(+), 24 deletions(-)

-- 
2.7.4


