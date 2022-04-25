Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1509D7C
	for <outreachy@lists.linux.dev>; Mon, 25 Apr 2022 13:45:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1650894308;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=kjKl7LXWSDD258DvkdJkTnbtgI9iQSku/0RIww7gifA=;
	b=Z4cOraHXjyEDw+9AjtENOQv1sQKb6PYK/WFbKAq5ZsPrbmDbnWyKndhHojpqrgUdhLe/FX
	2Ye2d36GWzwgmEa5wuOnusX7M6mtsOnCBCvl+nFaEfwdOZYGC/To7C+bn+M+jaoZzA5/o+
	uJDVgAOpiepLgdB1b1321n7fJqh2B4E=
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-148-coh9mkzaOfOrO4Kpv2tk4g-1; Mon, 25 Apr 2022 09:45:05 -0400
X-MC-Unique: coh9mkzaOfOrO4Kpv2tk4g-1
Received: by mail-wr1-f69.google.com with SMTP id s14-20020adfa28e000000b0020ac7532f08so2081182wra.15
        for <outreachy@lists.linux.dev>; Mon, 25 Apr 2022 06:45:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:organization:in-reply-to
         :content-transfer-encoding;
        bh=kjKl7LXWSDD258DvkdJkTnbtgI9iQSku/0RIww7gifA=;
        b=Kh5JyoniBi/VgVWa69yQPUgJEh/GTlMLJ+hyqK+pCzgGnllQCsZ6ZyCZ6mPT1A2u6E
         8NMheLuGkTSW7QAAdyQE1xSz1WLZxlzfMDtT7DB1cR5Rxi7mBrRlW+bdoJhHOMCVSAeq
         FIHTWpXisYQy+WY8NOaM3ufbG0YbK0kt3buVwxbaA1vUefWKpr8JSSYvR0oPgh2jdsDH
         DrnZYcOkhuRHtb7FD3btLgsvitcLeAcRoKuoTs9FxHsHr1J207TcMGPKMNh6YubqVb+U
         UTmkBGf6c4hTxvYAHUj0kVHfS9/tbrcT+UuFljch5quAiu3ZmviN8Mse9mGxsk7mkapN
         AkHg==
X-Gm-Message-State: AOAM533maNK+EbT72xVlwoJ+hHE072PkUokEL0fXIkugpm56/wb4HVxl
	askWOYrhEQdaaGZZ8mI43VMsi/L94nYjM42mDpNEDj45UEY8oWIZjLzg0A0fDB9oylHgiwGTmiS
	QwbZlJ3XrEpmSNQqCfrkA
X-Received: by 2002:a1c:35c7:0:b0:38e:4c59:6788 with SMTP id c190-20020a1c35c7000000b0038e4c596788mr1346035wma.1.1650894304189;
        Mon, 25 Apr 2022 06:45:04 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwkcdgm9Qu/INbawQ6bTu6jiAyghqOn6SgQHz2C+CRn/opFLVzJwiujddaOhsPHzma7sLYcFQ==
X-Received: by 2002:a1c:35c7:0:b0:38e:4c59:6788 with SMTP id c190-20020a1c35c7000000b0038e4c596788mr1346033wma.1.1650894303862;
        Mon, 25 Apr 2022 06:45:03 -0700 (PDT)
Received: from ?IPV6:2003:cb:c700:fc00:490d:ed6a:8b22:223a? (p200300cbc700fc00490ded6a8b22223a.dip0.t-ipconnect.de. [2003:cb:c700:fc00:490d:ed6a:8b22:223a])
        by smtp.gmail.com with ESMTPSA id m1-20020a1ca301000000b003929c4bf250sm11859636wme.13.2022.04.25.06.45.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Apr 2022 06:45:03 -0700 (PDT)
Message-ID: <a72036bf-0708-c1bc-2511-64513a130271@redhat.com>
Date: Mon, 25 Apr 2022 15:45:02 +0200
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.2
Subject: Re: [PATCH v3 3/5] memblock tests: update style of comments for
 memblock_remove_*() functions
