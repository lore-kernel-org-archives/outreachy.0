X-GM-THRID: 6951014444226838528
X-Received: by 2002:a25:7c47:: with SMTP id x68mr53094862ybc.358.1618409167392;
        Wed, 14 Apr 2021 07:06:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:da84:: with SMTP id n126ls1053597ybf.3.gmail; Wed, 14
 Apr 2021 07:06:06 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJx1HSep/eWmfn64Rywt3fEJchYjxHXpeuRV0vG+mGqDr3zlZqw6+PE/tsQx5dJ8SHz8Ejve
X-Received: by 2002:a25:820c:: with SMTP id q12mr17803871ybk.327.1618409166476;
        Wed, 14 Apr 2021 07:06:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618409166; cv=none;
        d=google.com; s=arc-20160816;
        b=rnAAY64mSlYoWln6nZZ94xtUjKnXKxALtaZQIJ24LA2isAOAEOBJfQX0Kp0e0UzBJv
         hJDDnY4mSphtb46jAlyqctm9cL0nxdhkltOzvOYymMo21HBIU7TdUJXefESUnihYFzf0
         o9HefGFMIUnL4Ffoaj2Pz1GsdVf4mCLzPxsgGbUWax78GJw0wdj0fR3TTem97m+n8aaJ
         L8AaK3A2vHFEdjApcY4MJV7fW9YFfhS6IN2PZ+ckGcZjrYQ+hTp4HbZQ2nsqNdGA+3Jy
         qjAF/PpnLFmGgoI3SpDa6z8KYB0pwDgU5KGvuHIJoFKwoSYnQ+cmADb4V1g9Jve+EID8
         Ldlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=qKEfVtOW1ZWQGB/v6pA7J6VXKi4AIZGME3dBy4ukcCw=;
        b=pzZqP8M5vg1S344nDjk1YKKvcz49ZJ5MjJm0vew6tHb9/uH8Oyd4/MFC0WJ9otwVlQ
         FfaIrmjEzAb+IXjAIUmmFlqLsUlZNjCOq7leBnvtl4mCuNLXXw6ZWt6ggU/4bJ5yv2zQ
         uzkNv4RZYcp9xF8JcJdQtusiYnR6DWNllIJylJ6kpN2SJIrMY8awQXKizJOtgcjtuArF
         q9UTnMS9ccJqdx76LdwgDF8Dt/zhZ0tRo0U2D4D7rlIyh0rK/4P3nFJqj3LInTwBRiJ8
         5hb6Flmnpi8XT3+fiY6SFmbZCzDax+mBMyG0MMiMUERY7AOr4HO+kpMYJP/uYWoeyx72
         jdvQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lqCEcd7K;
       spf=pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::734 as permitted sender) smtp.mailfrom=alinesantanacordeiro@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <alinesantanacordeiro@gmail.com>
