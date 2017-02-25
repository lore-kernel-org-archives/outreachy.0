X-GM-THRID: 6391114226199429120
X-Received: by 10.157.39.196 with SMTP id c62mr3090242otb.70.1488047238279;
        Sat, 25 Feb 2017 10:27:18 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.42.168 with SMTP id e37ls9934159otb.13.gmail; Sat, 25 Feb
 2017 10:27:18 -0800 (PST)
X-Received: by 10.129.120.145 with SMTP id t139mr3039229ywc.65.1488047237986;
        Sat, 25 Feb 2017 10:27:17 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id f7si2251231pfk.5.2017.02.25.10.27.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 25 Feb 2017 10:27:17 -0800 (PST)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id s67so7356310pgb.1
        for <outreachy-kernel@googlegroups.com>; Sat, 25 Feb 2017 10:27:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=/6GSsXf2pERNlC9Ctbr9qr4pl5C/aJHjF4QIfKY2+mI=;
        b=fEpcbJylsVbiC38RPhpK7q/VnZOFlTZVZJPujXMI5PtNj+02523hePSLDZ8WjSY1XG
         T5B8CMX0S14+/hxpSccdd/Xz826pvUUIj0eYdmKMR+YD2M+pgTcJG2tLWXKlH6DbS4yL
         cbtvMyvCkm/auFbz0TnOHRsU7iH4xAEW7zVQhYi//KKqPdO1LywFudaE/qzwZcCMqwd6
         DONoQfgzsraLpbXOgz/7LW++WE6BAh4fk7wNm6tuUSICd0B2VKvYfm9jMb3Xh7QwNDTQ
         30NDimUizhTpy6F2sDjrxvLWtd+EJ8jLXYpce0EDwEd+ijs8QH58BP0cKAaNO+QI9VN0
         RetQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=/6GSsXf2pERNlC9Ctbr9qr4pl5C/aJHjF4QIfKY2+mI=;
        b=JtyPBfhttCP2Zzzd4/UKPGUbhG5z5M2Y0GavvgxZOFeF0EbCYPY8lfddbPVmX1RdbV
         IHx95ofLvERmaLhDLL4ybzY+xYL3BO3omU3GRUEDg6lw4sENEweb72lVDMYVEt7EXEvS
         /GvV/0uAF8q5PeoSS37WPQeHGy7ZHqgHnp9cguhhoBQ5VjGScFQ47QSAkT4PocyIOZo6
         DxyeyC90WLEU8VC6Y2WCGK+WmXpNsA9N8/xUIKiyj93lI//YWZkZGLET83o9ZzxsbmEh
         WOPpIzKODJAFL4mwRrKkA5+9EqVIGSsiQFo229Rjw58FkHuHSEFgTxG9zRVOtFw3T+zq
         z9BQ==
X-Gm-Message-State: AMke39kF3B9Vtdzi0sAdxtjxh4cEeCxlmjOgBpun9rNQPp4HziyDxaj7EiRy2cis8hixHw==
X-Received: by 10.98.7.21 with SMTP id b21mr11186597pfd.66.1488047237782;
        Sat, 25 Feb 2017 10:27:17 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([117.192.154.88])
        by smtp.gmail.com with ESMTPSA id x2sm21735570pfb.49.2017.02.25.10.27.16
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 25 Feb 2017 10:27:17 -0800 (PST)
Message-ID: <58b1cc85.0263620a.5e067.d00e@mx.google.com>
X-Google-Original-Message-ID: <20170225182711.GA7022@<rvarsha016@gmail.com>>
Date: Sat, 25 Feb 2017 23:57:11 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: Sudip Mukherjee <sudipm.mukherjee@gmail.com>,
	Teddy Wang <teddy.wang@siliconmotion.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 3/7] staging: sm750fb: Add identifier to function definition
 argument.
References: <cover.1488045682.git.varshar186@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488045682.git.varshar186@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)

Added pinit_param as the identifier to function definition argument
struct initchip_param and this patch fixes the checkpatch issue.

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
 drivers/staging/sm750fb/ddk750_chip.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/sm750fb/ddk750_chip.h b/drivers/staging/sm750fb/ddk750_chip.h
index fbeb615..2c7a9b9 100644
--- a/drivers/staging/sm750fb/ddk750_chip.h
+++ b/drivers/staging/sm750fb/ddk750_chip.h
@@ -98,6 +98,6 @@ void sm750_set_chip_type(unsigned short devId, u8 revId);
 unsigned int sm750_calc_pll_value(unsigned int request, struct  pll_value *pll);
 unsigned int sm750_format_pll_reg(struct pll_value *pPLL);
 unsigned int ddk750_get_vm_size(void);
-int ddk750_init_hw(struct initchip_param *);
+int ddk750_init_hw(struct initchip_param *pinit_param);
 
 #endif
-- 
2.9.3


