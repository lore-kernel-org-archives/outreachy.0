X-GM-THRID: 6675324763723792384
X-Received: by 2002:a65:6652:: with SMTP id z18mr1158974pgv.75.1554220161930;
        Tue, 02 Apr 2019 08:49:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a65:534c:: with SMTP id w12ls5309758pgr.8.gmail; Tue, 02 Apr
 2019 08:49:21 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzFm9oJewrJHAQ6t2CUhnbmoEg/o0TthE2/YBh1asTUxWCULHrnnSFWddXaK/FCczfY8OEw
X-Received: by 2002:a62:1a44:: with SMTP id a65mr935365pfa.103.1554220161011;
        Tue, 02 Apr 2019 08:49:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554220161; cv=none;
        d=google.com; s=arc-20160816;
        b=daUatJ6mLKz5pPKsJvBcwns6DKHM/+E5CAdfNztczAnR5ySY9S7iBL3WHoOZnIODpo
         Bbg82YO/cMtjmaXA46aUeAcWisSePYJVpdVtnd3JIe8eAIC8mDLtUfFuGjZsvOyv5ah4
         HsU01dyQ0ZF3uCsyckUusL3c+oskivqYwawcFcTutVcu9mk0KfMdlAuALP8lFb5zkINL
         b1lfGRmix1VZ8aESRFuqsHO1e6h7MUG5ynnCX2VG7eYZ1dlRUaQkGlQcg7uNfx4EZl3w
         zzBZM/mYVw3d+O5jlGgRfIysoYkeq6HR1KJSsd9gNNgrF2WIIwZa/vj0NSczdJukSBIY
         clhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=Z6k81cvbA/NMlh8Nb/R6nj/8E5bBOUVUbesTaMgDYnI=;
        b=wDAd92XA4rX5YtmqK2t+x1Fl97JqK6M9gdzVCq28WJN2Pwm6/EEZaD+N2CdogTvvzf
         poQ1RNIWIaPU+eZJhMNL+4fInZKMekVkrF7rrUkMMj/5jVNJ1JvsjTwlrfR4OkCFpBbM
         rZraprRx98T1xaJ8VMFzb8OKd3qvvg9LJOTEtpt6LUswx/t6DKtTwHi58Nv5bzyIno0n
         70qYTRVEi57i3kkyOBc4215WtXlir96W3uBhy/O6IrC3yVzyZjF+DumsdJRlgXeew0Uf
         KJE1JWliTSyedRMOEjCBtzn4jFt+OT7zrwHKdS3BS/h8YuGlc4UtTg6c6wJBoc8LRPqA
         Fcpg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=j+89akEz;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id 141si835362pgb.1.2019.04.02.08.49.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Apr 2019 08:49:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=j+89akEz;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x444.google.com with SMTP id 10so6589447pfo.5
        for <outreachy-kernel@googlegroups.com>; Tue, 02 Apr 2019 08:49:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=Z6k81cvbA/NMlh8Nb/R6nj/8E5bBOUVUbesTaMgDYnI=;
        b=j+89akEzX3CYLzOuuo/jT/iBJBTf7zl8is3q5HtJFOIJ90fiCNs3d4EAdZtvovV3oy
         EbVfXzq3FPbhXgAvCzOOgvXaNOXla0UPF/UUjZza6lqtg7MuHgFpKjpEy91aQs9UMbNQ
         NtbnoYmDyFf2EH6ZPXoKTCier7B9hk6nxtvo6SiGH+77t/qaID8U2Q5pd+0iT0tb1UMZ
         p2+u+9C7Bqisrosg5JObaQY04xy3IJ8XQa0Nob2zOgb65i0ILqcZ9tDAkDiG886U/j9S
         q9azGoh4AHF2YcM+pZ+WqKGDxsuP9Cx/sxONALE+eH8ZNBhSJSYN+Yc/PPrvXiC/SS5L
         JB2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Z6k81cvbA/NMlh8Nb/R6nj/8E5bBOUVUbesTaMgDYnI=;
        b=aEHRbmY81eMOUvXut6QZSEeexdW82EN7gZF4wLQSrmdEtJ9ICq8FcF5oNvCfkeIgG3
         WEt6YrcWU+yOLi9WAgFj4jCebbcEVnyEefoAepJAviC0iX4TFlSwaP2ZUtz/kIdTazUL
         byR8ZiM6pvrcSykXm/XnGiYWreiVULe9oiDVITSTo+pxr4gyoeqoegqVG8kIfduWB+87
         2ph7SY8nf8s5IOBboMVl8HPOXc/olI3qMwdB9Ac5TDPCVNBjcDfT39vIcja9pNAHJSRi
         SvMSPeNlmm9aang6d+wlI2QxNFxyl/MyphhxfT8ZQjjuZnUAtvL8iknfuWegXXnnwCC9
         TBcQ==
X-Gm-Message-State: APjAAAWM0a3tv9ycm1sSsVbZN33UOC8DbL7es84ZmmazrytlBS0TeEgn
	Caw3ld0rpviXSIekfjuBpkcXKHaP
X-Received: by 2002:a62:6504:: with SMTP id z4mr34840809pfb.202.1554220160342;
        Tue, 02 Apr 2019 08:49:20 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([49.35.213.122])
        by smtp.gmail.com with ESMTPSA id r3sm39586500pgb.82.2019.04.02.08.49.17
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 02 Apr 2019 08:49:19 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [Outreachy kernel] [PATCH] staging: iio: adc: ad7816.c: Replace bit shifting with BIT macro
Date: Tue,  2 Apr 2019 21:19:04 +0530
Message-Id: <1554220144-13374-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4

Challenge suggested by coccinelle.
Prefer using BIT and replace bit shifting with the BIT(x) macro.

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/iio/adc/ad7816.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/iio/adc/ad7816.c b/drivers/staging/iio/adc/ad7816.c
index ee50e72..73952b8 100644
--- a/drivers/staging/iio/adc/ad7816.c
+++ b/drivers/staging/iio/adc/ad7816.c
@@ -231,7 +231,7 @@ static ssize_t ad7816_show_value(struct device *dev,
 		value = (s8)((data >> AD7816_TEMP_FLOAT_OFFSET) - 103);
 		data &= AD7816_TEMP_FLOAT_MASK;
 		if (value < 0)
-			data = (1 << AD7816_TEMP_FLOAT_OFFSET) - data;
+			data = BIT(AD7816_TEMP_FLOAT_OFFSET) - data;
 		return sprintf(buf, "%d.%.2d\n", value, data * 25);
 	}
 	return sprintf(buf, "%u\n", data);
-- 
2.7.4


