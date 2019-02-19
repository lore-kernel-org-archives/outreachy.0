X-GM-THRID: 6659640267598987264
X-Received: by 2002:a9d:68c9:: with SMTP id i9mr12683422oto.55.1550571880525;
        Tue, 19 Feb 2019 02:24:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:f3c5:: with SMTP id r188ls9148398oih.8.gmail; Tue, 19
 Feb 2019 02:24:39 -0800 (PST)
X-Google-Smtp-Source: AHgI3IZ4FRMOOPwzPfjC74yTM8R29S0uN67xg4Np4ewGvS2EqY27aaoA9zC7X4HxU4h6M8YtZD85
X-Received: by 2002:aca:ad14:: with SMTP id w20mr16369321oie.25.1550571879528;
        Tue, 19 Feb 2019 02:24:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550571879; cv=none;
        d=google.com; s=arc-20160816;
        b=d0ugUepLU9WZkelNHsXmcQzegTDFF8L6+NgVedZYQjSg0ixwgSIr2CylOQX4jk4a7G
         CR0TUfK8PP7ONqAG8ihB9Prd7Cbiro89b3pTB69VJ5i/dx8siuqtmV7YkYrPsHrG93Dh
         iW6Vnt4C44krpuMSjTEBlfwk4hwZiiuOggBWwZ1+t84dJj3bVtHuzBQc2tw8FnaDxMo7
         3umzw4l0R0EJ9XG5hzu7UIKEAvnv1iPcHLrJue932QvkMPl/m1V1y6ZrfYTng2RvN8lj
         hgFF3ktZmfizrwOw1tDyctIYy3AhMwdkuh7EJlgmfwTmrg6n7iewNy8Dcf09pq+OCEaG
         tZXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject;
        bh=DDljVud/2zf5SNyOrsAXizDVbsXE54xVB0q0zaZ/kHc=;
        b=J6cYxHtiVTQJIBDS/X5rUzVVS1FbJiRglLcQavaGuhmCX2Nv+hKVc1qadSkKtMBC98
         dSmMbqFxUoOLfBXSnJvi6zhcXzr6uqjoF4yYgOeyFsl8dsfDTxpaewoY2j7IPCBi2XfA
         Fhm8C7k28GFqP44h8vYAG3G6RedQbowp2DUjbaUyZV5Z92houg1HatvBw5kFva/fb98H
         2JXzZPcuS+1Nk8UBJX0m94ay4qRYnKpZ3unrcIg2tZYEWq2LqjBBO/wwK9BIaUN4pFDJ
         owsJBmc66JXxaV2kjhNx539hyR6JfVGV63yF19GtFhNJh/oMuqPXimE/I/tlZC5YmLvc
         H+pg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gaoxiang25@huawei.com designates 45.249.212.191 as permitted sender) smtp.mailfrom=gaoxiang25@huawei.com
Return-Path: <gaoxiang25@huawei.com>
Received: from huawei.com (szxga05-in.huawei.com. [45.249.212.191])
        by gmr-mx.google.com with ESMTPS id x31si225165otb.1.2019.02.19.02.24.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Feb 2019 02:24:39 -0800 (PST)
Received-SPF: pass (google.com: domain of gaoxiang25@huawei.com designates 45.249.212.191 as permitted sender) client-ip=45.249.212.191;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gaoxiang25@huawei.com designates 45.249.212.191 as permitted sender) smtp.mailfrom=gaoxiang25@huawei.com
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.60])
	by Forcepoint Email with ESMTP id 3E9082DE830A75BA19A1;
	Tue, 19 Feb 2019 18:24:36 +0800 (CST)
Received: from [10.151.23.176] (10.151.23.176) by smtp.huawei.com
 (10.3.19.210) with Microsoft SMTP Server (TLS) id 14.3.408.0; Tue, 19 Feb
 2019 18:24:26 +0800
Subject: Re: [Outreachy Kernel][PATCH v2] staging: erofs: match alignment with
 open parentheses
To: Bhanusree Pola <bhanusreemahesh@gmail.com>
CC: <outreachy-kernel@googlegroups.com>, Chao Yu <yuchao0@huawei.com>, "Greg
 Kroah-Hartman" <gregkh@linuxfoundation.org>, linux-staging mailing list
	<devel@driverdev.osuosl.org>, "linux-erofs@lists.ozlabs.org"
	<linux-erofs@lists.ozlabs.org>
References: <20190219092525.GA4474@bhanusree-MacBookAir>
From: Gao Xiang <gaoxiang25@huawei.com>
Message-ID: <881c9fe8-7273-c5e3-32b4-b2947b978ffa@huawei.com>
Date: Tue, 19 Feb 2019 18:24:24 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <20190219092525.GA4474@bhanusree-MacBookAir>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.151.23.176]
X-CFilter-Loop: Reflected

[+cc linux-erofs and staging mailing list]

On 2019/2/19 17:25, Bhanusree Pola wrote:
> Align code with open parantheses to improve the readability.
> Issue found using checkpatch.pl
> 
> Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>

Reviewed-by: Gao Xiang <gaoxiang25@huawei.com>

Thanks,
Gao Xiang

> ---
> 
> v2: -modified log message
>     -corrected spelling in subject line
> 
> drivers/staging/erofs/dir.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/erofs/dir.c b/drivers/staging/erofs/dir.c
> index 833f052f79d0..e1955703ab8f 100644
> --- a/drivers/staging/erofs/dir.c
> +++ b/drivers/staging/erofs/dir.c
> @@ -24,8 +24,8 @@ static const unsigned char erofs_filetype_table[EROFS_FT_MAX] = {
>  };
>  
>  static int erofs_fill_dentries(struct dir_context *ctx,
> -	void *dentry_blk, unsigned int *ofs,
> -	unsigned int nameoff, unsigned int maxsize)
> +			       void *dentry_blk, unsigned int *ofs,
> +			       unsigned int nameoff, unsigned int maxsize)
>  {
>  	struct erofs_dirent *de = dentry_blk;
>  	const struct erofs_dirent *end = dentry_blk + nameoff;
> @@ -104,9 +104,9 @@ static int erofs_readdir(struct file *f, struct dir_context *ctx)
>  		nameoff = le16_to_cpu(de->nameoff);
>  
>  		if (unlikely(nameoff < sizeof(struct erofs_dirent) ||
> -			nameoff >= PAGE_SIZE)) {
> +			     nameoff >= PAGE_SIZE)) {
>  			errln("%s, invalid de[0].nameoff %u",
> -				__func__, nameoff);
> +			      __func__, nameoff);
>  
>  			err = -EIO;
>  			goto skip_this;
> 

