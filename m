X-GM-THRID: 6620096919809032192
X-Received: by 2002:a17:902:624:: with SMTP id 33-v6mr420516plg.24.1541397280397;
        Sun, 04 Nov 2018 21:54:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:a9c6:: with SMTP id b6-v6ls12105887plr.11.gmail;
 Sun, 04 Nov 2018 21:54:39 -0800 (PST)
X-Google-Smtp-Source: AJdET5eann9fuLzeQdcO2eGuKGyhKzSTjNn/f3NFdnWryB54Y99tNl0OEARq0Qg1sLLrlsKt2Lpk
X-Received: by 2002:a17:902:9b85:: with SMTP id y5-v6mr1372003plp.110.1541397279753;
        Sun, 04 Nov 2018 21:54:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1541397279; cv=none;
        d=google.com; s=arc-20160816;
        b=g4beE5SQRruPTxVCC7qZZaofgmtjxVAaDs+Dyyn3yvui2E3hbx1M2hEgL3U4Ew/8sW
         Bu+gmdcG0WmXS3VFzfE4Z2zFrB8RyWXr/TOx8DyjaT3IU/g15H9pK5qHGx/X9ZRuVjO1
         OUHujLNX3o3XiaS1o8R1+CoRBK/tzUH3tc41QSrofCkoi9oHXrXr27m9okGU2kkaQUtr
         x2U+PtH3owdwFAp6T270OJoDhOe8QZHhq3aeYwCUM8zTlNthaWoj2s4uJScqpLit2BsG
         hz49moRPsNL/8mMGyHtEUT0GNDR9bIgRLhNlJxK4Wz5SNi2WPz3o8ps777rLpnzO6S+V
         Q5vg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject;
        bh=vHxtbzPAV75LII067CdAAhmPJEo28nYsyB7yelvrQqE=;
        b=jL+i3o8jijO+gLwFMYxQnVMXM0I/YzC1MHzkvSVg7H52sGyHirGvsFKw+6j38Vmjyc
         K4x0ab6KQ9HwxH+01IgWbBcvrCmKok+4eBE+0we0uRgCN2unOI87U+e5iu2zR+O2JB+x
         krDGMYcp8NsfnjzHaueQVc+VnaXnEFQpIpnIG0MyD5Q5wuhCrIaLHlBS3IDEUsqsCgbV
         i/EsbtEksqq/o1u5B2xFEkj+Wtvj0gjGkGeQ/zI679bmZ5lGqLhqduogG/++rrs5wrEz
         8lpfb3AqTeSb4yPceJETCifkaLNq62JIlYvnmOb2ZEXt6aVMg4MfJvtu2SHh79m3T3bx
         kPxA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gaoxiang25@huawei.com designates 45.249.212.35 as permitted sender) smtp.mailfrom=gaoxiang25@huawei.com
Return-Path: <gaoxiang25@huawei.com>
Received: from huawei.com (szxga07-in.huawei.com. [45.249.212.35])
        by gmr-mx.google.com with ESMTPS id o12-v6si183463pfk.4.2018.11.04.21.54.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Nov 2018 21:54:39 -0800 (PST)
Received-SPF: pass (google.com: domain of gaoxiang25@huawei.com designates 45.249.212.35 as permitted sender) client-ip=45.249.212.35;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gaoxiang25@huawei.com designates 45.249.212.35 as permitted sender) smtp.mailfrom=gaoxiang25@huawei.com
Received: from DGGEMS403-HUB.china.huawei.com (unknown [172.30.72.58])
	by Forcepoint Email with ESMTP id 8415D18282021;
	Mon,  5 Nov 2018 13:54:35 +0800 (CST)
Received: from [10.151.23.176] (10.151.23.176) by smtp.huawei.com
 (10.3.19.203) with Microsoft SMTP Server (TLS) id 14.3.408.0; Mon, 5 Nov 2018
 13:54:27 +0800
Subject: Re: [Outreachy kernel] Re: [PATCH v2 1/2] staging: erofs: Modify
 conditional check.
To: Bhagyashri Dighole <digholebhagyashri@gmail.com>
CC: Chao Yu <yuchao0@huawei.com>, <gregkh@linuxfoundation.org>, Sasha Levin
	<sashal@kernel.org>, Outreachy <outreachy-kernel@googlegroups.com>,
	<linux-erofs@lists.ozlabs.org>
References: <3db6ea6f3a7b1fab94e5dacc1ec4a026e38548c2.1541394756.git.digholebhagyashri@example.com>
 <5d7fc290-08ad-0c83-d030-de255de81c47@huawei.com>
 <CAOMPgjjF3_JYc6H8FuMXXmNHov30uxy2N+ZtTTtVhSxzmbsnFQ@mail.gmail.com>
From: Gao Xiang <gaoxiang25@huawei.com>
Message-ID: <1c3fa76d-349a-1ea8-09f7-734584282499@huawei.com>
Date: Mon, 5 Nov 2018 13:54:15 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <CAOMPgjjF3_JYc6H8FuMXXmNHov30uxy2N+ZtTTtVhSxzmbsnFQ@mail.gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Originating-IP: [10.151.23.176]
X-CFilter-Loop: Reflected

Hi Bhagyashri,

On 2018/11/5 13:44, Bhagyashri Dighole wrote:
> Thanks Gao. As per discussion in previous mails, I thought we need to submit one change at a time in a patch that's why I modified accordingly. As you suggested it makes sense to fix all similar issues at once and create a single patch for those issues. I will update patch accordingly.
>

hmmm...I think you could make one similar kind of change at once...
For example you can fix all "fix pointer comparisons to NULL" in one patch and fix some else in another patch...

It seems no reason to just fix such one place with a independent patch, right?
Just my personal thought and understanding, you could ignore me if I am wrong. :)

Thanks,
Gao Xiang

>  Thanks 

