X-GM-THRID: 6660473705806692352
X-Received: by 2002:a0c:d05d:: with SMTP id d29mr16870673qvh.44.1550762379384;
        Thu, 21 Feb 2019 07:19:39 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:92c7:: with SMTP id c7ls1255665qvc.7.gmail; Thu, 21 Feb
 2019 07:19:38 -0800 (PST)
X-Google-Smtp-Source: AHgI3IYtN3AUUflwYyy6BsKE5BelDack9+tBQOFJy/qMdvFxSxkylPTOH/S0qMD2wQ32ArisPc/8
X-Received: by 2002:a0c:c125:: with SMTP id f34mr15471478qvh.48.1550762378556;
        Thu, 21 Feb 2019 07:19:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550762378; cv=none;
        d=google.com; s=arc-20160816;
        b=oxtGYX8CgUCmYj9GcOwmT9iQBOl1gdWPwO4FGx9ZxSoxZfmWc0rs2FBaatbejTmVgf
         Z/1KrlmUlZ09awpgz4H4cud8u+lBKGZ07sd5kMi6m+hWId0jNwgYD33nB3C32tXrNiJ8
         aFM2o3+rA9h3OfrgsOAH9JM52kzo6JLRJCFpCYizFBTfRLuvPV8Q/RzT38nBV902Unfe
         nrAezQ9WXk1YFP0/Ub4PIf7G99TyWTxkU5x+STkBPKuxlJ8VZ9LfNzvtzxzCqr+wNI4p
         oo+VHidvMzHgVsHqxqD+UaUWykuuh8bPPV78IVSFnxBQ+M8cFJi//Z1O3T/6aCuaFo5x
         NjtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=0+8jtrEyTuREfkZHFV2SQHYsyP7jVqTA093PeiZv+qk=;
        b=vJurgsfWt3yi5ha2ykE1qr7AM7VZYnXpt+kuV8KWjRTrJMhY+TozsmIPdyzzoWpP2Z
         QW0Pmuz6ghISGiY33PbqqKq8zFpb0dtITU3Tgm/L+UvBQ/lwv4Mydh1ZWIleI4zVKvN0
         cCCfWLnMWQKsc4SbEtV/WPfI8GJ1AMDO4Bh7VM17oZ9LJ01cNpokLmXHbxLMtv1Qu9zV
         eJxI0DGd1stIzR/tMcUJjmU0/9lzDQYX4H272YePalSAUJvSZjcnABd49bPRN1kT2Y0D
         LZx8mplFpKTPyrUj+IQh665Nla5ktgKj3kPVtks8LWXGRQzlxLJua+Gr8iJXh/QAS/as
         W83g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="OrD/krBt";
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id o22si1566716qtm.1.2019.02.21.07.19.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Feb 2019 07:19:38 -0800 (PST)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="OrD/krBt";
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x641.google.com with SMTP id c4so9296175pls.11
        for <outreachy-kernel@googlegroups.com>; Thu, 21 Feb 2019 07:19:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=0+8jtrEyTuREfkZHFV2SQHYsyP7jVqTA093PeiZv+qk=;
        b=OrD/krBtZDGia9kUfjUyde22zQuNKD/3eRSFatYx3G1uRHsihZ7XIAy7D4+9b4h5Jb
         DKUGKA833GyRRQvmdtvAr+9Fw9fONV1vXOXxO3EYUpWcIQbCjWfqNfySeWSYfC27n+kP
         eQ5g0Z5BLh0iWIN5rivaxrPprT84HzOmINbm8Obg1j+7VVHNZ5QMmI1T2DZ4TVA5jWYa
         NWtWFGlLVz/NEk23/86t1BOLwhnHlTq+7QMcHEXtua8+ooc73TPUqDoxQWbR40wuCbvu
         6R9BiMsZGqQpC7IIYL6CpM08+Jr+xhRK+NNjqB9P5PSmhXByaLBQHzfajyg1JzEYqs56
         qbJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=0+8jtrEyTuREfkZHFV2SQHYsyP7jVqTA093PeiZv+qk=;
        b=Jy3pkP07kNa4NV178Q1jXpXGIxqpLwjy+NHEVVo/QDITZMb2XR52eE0nfDwqBT/EpW
         1eCzyr5WKEQ7lsQCrf0L/SmU1KGQgchyeQSTHW7IEYF9W9eB/F8lTfK3j0F6ZNQTFkk4
         fw2IPWt9A1lKeC2M0XTtlC0jE5DkjE7OWlpm3LZbE6m52IGDdjrQxyL4S8cw8BBrlxos
         15n+P5s03LadZR1a9kqA4mjLD6tyH9panj4A4ngTCirREZYqhO4t5hJWMnA+8xUAjjIM
         kHebbU9iA5D8+90xfmIG0kgO+M1LGpPbd6C84381svgcY41MO2MoMp7LoHS6wD6niY6n
         npcg==
X-Gm-Message-State: AHQUAuYwfYb9XsX6a0kv+eK1kWhkrMX6n1OS+URP1nXqMpxFfZRKez1k
	uDr5whkZIKHX/JtDQFBaKdM=
X-Received: by 2002:a17:902:7b85:: with SMTP id w5mr38840249pll.288.1550762378166;
        Thu, 21 Feb 2019 07:19:38 -0800 (PST)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from bhanusree-MacBookAir ([183.83.84.116])
        by smtp.gmail.com with ESMTPSA id h79sm33776040pfj.186.2019.02.21.07.19.37
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 21 Feb 2019 07:19:37 -0800 (PST)
Date: Thu, 21 Feb 2019 20:49:35 +0530
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 2/3] Staging: fbtft: Declare Exprot symbols immediately
Message-ID: <20190221151935.GA1946@bhanusree-MacBookAir>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Declaring EXPORT_SYMBOLS immediately after function/variable would be
more appropriate.
This solves the checkpatch.pl warning:
WARNING: EXPORT_SYMBOL(foo); should immediately follow its function/variable

Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
---
 drivers/staging/fbtft/fbtft-core.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/fbtft/fbtft-core.c b/drivers/staging/fbtft/fbtft-core.c
index 9d78ce6e819f..a5cdce4766bb 100644
--- a/drivers/staging/fbtft/fbtft-core.c
+++ b/drivers/staging/fbtft/fbtft-core.c
@@ -212,10 +212,10 @@ void fbtft_register_backlight(struct fbtft_par *par)
 }
 #else
 void fbtft_register_backlight(struct fbtft_par *par) { };
-void fbtft_unregister_backlight(struct fbtft_par *par) { };
-#endif
 EXPORT_SYMBOL(fbtft_register_backlight);
+void fbtft_unregister_backlight(struct fbtft_par *par) { };
 EXPORT_SYMBOL(fbtft_unregister_backlight);
+#endif
 
 static void fbtft_set_addr_win(struct fbtft_par *par, int xs, int ys, int xe,
 			       int ye)
-- 
2.17.1


