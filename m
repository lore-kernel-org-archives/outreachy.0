X-GM-THRID: 6620347424824098816
X-Received: by 2002:a2e:9e95:: with SMTP id f21-v6mr1560238ljk.4.1541450191749;
        Mon, 05 Nov 2018 12:36:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:c997:: with SMTP id z145ls395399lff.26.gmail; Mon, 05
 Nov 2018 12:35:47 -0800 (PST)
X-Google-Smtp-Source: AJdET5dvpgD3bLOqnm404xJlh1v0TJuwGye2ta1yjr7Fvf5DNFyZt3R1OewzraPiTr5VjCPhRWy7
X-Received: by 2002:a19:d00d:: with SMTP id h13mr1425672lfg.7.1541450147181;
        Mon, 05 Nov 2018 12:35:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1541450147; cv=none;
        d=google.com; s=arc-20160816;
        b=1KYwq1ruF5Qw60o1gptDmkk7S0NDI1nD1i+I+l2Geo8pPilha/DtnEwG9Mu99H0LK5
         JtY98schdEOx4Xd4Bl6nrS+dGNSNTB4lNiO0QlCNMqlTLCC994a0EXb1nwkK0h6HuC0a
         QagLJ6rt5ayFwVEarwvUazohjHj5V/ErIgwj7fk12Jkbyu5G+iKuDFL2ZXvF/TLwOdII
         CsJfGNfAGAoaav5+d5h9GNpQbNTkkGJKehX2XmOEoqDSHKMGDoriJENtxDG/Az60e4x1
         zGes/22AEOWLsMobjP3x/mMyVTH9Ne9yTmfiorPQRn7NBApDVqVIfNmXLwMHtMR6JuMh
         PNow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=GfQeIxjIQRvgZ3vIreBx65Dto1dm12YwIJd16OyMVSQ=;
        b=QAI1bFgyG0DYfuFsl5znksPlvr0dUa0Mrljl9ivG3Z1cHt3RoB7090iaZkNHVjRw2X
         92NU04feCOCTApEnEymGFU47F/5VsQeVJShVLXOaZwdrirEveCHxzcScN9NmJm6HXOi9
         pXEPdPGnHSWylI3DX7gNB0Eje5Vu0nYH+krxQpOgrKyHecH3ivgUtEv+v4er1/X9OfiV
         GOJa/ULCrsiZ6SEgKfS+LmfFcSoRn8H7Zx7QFRunzUVKwid208lgCypJSarxg0MtSF4E
         8akyFMTPZ9GFM0rdgUUHSCgmdyLIJUuu4drzLc27nSTh8qq+G6AF6+Btl6p1p7ZCOTGG
         k4IA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id y27si56189lfb.0.2018.11.05.12.35.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Nov 2018 12:35:47 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,469,1534802400"; 
   d="scan'208";a="354248138"
Received: from 89-157-201-244.rev.numericable.fr (HELO hadrien) ([89.157.201.244])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 05 Nov 2018 21:35:46 +0100
Date: Mon, 5 Nov 2018 21:35:46 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: "Bhagyashri P. Dighole" <digholebhagyashri@gmail.com>
cc: Gao Xiang <gaoxiang25@huawei.com>, Chao Yu <yuchao0@huawei.com>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    Sasha Levin <sashal@kernel.org>, 
    Outreachy <outreachy-kernel@googlegroups.com>, 
    linux-erofs@lists.ozlabs.org
Subject: Re: [Outreachy kernel] [PATCH v5 1/2] staging: erofs: Modify coding
 style alignments
In-Reply-To: <b14ab748b6c00632bb2234000d96a7e1912e2b1b.1541446384.git.digholebhagyashri@gmail.com>
Message-ID: <alpine.DEB.2.21.1811052134450.2459@hadrien>
References: <b14ab748b6c00632bb2234000d96a7e1912e2b1b.1541446384.git.digholebhagyashri@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 5 Nov 2018, Bhagyashri P. Dighole wrote:

