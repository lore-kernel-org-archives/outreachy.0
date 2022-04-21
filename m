Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF91346A6
	for <outreachy@lists.linux.dev>; Thu, 21 Apr 2022 07:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1650525127;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=BlhjlslVFi77Wl+CHcuoCUnkjOxb+lqiVmEFLuwRx6E=;
	b=QGYXMS9TXVC8Lx2N2Xuk0h6fmltrzIJWE1hU+8jrtW3KIYq2a4m5PySmSPnASgQSrUKlgi
	A7tazBgP7fFLSbH4Oe4P3kBimKsMSKm7sP3IKcZqiSFRA6I9QS73VyPlcQZjbXHIRvYcd7
	cMqdBS4l+vL5D4eo6ECNV99B9RStMoU=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-661-So7XyW0JPPipwqM0B1ljaw-1; Thu, 21 Apr 2022 03:12:05 -0400
X-MC-Unique: So7XyW0JPPipwqM0B1ljaw-1
Received: by mail-wr1-f72.google.com with SMTP id p18-20020adf9592000000b00207bc12decbso825381wrp.21
        for <outreachy@lists.linux.dev>; Thu, 21 Apr 2022 00:12:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:organization:in-reply-to
         :content-transfer-encoding;
        bh=BlhjlslVFi77Wl+CHcuoCUnkjOxb+lqiVmEFLuwRx6E=;
        b=j5BeptJQ7SATnAT6ARv1oktoW33maIDoqzjv4x4XbrxILhThRJW5kBHNejbhgO8fpa
         q8jfYyxJuEfhVt1UsaRQPvX8bBBitbh0J3qmLYVuHcj+GDD6MW5gT1aPAQpx0buzhqe6
         fVrmkNYjj1msX1x6icBxtaRJDp+zJjYUVwffqTEaDBHtSfBOLfb+76hyt+mR3t/Wn1Rf
         2/2Xc6a8MHp+KeWxdEVoyvaLHpkeTsIxtttqomKxkU9/HOxIiD9doYHDoXswPNhyxaH7
         jWqZgt6vegJHPo/uTE3WLMSOxvOIkhEesbKqL5upQ6Iw3k74JJZ6BpSxCbTsdr46LxRa
         sgvg==
X-Gm-Message-State: AOAM5330XYf7V5DxxHsYjsk/nlDvf67eD1W6v35V/110MEZObrrDRV5V
	qDyErMIiQVHqnyUfpj61tVe17qeKiRzAspW3iMOm4Oal/axAGHshE/K9+f7gAt3LdbX0xSolzJD
	TxmdodOSGbdtaxGvsc2Ao
X-Received: by 2002:a7b:c844:0:b0:38e:7c92:a9e3 with SMTP id c4-20020a7bc844000000b0038e7c92a9e3mr6989433wml.140.1650525124645;
        Thu, 21 Apr 2022 00:12:04 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzVz/JO9dKqLMzH3gy16bSB1ht5ndgDDU51K5hj3E+i5/NAaixgHvKDLeexRrqvs7GX3Odxog==
X-Received: by 2002:a7b:c844:0:b0:38e:7c92:a9e3 with SMTP id c4-20020a7bc844000000b0038e7c92a9e3mr6989397wml.140.1650525124310;
        Thu, 21 Apr 2022 00:12:04 -0700 (PDT)
Received: from ?IPV6:2003:cb:c702:de00:711b:76af:b335:9b70? (p200300cbc702de00711b76afb3359b70.dip0.t-ipconnect.de. [2003:cb:c702:de00:711b:76af:b335:9b70])
        by smtp.gmail.com with ESMTPSA id o10-20020a5d47ca000000b0020a992ce36esm1710046wrc.1.2022.04.21.00.12.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Apr 2022 00:12:03 -0700 (PDT)
Message-ID: <436b1fd0-16a6-0f77-7ff4-a68252d6b117@redhat.com>
Date: Thu, 21 Apr 2022 09:12:02 +0200
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.2
Subject: Re: [PATCH 1/3] memblock tests: update style of comments for
 memblock_add_*() functions
To: Rebecca Mckeever <remckee0@gmail.com>, outreachy@lists.linux.dev
Cc: Mike Rapoport <rppt@kernel.org>, linux-mm@kvack.org,
 linux-kernel@vger.kernel.org
References: <cover.1650452552.git.remckee0@gmail.com>
 <0004a1a720c5c15ba16cb9f2fb226f57276de2c0.1650452552.git.remckee0@gmail.com>
