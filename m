X-GM-THRID: 6620096919809032192
X-Received: by 2002:a17:902:b701:: with SMTP id d1-v6mr8786pls.77.1541395715485;
        Sun, 04 Nov 2018 21:28:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:89d4:: with SMTP id n81-v6ls10258337pfk.8.gmail; Sun, 04
 Nov 2018 21:28:34 -0800 (PST)
X-Google-Smtp-Source: AJdET5fpL1e1U+isNUfOZCJ6I3bYNxqXnnTLLjj+6Kz3ehagHhYyvROL9d+H3uGwXrLU5rNP/CGa
X-Received: by 2002:aa7:870a:: with SMTP id b10-v6mr288507pfo.25.1541395714633;
        Sun, 04 Nov 2018 21:28:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1541395714; cv=none;
        d=google.com; s=arc-20160816;
        b=wP/KDYp0pOIDU1lWpaIU7rXYNXpNUCaSeea9RuKRbwhA/vihgJVSXJjzrt9uv9QaYA
         G/PmlQMgagkEptkBCRgNSpaZPbdI25MrAQ8gWCSKz+DtVqvOSpniWONrxI4cqKw5bWa3
         B38ZjZEsBQirgRLapVuA8hCnWbeqfOZXsw5HKDRKs/kKKKupWKZZwHdP8/QXiGh9eS3Q
         abzXdllIqlG/qeJjcoY1qGMXVF76I9DlFP4LuFah/4F8Utij1IsBpezwbX9PrNpwjmJW
         C1NO13pZyI3SEIWgaL1u3kioLyqVAMb0xs75WArc9ysDhJlCpDsb1MCYvUPH40Tg0n6m
         4lHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject;
        bh=HzupxB7rlulDUV+Ssm1Am5Y1V3XlZ6tZcWjhZSGfMiM=;
        b=CsdT5KXmErr8pU41QS298Frfu8lt0YIh/PXF1Iub8A+p73ksuiGsWSoBGc3b1RC4Nt
         CRqkn8Pv4WTCR2AwPWCbxzVJeboMEuqeyxjLv3XRuoms0WJZwhTrdVvto1MHm81HYe7R
         +VSO3hE1zJkZagikgxbjp3orZ8Mt0YgiBhR5E9s0DWipjEhjnSktlpVwNLmCsU3ktXin
         ikMQFWrSgYJ1q4Ovi3dXtCwfiIfef4uRPo7gDyjyWoEk1g2tb1R36UaesE32iDs3PU3z
         Lh+bFZQamss0O1tTrr1OW4snNODXieOE8A6oW//Jfom/yCmgpBqT+Cdqj6Hd0NtAPb/e
         WvOw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gaoxiang25@huawei.com designates 45.249.212.191 as permitted sender) smtp.mailfrom=gaoxiang25@huawei.com
Return-Path: <gaoxiang25@huawei.com>
Received: from huawei.com (szxga05-in.huawei.com. [45.249.212.191])
        by gmr-mx.google.com with ESMTPS id p4-v6si123424plk.1.2018.11.04.21.28.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Nov 2018 21:28:34 -0800 (PST)
Received-SPF: pass (google.com: domain of gaoxiang25@huawei.com designates 45.249.212.191 as permitted sender) client-ip=45.249.212.191;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gaoxiang25@huawei.com designates 45.249.212.191 as permitted sender) smtp.mailfrom=gaoxiang25@huawei.com
Received: from DGGEMS409-HUB.china.huawei.com (unknown [172.30.72.59])
	by Forcepoint Email with ESMTP id A925041BC71E6;
	Mon,  5 Nov 2018 13:28:29 +0800 (CST)
Received: from [10.151.23.176] (10.151.23.176) by smtp.huawei.com
 (10.3.19.209) with Microsoft SMTP Server (TLS) id 14.3.408.0; Mon, 5 Nov 2018
 13:28:22 +0800
Subject: Re: [PATCH v2 1/2] staging: erofs: Modify conditional check.
To: "Bhagyashri P. Dighole" <digholebhagyashri@gmail.com>
CC: Chao Yu <yuchao0@huawei.com>, Greg Kroah-Hartman
	<gregkh@linuxfoundation.org>, Sasha Levin <sashal@kernel.org>, Outreachy
	<outreachy-kernel@googlegroups.com>, <linux-erofs@lists.ozlabs.org>
References: <3db6ea6f3a7b1fab94e5dacc1ec4a026e38548c2.1541394756.git.digholebhagyashri@example.com>
From: Gao Xiang <gaoxiang25@huawei.com>
Message-ID: <5d7fc290-08ad-0c83-d030-de255de81c47@huawei.com>
Date: Mon, 5 Nov 2018 13:27:31 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <3db6ea6f3a7b1fab94e5dacc1ec4a026e38548c2.1541394756.git.digholebhagyashri@example.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.151.23.176]
X-CFilter-Loop: Reflected

Hi Bhagyashri,

On 2018/11/5 13:13, Bhagyashri P. Dighole wrote:
> Found issue using checkpatch.
> Use ! for NULL test rather than explicitly comparing to NULL.
> 
> Signed-off-by: Bhagyashri P. Dighole <digholebhagyashri@gmail.com>
> ---
>  drivers/staging/erofs/data.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/erofs/data.c b/drivers/staging/erofs/data.c
> index 6384f73..a671ad4 100644
> --- a/drivers/staging/erofs/data.c
> +++ b/drivers/staging/erofs/data.c
> @@ -240,7 +240,7 @@ static inline struct bio *erofs_read_raw_page(
>  		bio = NULL;
>  	}
>  
> -	if (bio == NULL) {
> +	if (!bio) {
>  		struct erofs_map_blocks map = {
>  			.m_la = blknr_to_addr(current_block),
>  		};
> 

Could you please fix pointer comparisons to NULL all in once?
at least for a specific file (eg. for the staging/erofs/data.c only)?

It is somewhat weird to just fix one place only of data.c +243 as above,
this is my personal suggestion...

Thanks,
Gao Xiang


