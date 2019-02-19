X-GM-THRID: 6659640267598987264
X-Received: by 2002:a9d:46a:: with SMTP id 97mr11215090otc.4.1550575250065;
        Tue, 19 Feb 2019 03:20:50 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:32c8:: with SMTP id u66ls6895584otb.0.gmail; Tue, 19 Feb
 2019 03:20:49 -0800 (PST)
X-Received: by 2002:a9d:6753:: with SMTP id w19mr10789017otm.24.1550575249391;
        Tue, 19 Feb 2019 03:20:49 -0800 (PST)
Received: by 2002:aca:c109:0:0:0:0:0 with SMTP id r9msoif;
        Tue, 19 Feb 2019 02:28:11 -0800 (PST)
X-Google-Smtp-Source: AHgI3IaFl9ThtL+IsoMEjfaY9sU0R4UzuGSeyB/BVdu7jCiuKzJO97/q8ZiyLRdkWfl3jzWLnmkY
X-Received: by 2002:a9d:7406:: with SMTP id n6mr8625710otk.64.1550572091543;
        Tue, 19 Feb 2019 02:28:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550572091; cv=none;
        d=google.com; s=arc-20160816;
        b=REKjAEVqHbMWjLHyETafn/qB1GfZY2r2NWJ1xBhNwCsDZNtWfVaZqpL9x/HZmNIAPA
         /h/nQh0RviBDbLMccCDlHwcZeLipdYUh+0sR41rJq3djbmhMQaIHqNhqNPnNURhY6b60
         G5Xu6LDrZbrn12cabBy3mrEHST3VClQ8dcJhTyTc0ZVBPKtYouFSpNYQaB/tApApaZU0
         bssxgIYREgPgGHBM0VvbRlZA6Uaqkw3Z9liyPANXZ4z4gTf9ILaiCYjlvA18HbtsoMmW
         Q4To/vMJqKOoj5Vcd9EopMjhZ44InsaJFunwEm9tYbeUss2PzLSfqqBTtRtYtoAzGPZP
         jilw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=RkpOGsiV3lhGuIfdWZrzn+tvhr9XZzrPS3Fau/g38YE=;
        b=Fqu4wEyS6fju9N46cb46rBHQI0zKiSZ3I/xEvt7+531FS44T/c0G2UDg9G7X4SnzyI
         qFlq81Sl55qdgCZ0LxcaezkedlBLbwyt65MmKULGqwisJAw3sjw66bV5lVG91TV2lA4K
         EcgnyPd0GoAE/uDwTTK6664738+9cWi9lFpLzV1aTz3BuSWLFBPbRWx5STZj99V5dopZ
         pEeYdYVurCDhukPY32epOTL0kBFFrO9QWSKAZlZweOIxgZoeopA8wUxmwvJz/Hj9dZFC
         5Bz6DbRkA87DwyFDSgFRgjghQDOgZVmrOsgHA7xsc9gX9IMEw9dYMsMDPpaVw8WsMLUf
         P92w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of yuchao0@huawei.com designates 45.249.212.191 as permitted sender) smtp.mailfrom=yuchao0@huawei.com
Return-Path: <yuchao0@huawei.com>
Received: from huawei.com (szxga05-in.huawei.com. [45.249.212.191])
        by gmr-mx.google.com with ESMTPS id l26si579120otf.0.2019.02.19.02.28.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Feb 2019 02:28:11 -0800 (PST)
Received-SPF: pass (google.com: domain of yuchao0@huawei.com designates 45.249.212.191 as permitted sender) client-ip=45.249.212.191;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of yuchao0@huawei.com designates 45.249.212.191 as permitted sender) smtp.mailfrom=yuchao0@huawei.com
Received: from DGGEMS411-HUB.china.huawei.com (unknown [172.30.72.60])
	by Forcepoint Email with ESMTP id 42D71E1DAC2E8D8BC0AD;
	Tue, 19 Feb 2019 18:28:08 +0800 (CST)
Received: from [127.0.0.1] (10.134.22.195) by DGGEMS411-HUB.china.huawei.com
 (10.3.19.211) with Microsoft SMTP Server id 14.3.408.0; Tue, 19 Feb 2019
 18:27:59 +0800
Subject: Re: [Outreachy Kernel][PATCH v2] staging: erofs: match alignment with
 open parentheses
To: Gao Xiang <gaoxiang25@huawei.com>, Bhanusree Pola
	<bhanusreemahesh@gmail.com>
CC: <outreachy-kernel@googlegroups.com>, Greg Kroah-Hartman
	<gregkh@linuxfoundation.org>, linux-staging mailing list
	<devel@driverdev.osuosl.org>, "linux-erofs@lists.ozlabs.org"
	<linux-erofs@lists.ozlabs.org>
References: <20190219092525.GA4474@bhanusree-MacBookAir>
 <881c9fe8-7273-c5e3-32b4-b2947b978ffa@huawei.com>
From: Chao Yu <yuchao0@huawei.com>
Message-ID: <5864651c-33b7-4956-a0b6-50a2c5daa803@huawei.com>
Date: Tue, 19 Feb 2019 18:28:00 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <881c9fe8-7273-c5e3-32b4-b2947b978ffa@huawei.com>
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.134.22.195]
X-CFilter-Loop: Reflected

On 2019/2/19 18:24, Gao Xiang wrote:
> [+cc linux-erofs and staging mailing list]
> 
> On 2019/2/19 17:25, Bhanusree Pola wrote:
>> Align code with open parantheses to improve the readability.
>> Issue found using checkpatch.pl
>>
>> Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>

Reviewed-by: Chao Yu <yuchao0@huawei.com>

Thanks,


