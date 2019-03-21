X-GM-THRID: 6670775927443554304
X-Received: by 2002:a25:48b:: with SMTP id 133mr453045ybe.91.1553163247997;
        Thu, 21 Mar 2019 03:14:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0d:d306:: with SMTP id v6ls1448688ywd.9.gmail; Thu, 21 Mar
 2019 03:14:06 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyCkamypSghDfdG4TsnwkA37yGeG18eBTPKyStZ/rrFuJ82z3KSti8OWceChuxCHNxhaKCF
X-Received: by 2002:a81:3653:: with SMTP id d80mr554731ywa.20.1553163246945;
        Thu, 21 Mar 2019 03:14:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553163246; cv=none;
        d=google.com; s=arc-20160816;
        b=RfdZXfpC8Bw1sSfIew0dSrwZPbOC1XA0Ac+PS8UpxPH+lPSOTqtbp3fJ8LrhfO/e+J
         RiHHEDY/1f+wDAPJMPS4Eqz10Ql4m+2ST79PyzsxtjjaEVqGGfkKywyuE25NHgpYoFTE
         fHL9jVedyHysbJ8YTxRmahXHYs9WQIHmlax513SuNNctSMMYYOfFTvaGHBHvILQFNrai
         kaHObUUekKZV4400y6AGG6lEQTMvuAOHsntMj6wfln+aYloa/5UQKeL7udJzUSB5r1hB
         x/k4Sz1uG4fRuEmUcUH61uAfOH0rOtQxUyButAmDzM8BB7N2oY1M1w5XAabKi6WvxcO/
         zvyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject;
        bh=QZY9SWxLNfab2bbkpzuvqdmUQgYORr/pnIE1/U/14R8=;
        b=i0HFBvW7FaH8WkjO5dk2EyOEpC5FiQE7EgayrQ6j4OUNqaA3WdeetJZ9M3I6kowzKT
         iG7uaC9t3NXdbik4wr6oYyu+J2ZQqy9esnA6LctQHr0AvoAGBdGdbO2NrCWMgPMI0jkR
         aYHzkNAwpDSqaOtnj2neZxB7UomaKIUYMYFf+Mb8hCL/O+iLWyvVIuiIaPx44ae/by6p
         i8tbXGkyRGUAmq8rcr1bUTXlzgOV6mSoystl/54JFpdIPSIsA1d1Y6KMGT3K9Ablhvhd
         1INN1TRgCNRN7/juTbXw0fqgabeDEbMRuJ7D5e/qB32Nor0e/ukjoMkOYVDmTT3ld3Dm
         xw8Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gaoxiang25@huawei.com designates 45.249.212.191 as permitted sender) smtp.mailfrom=gaoxiang25@huawei.com
Return-Path: <gaoxiang25@huawei.com>
Received: from huawei.com (szxga05-in.huawei.com. [45.249.212.191])
        by gmr-mx.google.com with ESMTPS id t128si349641ywa.4.2019.03.21.03.14.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 03:14:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of gaoxiang25@huawei.com designates 45.249.212.191 as permitted sender) client-ip=45.249.212.191;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gaoxiang25@huawei.com designates 45.249.212.191 as permitted sender) smtp.mailfrom=gaoxiang25@huawei.com
Received: from DGGEMS403-HUB.china.huawei.com (unknown [172.30.72.59])
	by Forcepoint Email with ESMTP id A31B84A0E55C881DE6EB;
	Thu, 21 Mar 2019 18:14:02 +0800 (CST)
Received: from [10.151.23.176] (10.151.23.176) by smtp.huawei.com
 (10.3.19.203) with Microsoft SMTP Server (TLS) id 14.3.408.0; Thu, 21 Mar
 2019 18:13:55 +0800
Subject: Re: [PATCH] Staging: erofs: Use !x in place of NULL comparision
To: Bhanusree Pola <bhanusreemahesh@gmail.com>,
	<outreachy-kernel@googlegroups.com>
CC: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Chao Yu
	<yuchao0@huawei.com>, "linux-erofs@lists.ozlabs.org"
	<linux-erofs@lists.ozlabs.org>, Miao Xie <miaoxie@huawei.com>
References: <20190321093716.8236-1-bhanusreemahesh@gmail.com>
From: Gao Xiang <gaoxiang25@huawei.com>
Message-ID: <0a20b616-b2b9-9e38-3c0c-c8860cc41a0c@huawei.com>
Date: Thu, 21 Mar 2019 18:12:41 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <20190321093716.8236-1-bhanusreemahesh@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.151.23.176]
X-CFilter-Loop: Reflected

Hi Bhanusree,

On 2019/3/21 17:37, Bhanusree Pola wrote:
> Test for NULL as !x instead of NULL comparisions for
> functions that return NULL on failure are used.
> Issue found using coccinelle
> Semantic patch used to solve the problem is as follows
> 

My personal idea...There are still several other places which use
NULL comparisions introduced by the erofs original code, eg,
super.c
53:     if (vi == NULL)
90:     if (bh == NULL) {
...

internal.h
480:                    if (unlikely(bio == NULL)) {
488:    } while (unlikely(bio == NULL));
...

Could you have time fix them as much as possible in a patch?

It will simplify erofs commit log since there are similar
patches address the same reason but with few fixes...:

staging: erofs: unzip_vle.c: Replace comparison to NULL.
staging: erofs: Modify conditional checks
staging: erofs: formatting fix to NULL comparison

... Thanks in advance...

Thanks,
Gao Xiang

> // <smpl>
> @@
> expression x;
> statement S;
> @@
> 
> x = (\(kmalloc\|devm_kzalloc\|kmalloc_array\|devm_ioremap\|
> usb_alloc_urb\|alloc_netdev\|dev_alloc_skb\)(...));
> 
> -if(x==NULL)
> +if(!x)
> // </smpl>
> 
> Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
> ---
>  drivers/staging/erofs/xattr.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/erofs/xattr.c b/drivers/staging/erofs/xattr.c
> index f716ab0446e5..515b4b446491 100644
> --- a/drivers/staging/erofs/xattr.c
> +++ b/drivers/staging/erofs/xattr.c
> @@ -107,7 +107,7 @@ static int init_inode_xattrs(struct inode *inode)
>  	vi->xattr_shared_count = ih->h_shared_count;
>  	vi->xattr_shared_xattrs = kmalloc_array(vi->xattr_shared_count,
>  						sizeof(uint), GFP_KERNEL);
> -	if (vi->xattr_shared_xattrs == NULL) {
> +	if (!vi->xattr_shared_xattrs) {
>  		xattr_iter_end(&it, atomic_map);
>  		ret = -ENOMEM;
>  		goto out_unlock;
> 

