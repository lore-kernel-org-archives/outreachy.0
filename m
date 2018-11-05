X-GM-THRID: 6620347424824098816
X-Received: by 2002:a17:906:66d9:: with SMTP id k25-v6mr1623958ejp.4.1541432293165;
        Mon, 05 Nov 2018 07:38:13 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:2a93:: with SMTP id l19-v6ls1101955eje.8.gmail; Mon,
 05 Nov 2018 07:38:12 -0800 (PST)
X-Google-Smtp-Source: AJdET5fVp8DzB1NV3jaMkTRdQlMvGQSboEC630WJ8WKJNM3l3tK6rRGZ0Pb3tbvBmoU7H4XcCm0r
X-Received: by 2002:a17:906:66d9:: with SMTP id k25-v6mr1623951ejp.4.1541432292389;
        Mon, 05 Nov 2018 07:38:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1541432292; cv=none;
        d=google.com; s=arc-20160816;
        b=SAT+5SOLNXZ36IB40PhUVyJwwBgYoO+b9Q2C2IqLElPqhSvpvG1bi6N6m+bs11Ndp/
         0SUYwba72t7imbgf4+O36I5orQFCQLxc93JV2PpHnlo9SmNaFZcGDPaQ1FiQmZKVTbp/
         xT4dFX2LssXqnsoeeYu8Bxi8qyqqyoZUN/YCOjSqIyIeMOmmt+u758NQB/4eEdiYjd4c
         /QxES9h/15kNGDsGFvMnair4LmxzwFZPhUkibkknMmX8smXxWuKar4SSxWbi1AUov1wz
         aAmhtuPxR9n6A+0y7V3yPBz6jqcs78fq+vf0kN1nfoNbomKze6N7Cj/aIY8C1TBaEFcq
         Z5og==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject;
        bh=97u02wT7tfzON9jgcpE8UYk1Gxv8EWVJ6ox6VkZn0JY=;
        b=TfLDn1SqMDqiKka92UsQmoMH8wTFuFuQ4GNV5gLqx2f1BdILnkCOFnnCbPKvXvIdJX
         +vNkjRWBxB2PfCUuIvA9frskePwbXOI1nTo4o69SELYqQ5trJFLtB6+x0o6lGioEibf2
         dDv0EdZJ9deCaqYqG7AOp/wBwO9/wQXyv3p3W29n0DrpJex4dhuF4wHuwM7zVe+UjH3l
         7VH/kmnc1Q+FP0Ur1ahKcZ6LCVF2wmpRHDs5pFvZ6lLQglCxIaVNLGA8+rHkQgXJlten
         NXJxnMZezUO2wwpEz3lIqQ+onU4qxdmvxozcRe/kxWtCrwDfN77YQydKMGTankNyi7ns
         BIDA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gaoxiang25@huawei.com designates 45.249.212.32 as permitted sender) smtp.mailfrom=gaoxiang25@huawei.com
Return-Path: <gaoxiang25@huawei.com>
Received: from huawei.com (szxga06-in.huawei.com. [45.249.212.32])
        by gmr-mx.google.com with ESMTPS id a35-v6si298570edd.1.2018.11.05.07.38.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Nov 2018 07:38:12 -0800 (PST)
Received-SPF: pass (google.com: domain of gaoxiang25@huawei.com designates 45.249.212.32 as permitted sender) client-ip=45.249.212.32;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gaoxiang25@huawei.com designates 45.249.212.32 as permitted sender) smtp.mailfrom=gaoxiang25@huawei.com
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.59])
	by Forcepoint Email with ESMTP id B7F561BD49E82;
	Mon,  5 Nov 2018 23:37:57 +0800 (CST)
Received: from [10.151.23.176] (10.151.23.176) by smtp.huawei.com
 (10.3.19.207) with Microsoft SMTP Server (TLS) id 14.3.408.0; Mon, 5 Nov 2018
 23:37:50 +0800
Subject: Re: [PATCH v3 1/2] staging: erofs: Modify coding style alignments
To: "Bhagyashri P. Dighole" <digholebhagyashri@gmail.com>
CC: Chao Yu <yuchao0@huawei.com>, Greg Kroah-Hartman
	<gregkh@linuxfoundation.org>, Sasha Levin <sashal@kernel.org>, Outreachy
	<outreachy-kernel@googlegroups.com>, <linux-erofs@lists.ozlabs.org>
References: <b14ab748b6c00632bb2234000d96a7e1912e2b1b.1541421259.git.digholebhagyashri@gmail.com>
From: Gao Xiang <gaoxiang25@huawei.com>
Message-ID: <289933f0-ff7b-674c-eed3-25f3aa8d64cb@huawei.com>
Date: Mon, 5 Nov 2018 23:37:39 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <b14ab748b6c00632bb2234000d96a7e1912e2b1b.1541421259.git.digholebhagyashri@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.151.23.176]
X-CFilter-Loop: Reflected

Hi Bhagyashri,

On 2018/11/5 22:49, Bhagyashri P. Dighole wrote:
> Fix coding style alignment issues detected by checkpatch.pl
> Matched alignments with parenthesis.
> 
> Signed-off-by: Bhagyashri P. Dighole <digholebhagyashri@gmail.com>

This patch looks good to me. I think you could add, could be better to hear others idea...
Reviewed-by: Gao Xiang <gaoxiang25@huawei.com>

Thanks,
Gao Xiang

> ---
> Changes in v3:
> - Split patch in two patches. Each patch have similar 
>   kind of changes. One patch for all alignment fixes and 
>   second patch for all conditional check fixes.
> 
> Changes in v2:
> - Fix for one alignment issue and one conditional check issue.
> 
> Changes in v1:
> - Fix for all issues in data.c
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
> 