From: David Hildenbrand <david@redhat.com>
Organization: Red Hat
In-Reply-To: <0004a1a720c5c15ba16cb9f2fb226f57276de2c0.1650452552.git.remckee0@gmail.com>
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=david@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 20.04.22 13:19, Rebecca Mckeever wrote:
> Update comments in memblock_add_*() functions to match the style used
> in tests/alloc_*.c by rewording to make the expected outcome more apparent
> and, if more than one memblock is involved, adding a visual of the
> memory blocks.
> 
> Signed-off-by: Rebecca Mckeever <remckee0@gmail.com>
> ---
>  tools/testing/memblock/tests/basic_api.c | 75 +++++++++++++++++-------
>  1 file changed, 54 insertions(+), 21 deletions(-)
> 
> diff --git a/tools/testing/memblock/tests/basic_api.c b/tools/testing/memblock/tests/basic_api.c
> index fbc1ce160303..cdf112d25343 100644
> --- a/tools/testing/memblock/tests/basic_api.c
> +++ b/tools/testing/memblock/tests/basic_api.c
> @@ -26,8 +26,8 @@ static int memblock_initialization_check(void)
>  /*
>   * A simple test that adds a memory block of a specified base address
>   * and size to the collection of available memory regions (memblock.memory).
> - * It checks if a new entry was created and if region counter and total memory
> - * were correctly updated.
> + * Expect to create a new entry. The region counter and total memory get
> + * updated.
>   */
>  static int memblock_add_simple_check(void)
>  {
> @@ -55,8 +55,8 @@ static int memblock_add_simple_check(void)
>  /*
>   * A simple test that adds a memory block of a specified base address, size
>   * NUMA node and memory flags to the collection of available memory regions.
> - * It checks if the new entry, region counter and total memory size have
> - * expected values.
> + * Expect to create a new entry. The region counter and total memory get
> + * updated.
>   */
>  static int memblock_add_node_simple_check(void)
>  {
> @@ -87,9 +87,15 @@ static int memblock_add_node_simple_check(void)
>  
>  /*
>   * A test that tries to add two memory blocks that don't overlap with one
> - * another. It checks if two correctly initialized entries were added to the
> - * collection of available memory regions (memblock.memory) and if this
> - * change was reflected in memblock.memory's total size and region counter.
> + * another:
> + *
> + *  |        +--------+        +--------+  |
> + *  |        |   r1   |        |   r2   |  |
> + *  +--------+--------+--------+--------+--+
> + *
> + * Expect to add two correctly initialized entries to the collection of
> + * available memory regions (memblock.memory). The total size and
> + * region counter fields get updated.
>   */
>  static int memblock_add_disjoint_check(void)
>  {
> @@ -125,10 +131,20 @@ static int memblock_add_disjoint_check(void)
>  
>  /*
>   * A test that tries to add two memory blocks, where the second one overlaps
> - * with the beginning of the first entry (that is r1.base < r2.base + r2.size).
> - * After this, it checks if two entries are merged into one region that starts
> - * at r2.base and has size of two regions minus their intersection. It also
> - * verifies the reported total size of the available memory and region counter.
> + * with the beginning of the first entry (that is r1.base < r2.base + r2.size):
> + *
> + *  |    +----+----+------------+          |
> + *  |    |   r|2   |   r1       |          |
> + *  +----+----+----+------------+----------+
> + *       ^    ^
> + *       |    |
> + *       |    r1.base
> + *       |
> + *       r2.base
> + *
> + * Expect to merge the two entries into one region that starts at r2.base
> + * and has size of two regions minus their intersection. The total size of
> + * the available memory is updated, and the region counter stays the same.
>   */
>  static int memblock_add_overlap_top_check(void)
>  {
> @@ -163,11 +179,20 @@ static int memblock_add_overlap_top_check(void)
>  
>  /*
>   * A test that tries to add two memory blocks, where the second one overlaps
> - * with the end of the first entry (that is r2.base < r1.base + r1.size).
> - * After this, it checks if two entries are merged into one region that starts
> - * at r1.base and has size of two regions minus their intersection. It verifies
> - * that memblock can still see only one entry and has a correct total size of
> - * the available memory.
> + * with the end of the first entry (that is r2.base < r1.base + r1.size):
> + *
> + *  |  +--+------+----------+              |
> + *  |  |  | r1   | r2       |              |
> + *  +--+--+------+----------+--------------+
> + *     ^  ^
> + *     |  |
> + *     |  r2.base
> + *     |
> + *     r1.base
> + *
> + * Expect to merge the two entries into one region that starts at r1.base
> + * and has size of two regions minus their intersection. The total size of
> + * the available memory is updated, and the region counter stays the same.
>   */
>  static int memblock_add_overlap_bottom_check(void)
>  {
> @@ -203,9 +228,17 @@ static int memblock_add_overlap_bottom_check(void)
>  /*
>   * A test that tries to add two memory blocks, where the second one is
>   * within the range of the first entry (that is r1.base < r2.base &&
> - * r2.base + r2.size < r1.base + r1.size). It checks if two entries are merged
> - * into one region that stays the same. The counter and total size of available
> - * memory are expected to not be updated.
> + * r2.base + r2.size < r1.base + r1.size).
> + *
> + *  |   +-------+--+-----------------------+
> + *  |   |       |r2|      r1               |
> + *  +---+-------+--+-----------------------+
> + *      ^
> + *      |
> + *      r1.base
> + *
> + * Expect to merge two entries into one region that stays the same.
> + * The counter and total size of available memory are not updated.
>   */
>  static int memblock_add_within_check(void)
>  {
> @@ -236,8 +269,8 @@ static int memblock_add_within_check(void)
>  }
>  
>  /*
> - * A simple test that tries to add the same memory block twice. The counter
> - * and total size of available memory are expected to not be updated.
> + * A simple test that tries to add the same memory block twice. Expect
> + * the counter and total size of available memory to not be updated.
>   */
>  static int memblock_add_twice_check(void)
>  {

Reviewed-by: David Hildenbrand <david@redhat.com>

-- 
Thanks,

David / dhildenb

