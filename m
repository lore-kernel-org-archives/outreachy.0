X-GM-THRID: 6620347424824098816
X-Received: by 2002:a0c:9901:: with SMTP id h1mr15817543qvd.14.1541489556669;
        Mon, 05 Nov 2018 23:32:36 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:c042:: with SMTP id o63ls4232233qki.2.gmail; Mon, 05 Nov
 2018 23:32:35 -0800 (PST)
X-Google-Smtp-Source: AJdET5e/pMzQT1wZ0K9CE+9ChDa9tNq1RXwk4s7OBwotvB/H1iolOqkHdhry/ZjeAD0XbKBEqk+g
X-Received: by 2002:a37:8c4:: with SMTP id 187mr20080943qki.9.1541489555859;
        Mon, 05 Nov 2018 23:32:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1541489555; cv=none;
        d=google.com; s=arc-20160816;
        b=M+B+3FmpMVlvwB6gX8Mo9j7WnHGCsENtJ+OwMr9IJZQU0cX9xVbxqbrpZu3/CWFMYD
         n9xsvngogZ8B4nyvxjX1+yZmTSIHCFbbFl+tmERoiez9BmScG2L037XhgTQU+391N65B
         bvTtQzX2y+5rla9ENe6fh7QR5xWqNULMV4mFWcCxYCMqmmrf3NrWuiw/MAomRWPcfdRB
         sLBwNlMScwubVYis6+vBl979dOdPv8DUuphXbHZQvvPLs5JN/sahGO/vcW6rvchBct9O
         jIBsCxf8U02qK2RDc+PoqqHdrE9vKemFSrpVSIBEPGHQ704VjBiMSUwu0PaHgp/xj/P5
         npxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject;
        bh=WlHrXN1HzluV7B10Wx/ub+l2i3bzRHVIJGriuy/ymXg=;
        b=a+dCSjMeLLezV1p5NS0VpPsSn1xC4cB1KhE1A4nkQwGsAxrxv7s32sgdIj08v0tbL/
         1AGUkx4SdYZLwyfPigh344SOUwHJR43Jex0Qfmfn4mTuJWBQAuQ+NQiEBZVvjjhjbcMj
         fjucC9OzYpg0R1NdGL79eDAAkCf2PSTXa/dsKwqcCe1fQenYOy8n9Cr/kNyA+CDUAf1I
         GG12TlKPURBkyvMf9kwfFYUA8fzS+LludiypPcfqyQF94AA+QcfKWGNRRiuWFb/OPGLk
         qcwESD5Yo0KhBpgkKjDNyWkHkyb+wdP/VorQvio7tnLGBdgzW8TnSaUDlMt39qhrULo0
         yjmQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gaoxiang25@huawei.com designates 45.249.212.32 as permitted sender) smtp.mailfrom=gaoxiang25@huawei.com
Return-Path: <gaoxiang25@huawei.com>
Received: from huawei.com (szxga06-in.huawei.com. [45.249.212.32])
        by gmr-mx.google.com with ESMTPS id k8-v6si2275222qkg.3.2018.11.05.23.32.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Nov 2018 23:32:35 -0800 (PST)
Received-SPF: pass (google.com: domain of gaoxiang25@huawei.com designates 45.249.212.32 as permitted sender) client-ip=45.249.212.32;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gaoxiang25@huawei.com designates 45.249.212.32 as permitted sender) smtp.mailfrom=gaoxiang25@huawei.com
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.58])
	by Forcepoint Email with ESMTP id 2B1A0445FDDA7;
	Tue,  6 Nov 2018 15:32:00 +0800 (CST)
Received: from [10.151.23.176] (10.151.23.176) by smtp.huawei.com
 (10.3.19.207) with Microsoft SMTP Server (TLS) id 14.3.408.0; Tue, 6 Nov 2018
 15:31:53 +0800
Subject: Re: [PATCH v5 2/2] staging: erofs: Modify conditional checks
To: "Bhagyashri P. Dighole" <digholebhagyashri@gmail.com>
CC: Chao Yu <yuchao0@huawei.com>, Greg Kroah-Hartman
	<gregkh@linuxfoundation.org>, Sasha Levin <sashal@kernel.org>, Outreachy
	<outreachy-kernel@googlegroups.com>, <linux-erofs@lists.ozlabs.org>
References: <b14ab748b6c00632bb2234000d96a7e1912e2b1b.1541446384.git.digholebhagyashri@gmail.com>
 <b36253c9dacce060a90e84f3e8d854749800d720.1541446384.git.digholebhagyashri@gmail.com>
From: Gao Xiang <gaoxiang25@huawei.com>
Message-ID: <292fc056-803e-d140-aaf8-93781e280031@huawei.com>
Date: Tue, 6 Nov 2018 15:31:41 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <b36253c9dacce060a90e84f3e8d854749800d720.1541446384.git.digholebhagyashri@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.151.23.176]
X-CFilter-Loop: Reflected



On 2018/11/6 3:49, Bhagyashri P. Dighole wrote:
> Fix coding style alignment issues detected by checkpatch.pl
> Use ! for NULL test rather than explicitly comparing to NULL.
> 
> Signed-off-by: Bhagyashri P. Dighole <digholebhagyashri@gmail.com>

Looks good and good luck...

Reviewed-by: Gao Xiang <gaoxiang25@huawei.com>

Thanks,
Gao Xiang

