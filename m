X-GM-THRID: 6251897983822987264
X-Received: by 10.129.130.71 with SMTP id s68mr22198978ywf.29.1455633455160;
        Tue, 16 Feb 2016 06:37:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.48.232 with SMTP id p8ls1867554obn.1.gmail; Tue, 16 Feb
 2016 06:37:34 -0800 (PST)
X-Received: by 10.182.246.130 with SMTP id xw2mr22109223obc.29.1455633454779;
        Tue, 16 Feb 2016 06:37:34 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pa0-x22f.google.com (mail-pa0-x22f.google.com. [2607:f8b0:400e:c03::22f])
        by gmr-mx.google.com with ESMTPS id 79si4056186pft.0.2016.02.16.06.37.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Feb 2016 06:37:34 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) client-ip=2607:f8b0:400e:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22f.google.com with SMTP id fy10so64903486pac.1
        for <outreachy-kernel@googlegroups.com>; Tue, 16 Feb 2016 06:37:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=OA9yQyh/+BmAKNx5wywlDUYfF0Ry/812MVCj25HxLAo=;
        b=ENWI+JN8WgMlMmQKEBmU7kJrZ1SAaCzHaepfzjQ1gGngIFYFEuCRyOvwAjWGh3KtC1
         +PEL8uuhzjj0EjXuZnL9QPg2nOa6QL0HaXbFYNoAeXfe2SAdNu69mOi/1iqDbor1pBEA
         ifL+w3KEDZyvF2UJv68VQR7EoWLK2YSWC8VWclY8qqlbyKGV1kfZgm5CqN/hivHVWbAd
         HStmGXw0Fuv+qdU5tFWj0ThLI9xfQjhMLaFSon9fMTfr32fOYp72kVA4jKOlNsaCdNi3
         IcRAj2B/QExJhSIXi1GP4QC7CMPDeBMknN0PyaYGlCfL6HX+rQCVsOSigemBe+EWCTVH
         QArw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=OA9yQyh/+BmAKNx5wywlDUYfF0Ry/812MVCj25HxLAo=;
        b=HEy8cH3/LUAfF6DAq/TollezQEmzNNzdhIe4uWz3Sraa/6Kb2oaxL/xJub7O++LlZS
         tjyzoSkNgfFJOt2zluMmoiEUfDdY2fSNH+11wnpdi6c4DTruAIaqm8rqnWDsJxVT08jQ
         6F6bk61mThzdUMPOCQwa16HWdhX7jD4vJoXGjgT5u5QxNT4zJJeXBfxPnuF7I6AJmFp9
         8PLskdCR3cstbFscZ67v5P6nZsA7r6V+1A1Q6D/E5PV67vvFaOSiw4yqB5KL5JAlXym+
         SdtMIG3artR2fb/C44H49D1eOkZgZG0QCgkv/50QVWLYPgI4m3Wk8L3e4hXKJVispipo
         frYQ==
X-Gm-Message-State: AG10YOSd+D7NNC7kp93+geqZ8nwluMFqN/rhW+R11Xetc8ji61nsYe9uJOlDhSBPy7h6lg==
X-Received: by 10.66.62.195 with SMTP id a3mr31619270pas.28.1455633454599;
        Tue, 16 Feb 2016 06:37:34 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([106.215.144.20])
        by smtp.gmail.com with ESMTPSA id 85sm46359638pfl.18.2016.02.16.06.37.30
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Tue, 16 Feb 2016 06:37:34 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Tue, 16 Feb 2016 20:07:25 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH v2 2/2] Staging: wlan-ng: Remove function hfa384x_drvr_getconfig_async
Date: Tue, 16 Feb 2016 20:06:59 +0530
Message-Id: <4f96e06bbf4e5226491acca62af017c2ee74da7e.1455632723.git.bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1455632723.git.bhumirks@gmail.com>
References: <cover.1455632723.git.bhumirks@gmail.com>
In-Reply-To: <cover.1455632723.git.bhumirks@gmail.com>
References: <cover.1455632723.git.bhumirks@gmail.com>

The function hfa384x_drvr_getconfig_async is not used anywhere in the
kernel so remove it. Also remove its prototype from the header file.

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
Changes in v2:
* Combine patches 3 and 4 of v1 in a single patch to remove both the
  function and its prototype.

 drivers/staging/wlan-ng/hfa384x.h     |  4 ----
 drivers/staging/wlan-ng/hfa384x_usb.c | 35 -----------------------------------
 2 files changed, 39 deletions(-)

diff --git a/drivers/staging/wlan-ng/hfa384x.h b/drivers/staging/wlan-ng/hfa384x.h
index 4fd3145..cec6d0b 100644
--- a/drivers/staging/wlan-ng/hfa384x.h
+++ b/drivers/staging/wlan-ng/hfa384x.h
@@ -1390,10 +1390,6 @@ static inline int hfa384x_drvr_setconfig16(hfa384x_t *hw, u16 rid, u16 val)
 }
 
 int
-hfa384x_drvr_getconfig_async(hfa384x_t *hw,
-			     u16 rid, ctlx_usercb_t usercb, void *usercb_data);
-
-int
 hfa384x_drvr_setconfig_async(hfa384x_t *hw,
 			     u16 rid,
 			     void *buf,
diff --git a/drivers/staging/wlan-ng/hfa384x_usb.c b/drivers/staging/wlan-ng/hfa384x_usb.c
index 7eda536..ee63c64 100644
--- a/drivers/staging/wlan-ng/hfa384x_usb.c
+++ b/drivers/staging/wlan-ng/hfa384x_usb.c
@@ -2091,41 +2091,6 @@ int hfa384x_drvr_getconfig(hfa384x_t *hw, u16 rid, void *buf, u16 len)
 }
 
 /*----------------------------------------------------------------
- * hfa384x_drvr_getconfig_async
- *
- * Performs the sequence necessary to perform an async read of
- * of a config/info item.
- *
- * Arguments:
- *       hw              device structure
- *       rid             config/info record id (host order)
- *       buf             host side record buffer.  Upon return it will
- *                       contain the body portion of the record (minus the
- *                       RID and len).
- *       len             buffer length (in bytes, should match record length)
- *       cbfn            caller supplied callback, called when the command
- *                       is done (successful or not).
- *       cbfndata        pointer to some caller supplied data that will be
- *                       passed in as an argument to the cbfn.
- *
- * Returns:
- *       nothing         the cbfn gets a status argument identifying if
- *                       any errors occur.
- * Side effects:
- *       Queues an hfa384x_usbcmd_t for subsequent execution.
- *
- * Call context:
- *       Any
- ----------------------------------------------------------------*/
-int
-hfa384x_drvr_getconfig_async(hfa384x_t *hw,
-			     u16 rid, ctlx_usercb_t usercb, void *usercb_data)
-{
-	return hfa384x_dorrid_async(hw, rid, NULL, 0,
-				    hfa384x_cb_rrid, usercb, usercb_data);
-}
-
-/*----------------------------------------------------------------
  * hfa384x_drvr_setconfig_async
  *
  * Performs the sequence necessary to write a config/info item.
-- 
1.9.1


