X-GM-THRID: 6620077565776232448
X-Received: by 2002:a17:906:12d2:: with SMTP id l18-v6mr1285274ejb.3.1541357421796;
        Sun, 04 Nov 2018 10:50:21 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:d194:: with SMTP id c20-v6ls2451876ejz.4.gmail; Sun,
 04 Nov 2018 10:50:20 -0800 (PST)
X-Google-Smtp-Source: AJdET5f6mIpWFY1o32dLzzjjnrg8o9f+67Mx+3mdaI4LPXRRtK4DWIDpTPAB0hGW8rQRCSN0BeUu
X-Received: by 2002:a17:906:558d:: with SMTP id y13-v6mr299187ejp.11.1541357420895;
        Sun, 04 Nov 2018 10:50:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1541357420; cv=none;
        d=google.com; s=arc-20160816;
        b=ao2yx09Qko80o0lfTA3ig6kJaxKcPtp+TO3mWjKIC0k7E+JOpgmVlPktEgDvVuOGYY
         4kEsfbmrMpevwJn+pT9twL5c4lX7H23VZIt5Qmq6CjvFZBCGUGgTV0fCVvUt1Y/O24s4
         OnEyZpoCZwSmTjh8ExfspUp0vV35p7tJWnMs0KwzGfJwXpeQG1PjQEUusJvm+9WW9PX0
         +0Lx016sEu4t3DPwjQUmUKcrcaM7APw6Fi6zCemUtwaB/2qUanPcr+ZJ6i98iB7PnnmX
         4ZF/w0Ponfsb3QqjZRHzu/1g+f2od4zoRlOsSUPr0eON+ui3uD7F03n8hzaV/FfalrPv
         e6Mw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=Qp7CFXFq3DiiSePjp/Exyel/pQjg7KbBBu8UAkirDos=;
        b=IC71zXHpYrDH7RjI9925S+ugTECQ7hhoEMRvAosMC94ukQGgq9sUuI77vvQAA56q0v
         810EBDGq9H77SwLgXszUBYHFn7EJV6mxm/LV1gHM9IXzDsYXVF/IHAdIiojhWIhW/C+6
         lV5Yx1nmqo3tWd2dGvt9P0yts9qCML2t60X4c4gyBaCKNWMwLZDxghBE3wPm3x3PTCd9
         E5ibrlYsKFKGH1ObphQTGgoCNigaIyXb9+1bNeF4kjyexfuWhOKv4q93vWgRkCidJ9dc
         kgdnUJKjs2MII6DQnQ+UvfSHJEJXeljnr0Kbdg8EdCF3JDlbqq7wxTVsHD5j/NyTCP8f
         Ix4A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id n20-v6si742663edt.3.2018.11.04.10.50.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Nov 2018 10:50:20 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,465,1534802400"; 
   d="scan'208";a="354056698"
Received: from 89-157-201-244.rev.numericable.fr (HELO hadrien) ([89.157.201.244])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 04 Nov 2018 19:50:20 +0100
Date: Sun, 4 Nov 2018 19:50:20 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: "Bhagyashri P. Dighole" <digholebhagyashri@gmail.com>
cc: Gao Xiang <gaoxiang25@huawei.com>, Chao Yu <yuchao0@huawei.com>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    Outreachy <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: erofs: Fix alignment issues
 and warnings.
In-Reply-To: <20181104184153.GA16136@bhagyashri-Lenovo-G570>
Message-ID: <alpine.DEB.2.21.1811041948210.2360@hadrien>
References: <20181104184153.GA16136@bhagyashri-Lenovo-G570>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 5 Nov 2018, Bhagyashri P. Dighole wrote:

> This patch includes modifications for alignment and warnings
> as per the coding standards. Also, this patch includes fix
> for syntanctical and logical errors.

A patch should only do one thing.  So this should be split up into a
series of patches.  What are the logical errors?  If you are actually
changing the semantics of something, then it should be made clear what is
wrong and why the change represents a fix.

julia

>
> Signed-off-by: Bhagyashri P. Dighole <digholebhagyashri@gmail.com>
> ---
>  drivers/staging/erofs/data.c | 65 ++++++++++++++++++++++----------------------
>  1 file changed, 33 insertions(+), 32 deletions(-)
>
> diff --git a/drivers/staging/erofs/data.c b/drivers/staging/erofs/data.c
> index 6384f73..6fec5e6 100644
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
> @@ -53,7 +53,7 @@ struct page *__erofs_get_meta_page(struct super_block *sb,
>
>  repeat:
>  	page = find_or_create_page(mapping, blkaddr, gfp);
> -	if (unlikely(page == NULL)) {
> +	if (unlikely(!page)) {
>  		DBG_BUGON(nofail);
>  		return ERR_PTR(-ENOMEM);
>  	}
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
> @@ -167,16 +167,17 @@ static int erofs_map_blocks_flatmode(struct inode *inode,
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
> -		if (*mpage_ret != NULL)
> +		if (*mpage_ret)
>  			put_page(*mpage_ret);
>  		*mpage_ret = NULL;
>
> @@ -192,27 +193,26 @@ int erofs_map_blocks_iter(struct inode *inode,
>  }
>
>  int erofs_map_blocks(struct inode *inode,
> -	struct erofs_map_blocks *map, int flags)
> +		     struct erofs_map_blocks *map, int flags)
>  {
>  	if (unlikely(is_inode_layout_compression(inode))) {
>  		struct page *mpage = NULL;
>  		int err;
>
>  		err = erofs_map_blocks_iter(inode, map, &mpage, flags);
> -		if (mpage != NULL)
> +		if (mpage)
>  			put_page(mpage);
>  		return err;
>  	}
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
> @@ -232,15 +232,15 @@ static inline struct bio *erofs_read_raw_page(
>  	}
>
>  	/* note that for readpage case, bio also equals to NULL */
> -	if (bio != NULL &&
> -		/* not continuous */
> -		*last_block + 1 != current_block) {
> +	if (bio &&
> +	    /* not continuous */
> +	    *last_block + 1 != current_block) {
>  submit_bio_retry:
>  		__submit_bio(bio, REQ_OP_READ, 0);
>  		bio = NULL;
>  	}
>
> -	if (bio == NULL) {
> +	if (bio) {
>  		struct erofs_map_blocks map = {
>  			.m_la = blknr_to_addr(current_block),
>  		};
> @@ -307,7 +307,7 @@ static inline struct bio *erofs_read_raw_page(
>  			nblocks = BIO_MAX_PAGES;
>
>  		bio = erofs_grab_bio(inode->i_sb,
> -			blknr, nblocks, read_endio, false);
> +				     blknr, nblocks, read_endio, false);
>
>  		if (IS_ERR(bio)) {
>  			err = PTR_ERR(bio);
> @@ -342,7 +342,7 @@ static inline struct bio *erofs_read_raw_page(
>  	unlock_page(page);
>
>  	/* if updated manually, continuous pages has a gap */
> -	if (bio != NULL)
> +	if (!bio)
>  submit_bio_out:
>  		__submit_bio(bio, REQ_OP_READ, 0);
>
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
> @@ -407,7 +408,7 @@ static int erofs_raw_access_readpages(struct file *filp,
>  	DBG_BUGON(!list_empty(pages));
>
>  	/* the rare case (end in gaps) */
> -	if (unlikely(bio != NULL))
> +	if (unlikely(bio))
>  		__submit_bio(bio, REQ_OP_READ, 0);
>  	return 0;
>  }
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20181104184153.GA16136%40bhagyashri-Lenovo-G570.
> For more options, visit https://groups.google.com/d/optout.
>