Received: from mail-qk1-x734.google.com (mail-qk1-x734.google.com. [2607:f8b0:4864:20::734])
        by gmr-mx.google.com with ESMTPS id l14si1007043ybp.4.2021.04.14.07.06.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Apr 2021 07:06:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::734 as permitted sender) client-ip=2607:f8b0:4864:20::734;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lqCEcd7K;
       spf=pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::734 as permitted sender) smtp.mailfrom=alinesantanacordeiro@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qk1-x734.google.com with SMTP id 18so4622496qkl.3
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Apr 2021 07:06:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=qKEfVtOW1ZWQGB/v6pA7J6VXKi4AIZGME3dBy4ukcCw=;
        b=lqCEcd7KTffArrdQS+akvzbdOUYb90ENHl1ioV9CJDjsAjZKI36QN3NHR7QRSSWS3V
         lu06VkZSDZDGRtF8XRir3Spjyj7x/cR/w2V/pWDgYQbDRA6A2+jb4ehBGXSk2PwVFmWD
         HEwGnB93Cu8BQXhjoajimI9rQgzD+YSq7i+n55c18JgWwOj+pgbqozAr/yKbNeLv020n
         p+L1+h4egrk7fbLWbndF+76pUV0ZJbje/7jVIwrRP3bFtP/mA8+p4n9lwByV750vGIuc
         cL+djXU845hlaTd/Jax5SO9RjK79gcLHupkR2MyDRqSOwP5H05Hl8CYlDRSqnFqtZWt9
         56qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=qKEfVtOW1ZWQGB/v6pA7J6VXKi4AIZGME3dBy4ukcCw=;
        b=PjkStug8JIoHLmZ2Kx19vxzBR5YKjUT/n7FQf7OdkP391J4XOXbCA0ZYYQrN0i2XjU
         118nCBRdUMktYLdn4IYwWwwpcIYH3CF/6uiNgIQPLThz9TjpESBqTsMVbuK+vWz377X9
         M/DXFpBzgqtaxmI6/jc7vk6o0vqFinpMvNsJzJAzF8b1SNDxX1LNmb7h4X2l23pyfpg8
         fuljq9wPGaEhsY43tFrqpje5Gs0/TGrbUojghPLMJEvjs3R89Fb3uxFhFMCwO04PRS22
         D3f2ouUDiQdyigPn89QS7ZJCVdPyymPJ3babumyxvB3Fc3n05OSNgSOOuln7XDvbwr/5
         Ir5g==
X-Gm-Message-State: AOAM533mLFC2w9I36o+laZ8QRJoZK4YrD/T5Jql72ztZpQ1UNpdc5byK
	6mHX0MmhtTZQunZbX25+MOKIo5NgNBGLoe+2
X-Received: by 2002:a05:620a:13ca:: with SMTP id g10mr377517qkl.380.1618409165944;
        Wed, 14 Apr 2021 07:06:05 -0700 (PDT)
Return-Path: <alinesantanacordeiro@gmail.com>
Received: from focaruja ([2001:1284:f016:a037:7038:c088:ae60:452d])
        by smtp.gmail.com with ESMTPSA id o62sm820039qkd.81.2021.04.14.07.06.04
        (version=TLS1 cipher=ECDHE-ECDSA-AES128-SHA bits=128/128);
        Wed, 14 Apr 2021 07:06:05 -0700 (PDT)
Date: Wed, 14 Apr 2021 11:06:02 -0300
From: Aline Santana Cordeiro <alinesantanacordeiro@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH 1/2] staging: media: atomisp: pci: Correct identation in
 block of conditional statements in file atomisp_v4l2.c
Message-ID: <0ef18a36d6905628fa596fd5e0a32fdb9c6a8ada.1618409028.git.alinesantanacordeiro@gmail.com>
References: <cover.1618409028.git.alinesantanacordeiro@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1618409028.git.alinesantanacordeiro@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Correct identation in block of conditional statements.
The function "v4l2_device_unregister_subdev()" depends on
the results of the macro function "list_for_each_entry_safe()".

Signed-off-by: Aline Santana Cordeiro <alinesantanacordeiro@gmail.com>
---
 drivers/staging/media/atomisp/pci/atomisp_v4l2.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp_v4l2.c b/drivers/staging/media/atomisp/pci/atomisp_v4l2.c
index 0295e2e..6d853f4 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_v4l2.c
+++ b/drivers/staging/media/atomisp/pci/atomisp_v4l2.c
@@ -1178,7 +1178,7 @@ static void atomisp_unregister_entities(struct atomisp_device *isp)
 		atomisp_mipi_csi2_unregister_entities(&isp->csi2_port[i]);
 
 	list_for_each_entry_safe(sd, next, &isp->v4l2_dev.subdevs, list)
-	v4l2_device_unregister_subdev(sd);
+		v4l2_device_unregister_subdev(sd);
 
 	v4l2_device_unregister(&isp->v4l2_dev);
 	media_device_unregister(&isp->media_dev);
-- 
2.7.4