> Fix coding style alignment issues detected by checkpatch.pl
> Matched alignments with parenthesis.
>
> Signed-off-by: Bhagyashri P. Dighole <digholebhagyashri@gmail.com>
> Reviewed-by: Gao Xiang <gaoxiang25@huawei.com>

Good job on adding the reviewer.  However, did Gao give a Reviewed-by for
both patches?  I remember only one, but I may have missed it.

In any case, the cover letter for the series seems to have gotten lost in
the shuffle...

julia

> ---
> Changes in v5:
> - Add reviewer.
>
> Changes in v4:
> - Add changelog messages for patch versions.
>
> Changes in v3:
> - Split patch in two patches. Each patch have similar
>   kind of changes. One patch for all alignment fixes and
>     second patch for all conditional check fixes.
>
> Changes in v2:
> - Change for one alignment issue and one conditional check issue.
>
> Changes in v1:
> - Change for all issues in data.c detected by checkpatch.pl
>
>  drivers/staging/erofs/data.c | 51 ++++++++++++++++++------------------
>  1 file changed, 26 insertions(+), 25 deletions(-)
>
> diff --git a/drivers/staging/erofs/data.c b/drivers/staging/erofs/data.c
> index 6384f73e5418..b66191ad44aa 100644
> --- a/drivers/staging/erofs/data.c
> +++ b/drivers/staging/erofs/data.c
> @@ -40,7 +40,7 @@ static inline void read_endio(struct bio *bio)
>
>  /* prio -- true is used for dir */
>  struct page *__erofs_get_meta_page(struct super_block *sb,
> -	erofs_blk_t blkaddr, bool prio, bool nofail)
> +				   erofs_blk_t blkaddr, bool prio, bool nofail)
>  {
>  	struct inode *const bd_inode = sb->s_bdev->bd_inode;
>  	struct address_space *const mapping = bd_inode->i_mapping;
> @@ -76,7 +76,7 @@ struct page *__erofs_get_meta_page(struct super_block *sb,
>  		}
>
>  		__submit_bio(bio, REQ_OP_READ,
> -			REQ_META | (prio ? REQ_PRIO : 0));
> +			     REQ_META | (prio ? REQ_PRIO : 0));
>
>  		lock_page(page);
>
> @@ -107,8 +107,8 @@ struct page *__erofs_get_meta_page(struct super_block *sb,
>  }
>
>  static int erofs_map_blocks_flatmode(struct inode *inode,
> -	struct erofs_map_blocks *map,
> -	int flags)
> +				     struct erofs_map_blocks *map,
> +				     int flags)
>  {
>  	int err = 0;
>  	erofs_blk_t nblocks, lastblk;
> @@ -151,7 +151,7 @@ static int erofs_map_blocks_flatmode(struct inode *inode,
>  		map->m_flags |= EROFS_MAP_META;
>  	} else {
>  		errln("internal error @ nid: %llu (size %llu), m_la 0x%llx",
> -			vi->nid, inode->i_size, map->m_la);
> +		      vi->nid, inode->i_size, map->m_la);
>  		DBG_BUGON(1);
>  		err = -EIO;
>  		goto err_out;
> @@ -167,12 +167,13 @@ static int erofs_map_blocks_flatmode(struct inode *inode,
>
>  #ifdef CONFIG_EROFS_FS_ZIP
>  extern int z_erofs_map_blocks_iter(struct inode *,
> -	struct erofs_map_blocks *, struct page **, int);
> +				   struct erofs_map_blocks *,
> +				   struct page **, int);
>  #endif
>
>  int erofs_map_blocks_iter(struct inode *inode,
> -	struct erofs_map_blocks *map,
> -	struct page **mpage_ret, int flags)
> +			  struct erofs_map_blocks *map,
> +			  struct page **mpage_ret, int flags)
>  {
>  	/* by default, reading raw data never use erofs_map_blocks_iter */
>  	if (unlikely(!is_inode_layout_compression(inode))) {
> @@ -192,7 +193,7 @@ int erofs_map_blocks_iter(struct inode *inode,
>  }
>
>  int erofs_map_blocks(struct inode *inode,
> -	struct erofs_map_blocks *map, int flags)
> +		     struct erofs_map_blocks *map, int flags)
>  {
>  	if (unlikely(is_inode_layout_compression(inode))) {
>  		struct page *mpage = NULL;
> @@ -206,13 +207,12 @@ int erofs_map_blocks(struct inode *inode,
>  	return erofs_map_blocks_flatmode(inode, map, flags);
>  }
>
> -static inline struct bio *erofs_read_raw_page(
> -	struct bio *bio,
> -	struct address_space *mapping,
> -	struct page *page,
> -	erofs_off_t *last_block,
> -	unsigned int nblocks,
> -	bool ra)
> +static inline struct bio *erofs_read_raw_page(struct bio *bio,
> +					      struct address_space *mapping,
> +					      struct page *page,
> +					      erofs_off_t *last_block,
> +					      unsigned int nblocks,
> +					      bool ra)
>  {
>  	struct inode *inode = mapping->host;
>  	erofs_off_t current_block = (erofs_off_t)page->index;
> @@ -233,8 +233,8 @@ static inline struct bio *erofs_read_raw_page(
>
>  	/* note that for readpage case, bio also equals to NULL */
>  	if (bio != NULL &&
> -		/* not continuous */
> -		*last_block + 1 != current_block) {
> +	    /* not continuous */
> +	    *last_block + 1 != current_block) {
>  submit_bio_retry:
>  		__submit_bio(bio, REQ_OP_READ, 0);
>  		bio = NULL;
> @@ -307,7 +307,7 @@ static inline struct bio *erofs_read_raw_page(
>  			nblocks = BIO_MAX_PAGES;
>
>  		bio = erofs_grab_bio(inode->i_sb,
> -			blknr, nblocks, read_endio, false);
> +				     blknr, nblocks, read_endio, false);
>
>  		if (IS_ERR(bio)) {
>  			err = PTR_ERR(bio);
> @@ -361,7 +361,7 @@ static int erofs_raw_access_readpage(struct file *file, struct page *page)
>  	trace_erofs_readpage(page, true);
>
>  	bio = erofs_read_raw_page(NULL, page->mapping,
> -		page, &last_block, 1, false);
> +				  page, &last_block, 1, false);
>
>  	if (IS_ERR(bio))
>  		return PTR_ERR(bio);
> @@ -371,8 +371,9 @@ static int erofs_raw_access_readpage(struct file *file, struct page *page)
>  }
>
>  static int erofs_raw_access_readpages(struct file *filp,
> -	struct address_space *mapping,
> -	struct list_head *pages, unsigned int nr_pages)
> +				      struct address_space *mapping,
> +				      struct list_head *pages,
> +				      unsigned int nr_pages)
>  {
>  	erofs_off_t last_block;
>  	struct bio *bio = NULL;
> @@ -389,13 +390,13 @@ static int erofs_raw_access_readpages(struct file *filp,
>
>  		if (!add_to_page_cache_lru(page, mapping, page->index, gfp)) {
>  			bio = erofs_read_raw_page(bio, mapping, page,
> -				&last_block, nr_pages, true);
> +						  &last_block, nr_pages, true);
>
>  			/* all the page errors are ignored when readahead */
>  			if (IS_ERR(bio)) {
>  				pr_err("%s, readahead error at page %lu of nid %llu\n",
> -					__func__, page->index,
> -					EROFS_V(mapping->host)->nid);
> +				       __func__, page->index,
> +				       EROFS_V(mapping->host)->nid);
>
>  				bio = NULL;
>  			}
> --
> 2.19.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/b14ab748b6c00632bb2234000d96a7e1912e2b1b.1541446384.git.digholebhagyashri%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

