X-GM-THRID: 6620354100879949824
X-Received: by 2002:a17:902:f217:: with SMTP id gn23mr2215595plb.85.1541432652182;
        Mon, 05 Nov 2018 07:44:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:4494:: with SMTP id m20-v6ls2014862pfi.10.gmail; Mon, 05
 Nov 2018 07:44:11 -0800 (PST)
X-Google-Smtp-Source: AJdET5c/x7x87OkB8U9v4ESJfpp7esMDKbibI6UOM0aXsENOrGR7zSgpTG8F13ZWgERq2n2AfEfW
X-Received: by 2002:a62:bd4:: with SMTP id 81-v6mr7487096pfl.49.1541432651467;
        Mon, 05 Nov 2018 07:44:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1541432651; cv=none;
        d=google.com; s=arc-20160816;
        b=p423xmdrc0UJRIIXY0uEbnvCWq5oZrE7XsaNfT2qiER2oZs8s1qDR/ZpGpXCQoqBVI
         qT8vXXTOlIGVtXSEtT91TJzHI3/APMWRx2vCx4sINH5FJMv7ckbhoERAbfSyxV4JTgUb
         rQvzttH1MYoZfphFCF3vHvnWstN4fx8FnMy+HgWSsm8IU5lJDaeSxfOEU7+b3KDvu23s
         Z+Cbz+X4f75ejGWBP29z4CId8iWYjVvb3Wd0xoTGZBbrO9YtAxFXDJDpJB+H1zITGozQ
         j+VDS9d1QizduzyxlS73/5b2bKKjXuY9nIGsMvDDyb3OrOKMWSBxb9/uolm+gBCLqW3R
         lUTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject;
        bh=OUjBVuQHy8E9qiGj2gJvqyEKaGiumnYq5tUl/sBbDBM=;
        b=qTVMaafgoRmZ77f4BxjoIhIZTPy0VQaGEjTKmtwp+BGSJMa7QwHKrmC9UQJmyGOJIt
         /E01C6e3RkzZSLDNrI20KQjfS2xwvtLAHbbk/OFIie/DfhTdhxqVqUDQukh7of1TZotx
         XdMdFhXUL8wEggP8JopfNeBBwi70akPWNroHjORoQxq6BSxebyj1u9CQ29ml4X4Beduk
         XB1m2tBJC/87+hAxad8/MuhlfCLyevglLRkw/Jh5U+Q0wy8pNFps4YLkxmbjUBBlshcQ
         f1SYiygJBTTfWW9T9RvM+D4mmG0N/nFWAD0vyjbtDgG4VtkVOBvdYikS9VBxVYNQ/T8a
         r3qQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gaoxiang25@huawei.com designates 45.249.212.35 as permitted sender) smtp.mailfrom=gaoxiang25@huawei.com
Return-Path: <gaoxiang25@huawei.com>
Received: from huawei.com (szxga07-in.huawei.com. [45.249.212.35])
        by gmr-mx.google.com with ESMTPS id 184-v6si2326994pgb.4.2018.11.05.07.44.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Nov 2018 07:44:11 -0800 (PST)
Received-SPF: pass (google.com: domain of gaoxiang25@huawei.com designates 45.249.212.35 as permitted sender) client-ip=45.249.212.35;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gaoxiang25@huawei.com designates 45.249.212.35 as permitted sender) smtp.mailfrom=gaoxiang25@huawei.com
Received: from DGGEMS408-HUB.china.huawei.com (unknown [172.30.72.59])
	by Forcepoint Email with ESMTP id 33CC878BF2478;
	Mon,  5 Nov 2018 23:44:07 +0800 (CST)
Received: from [10.151.23.176] (10.151.23.176) by smtp.huawei.com
 (10.3.19.208) with Microsoft SMTP Server (TLS) id 14.3.408.0; Mon, 5 Nov 2018
 23:43:59 +0800
Subject: Re: [PATCH v3 2/2] staging: erofs: Modify conditional checks
To: "Bhagyashri P. Dighole" <digholebhagyashri@gmail.com>
CC: Chao Yu <yuchao0@huawei.com>, Greg Kroah-Hartman
	<gregkh@linuxfoundation.org>, Sasha Levin <sashal@kernel.org>, Outreachy
	<outreachy-kernel@googlegroups.com>, <linux-erofs@lists.ozlabs.org>
References: <b14ab748b6c00632bb2234000d96a7e1912e2b1b.1541421259.git.digholebhagyashri@gmail.com>
 <b36253c9dacce060a90e84f3e8d854749800d720.1541421259.git.digholebhagyashri@gmail.com>
From: Gao Xiang <gaoxiang25@huawei.com>
Message-ID: <3ac63350-6bfc-0dba-2649-ad7f91dd94c9@huawei.com>
Date: Mon, 5 Nov 2018 23:43:48 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <b36253c9dacce060a90e84f3e8d854749800d720.1541421259.git.digholebhagyashri@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.151.23.176]
X-CFilter-Loop: Reflected

Hi Bhagyashri,

On 2018/11/5 22:50, Bhagyashri P. Dighole wrote:
> Fix coding style alignment issues detected by checkpatch.pl
> Use ! for NULL test rather than explicitly comparing to NULL.
> 
> Signed-off-by: Bhagyashri P. Dighole <digholebhagyashri@gmail.com>
> ---
> Changes in v3:
> - Split patch in two patches. Each patch have similar       
>   kind of changes. One patch for all alignment fixes and 
>     second patch for all conditional check fixes.
> 
> Changes in v2:
> - Fix for one alignment issue and one conditional check issue.
> 
> Changes in v1:
> - Fix for all issues in data.c

As the Greg said before, there are too many patchset v3... :(
Apart from its content, could you please resend the whole patchset
by using a proper version number...

It is really confusing for me as well...

Thanks,
Gao Xiang

