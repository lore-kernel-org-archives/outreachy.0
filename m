X-GM-THRID: 6620096919809032192
X-Received: by 2002:a62:4e42:: with SMTP id c63-v6mr271648pfb.41.1541395873858;
        Sun, 04 Nov 2018 21:31:13 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:5992:: with SMTP id k18-v6ls1082580pfj.14.gmail; Sun, 04
 Nov 2018 21:31:13 -0800 (PST)
X-Google-Smtp-Source: AJdET5cJW7bs8JN7CCnFCU8X25MzY52aSgw1nxknJ3+B6kCCiXPS/qRYMlsdDz9M66Yid3drNoWi
X-Received: by 2002:a63:2b96:: with SMTP id r144-v6mr6672881pgr.61.1541395873087;
        Sun, 04 Nov 2018 21:31:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1541395873; cv=none;
        d=google.com; s=arc-20160816;
        b=z2nHuZWDtie1LYo8ahhpQSNpU185QEI9caSR8MckIagm0zJezZ2wSyBTu7sA0bmLTS
         YH8AfXkXpd1BJCtNcEymZJz0B0g1GxFF5BXM1tTPmhb5oxHHuK5Ls6zRZMyjHh+L8nMP
         ryhFkDgTAm1oaLZ8v2mcC2r4DP47QOhsb9FQWnyR2oJAxfMwrWpdFJBHiPFLscwExrmf
         /Si0RJpBlmFTnRLn4wCMDd6jzYlYZ1D/4z58RpyKKGG5ufe3bYJxVrvCLJBBZUkbLbeD
         NY8DfjAh2ZkQTxGr/lbPP8NBERwiI2SsEPdieEx5h1IQYVXpf0FR1S4HPTvlLnV2u+kk
         AKuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject;
        bh=kOVVqJeUV5504t1JJoQ7+03rTUDSqGCiY5DjAmUMI6s=;
        b=Qulsd9yYtgdLyzSCpV9I7XiwOD8bASUDlCDSv2PdXous+IMdS+d4uSWBxgpsuLOiZq
         wfmMpjXn9Vqu3Q6/S1kmhD1C9K7Fl8UqYiNuMwYKD2QvXOETGLAajumHwnmaoBLbYXCa
         TZ8IDwKveriHv0Xj8m/jZ2XtgvScVjnRtH3TN2yKQt/PwumWump4FvpxvXa0PVh6kROl
         ijGSlTnmPZiDi0o0/F2ThFNhBcW3cAc/yFIequvt5Gzp5AzdJCo5Rjzd3p6hDVf2YvGS
         /vb0dGbzv9dgj5nq3EjJomLKMvxA+lEk6k0FZtaFK5sSDWc/7i2dcCrCQf+BU91G7n2V
         rL0w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gaoxiang25@huawei.com designates 45.249.212.190 as permitted sender) smtp.mailfrom=gaoxiang25@huawei.com
Return-Path: <gaoxiang25@huawei.com>
Received: from huawei.com (szxga04-in.huawei.com. [45.249.212.190])
        by gmr-mx.google.com with ESMTPS id o9-v6si68830pfi.5.2018.11.04.21.31.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Nov 2018 21:31:13 -0800 (PST)
Received-SPF: pass (google.com: domain of gaoxiang25@huawei.com designates 45.249.212.190 as permitted sender) client-ip=45.249.212.190;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gaoxiang25@huawei.com designates 45.249.212.190 as permitted sender) smtp.mailfrom=gaoxiang25@huawei.com
Received: from DGGEMS405-HUB.china.huawei.com (unknown [172.30.72.58])
	by Forcepoint Email with ESMTP id 1E6C32DFF35CB;
	Mon,  5 Nov 2018 13:31:08 +0800 (CST)
Received: from [10.151.23.176] (10.151.23.176) by smtp.huawei.com
 (10.3.19.205) with Microsoft SMTP Server (TLS) id 14.3.408.0; Mon, 5 Nov 2018
 13:31:03 +0800
Subject: Re: [PATCH v2 2/2] staging: erofs: Modify Alignment
To: "Bhagyashri P. Dighole" <digholebhagyashri@gmail.com>
CC: Chao Yu <yuchao0@huawei.com>, Greg Kroah-Hartman
	<gregkh@linuxfoundation.org>, Sasha Levin <sashal@kernel.org>, Outreachy
	<outreachy-kernel@googlegroups.com>, <linux-erofs@lists.ozlabs.org>
References: <3db6ea6f3a7b1fab94e5dacc1ec4a026e38548c2.1541394756.git.digholebhagyashri@example.com>
 <ab1426b48b16317bd787f0f15dbd9ffaaacf6c72.1541394756.git.digholebhagyashri@example.com>
From: Gao Xiang <gaoxiang25@huawei.com>
Message-ID: <16a42518-c147-e368-2232-15c3cb110093@huawei.com>
Date: Mon, 5 Nov 2018 13:30:11 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <ab1426b48b16317bd787f0f15dbd9ffaaacf6c72.1541394756.git.digholebhagyashri@example.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.151.23.176]
X-CFilter-Loop: Reflected

Hi Bhagyashri,

On 2018/11/5 13:14, Bhagyashri P. Dighole wrote:
> Found alignment issue using checkpatch.
> Matched alignment with parenthesis of page struct.
> 
> Signed-off-by: Bhagyashri P. Dighole <digholebhagyashri@gmail.com>
> ---
>  drivers/staging/erofs/data.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/erofs/data.c b/drivers/staging/erofs/data.c
> index a671ad4..a62be35 100644
> --- a/drivers/staging/erofs/data.c
> +++ b/drivers/staging/erofs/data.c
> @@ -40,7 +40,7 @@ static inline void read_endio(struct bio *bio)
>  
>  /* prio -- true is used for dir */
>  struct page *__erofs_get_meta_page(struct super_block *sb,
> -	erofs_blk_t blkaddr, bool prio, bool nofail)
> +				   erofs_blk_t blkaddr, bool prio, bool nofail)
>  {
>  	struct inode *const bd_inode = sb->s_bdev->bd_inode;
>  	struct address_space *const mapping = bd_inode->i_mapping;
> -- 2.7.4

Ditto, the similar case as I mentioned in the previous commit
"staging: erofs: Modify conditional check"...Could you please fix them all
(at least in the per-file range)?

Thanks,
Gao Xiang

