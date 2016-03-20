X-GM-THRID: 6263088426063495168
X-Received: by 10.182.226.201 with SMTP id ru9mr19642069obc.37.1458498084696;
        Sun, 20 Mar 2016 11:21:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.22.35 with SMTP id a3ls170580igf.25.gmail; Sun, 20 Mar 2016
 11:21:24 -0700 (PDT)
X-Received: by 10.98.42.67 with SMTP id q64mr20181605pfq.9.1458498084091;
        Sun, 20 Mar 2016 11:21:24 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id 12si2998953pfb.1.2016.03.20.11.21.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 20 Mar 2016 11:21:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id x3so26298521pfb.0
        for <outreachy-kernel@googlegroups.com>; Sun, 20 Mar 2016 11:21:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=hjqCMExenUZgM48NbhiiA+irL1ITk96WXpM2kp28RCI=;
        b=0+lojTVwaBK105qbdx0uzZEBsdP4Oy2E2ItStV8YVlfCCyl1+GZeWw6+qagGi1tmAf
         IBhVzelIql+OfqHbG/0FGom39VKqsN0VIsWX2QwA+aBb/Z0QrTfJNpVqXf12nBUePavN
         yDHcvm2yd2zaOX3tofku17uyfX89pt79KCE8uearguJPwhpe8tbYdovtbTg1LjFIWU44
         iciELKgtsj3VT1eibYrX0F1kqkytxFnhTEqIf8I/36syj0sLbvlr9yBLAtrD60adwrzN
         H2wGo2X1k7HSaaCkSpkUecjB4wFC+7Y6yvUKkc2QbrjKfyg+++nVIKD/4lFuRh2fqoIF
         TOEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=hjqCMExenUZgM48NbhiiA+irL1ITk96WXpM2kp28RCI=;
        b=KyG5a7kKr5wHM9KFDl03fMqk/7urxPMos0GdaMw9XkO8x+seip+nlxugCHoTnSQ8i0
         PBEn5oQm5o/kLe9+Ml1DaKqrwDy2LqyLgjoKTgD4khWQj9vkZU2gP8W9jLBGXPO/cCEf
         IyaUh/q5YdDL4O8whWdE7ELQQa+5VzemmxroMg8QWELn0nhEWPwvFQt78gUDb0i3Y3yB
         uGPaNlMJ8JwxqvMa0ZmwlDcHig9EoFLeh7VXReuca70VsFXUCzQ71/VjPlvSMD3GS0eI
         QkFZGAvwZjaDXYBkwuaKz3vMmDM5/3DcfQp+a+J/U9ukFjxIYknEYDX/9DbcKpcdEF6i
         RfHQ==
X-Gm-Message-State: AD7BkJKb2tVZZwpSrDuLmvydyigtZcneFEvy3s4uBa38IFfrLjRGcsXcdZIDzngHS5ynFg==
X-Received: by 10.66.249.228 with SMTP id yx4mr10931401pac.29.1458498083960;
        Sun, 20 Mar 2016 11:21:23 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.99])
        by smtp.gmail.com with ESMTPSA id dg1sm34916167pad.18.2016.03.20.11.21.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sun, 20 Mar 2016 11:21:23 -0700 (PDT)
Date: Sun, 20 Mar 2016 16:52:35 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 4/4] Staging: i4l: pcbit: capi: Add parentheses to complex
 macro.
Message-ID: <599699a2106b6a55e9ef292fd019427a259e5ac6.1458471224.git.bankarsandhya512@gmail.com>
References: <cover.1458471223.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1458471223.git.bankarsandhya512@gmail.com>
User-Agent: Mutt/1.5.20 (2009-12-10)

Add parentheses to complex macro.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/i4l/pcbit/capi.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/i4l/pcbit/capi.h b/drivers/staging/i4l/pcbit/capi.h
index 635f634..6f6f4dd 100644
--- a/drivers/staging/i4l/pcbit/capi.h
+++ b/drivers/staging/i4l/pcbit/capi.h
@@ -17,7 +17,7 @@
 #define REQ_DISPLAY       0x04
 #define REQ_USER_TO_USER  0x08
 
-#define AppInfoMask  REQ_CAUSE | REQ_DISPLAY | REQ_USER_TO_USER
+#define AppInfoMask  (REQ_CAUSE | REQ_DISPLAY | REQ_USER_TO_USER)
 
 /* Connection Setup */
 extern int capi_conn_req(const char *calledPN, struct sk_buff **buf,
-- 
1.8.3.4


