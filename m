X-GM-THRID: 6620077565776232448
X-Received: by 2002:a62:d206:: with SMTP id c6-v6mr6617142pfg.128.1541358280692;
        Sun, 04 Nov 2018 11:04:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:7c82:: with SMTP id y2-v6ls3870212pll.5.gmail; Sun,
 04 Nov 2018 11:04:39 -0800 (PST)
X-Google-Smtp-Source: AJdET5fy/hcFwJX2WkNm0ZT4oj99IHPItMeDshBMMrTlTKTmqzk8WJJz1znoKj0GVQhiVzL5HWEw
X-Received: by 2002:a17:902:6909:: with SMTP id j9-v6mr1166819plk.49.1541358279912;
        Sun, 04 Nov 2018 11:04:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1541358279; cv=none;
        d=google.com; s=arc-20160816;
        b=yISufOOt121QGWn0hTL/HQvpTfG+p731XncynPFMa7LVD2wSwimCPjjS0MkHlro6nt
         WHc0AVxzOUYP77dzoDPKCNSi/phUQmZ8i9gcj1Q8M0lgJBjNhGI/NwUrq2eacqxAK4qM
         RVI/XhYrMB+IfqOhpQax+5z5bBV3cF8KeBrlwQ6fz9W3nkGUzYwkLXoIl95ZUtNN121O
         YAS1eU0u0+wgeDZu2BJ8+uAuRcGBGUyaQgv+rX9o5xSh25TrK/wmIQk+Ha2exjLSApxh
         HUyjcIWhkOivZxlI4Y+UVmBgBlFQabyCM76xW3VgK6f3ufwWNVLTh1hFxnAxrhAyllRj
         pIgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=fu56npaZy2iLNWYF182ni59ORuz319NmkObMtKDHl0w=;
        b=M83J8Jnk1XeAdNXMEiYAxF9/4tkNrsJg+JzbXmU0WIaixljTzU3I02jqK3IJ9jW8r1
         3Wr+vrd4K+uHf0xZiRoC+VOSn2z0RUedtokEkdB8+jwXNYp5nmTt3Y82FBOFw2QFgH33
         3yJNp/V48Ah6BLdVX0UM5PknJKfoqaZxreoyUBCibVC1Csh4hVZB5vJ3Aq2DIvs74qGR
         p1EuTAg4NpmQce2T3k/I7G3rzGlxlE6yUcOJD2KwF7sPLvzAuQ8pbMxSDOHNfdgD7HeH
         5lOCL50ST93bbWS3TOJLuoaFu89Ii4vONg27WT7cxX5Sz3VK0+g9hUFpmJBS1fflNZMI
         aUkg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=VKdd1j3w;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Return-Path: <sashal@kernel.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t12-v6si1559414plr.4.2018.11.04.11.04.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Nov 2018 11:04:39 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=VKdd1j3w;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from localhost (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 5BB3B2082A;
	Sun,  4 Nov 2018 19:04:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1541358279;
	bh=wW4dMhKIgCx3VllmI9S7PnRiosOC+quznBVegVB/QEc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=VKdd1j3wWmTm+8xcUiULrY39vLSgeCA5rncnTSeU+mzHcgggMdf71InqQiKitdfup
	 eWuRp2PE/vJ3Cj/LOrajSkUi08xEIMMwigALJpK/+8gZ1ChMrd7oKOyTdCVNXBb24o
	 BrnaLdcm+FFa3mjQY9OjfIvDOw0R/6zJjVANsDKw=
Date: Sun, 4 Nov 2018 14:04:38 -0500
From: Sasha Levin <sashal@kernel.org>
To: "Bhagyashri P. Dighole" <digholebhagyashri@gmail.com>
Cc: Gao Xiang <gaoxiang25@huawei.com>, Chao Yu <yuchao0@huawei.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Outreachy <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: erofs: Fix alignment issues
 and warnings.
Message-ID: <20181104190438.GR194472@sasha-vm>
References: <20181104184153.GA16136@bhagyashri-Lenovo-G570>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20181104184153.GA16136@bhagyashri-Lenovo-G570>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Mon, Nov 05, 2018 at 12:11:54AM +0530, Bhagyashri P. Dighole wrote:
>@@ -232,15 +232,15 @@ static inline struct bio *erofs_read_raw_page(
> 	}
>
> 	/* note that for readpage case, bio also equals to NULL */
>-	if (bio != NULL &&
>-		/* not continuous */
>-		*last_block + 1 != current_block) {
>+	if (bio &&
>+	    /* not continuous */
>+	    *last_block + 1 != current_block) {
> submit_bio_retry:
> 		__submit_bio(bio, REQ_OP_READ, 0);
> 		bio = NULL;
> 	}
>
>-	if (bio == NULL) {
>+	if (bio) {

The condition was inverted here, which is incorrect.

--
Thanks,
Sasha

