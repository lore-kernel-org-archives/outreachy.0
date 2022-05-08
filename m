Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B59C17E
	for <outreachy@lists.linux.dev>; Sun,  8 May 2022 00:41:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1651970497;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=/xslxuZsbP0SHIK82QMmeHFbJ0tORO76aQX/cXKHW5s=;
	b=D1F2pFxzgiw5Mz3FUTPnuZYR/rUXHM+0u9BaGaa9dtkXeWwwuRp8QgbVWXgCVRcMGCSljY
	p+YzOG5ygUoufmuvOH4Ykd3QD2mkwDKtBTr0uaDflmR1bPVn7auUkyalrCesJkOM/3s3/A
	xtUa3nqEwpiptZ3Uai/wfwCnK6NIeuA=
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com
 [209.85.160.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-288-YtGJBoRCOfefbuR-HZMu3w-1; Sat, 07 May 2022 20:41:36 -0400
X-MC-Unique: YtGJBoRCOfefbuR-HZMu3w-1
Received: by mail-qt1-f198.google.com with SMTP id q13-20020a05622a04cd00b002f3c0e197afso6223155qtx.0
        for <outreachy@lists.linux.dev>; Sat, 07 May 2022 17:41:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:organization:in-reply-to
         :content-transfer-encoding;
        bh=/xslxuZsbP0SHIK82QMmeHFbJ0tORO76aQX/cXKHW5s=;
        b=kbA0EL0KdL7oL4ccSZrj4tYReZEzJ9yXyfc+RIS+9SuyaKnXDQf3+6YmJI8NBZKsIQ
         yYMspXDnXxBE31D47aZP7oszZyHBk2FAm1KyxQTa4wSQnjkPy361O5blipI8hK9dxgrY
         BOjziHcJqmDmdTdjF/BoJncV8FLzESX3ryaeBZub6vVhlEvMsk2Sz0gmyQwQA5/7op61
         CjNM513noP7d03bXtxkxk57YSi8/xTj9/nRrsi2d/1G+58LkGg31DkFM88I1Uj6kH08j
         RQvSY43drLVrJ4v6QrlQfGYZTq1Bju9dT6KCWx/kUZSxY3Zmq9FClQgQ2Gf0FIeB5urF
         L8ag==
X-Gm-Message-State: AOAM530xYWiwASX1D61PMvNZl1p/VXmFkl7OhnRLBU8ibr+4wdePblKg
	a69kxvftq2CaqUbOFL2f4kfMfp4GcF5zIixiQiNpETroACD8qJgL33sMjDiEbwCphIIP2rJK8/T
	mEjEthBuVj/AhlyJ0e/FU
X-Received: by 2002:a05:6214:2421:b0:45a:ee0d:822a with SMTP id gy1-20020a056214242100b0045aee0d822amr6836128qvb.102.1651970495556;
        Sat, 07 May 2022 17:41:35 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxwHNVatmx4PKQQeJ08ZHWBq5vL2iTwBNiLjsKCICf5mUTNWA/XcoQxUBtAFwD/8xNhk+xa8A==
X-Received: by 2002:a05:6214:2421:b0:45a:ee0d:822a with SMTP id gy1-20020a056214242100b0045aee0d822amr6836120qvb.102.1651970495357;
        Sat, 07 May 2022 17:41:35 -0700 (PDT)
Received: from [10.23.153.165] ([46.248.132.196])
        by smtp.gmail.com with ESMTPSA id z11-20020ac8454b000000b002f39b99f6aasm4976079qtn.68.2022.05.07.17.41.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 May 2022 17:41:34 -0700 (PDT)
Message-ID: <62cc2efa-6a47-4426-c115-3ebc2303a7d3@redhat.com>
Date: Sun, 8 May 2022 02:41:33 +0200
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Subject: Re: [PATCH v4 0/5] memblock tests: update style of comments
To: Rebecca Mckeever <remckee0@gmail.com>, outreachy@lists.linux.dev
Cc: Mike Rapoport <rppt@kernel.org>, linux-mm@kvack.org,
 linux-kernel@vger.kernel.org
References: <cover.1651357434.git.remckee0@gmail.com>
From: David Hildenbrand <david@redhat.com>
Organization: Red Hat
In-Reply-To: <cover.1651357434.git.remckee0@gmail.com>
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=david@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 01.05.22 00:49, Rebecca Mckeever wrote:
> These patches update the style of comments for memblock_add_*(),
> memblock_reserve_*(), memblock_remove_*(), and memblock_free_*()
> functions to match the style of comments in tests/alloc_*.c and
> remove extra spaces in those comments to conform to Linux kernel
> coding style. This completes an item from the TODO list.
> 
> Rebecca Mckeever (5):
>   memblock tests: update style of comments for memblock_add_*()
>     functions
>   memblock tests: update style of comments for memblock_reserve_*()
>     functions
>   memblock tests: update style of comments for memblock_remove_*()
>     functions
>   memblock tests: update style of comments for memblock_free_*()
>     functions
>   memblock tests: remove completed TODO item
> 
>  tools/testing/memblock/TODO              |   3 -
>  tools/testing/memblock/tests/basic_api.c | 392 ++++++++++++++++-------
>  2 files changed, 278 insertions(+), 117 deletions(-)
> 
> ---

Series

Reviewed-by: David Hildenbrand <david@redhat.com>

Thanks!

-- 
Thanks,

David / dhildenb

