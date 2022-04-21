Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BF2146AD
	for <outreachy@lists.linux.dev>; Thu, 21 Apr 2022 14:34:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 32156C385A8;
	Thu, 21 Apr 2022 14:34:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1650551653;
	bh=bnxq7xY6hJG0vnk6nNy70/Pfu3qfybGU0cw7vx4Vjn4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MeEJHHPsGHAvWel1AYF953PR0H5gqulQaCXN/FnzXdgWyNdR7lRAtJSuXiFgKg3H1
	 Vlqqxdrb4kWRmH93DGO8lq2CdCLyM2ezXYk+8wOYqrUFcYNZ0LJKiqLaiv30jKfAdQ
	 krRXez5nqEyjtzw96GJdog4UEGZFg5qWH83SqOysdVZkQDabovoN6xEA0Ba8jstEer
	 CWEuYbYVsxLxPCAArbdpDyVFkHnMH9w+D6KPPIF2QeQe1Bcau3dijuzxIuAbk55YvS
	 EZSF6lszNcJDkfi/KMPQXNkg8eB+gTSl89RfdNyp9m5JgbkF6RfYKhjCEtUDHjquZD
	 UFGmA37ZAvUHA==
Date: Thu, 21 Apr 2022 17:34:05 +0300
From: Mike Rapoport <rppt@kernel.org>
To: David Hildenbrand <david@redhat.com>
Cc: Rebecca Mckeever <remckee0@gmail.com>, outreachy@lists.linux.dev,
	linux-mm@kvack.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/3] memblock tests: update style of comments for
 memblock_add_*() functions
Message-ID: <YmFrXaBvhJy2auYK@kernel.org>
References: <cover.1650452552.git.remckee0@gmail.com>
 <0004a1a720c5c15ba16cb9f2fb226f57276de2c0.1650452552.git.remckee0@gmail.com>
 <436b1fd0-16a6-0f77-7ff4-a68252d6b117@redhat.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <436b1fd0-16a6-0f77-7ff4-a68252d6b117@redhat.com>

On Thu, Apr 21, 2022 at 09:12:02AM +0200, David Hildenbrand wrote:
> On 20.04.22 13:19, Rebecca Mckeever wrote:
> > Update comments in memblock_add_*() functions to match the style used
> > in tests/alloc_*.c by rewording to make the expected outcome more apparent
> > and, if more than one memblock is involved, adding a visual of the
> > memory blocks.
> > 
> > Signed-off-by: Rebecca Mckeever <remckee0@gmail.com>
> > ---
> >  tools/testing/memblock/tests/basic_api.c | 75 +++++++++++++++++-------
> >  1 file changed, 54 insertions(+), 21 deletions(-)
> > 
> > diff --git a/tools/testing/memblock/tests/basic_api.c b/tools/testing/memblock/tests/basic_api.c
> > index fbc1ce160303..cdf112d25343 100644
> > --- a/tools/testing/memblock/tests/basic_api.c
> > +++ b/tools/testing/memblock/tests/basic_api.c
> > @@ -26,8 +26,8 @@ static int memblock_initialization_check(void)
> >  /*
> >   * A simple test that adds a memory block of a specified base address
> >   * and size to the collection of available memory regions (memblock.memory).
> > - * It checks if a new entry was created and if region counter and total memory
> > - * were correctly updated.
> > + * Expect to create a new entry. The region counter and total memory get
> > + * updated.
> >   */
> >  static int memblock_add_simple_check(void)
> >  {
> > @@ -55,8 +55,8 @@ static int memblock_add_simple_check(void)
> >  /*
> >   * A simple test that adds a memory block of a specified base address, size

Can you please add coma after size  ...                                        ^

> >   * NUMA node and memory flags to the collection of available memory regions.
> > - * It checks if the new entry, region counter and total memory size have
> > - * expected values.
> > + * Expect to create a new entry. The region counter and total memory get
> > + * updated.
> >   */
> >  static int memblock_add_node_simple_check(void)
> >  {

...

> > @@ -125,10 +131,20 @@ static int memblock_add_disjoint_check(void)
> >  
> >  /*
> >   * A test that tries to add two memory blocks, where the second one overlaps
> > - * with the beginning of the first entry (that is r1.base < r2.base + r2.size).
> > - * After this, it checks if two entries are merged into one region that starts
> > - * at r2.base and has size of two regions minus their intersection. It also
> > - * verifies the reported total size of the available memory and region counter.
> > + * with the beginning of the first entry (that is r1.base < r2.base + r2.size):
> > + *
> > + *  |    +----+----+------------+          |
> > + *  |    |   r|2   |   r1       |          |
> > + *  +----+----+----+------------+----------+

I'd move | separator outside the block name, e.g

	*  |    +----+----+------------+          |
	*  |    |   | r2  |   r1       |          |
	*  +----+----+----+------------+----------+

but no strong feelings about this :)

> > + *       ^    ^
> > + *       |    |
> > + *       |    r1.base
> > + *       |
> > + *       r2.base
> > + *
> > + * Expect to merge the two entries into one region that starts at r2.base
> > + * and has size of two regions minus their intersection. The total size of
> > + * the available memory is updated, and the region counter stays the same.
> >   */
> >  static int memblock_add_overlap_top_check(void)

...
 
> Reviewed-by: David Hildenbrand <david@redhat.com>
> 
> -- 
> Thanks,
> 
> David / dhildenb
> 
> 

-- 
Sincerely yours,
Mike.
