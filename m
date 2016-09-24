X-GM-THRID: 6333999917767327744
X-Received: by 10.25.15.104 with SMTP id e101mr236595lfi.24.1474749355605;
        Sat, 24 Sep 2016 13:35:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.0.131 with SMTP id e3ls1880843lji.29.gmail; Sat, 24 Sep
 2016 13:35:55 -0700 (PDT)
X-Received: by 10.46.33.163 with SMTP id h35mr631553lji.22.1474749355144;
        Sat, 24 Sep 2016 13:35:55 -0700 (PDT)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-wm0-x241.google.com (mail-wm0-x241.google.com. [2a00:1450:400c:c09::241])
        by gmr-mx.google.com with ESMTPS id 82si122782wmg.3.2016.09.24.13.35.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Sep 2016 13:35:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) client-ip=2a00:1450:400c:c09::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x241.google.com with SMTP id w84so8016871wmg.0
        for <outreachy-kernel@googlegroups.com>; Sat, 24 Sep 2016 13:35:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=WEhb4EdNWFuo8PCwTnw3kPQneglPB7O8Ug01YMGMhkg=;
        b=p0TRfPDK+6zC9EQ6Lixqa/AszmU5XSgfl1U2n2wEw1N0tUP75qrl+W/i2W74XQ5veN
         RXWYQGWvCQnFUumSq0YF9RSOxidB1DZump9cUjewIiZd+wc8EZPaSTFSLsb19vFxqXD/
         uNGRyb0HkLdYBdTLyMz2PSt6/XtQjjulkCHc5XhK+MK401hJPongdZGJWuF0cbyoKlPt
         7CQbeDOyVi8/1TVPtNJmq7X35yeO8k/Lv3Uf0Pdx5siv0VpS520RwvWxGz1XoBTVKhib
         pOLITITNeRYqjrefXl6JgHdNer7zg67pkvLKzxBbm4R2YtfmgQSALVqasvcaAT5xuLhU
         Tx/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=WEhb4EdNWFuo8PCwTnw3kPQneglPB7O8Ug01YMGMhkg=;
        b=Wd77SFjYtMxyH0h1O3vfTwijr3R5GD495IgQLZIiJk9JOvOCNUoqh+aHTfioK5eQlp
         iSbvLbsiXiXHeylx87vbE/PyO44I5af7/UQfZQnOxvZT7hsYeExJKzeoWLh5jU85HaEk
         U+DkDm4wXP9CZlunh5u732OZwFvFtVf/bxy4QkT19smRwxlCXB0a1G4bjE2Xu1zHkb81
         +wS5Pjq0FLfpqZ2npny5ndTFBYNlxwfF3gawNIx8C5BJr9X4bzrx1vCB8jOwtaUS2sc3
         SUiKtgdVBR3IcGeUTiNtpaBtDlF1lFS2oN7vYemRvlONkKwCV0IKVNACb83Xim63es5j
         4APQ==
X-Gm-Message-State: AA6/9Rkd1BeGpKI3zXye9LL8Wh3dKZmeBAViJ17+vdlo8IaHPFtc3+c8UORqqoMi2PLOnQ==
X-Received: by 10.28.234.5 with SMTP id i5mr7620551wmh.128.1474749354929;
        Sat, 24 Sep 2016 13:35:54 -0700 (PDT)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from fireworks ([84.117.92.113])
        by smtp.gmail.com with ESMTPSA id gg10sm13818852wjd.4.2016.09.24.13.35.53
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 24 Sep 2016 13:35:53 -0700 (PDT)
Date: Sat, 24 Sep 2016 23:35:53 +0300
From: Georgiana Rodica Chelu <georgiana.chelu93@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH 2/2] staging: rtl8188eu: core: rtw_security: Remove return
 statement from void function
Message-ID: <f6c05aa0febc3f3de57bb826bc8f8f445a419694.1474748334.git.georgiana.chelu93@gmail.com>
References: <cover.1474748334.git.georgiana.chelu93@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1474748334.git.georgiana.chelu93@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Remove the return statement from the end of a void function
to clean up the code.

Issue found by checkpatch.pl script.

Signed-off-by: Georgiana Rodica Chelu <georgiana.chelu93@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_security.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_security.c b/drivers/staging/rtl8188eu/core/rtw_security.c
index 442a614..85bb441 100644
--- a/drivers/staging/rtl8188eu/core/rtw_security.c
+++ b/drivers/staging/rtl8188eu/core/rtw_security.c
@@ -233,7 +233,6 @@ void rtw_wep_decrypt(struct adapter  *padapter, u8 *precvframe)
 				 &crc, &payload[length-4]));
 		}
 	}
-	return;
 }
 
 /* 3		===== TKIP related ===== */
-- 
2.7.4