To: Rebecca Mckeever <remckee0@gmail.com>, outreachy@lists.linux.dev
Cc: Mike Rapoport <rppt@kernel.org>, linux-mm@kvack.org,
 linux-kernel@vger.kernel.org
References: <cover.1650633253.git.remckee0@gmail.com>
 <3b83322c070bdd43a33c336d135f485244f107d3.1650633253.git.remckee0@gmail.com>
From: David Hildenbrand <david@redhat.com>
Organization: Red Hat
In-Reply-To: <3b83322c070bdd43a33c336d135f485244f107d3.1650633253.git.remckee0@gmail.com>
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=david@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 22.04.22 15:33, Rebecca Mckeever wrote:
> Update comments in memblock_remove_*() functions to match the style used
> in tests/alloc_*.c by rewording to make the expected outcome more apparent
> and, if more than one memblock is involved, adding a visual of the
> memory blocks.
> 
> If the comment has an extra column of spaces, remove the extra space at
> the beginning of each line for consistency and to conform to Linux kernel
> coding style.
> 
> Signed-off-by: Rebecca Mckeever <remckee0@gmail.com>
> ---
>  tools/testing/memblock/tests/basic_api.c | 101 +++++++++++++++++------
>  1 file changed, 75 insertions(+), 26 deletions(-)
> 
> diff --git a/tools/testing/memblock/tests/basic_api.c b/tools/testing/memblock/tests/basic_api.c
> index 75cd7479ee54..08847dc5065e 100644
> --- a/tools/testing/memblock/tests/basic_api.c
> +++ b/tools/testing/memblock/tests/basic_api.c
> @@ -550,14 +550,21 @@ static int memblock_reserve_checks(void)
>  	return 0;
>  }
>  
> - /*
> -  * A simple test that tries to remove the first entry of the array of
> -  * available memory regions. By "removing" a region we mean overwriting it
> -  * with the next region in memblock.memory. To check this is the case, the
> -  * test adds two memory blocks and verifies that the value of the latter
> -  * was used to erase r1 region.  It also checks if the region counter and
> -  * total size were updated to expected values.
> -  */
> +/*
> + * A simple test that tries to remove the first entry of the array of
> + * with the next region in memblock.memory:

I failed to parse this sentence "of the array of with".

> + *
> + *  |  ......          +----------------+  |
> + *  |  : r1 :          |       r2       |  |
> + *  +--+----+----------+----------------+--+
> + *                     ^
> + *                     |
> + *                     rgn.base
> + *
> + * Expect to add two memory blocks r1 and r2 and then remove r1 region
> + * so that r2 is the first available region. The region counter and
> + * total size are updated.
> + */
>  static int memblock_remove_simple_check(void)
>  {
>  	struct memblock_region *rgn;
> @@ -587,11 +594,22 @@ static int memblock_remove_simple_check(void)
>  	return 0;
>  }
>  
> - /*
> -  * A test that tries to remove a region that was not registered as available
> -  * memory (i.e. has no corresponding entry in memblock.memory). It verifies
> -  * that array, regions counter and total size were not modified.
> -  */
> +/*
> + * A test that tries to remove a region that was not registered as available
> + * memory (i.e. has no corresponding entry in memblock.memory):
> + *
> + *                     +----------------+
> + *                     |       r2       |
> + *                     +----------------+
> + *  |  +----+                              |
> + *  |  | r1 |                              |
> + *  +--+----+------------------------------+
> + *     ^
> + *     |
> + *     rgn.base
> + *
> + * Expect the array, regions counter and total size to not be modified.
> + */
>  static int memblock_remove_absent_check(void)
>  {
>  	struct memblock_region *rgn;
> @@ -622,10 +640,21 @@ static int memblock_remove_absent_check(void)
>  
>  /*
>   * A test that tries to remove a region which overlaps with the beginning of

Wonder if it makes sense to mention r2 here. ("a region r2 ...") -- to
be precise, to always reference r1 and r2 accordingly instead of e.g.,
"the first entry". Same applies to the other function documentation you
touch in this patch.

-- 
Thanks,

David / dhildenb

