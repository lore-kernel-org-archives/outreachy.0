Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79A531876
	for <outreachy@lists.linux.dev>; Thu, 21 Apr 2022 07:14:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1650525271;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=FTKdRZp+dCYF2kvJ3QkbPTv+NjUqYK/0QAd8tz4f2u8=;
	b=CLYy6i+ZfkzU+JZQqfTwe6o/e85kCrsUiBVrnReBaE/AeREl7uGyUlQsPvQObey6H80O6+
	FDt7KxAqj1gWsnt0AUATK3afeD3NX2b6XhZCkAR0oTnwfnF6+UDKU8XIzlx6uOzn3wnZpy
	13IiKYUVMe7DUX8JeZeMz0QtgbeVG4Q=
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-158-ZuJ5jlDYN5S4Vunfzm5kCA-1; Thu, 21 Apr 2022 03:14:29 -0400
X-MC-Unique: ZuJ5jlDYN5S4Vunfzm5kCA-1
Received: by mail-wr1-f71.google.com with SMTP id 46-20020adf8031000000b00207ad3febaeso830177wrk.6
        for <outreachy@lists.linux.dev>; Thu, 21 Apr 2022 00:14:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:organization:in-reply-to
         :content-transfer-encoding;
        bh=FTKdRZp+dCYF2kvJ3QkbPTv+NjUqYK/0QAd8tz4f2u8=;
        b=hdY5Ogpduzx57YNIFT7omdjeW01OnaXj52Ux5K8kpmknXLdisTbBRBSP4NtyXPm1TI
         u9Dy3l94IGpbw+gxG/vF+Y2fa+FI4Q/lPfEUBsbWP4rR8/9T288zXOeWZGEalA16G2+L
         gTW2ptDiWuGWHscfPCaMdiqiRrb0I26wTy44L3wsUM4AiHIVN6lU3TrEysuBgZDE6ydi
         /DQD3O0bZqPTQX6S2icOCJdD0Zi9MuzGNk0Fu8WY22YjWotu96Bny0eF7YmJuESTPwyE
         Un2CC2WYEL2hfMRX0qr/MyuN59AGlC+kUH+EknjPBvEeA3Nn7yekjZCkRKAlsvcxC02Q
         iYVw==
X-Gm-Message-State: AOAM531XfaPRqUFJS4NFhq7RRZuoVieXDjH8Yaf16B9qN+mXL7pq/OGU
	sVLDrTmcaxkK0IU/HzE0vYQGfZIib5jIWICi/Ew4J0YJuEOcfiNYxt5vjKhDq5c6lh/mcKY3FAy
	ARLos9cKqmEsqJbwL9OjW
X-Received: by 2002:adf:f244:0:b0:20a:c3ab:d009 with SMTP id b4-20020adff244000000b0020ac3abd009mr175576wrp.10.1650525267856;
        Thu, 21 Apr 2022 00:14:27 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJywysQg8deQDrJHLZkyZ0rGqd8PFDbr2+HfodlCIi36M8eMOx80bbK9Gp7P+kUPy4LdLLRgEA==
X-Received: by 2002:adf:f244:0:b0:20a:c3ab:d009 with SMTP id b4-20020adff244000000b0020ac3abd009mr175558wrp.10.1650525267563;
        Thu, 21 Apr 2022 00:14:27 -0700 (PDT)
Received: from ?IPV6:2003:cb:c702:de00:711b:76af:b335:9b70? (p200300cbc702de00711b76afb3359b70.dip0.t-ipconnect.de. [2003:cb:c702:de00:711b:76af:b335:9b70])
        by smtp.gmail.com with ESMTPSA id r9-20020a05600c320900b0038f0894d80csm1282777wmp.7.2022.04.21.00.14.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Apr 2022 00:14:26 -0700 (PDT)
Message-ID: <02765252-2a86-f1aa-a7a1-b00e015e68a1@redhat.com>
Date: Thu, 21 Apr 2022 09:14:25 +0200
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.2
Subject: Re: [PATCH 2/3] memblock tests: update style of comments for
 memblock_reserve_*() functions
To: Rebecca Mckeever <remckee0@gmail.com>, outreachy@lists.linux.dev
Cc: Mike Rapoport <rppt@kernel.org>, linux-mm@kvack.org,
 linux-kernel@vger.kernel.org
References: <cover.1650452552.git.remckee0@gmail.com>
 <6f385ad37eeb81331f9556fdddeced80ae32bded.1650452552.git.remckee0@gmail.com>
