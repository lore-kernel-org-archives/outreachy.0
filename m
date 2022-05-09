Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AABFE7B
	for <outreachy@lists.linux.dev>; Mon,  9 May 2022 10:15:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 55607C385A8;
	Mon,  9 May 2022 10:15:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1652091342;
	bh=sxUAcaLLSaqfGpbMutvCvdhAXxJ4xVgqlea0hGl2N/s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lF1n9cNupiZV2/RLcE7nDILUkQhSJRmxMAUfJkQ/3qwJApfB67NfGjxqkLCycdIQp
	 eUCCr1JihRwQcZCsMQtMwB6IhkdXgwWESy8evcTcjym6MUkAydKkJ3PQDkVdLd93Si
	 LLAJRWR+qcxzAWO0zE6jvpLsXghuI5rM2r31PW+yJ99zq2NcAYGYRt1CqHH4DlI1gM
	 7XBnl+xlhAKYbeQRqj2GZnQ63nRne2DAfGWEVqLQl4LYjSWCvygzdwrdr4tq0KcPeN
	 FglTk7c6PXJvhnb9+vcht95w4eVyWseydSkyBFkPPlUnWinAVLjttWXDuGNlHHmS3T
	 7hDBmtEYnziwg==
Date: Mon, 9 May 2022 13:15:35 +0300
From: Mike Rapoport <rppt@kernel.org>
To: Rebecca Mckeever <remckee0@gmail.com>
Cc: outreachy@lists.linux.dev, linux-mm@kvack.org,
	linux-kernel@vger.kernel.org, David Hildenbrand <david@redhat.com>
Subject: Re: [PATCH v4 0/5] memblock tests: update style of comments
Message-ID: <Ynjpx8wVOMMEo2r2@kernel.org>
References: <cover.1651357434.git.remckee0@gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1651357434.git.remckee0@gmail.com>

On Sat, Apr 30, 2022 at 05:49:35PM -0500, Rebecca Mckeever wrote:
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

Applied, thanks!
 
-- 
Sincerely yours,
Mike.
