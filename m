X-GM-THRID: 6805922771293437952
X-Received: by 2002:a05:6000:10e:: with SMTP id o14mr4390504wrx.231.1584627379053;
        Thu, 19 Mar 2020 07:16:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:f803:: with SMTP id s3ls303740wrp.10.gmail; Thu, 19 Mar
 2020 07:16:17 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvdnFq2soqx9LfUS0dG+EmMSIPTb0RsGv/UagsUxtsVUyI9kR0zMAuY7CLqgB24OdraGwz2
X-Received: by 2002:a5d:6cce:: with SMTP id c14mr4830358wrc.149.1584627377489;
        Thu, 19 Mar 2020 07:16:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584627377; cv=none;
        d=google.com; s=arc-20160816;
        b=khS3+ibAJhQ9Cggdoy2ZPOjxZa12S63SaSdDqHD3n+WNXSgvwMDsan4ZISWoEqAqCB
         fqDrnB7EudNBUHZk9zQZBJ86muOy7b0XT6gR7DVJplWw+Zid9tjE6leo05Hebl1rp2gL
         KQecmcFy9rcZfPj78ULq//TjZCDCRE/xdeu5owKQOJzcS1SpISnXN/4d2wNkDL749Xv7
         9U05927jBY56jEjjiZST4j/U2jjVTkiwy2DPmVDcP8uRuzjcw6s2h8qA7KauuhK3E8tn
         uBT95GWjDrTdlz8bm62aXub5E+xDoas/cHCEgxFGR4ZysAcAM2mTvJZFRBditTnsGpzS
         dOBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=MWR/Zr/DcYhIvm00znf/s83MRU0CoeOguSAfJW1giXo=;
        b=D0KMRnNCIMW/T474nOJt+2QgAkLAug45D3aFnhHyIs4r5ClHxuYIpHUDN/snKpXUdR
         TXPsZIrFUSbXYsxl0tcDyauRytMAGqEe8aDOqVJgCCOOIPTt+zAOpxLJCUQECrMrBkWZ
         7FrLzsQIWZV83P14cPYInwaEv7z3glQva4PmphvSQhB2HrNnQWZ7Q8BohE2gw0XIqY1N
         1YPQHq3slF0ZxSvxz6HMH5zBsAgjzmRYfPmMOmSNB+LK3eAVHS2CeYDhmQPVO4vlMl4N
         NZCy5zu4WOLqju4vO71tJqnLmm/As+4SU+B4f2UghXGw/6PTp0cbhIbuJsCzBoYbPpZd
         aVfQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Yn/tacIn";
       spf=pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::141 as permitted sender) smtp.mailfrom=gokcekuler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <gokcekuler@gmail.com>
Received: from mail-lf1-x141.google.com (mail-lf1-x141.google.com. [2a00:1450:4864:20::141])
        by gmr-mx.google.com with ESMTPS id y201si307648wmc.0.2020.03.19.07.16.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Mar 2020 07:16:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::141 as permitted sender) client-ip=2a00:1450:4864:20::141;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Yn/tacIn";
       spf=pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::141 as permitted sender) smtp.mailfrom=gokcekuler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lf1-x141.google.com with SMTP id x143so1739282lff.12
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Mar 2020 07:16:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=MWR/Zr/DcYhIvm00znf/s83MRU0CoeOguSAfJW1giXo=;
        b=Yn/tacInoVazQeN64ZnI0k/qnXqzs+zZBzJR6UQSPg8TmpZYZoZlEOp55uu0PKM7AJ
         /zjJg4X1epiy1bAiz0uu5g30e9S6vrrVo/sGRkW09ifNrddfW8KDF66ChZB2xpZ6VFK2
         8ZkWxlhP6RUupuB8qDWxgETMxEIeTPhD7T4qPaRZSoGk/mCpFf65Y2MFObj4aG83Z7dt
         ub1/6lFs0Mcp8I2Qf5vaaDq95SfJ6MmgBDq/SOu4JCv35GUi4srtZ1SqkupNYXJAGb5F
         HMOe13WT2GIczX4u5lHxEd1PZg+IDQcT9rwR7SqapSl3mDqG7xjg9Wd46NiJAtlLMclg
         2rCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=MWR/Zr/DcYhIvm00znf/s83MRU0CoeOguSAfJW1giXo=;
        b=hPFE+fTqPJtcFTYrn/eooWa8PUyFHIHqKAw0M5he6A+D2LBsLFb8PSgCQDGjd4LfhE
         qJ7z6b3/lhkCzUu9lLFWV5hjWOR5/82dCFvOR4hRq4t82X0T0np2SEa3g+NxIk99Xxg2
         DfP6Ijbhe/jVjEgJM+3e51ylKcGtXYH0tkiqP/16L28svMsNmQ++uh1AnYLcHenf72Vb
         +C8hjPQmAO1n7eu7uyk+L/a7+skB0h3+kIr+xs91nIz5OenmbBcQDqYQtEYGGQrpjKwn
         OHc2XHIa3PSVg0Wj29kqk208mRIah+rQwzmPvIKh8PUwkvL+5XGSUEW4LjmGEWHZ9kdN
         XuXQ==
X-Gm-Message-State: ANhLgQ26lCF7fG1Jkq0uQJIWDDsut5a4jrm2zSJp3kjazGtFb885Cxf0
	EIA7jvf9NkvI8+//mDTXSKLQQiPuLyU=
X-Received: by 2002:ac2:4a6d:: with SMTP id q13mr2306703lfp.27.1584627376818;
        Thu, 19 Mar 2020 07:16:16 -0700 (PDT)
Return-Path: <gokcekuler@gmail.com>
Received: from siyah2 ([88.241.68.50])
        by smtp.gmail.com with ESMTPSA id c6sm1536598ljj.71.2020.03.19.07.16.15
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 19 Mar 2020 07:16:15 -0700 (PDT)
Date: Thu, 19 Mar 2020 17:16:12 +0300
From: Gokce Kuler <gokcekuler@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH] staging: sm750fb: rearrange line exceeding 80 characters
Message-ID: <20200319141612.GA11981@siyah2>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Moved to the bottom line after << operator for it exceeds 80 character

Signed-off-by: Gokce Kuler <gokcekuler@gmail.com>
---
 drivers/staging/sm750fb/sm750_cursor.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/sm750fb/sm750_cursor.c b/drivers/staging/sm750fb/sm750_cursor.c
index bbbef27..b67c545 100644
--- a/drivers/staging/sm750fb/sm750_cursor.c
+++ b/drivers/staging/sm750fb/sm750_cursor.c
@@ -116,7 +116,8 @@ void sm750_hw_cursor_setData(struct lynx_cursor *cursor, u16 rop,
 					opr = mask & color;
 
 				/* 2 stands for forecolor and 1 for backcolor */
-				data |= ((opr & (0x80 >> j)) ? 2 : 1) << (j * 2);
+				data |= ((opr & (0x80 >> j)) ? 2 : 1) <<
+				       	(j * 2);
 			}
 		}
 		iowrite16(data, pbuffer);
-- 
2.7.4


