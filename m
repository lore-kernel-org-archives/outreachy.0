X-GM-THRID: 6666416824026923008
X-Received: by 2002:aa7:87ca:: with SMTP id i10mr9163736pfo.116.1552146120074;
        Sat, 09 Mar 2019 07:42:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:246:: with SMTP id 67ls4327752pgc.11.gmail; Sat, 09 Mar
 2019 07:41:59 -0800 (PST)
X-Google-Smtp-Source: APXvYqy1MKIaboh8YECL0NAweH/Sjigns161mLRklA+7uFlxulkJTAjnuwJZyejcgK9RiBu9CcN2
X-Received: by 2002:a65:6147:: with SMTP id o7mr9453181pgv.23.1552146119257;
        Sat, 09 Mar 2019 07:41:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1552146119; cv=none;
        d=google.com; s=arc-20160816;
        b=DO+bD+JOpHLUUFwj65d01Msi8KnEl7A/dK/JwABLJEW6xPgUqTHcPgflwU6pHNrD1K
         651r5KqQ4vz4f0XkTbvSuY/clEpy7DJfy4bgwIa+6EIDGaaqNJuhUGwlc7B2E2w+KaxV
         jN5j2G0RQepDbwQui/o2+BmfkruBrDwRFKYcv1lkAQy3YXSQ8z/PcPl++lSzf3ao/ihU
         Yj/5jdUOVZ0XbvpT+9D0/tQjm2Zppkf699kCaAvJlif/H7Ao081+Uxfo+BHHXmuGFz5v
         DKbv4tE96HHn43sdc4N9qdcDVhO+We5DX/XEeeLAjgSESpCMb5DAdkTlpY2oaKBdTTSU
         kUxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=Vdideit9ZYO8srABknYl00kw5xmn4v21xT7syR99HcM=;
        b=WVxQBxIPa3xZ8ETi1tkLlEpy4kYXq6GHSXpKxLMC6VI80Jz8E5l+MqEWMDZpwVNsPI
         +kPTpbUH6HOwH5RqnV9IE7iy9iy6ry9mFQzY+XVld1mwaBxYIU2nmsS4VuxggdPpJsas
         zw5WdazfkifHkbFUPeqcdnrTlmjQqpKjRcxcNJr21caWIoE+e2ZU7h2Uh+plx+ScafU5
         XbZa02/8ocVAoTWDM60A++KNMiqvVLsFI9NJZaOeDzlIr+reo73GYlctGhC1SzRUOV1e
         cNuUCMlVzM9YY+QoMooH5anEwuzI5d/6+2qleZ6AN6glUS350VGDR1aAKG8TDlkmy6D5
         hn+Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JDgLqE7e;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <digholebhagyashri@gmail.com>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id k70si27894pfc.0.2019.03.09.07.41.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Mar 2019 07:41:59 -0800 (PST)
Received-SPF: pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JDgLqE7e;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x542.google.com with SMTP id b2so533474pgl.9
        for <outreachy-kernel@googlegroups.com>; Sat, 09 Mar 2019 07:41:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=Vdideit9ZYO8srABknYl00kw5xmn4v21xT7syR99HcM=;
        b=JDgLqE7e17PxlnryZynE2HM6ym182nTm9esJlCeUVT+UQOsLEY9cokA22S5BVFmbbq
         uuk9h6IO2OeEcFmf2lOsEELHK35ODhpRqTSsMemxF36p+eOThle62YfXHx4EpU/w/bJ3
         wzMErYOnqE/aUTzDxxoOfm6Q032TvkIUMaF9G7B7peFVX8JC3Vie2uTNn3PggC9uShRJ
         rlgj0g/Rdl4NNU/6rzUb3XEJAUAYJj9ZXSTLzUWCIi+EYV11RJFO936axNL1+EsAR5yU
         y1BsSCWmNrcRNLg0gePBuvcj0BEz14KQCCFS8qN4eMRhAa3Pq+5EXNjy75qms2TOTz75
         31xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Vdideit9ZYO8srABknYl00kw5xmn4v21xT7syR99HcM=;
        b=aG+03+MYc5SY0a7lpsPZbqVU9iWSguj47I03VoFzmoydXrWXFT1ETJXwbJOj37J/iK
         o8+hrVk8gSGzxO0LN3bwNZEbOVZiWzibM28AdTE4DlkguhkbqHiLuVqjfltWb37APhVe
         LHzErTeghzFY7F5yHZvQK46XEs0TdqSeHOWsOuJGcmSVmbHH8avMzQrlvMoKeNDOx5F+
         e4O1aclJ/quk6CNMSMc8UQr3VrXZnnjGMb4FUOrKUBNiPhZZa0foWDhaUX+gWxkRUlWe
         anlO+FsKH9KPcebtsSTKM3VjxI6IbWVHg5YMtxbNVettHkfV3D2fyScoFH+rYrteU1Pb
         A1Zw==
X-Gm-Message-State: APjAAAXaloxbUDuUCYnfebAkK4nrId2R2JjAx6Px3vSmyW0xW1Qeq8T0
	WReDAFPDw+jbl+y/HNKiTRc7V/tgI9k=
X-Received: by 2002:a63:780e:: with SMTP id t14mr4093099pgc.276.1552146118588;
        Sat, 09 Mar 2019 07:41:58 -0800 (PST)
Return-Path: <digholebhagyashri@gmail.com>
Received: from bhagyashri-Lenovo-G570 ([2409:4042:2e8c:9ce5:f828:5bfa:d9dc:e4ec])
        by smtp.gmail.com with ESMTPSA id p78sm1906360pfa.84.2019.03.09.07.41.57
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 09 Mar 2019 07:41:58 -0800 (PST)
Date: Sat, 9 Mar 2019 21:11:45 +0530
From: Bhagyashri Dighole <digholebhagyashri@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Outreachy <outreachy-kernel@googlegroups.com>
Subject: [PATCH v5 2/2] staging: fbtft: ternary statement to if statement.
Message-ID: <20190309154144.GA16379@bhagyashri-Lenovo-G570>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Convert a ternary statement into a if statement which is detected while
resolving "WARNING: line over 80 characters".

Signed-off-by: Bhagyashri Dighole <digholebhagyashri@gmail.com>
---
Changes in v5:
  - Make patch series.

Changes in v4:
  - Convert a ternary statement into a if statement.
  
Changes in v3:
  - Make the code in original form.
  - Use tab to line up the code.
  
Changes in v2:
  - Improve code order.
  - Make the code more readable.

 drivers/staging/fbtft/fb_ssd1306.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/fbtft/fb_ssd1306.c b/drivers/staging/fbtft/fb_ssd1306.c
index d7c5e2e..3e1426c 100644
--- a/drivers/staging/fbtft/fb_ssd1306.c
+++ b/drivers/staging/fbtft/fb_ssd1306.c
@@ -184,7 +184,10 @@ static int write_vmem(struct fbtft_par *par, size_t offset, size_t len)
 		for (y = 0; y < yres / 8; y++) {
 			*buf = 0x00;
 			for (i = 0; i < 8; i++)
-				*buf |= (vmem16[(y * 8 + i) * xres + x] ? 1 : 0) << i;
+				if (vmem16[(y * 8 + i) * xres + x])
+					*buf |= 1 << i;
+				else
+					*buf |= 0 << i;
 			buf++;
 		}
 	}
-- 
2.7.4


