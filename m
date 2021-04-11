X-GM-THRID: 6949836539406843904
X-Received: by 2002:a92:c0c7:: with SMTP id t7mr19181625ilf.302.1618134931310;
        Sun, 11 Apr 2021 02:55:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a92:cb86:: with SMTP id z6ls3076018ilo.11.gmail; Sun, 11 Apr
 2021 02:55:30 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxr8zEsniiqxX5e+WdXcmf3SrUy96+it5v3Udd7nmmwaf6KYRjwlAbKlRMJU2HG6tBbvBkO
X-Received: by 2002:a05:6e02:b2e:: with SMTP id e14mr18221777ilu.186.1618134930597;
        Sun, 11 Apr 2021 02:55:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618134930; cv=none;
        d=google.com; s=arc-20160816;
        b=EPC7/Sa5hfWVtkZZfcrpXQ7ChYQSon8DMvDgxVwTKuXJ89lr/+BLSDTdDLHvXfl9vy
         4MJB76cIGaw85WWwN54KzjGEAzpPeeykz5cD19wt5fX6Ul9C+SyPkCUrHEeWTM842Zd6
         LlFjQsUW+McuWgoVHO+joiE9oYMGxjg5BiSGqDYyXauNyiQFIH0+TC/GeZ4dsUMntScD
         C197KpEbxmaCw1hJIdKNfWC+mPdRo3Xdq/xb3Jf+8H9nAuMpRcuyk2HePngDQvQgzGIB
         i593zcsKsohvRkA7JtA8Sl1ib5VNu5DvZCFOhQivFA/A2XhlkjXMAWVUpZzbxIHrmg8R
         kDZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Pl6OK6kvb6mtR1DIS3gsdq/VEoxwoRWU6JF/PodSOew=;
        b=aa3rZctRQQpJzpv9NjFkvcet1Fghqs9M6SQxelp7SrmApoeqoF9gZpNEdGIFQt6Dpo
         aOjRrz3uS9UvX82ydogd/hby9W821c6YStBogQn5dPEkSsXkYBrWbeFLNz9MviTwECHi
         SGS5t+yodaM2Y4tve5udTCQwQKk72ZGv4tE5ZzppaW46iWtqHt10WFHQkNtC4RWjCCvH
         yMG0ByMLS04ajJLnWmXxCFzobsEwyA/OSrZlWQsGeAYpc39LeXE8tsRX30ZzCivbLpLY
         Qyz1EGl6YcrdNfK3l4x3xl+Rk//UZ4b5SfKJUSGWr2C5P+7ON94XEQ89vCS9Q4JzSwCS
         CgwA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=d0N3YN4t;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::1036 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com. [2607:f8b0:4864:20::1036])
        by gmr-mx.google.com with ESMTPS id n13si441558iop.3.2021.04.11.02.55.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 11 Apr 2021 02:55:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::1036 as permitted sender) client-ip=2607:f8b0:4864:20::1036;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=d0N3YN4t;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::1036 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1036.google.com with SMTP id j6-20020a17090adc86b02900cbfe6f2c96so5416555pjv.1
        for <outreachy-kernel@googlegroups.com>; Sun, 11 Apr 2021 02:55:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=Pl6OK6kvb6mtR1DIS3gsdq/VEoxwoRWU6JF/PodSOew=;
        b=d0N3YN4tNx9oMkqNnL2mTPcK50et2G7T6zeuGSrMpDsxq94gMRHbbie7h3ZWOdyKVD
         Or6cCJB67BsxYon+FwH7SqXHf7Y3Z38s5LL7u64sbYVez68Znu3MR8DqNJsudksvi9/o
         4BHKBLzdvgDPylQBVSLI/ox0aCvHarzT7ARinbjVR6S1/eORWlIq8GQSXiCc5qYZwz/2
         S/MX9W6ocBbGCqPFXIqaiWwAji9TQYOabv1DhQCbDNCfLXx/8nCQVIqU1KvUOU2dG71U
         JX/Grp0wmJuM9KOal5YRjKV49WeO/+a2xhuFH2WQfUkNvCmV0xjNjqp9bp+NlLdhbo/G
         GB+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=Pl6OK6kvb6mtR1DIS3gsdq/VEoxwoRWU6JF/PodSOew=;
        b=TR5jbA0SIDbOUOhtjPUwJSsXuK6hBG8pV9bH8Ql/2/j19VIzBa4k3UEO/E8aehRqVj
         zMdkQBsbYP8+95dFqKH62lFxFJc61DnglchQ09NpElPpMVNx2vkmqdHJcqVz4sQeYKtv
         TfvxfW3u+UKH17Pu23AnFmTic3orXlAe+JEniRqNwuq0zcCE3ji2UKhetlvuwV5iTfGx
         fEddKow6OaUZhk+zjRdR/9TUEojQfXXjjUphtmkqUXpPuhmcj2sp0jqpuQrYS5M53gwe
         KuwNGJf1v3yr6QjaLmGVXnCPpFc4gclaBnxRgl4wbg0S6DhZHNczJJuitHQzBQRjh9VV
         Fa2w==
X-Gm-Message-State: AOAM533aFw+Xwhfn4zhMgP322aS2gzfg8RhS5p+HSpfuQbt7kuqCWFUT
	3bW8QJshAMt7PDdNH5C5QHLrkrGKoGEe+g==
X-Received: by 2002:a17:90a:c28a:: with SMTP id f10mr24210920pjt.15.1618134930010;
        Sun, 11 Apr 2021 02:55:30 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([103.141.87.253])
        by smtp.gmail.com with ESMTPSA id f187sm6851467pfa.104.2021.04.11.02.55.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Apr 2021 02:55:29 -0700 (PDT)
Date: Sun, 11 Apr 2021 15:25:21 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: gregkh@linuxfoundation.org
Cc: linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, mitali_s@me.iitr.ac.in
Subject: [PATCH v3 1/3] staging: rtl8192e: remove parentheses around boolean
 expression
Message-ID: <30a330377667aa5043a60ed3cdf1bbb37099631c.1618133351.git.mitaliborkar810@gmail.com>
References: <cover.1618133351.git.mitaliborkar810@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1618133351.git.mitaliborkar810@gmail.com>

Removed unnecessary parentheses around '!xyz' boolean expression as '!' has higher
precedance than '||'

Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
---
 
Changes from v2:- Modified subject description.
Changes from v1:- Removed unnecessary parentheses around boolean expression.
Changes has been made in v2.

 drivers/staging/rtl8192e/rtl819x_HTProc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192e/rtl819x_HTProc.c b/drivers/staging/rtl8192e/rtl819x_HTProc.c
index b1fa8e9a4f28..431202927036 100644
--- a/drivers/staging/rtl8192e/rtl819x_HTProc.c
+++ b/drivers/staging/rtl8192e/rtl819x_HTProc.c
@@ -276,7 +276,7 @@ void HTConstructCapabilityElement(struct rtllib_device *ieee, u8 *posHTCap,
 	struct rt_hi_throughput *pHT = ieee->pHTInfo;
 	struct ht_capab_ele *pCapELE = NULL;
 
-	if ((!posHTCap) || (!pHT)) {
+	if (!posHTCap || !pHT) {
 		netdev_warn(ieee->dev,
 			    "%s(): posHTCap and pHTInfo are null\n", __func__);
 		return;
-- 
2.30.2