From: David Hildenbrand <david@redhat.com>
Organization: Red Hat
In-Reply-To: <6f385ad37eeb81331f9556fdddeced80ae32bded.1650452552.git.remckee0@gmail.com>
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=david@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 20.04.22 13:19, Rebecca Mckeever wrote:
> Update comments in memblock_reserve_*() functions to match the style used
> in tests/alloc_*.c by rewording to make the expected outcome more apparent
> and, if more than one memblock is involved, adding a visual of the
> memory blocks.
> 
> Signed-off-by: Rebecca Mckeever <remckee0@gmail.com>
> ---
>  tools/testing/memblock/tests/basic_api.c | 70 +++++++++++++++++-------
>  1 file changed, 51 insertions(+), 19 deletions(-)
> 
> diff --git a/tools/testing/memblock/tests/basic_api.c b/tools/testing/memblock/tests/basic_api.c
> index cdf112d25343..834d8705ff8a 100644
> --- a/tools/testing/memblock/tests/basic_api.c
> +++ b/tools/testing/memblock/tests/basic_api.c
> @@ -306,8 +306,8 @@ static int memblock_add_checks(void)
>   /*
>    * A simple test that marks a memory block of a specified base address
>    * and size as reserved and to the collection of reserved memory regions
> -  * (memblock.reserved). It checks if a new entry was created and if region
> -  * counter and total memory size were correctly updated.
> +  * (memblock.reserved). Expect to create a new entry. The region counter
> +  * and total memory size are updated.
>    */

As mentioned in reply to patch #3, we try avoiding introducing "more
wrong style" and cleanup afterwards. Cleanup first or along the way.

>  static int memblock_reserve_simple_check(void)
>  {
> @@ -330,10 +330,15 @@ static int memblock_reserve_simple_check(void)
>  }
>  
>  /*
> - * A test that tries to mark two memory blocks that don't overlap as reserved
> - * and checks if two entries were correctly added to the collection of reserved
> - * memory regions (memblock.reserved) and if this change was reflected in
> - * memblock.reserved's total size and region counter.
> + * A test that tries to mark two memory blocks that don't overlap as reserved:
> + *
> + *  |        +--+      +----------------+  |
> + *  |        |r1|      |       r2       |  |
> + *  +--------+--+------+----------------+--+
> + *
> + * Expect to add two entries to the collection of reserved memory regions
> + * (memblock.reserved). The total size and region counter for
> + * memblock.reserved are updated.
>   */
>  static int memblock_reserve_disjoint_check(void)
>  {
> @@ -370,11 +375,20 @@ static int memblock_reserve_disjoint_check(void)
>  /*
>   * A test that tries to mark two memory blocks as reserved, where the
>   * second one overlaps with the beginning of the first (that is
> - * r1.base < r2.base + r2.size).
> - * It checks if two entries are merged into one region that starts at r2.base
> - * and has size of two regions minus their intersection. The test also verifies
> - * that memblock can still see only one entry and has a correct total size of
> - * the reserved memory.
> + * r1.base < r2.base + r2.size):
> + *
> + *  |  +--------------+--+--------------+  |
> + *  |  |       r2     |  |     r1       |  |
> + *  +--+--------------+--+--------------+--+
> + *     ^              ^
> + *     |              |
> + *     |              r1.base
> + *     |
> + *     r2.base
> + *
> + * Expect to merge two entries into one region that starts at r2.base and
> + * has size of two regions minus their intersection. The total size of the
> + * reserved memory is updated, and the region counter is not updated.
>   */
>  static int memblock_reserve_overlap_top_check(void)
>  {
> @@ -411,10 +425,19 @@ static int memblock_reserve_overlap_top_check(void)
>   * A test that tries to mark two memory blocks as reserved, where the
>   * second one overlaps with the end of the first entry (that is
>   * r2.base < r1.base + r1.size).
> - * It checks if two entries are merged into one region that starts at r1.base
> - * and has size of two regions minus their intersection. It verifies that
> - * memblock can still see only one entry and has a correct total size of the
> - * reserved memory.
> + *
> + *  |  +--------------+--+--------------+  |
> + *  |  |       r1     |  |     r2       |  |
> + *  +--+--------------+--+--------------+--+
> + *     ^              ^
> + *     |              |
> + *     |              r2.base
> + *     |
> + *     r1.base
> + *
> + * Expect to merge two entries into one region that starts at r1.base and
> + * has size of two regions minus their intersection. The total size of the
> + * reserved memory is updated, and the region counter is not updated.
>   */
>  static int memblock_reserve_overlap_bottom_check(void)
>  {
> @@ -451,9 +474,18 @@ static int memblock_reserve_overlap_bottom_check(void)
>   * A test that tries to mark two memory blocks as reserved, where the second
>   * one is within the range of the first entry (that is
>   * (r1.base < r2.base) && (r2.base + r2.size < r1.base + r1.size)).
> - * It checks if two entries are merged into one region that stays the
> - * same. The counter and total size of available memory are expected to not be
> - * updated.
> + *
> + *  | +-----+--+---------------------------|
> + *  | |     |r2|          r1               |
> + *  +-+-----+--+---------------------------+
> + *    ^     ^
> + *    |     |
> + *    |     r2.base
> + *    |
> + *    r1.base
> + *
> + * Expect to merge two entries into one region that stays the same. The
> + * counter and total size of available memory are not updated.
>   */
>  static int memblock_reserve_within_check(void)
>  {
> @@ -485,7 +517,7 @@ static int memblock_reserve_within_check(void)
>  
>  /*
>   * A simple test that tries to reserve the same memory block twice.
> - * The region counter and total size of reserved memory are expected to not
> + * Expect the region counter and total size of reserved memory to not
>   * be updated.
>   */
>  static int memblock_reserve_twice_check(void)


Apart from that

Reviewed-by: David Hildenbrand <david@redhat.com>

-- 
Thanks,

David / dhildenb

