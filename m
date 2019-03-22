X-GM-THRID: 6670775927443554304
X-Received: by 2002:aed:3b14:: with SMTP id p20mr5926839qte.240.1553217776998;
        Thu, 21 Mar 2019 18:22:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:110f:: with SMTP id c15ls3181697qtj.3.gmail; Thu, 21 Mar
 2019 18:22:56 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzm9J/xE9bdBu4k+kcIk5GmobUJu8zVda+Fbi66IazLviLtUWzWvnAPmUFhWAXXwoKiN4mS
X-Received: by 2002:aed:3f51:: with SMTP id q17mr5805700qtf.346.1553217776329;
        Thu, 21 Mar 2019 18:22:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553217776; cv=none;
        d=google.com; s=arc-20160816;
        b=bSh3/CJ0pa2NMOndZXzce0YweGp/oZDH7/kbdhjkH+v56eOGo6ltV/ZoBNsMCWl+gF
         sE0G0ijdhIgKS5g6Udv4QpvuvMDhl2F2i4hS/i9FK+N3YEMrvoeXAcKt8WVSUofu4TIW
         E60MeiTYDGvoC7/O946zSN5V69RfeLaD9fxsAfWMKmEvG2EPyaMw9ibbygs4vm6De5Fs
         PJPFXcibBJNuvF/5AP4IA+MHHnYtge/qsYb/jCcR+4jAVoln2IVL4eY/VdheQ/UsdBA7
         SvTH9jAaXuLOFpaj8XUv8mxU2IvQykUGYwfaXi4zOihrHXnLv2WwVWPK+kio+04VH8m3
         MWOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject;
        bh=QHXbuYT2R8QtuuiSv1g+tfYPLaExOLhkp/8iQvdGEe0=;
        b=CJedZZDwwYkp2rwPGzcGuWMKXVmpgxbojV0+BisQS7rMCBujXwPZe5wxH8HeM1Yd/V
         ilmQdyXqX74dctY77qjYszZszblAwhWZZcZYlZUsvpsj68mLeNYH/y32aSI57/Emyclc
         S03SVKrBtgp20d1WDbrVVPrDJ54YNg0Nuz7sApM/S+p5+EjmgQEMQmG52jNr+eEFeiEG
         ExY0sUMwX9wuthdqYGiTNf23Up3PCTtM/Af9dFfY43y7sVBJZ8SlY8d/eDGNo9PP51iq
         a1rrTYYc59cLDR8nvy6cwpDdw1SBJGNCtjm0A4iU+OlDbnidfA/hCU2U8rYl2+hzX9cf
         +XTA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gaoxiang25@huawei.com designates 45.249.212.35 as permitted sender) smtp.mailfrom=gaoxiang25@huawei.com
Return-Path: <gaoxiang25@huawei.com>
Received: from huawei.com (szxga07-in.huawei.com. [45.249.212.35])
        by gmr-mx.google.com with ESMTPS id o59si400991qte.3.2019.03.21.18.22.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 18:22:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of gaoxiang25@huawei.com designates 45.249.212.35 as permitted sender) client-ip=45.249.212.35;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gaoxiang25@huawei.com designates 45.249.212.35 as permitted sender) smtp.mailfrom=gaoxiang25@huawei.com
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.59])
	by Forcepoint Email with ESMTP id A394FECEF5ECA0AC6A9A;
	Fri, 22 Mar 2019 09:22:52 +0800 (CST)
Received: from [10.151.23.176] (10.151.23.176) by smtp.huawei.com
 (10.3.19.214) with Microsoft SMTP Server (TLS) id 14.3.408.0; Fri, 22 Mar
 2019 09:22:42 +0800
Subject: Re: [PATCH v2] Staging: erofs: Use !x in place of NULL comparision
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Bhanusree Pola
	<bhanusreemahesh@gmail.com>
CC: <outreachy-kernel@googlegroups.com>, Chao Yu <yuchao0@huawei.com>, "Miao
 Xie" <miaoxie@huawei.com>
References: <20190321152007.5726-1-bhanusreemahesh@gmail.com>
 <20190321191303.GA6252@kroah.com>
From: Gao Xiang <gaoxiang25@huawei.com>
Message-ID: <a7101189-b212-a815-d6be-6479d4bc2e4b@huawei.com>
Date: Fri, 22 Mar 2019 09:22:40 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <20190321191303.GA6252@kroah.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.151.23.176]
X-CFilter-Loop: Reflected



On 2019/3/22 3:13, Greg Kroah-Hartman wrote:
> On Thu, Mar 21, 2019 at 08:50:07PM +0530, Bhanusree Pola wrote:
>> Test for NULL as !x instead of NULL comparisions.
>> Issue found using coccinelle
>> Semantic patch used to solve the problem is as follows
>>
>> // <smpl>
>> @@
>> expression x;
>> statement S;
>> @@
>>
>> x = (\(kmalloc\|devm_kzalloc\|kmalloc_array\|devm_ioremap\|
>> usb_alloc_urb\|alloc_netdev\|dev_alloc_skb\)(...));
>>
>> -if(x==NULL)
>> +if(!x)
>> S
>>
>> @@
>> expression e;
>> @@
>>
>> -e == NULL
>> +!e
>> // </smpl>
>>
>> Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
>> ---
>>
>> v2:
>>  -modified commit log.
>>  -All NULL comparisions in erofs are modified.
> 
> This patch does not apply to my staging-testing branch.  Please rebase
> it and resend, thanks.

opps, it seems that there is another new patch called

From e2ff9f15e8ac8861929573e4fa80bfe92e1b1805 Mon Sep 17 00:00:00 2001
From: Vatsala Narang <vatsalanarang@gmail.com>
Date: Thu, 21 Mar 2019 05:36:13 +0530
Subject: staging: erofs: Replace NULL comparisons

which has been merged recently, I will rebase the patch and clean up all
NULL comparisions.

Thanks,
Gao Xiang

> 
> greg k-h
> 

