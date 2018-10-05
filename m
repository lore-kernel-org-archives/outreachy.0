X-GM-THRID: 6608926139833384960
Date: Fri, 5 Oct 2018 10:31:14 -0700 (PDT)
From: code@wizofe.uk
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <108b7381-d660-422d-a31c-1468f406ff68@googlegroups.com>
In-Reply-To: <20181005172841.GA26217@kvasir.local>
References: <20181005172841.GA26217@kvasir.local>
Subject: Re: [PATCH] staging: erofs: fix indenting to conform to kernel
 coding style
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_971_292546559.1538760674655"
X-Google-Token: EOK_3t0F7oo_Y0Mdcw40
X-Google-IP: 90.254.43.240

------=_Part_971_292546559.1538760674655
Content-Type: multipart/alternative; 
	boundary="----=_Part_972_258307943.1538760674656"

------=_Part_972_258307943.1538760674656
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On Friday, 5 October 2018 18:28:46 UTC+1, Ioannis Valasakis wrote:
>
> Cleanup all inconsistent indenting to conform to kernel coding style. 
> Reported by checkpatch. 
>
>
I sent already this message to gregkh and to the maintainers but my email 
to outreachy was mispelled. Other than that it arrived to the right people.
 

> Signed-off-by: Ioannis Valasakis <code@wizofe.uk> 
> --- 
>  drivers/staging/erofs/data.c | 56 ++++++++++++++++++------------------ 
>  1 file changed, 28 insertions(+), 28 deletions(-) 
>
> diff --git a/drivers/staging/erofs/data.c b/drivers/staging/erofs/data.c 
> index 6384f73e5418..ffd392e74803 100644 
> --- a/drivers/staging/erofs/data.c 
> +++ b/drivers/staging/erofs/data.c 
> @@ -40,7 +40,7 @@ static inline void read_endio(struct bio *bio) 
>   
>  /* prio -- true is used for dir */ 
>  struct page *__erofs_get_meta_page(struct super_block *sb, 
> -        erofs_blk_t blkaddr, bool prio, bool nofail) 
> +                                   erofs_blk_t blkaddr, bool prio, bool 
> nofail) 
>  { 
>          struct inode *const bd_inode = sb->s_bdev->bd_inode; 
>          struct address_space *const mapping = bd_inode->i_mapping; 
> @@ -53,7 +53,7 @@ struct page *__erofs_get_meta_page(struct super_block 
> *sb, 
>   
>  repeat: 
>          page = find_or_create_page(mapping, blkaddr, gfp); 
> -        if (unlikely(page == NULL)) { 
> +        if (unlikely(!page)) { 
>                  DBG_BUGON(nofail); 
>                  return ERR_PTR(-ENOMEM); 
>          } 
> @@ -76,7 +76,7 @@ struct page *__erofs_get_meta_page(struct super_block 
> *sb, 
>                  } 
>   
>                  __submit_bio(bio, REQ_OP_READ, 
> -                        REQ_META | (prio ? REQ_PRIO : 0)); 
> +                             REQ_META | (prio ? REQ_PRIO : 0)); 
>   
>                  lock_page(page); 
>   
> @@ -107,7 +107,7 @@ struct page *__erofs_get_meta_page(struct super_block 
> *sb, 
>  } 
>   
>  static int erofs_map_blocks_flatmode(struct inode *inode, 
> -        struct erofs_map_blocks *map, 
> +                                     struct erofs_map_blocks *map, 
>          int flags) 
>  { 
>          int err = 0; 
> @@ -151,7 +151,7 @@ static int erofs_map_blocks_flatmode(struct inode 
> *inode, 
>                  map->m_flags |= EROFS_MAP_META; 
>          } else { 
>                  errln("internal error @ nid: %llu (size %llu), m_la 
> 0x%llx", 
> -                        vi->nid, inode->i_size, map->m_la); 
> +                      vi->nid, inode->i_size, map->m_la); 
>                  DBG_BUGON(1); 
>                  err = -EIO; 
>                  goto err_out; 
> @@ -167,16 +167,17 @@ static int erofs_map_blocks_flatmode(struct inode 
> *inode, 
>   
>  #ifdef CONFIG_EROFS_FS_ZIP 
>  extern int z_erofs_map_blocks_iter(struct inode *, 
> -        struct erofs_map_blocks *, struct page **, int); 
> +                                   struct erofs_map_blocks *, 
> +                                   struct page **, int); 
>  #endif 
>   
>  int erofs_map_blocks_iter(struct inode *inode, 
> -        struct erofs_map_blocks *map, 
> +                          struct erofs_map_blocks *map, 
>          struct page **mpage_ret, int flags) 
>  { 
>          /* by default, reading raw data never use erofs_map_blocks_iter 
> */ 
>          if (unlikely(!is_inode_layout_compression(inode))) { 
> -                if (*mpage_ret != NULL) 
> +                if (*mpage_ret) 
>                          put_page(*mpage_ret); 
>                  *mpage_ret = NULL; 
>   
> @@ -192,27 +193,27 @@ int erofs_map_blocks_iter(struct inode *inode, 
>  } 
>   
>  int erofs_map_blocks(struct inode *inode, 
> -        struct erofs_map_blocks *map, int flags) 
> +                     struct erofs_map_blocks *map, int flags) 
>  { 
>          if (unlikely(is_inode_layout_compression(inode))) { 
>                  struct page *mpage = NULL; 
>                  int err; 
>   
>                  err = erofs_map_blocks_iter(inode, map, &mpage, flags); 
> -                if (mpage != NULL) 
> +                if (mpage) 
>                          put_page(mpage); 
>                  return err; 
>          } 
>          return erofs_map_blocks_flatmode(inode, map, flags); 
>  } 
>   
> -static inline struct bio *erofs_read_raw_page( 
> -        struct bio *bio, 
> -        struct address_space *mapping, 
> -        struct page *page, 
> -        erofs_off_t *last_block, 
> -        unsigned int nblocks, 
> -        bool ra) 
> +static inline struct bio *erofs_read_raw_page 
> +        (struct bio *bio, 
> +         struct address_space *mapping, 
> +         struct page *page, 
> +         erofs_off_t *last_block, 
> +         unsigned int nblocks, 
> +         bool ra) 
>  { 
>          struct inode *inode = mapping->host; 
>          erofs_off_t current_block = (erofs_off_t)page->index; 
> @@ -232,15 +233,15 @@ static inline struct bio *erofs_read_raw_page( 
>          } 
>   
>          /* note that for readpage case, bio also equals to NULL */ 
> -        if (bio != NULL && 
> -                /* not continuous */ 
> +        if (bio && 
> +            /* not continuous */ 
>                  *last_block + 1 != current_block) { 
>  submit_bio_retry: 
>                  __submit_bio(bio, REQ_OP_READ, 0); 
>                  bio = NULL; 
>          } 
>   
> -        if (bio == NULL) { 
> +        if (!bio) { 
>                  struct erofs_map_blocks map = { 
>                          .m_la = blknr_to_addr(current_block), 
>                  }; 
> @@ -307,7 +308,7 @@ static inline struct bio *erofs_read_raw_page( 
>                          nblocks = BIO_MAX_PAGES; 
>   
>                  bio = erofs_grab_bio(inode->i_sb, 
> -                        blknr, nblocks, read_endio, false); 
> +                                     blknr, nblocks, read_endio, false); 
>   
>                  if (IS_ERR(bio)) { 
>                          err = PTR_ERR(bio); 
> @@ -342,7 +343,7 @@ static inline struct bio *erofs_read_raw_page( 
>          unlock_page(page); 
>   
>          /* if updated manually, continuous pages has a gap */ 
> -        if (bio != NULL) 
> +        if (bio) 
>  submit_bio_out: 
>                  __submit_bio(bio, REQ_OP_READ, 0); 
>   
> @@ -361,7 +362,7 @@ static int erofs_raw_access_readpage(struct file 
> *file, struct page *page) 
>          trace_erofs_readpage(page, true); 
>   
>          bio = erofs_read_raw_page(NULL, page->mapping, 
> -                page, &last_block, 1, false); 
> +                                  page, &last_block, 1, false); 
>   
>          if (IS_ERR(bio)) 
>                  return PTR_ERR(bio); 
> @@ -371,7 +372,7 @@ static int erofs_raw_access_readpage(struct file 
> *file, struct page *page) 
>  } 
>   
>  static int erofs_raw_access_readpages(struct file *filp, 
> -        struct address_space *mapping, 
> +                                      struct address_space *mapping, 
>          struct list_head *pages, unsigned int nr_pages) 
>  { 
>          erofs_off_t last_block; 
> @@ -389,12 +390,12 @@ static int erofs_raw_access_readpages(struct file 
> *filp, 
>   
>                  if (!add_to_page_cache_lru(page, mapping, page->index, 
> gfp)) { 
>                          bio = erofs_read_raw_page(bio, mapping, page, 
> -                                &last_block, nr_pages, true); 
> +                                                  &last_block, nr_pages, 
> true); 
>   
>                          /* all the page errors are ignored when readahead 
> */ 
>                          if (IS_ERR(bio)) { 
>                                  pr_err("%s, readahead error at page %lu 
> of nid %llu\n", 
> -                                        __func__, page->index, 
> +                                       __func__, page->index, 
>                                          EROFS_V(mapping->host)->nid); 
>   
>                                  bio = NULL; 
> @@ -407,7 +408,7 @@ static int erofs_raw_access_readpages(struct file 
> *filp, 
>          DBG_BUGON(!list_empty(pages)); 
>   
>          /* the rare case (end in gaps) */ 
> -        if (unlikely(bio != NULL)) 
> +        if (unlikely(bio)) 
>                  __submit_bio(bio, REQ_OP_READ, 0); 
>          return 0; 
>  } 
> @@ -417,4 +418,3 @@ const struct address_space_operations 
> erofs_raw_access_aops = { 
>          .readpage = erofs_raw_access_readpage, 
>          .readpages = erofs_raw_access_readpages, 
>  }; 
> - 
> -- 
> 2.19.0 
>
>
>
------=_Part_972_258307943.1538760674656
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On Friday, 5 October 2018 18:28:46 UTC+1, Ioannis Valasaki=
s wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-left: 0=
.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">Cleanup all inconsiste=
nt indenting to conform to kernel coding style.
<br>Reported by checkpatch.
<br>
<br></blockquote><div><br></div><div>I sent already this message to gregkh =
and to the maintainers but my email to outreachy was mispelled. Other than =
that it arrived to the right people.<br></div><div>=C2=A0</div><blockquote =
class=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex;border-left: 1p=
x #ccc solid;padding-left: 1ex;">Signed-off-by: Ioannis Valasakis &lt;<a hr=
ef=3D"mailto:code@wizofe.uk" target=3D"_blank" rel=3D"nofollow" onmousedown=
=3D"this.href=3D&#39;mailto:code@wizofe.uk&#39;;return true;" onclick=3D"th=
is.href=3D&#39;mailto:code@wizofe.uk&#39;;return true;">code@wizofe.uk</a>&=
gt;
<br>---
<br>=C2=A0drivers/staging/erofs/data.c | 56 ++++++++++++++++++------------<=
wbr>------
<br>=C2=A01 file changed, 28 insertions(+), 28 deletions(-)
<br>
<br>diff --git a/drivers/staging/erofs/data.c b/drivers/staging/erofs/data.=
c
<br>index 6384f73e5418..ffd392e74803 100644
<br>--- a/drivers/staging/erofs/data.c
<br>+++ b/drivers/staging/erofs/data.c
<br>@@ -40,7 +40,7 @@ static inline void read_endio(struct bio *bio)
<br>=C2=A0
<br>=C2=A0/* prio -- true is used for dir */
<br>=C2=A0struct page *__erofs_get_meta_page(struct super_block *sb,
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0erofs_blk_t blkaddr, b=
ool prio, bool nofail)
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0 =C2=A0 erofs_blk_t bl=
kaddr, bool prio, bool nofail)
<br>=C2=A0{
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct inode *con=
st bd_inode =3D sb-&gt;s_bdev-&gt;bd_inode;
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct address_sp=
ace *const mapping =3D bd_inode-&gt;i_mapping;
<br>@@ -53,7 +53,7 @@ struct page *__erofs_get_meta_page(struct super_block=
 *sb,
<br>=C2=A0
<br>=C2=A0repeat:
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0page =3D find_or_=
create_page(mapping, blkaddr, gfp);
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (unlikely(page =3D=
=3D NULL)) {
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (unlikely(!page)) {
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0DBG_BUGON(<wbr>nofail);
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return ERR_PTR(-ENOMEM);
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>@@ -76,7 +76,7 @@ struct page *__erofs_get_meta_page(struct super_block=
 *sb,
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>=C2=A0
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0__submit_bio(<wbr>bio, REQ_OP_READ,
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
REQ_<wbr>META | (prio ? REQ_PRIO : 0));
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 =C2=A0 =C2=A0 REQ_META | (prio ? REQ_PRIO : 0));
<br>=C2=A0
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0lock_page(<wbr>page);
<br>=C2=A0
<br>@@ -107,7 +107,7 @@ struct page *__erofs_get_meta_page(struct super_blo=
ck *sb,
<br>=C2=A0}
<br>=C2=A0
<br>=C2=A0static int erofs_map_blocks_flatmode(<wbr>struct inode *inode,
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct erofs_map_block=
s *map,
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 struct =
erofs_map_blocks *map,
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0int flags)
<br>=C2=A0{
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0int err =3D 0;
<br>@@ -151,7 +151,7 @@ static int erofs_map_blocks_flatmode(<wbr>struct in=
ode *inode,
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0map-&gt;m_flags |=3D EROFS_MAP_META;
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0} else {
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0errln(&quot;<wbr>internal error @ nid: %ll=
u (size %llu), m_la 0x%llx&quot;,
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
vi-&gt;<wbr>nid, inode-&gt;i_size, map-&gt;m_la);
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0vi-&gt;nid, inode-&gt;i_siz=
e, map-&gt;m_la);
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0DBG_BUGON(1);
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0err =3D -EIO;
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0goto err_out;
<br>@@ -167,16 +167,17 @@ static int erofs_map_blocks_flatmode(<wbr>struct =
inode *inode,
<br>=C2=A0
<br>=C2=A0#ifdef CONFIG_EROFS_FS_ZIP
<br>=C2=A0extern int z_erofs_map_blocks_iter(struct inode *,
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct erofs_map_block=
s *, struct page **, int);
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0 =C2=A0 struct erofs_m=
ap_blocks *,
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0 =C2=A0 struct page **=
, int);
<br>=C2=A0#endif
<br>=C2=A0
<br>=C2=A0int erofs_map_blocks_iter(struct inode *inode,
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct erofs_map_block=
s *map,
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 =C2=A0struct erofs_map_blocks *map,
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct page **mpa=
ge_ret, int flags)
<br>=C2=A0{
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* by default, re=
ading raw data never use erofs_map_blocks_iter */
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (unlikely(!is_=
inode_layout_<wbr>compression(inode))) {
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0if (*mpage_ret !=3D NULL)
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0if (*mpage_ret)
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0put_<wbr>page(*mpage_ret);
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0*mpage_ret =3D NULL;
<br>=C2=A0
<br>@@ -192,27 +193,27 @@ int erofs_map_blocks_iter(struct inode *inode,
<br>=C2=A0}
<br>=C2=A0
<br>=C2=A0int erofs_map_blocks(struct inode *inode,
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct erofs_map_block=
s *map, int flags)
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 struct erofs_map_blocks *map, int=
 flags)
<br>=C2=A0{
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (unlikely(is_i=
node_layout_<wbr>compression(inode))) {
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct page *mpage =3D NULL;
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0int err;
<br>=C2=A0
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0err =3D erofs_map_blocks_iter(inode, map, =
&amp;mpage, flags);
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0if (mpage !=3D NULL)
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0if (mpage)
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0put_<wbr>page(mpage);
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return err;
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return erofs_map_=
blocks_flatmode(<wbr>inode, map, flags);
<br>=C2=A0}
<br>=C2=A0
<br>-static inline struct bio *erofs_read_raw_page(
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct bio *bio,
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct address_space *=
mapping,
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct page *page,
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0erofs_off_t *last_bloc=
k,
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0unsigned int nblocks,
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0bool ra)
<br>+static inline struct bio *erofs_read_raw_page
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0(struct bio *bio,
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 struct address_space =
*mapping,
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 struct page *page,
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 erofs_off_t *last_blo=
ck,
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 unsigned int nblocks,
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 bool ra)
<br>=C2=A0{
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct inode *ino=
de =3D mapping-&gt;host;
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0erofs_off_t curre=
nt_block =3D (erofs_off_t)page-&gt;index;
<br>@@ -232,15 +233,15 @@ static inline struct bio *erofs_read_raw_page(
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>=C2=A0
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* note that for =
readpage case, bio also equals to NULL */
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (bio !=3D NULL &amp=
;&amp;
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0/* not continuous */
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (bio &amp;&amp;
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0/* not c=
ontinuous */
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0*last_block + 1 !=3D current_block) {
<br>=C2=A0submit_bio_retry:
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0__submit_bio(<wbr>bio, REQ_OP_READ, 0);
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0bio =3D NULL;
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>=C2=A0
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (bio =3D=3D NULL) {
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (!bio) {
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct erofs_map_blocks map =3D {
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0.m_la =3D blknr_to_addr(current_block),
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0};
<br>@@ -307,7 +308,7 @@ static inline struct bio *erofs_read_raw_page(
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>nblocks =3D BIO_MAX_PAGES;
<br>=C2=A0
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0bio =3D erofs_grab_bio(inode-&gt;i_sb,
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
<wbr>blknr, nblocks, read_endio, false);
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 blknr, =
nblocks, read_endio, false);
<br>=C2=A0
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (IS_ERR(bio)) {
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0err =3D PTR_ERR(bio);
<br>@@ -342,7 +343,7 @@ static inline struct bio *erofs_read_raw_page(
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0unlock_page(page)=
;
<br>=C2=A0
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* if updated man=
ually, continuous pages has a gap */
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (bio !=3D NULL)
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (bio)
<br>=C2=A0submit_bio_out:
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0__submit_bio(<wbr>bio, REQ_OP_READ, 0);
<br>=C2=A0
<br>@@ -361,7 +362,7 @@ static int erofs_raw_access_readpage(<wbr>struct fi=
le *file, struct page *page)
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0trace_erofs_readp=
age(<wbr>page, true);
<br>=C2=A0
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0bio =3D erofs_rea=
d_raw_page(NULL, page-&gt;mapping,
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0page, &amp;last_block, 1, false);
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0 =C2=A0page, &amp;last=
_block, 1, false);
<br>=C2=A0
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (IS_ERR(bio))
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return PTR_ERR(bio);
<br>@@ -371,7 +372,7 @@ static int erofs_raw_access_readpage(<wbr>struct fi=
le *file, struct page *page)
<br>=C2=A0}
<br>=C2=A0
<br>=C2=A0static int erofs_raw_access_readpages(<wbr>struct file *filp,
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct address_space *=
mapping,
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0s=
truct address_space *mapping,
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct list_head =
*pages, unsigned int nr_pages)
<br>=C2=A0{
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0erofs_off_t last_=
block;
<br>@@ -389,12 +390,12 @@ static int erofs_raw_access_readpages(<wbr>struct=
 file *filp,
<br>=C2=A0
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (!add_to_page_cache_lru(page, mapping, =
page-&gt;index, gfp)) {
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0bio =3D erofs_read_raw_page(bio, mapping, page,
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0&amp;last_block, nr_pa=
ges, true);
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 =C2=A0&amp;last_block, nr_pages, true);
<br>=C2=A0
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0/* all the page errors are ignored when readahead */
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0if (IS_ERR(bio)) {
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0pr_err(&quot;%s,=
 readahead error at page %lu of nid %llu\n&quot;,
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0__func__, page-&gt;index,
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
__func__, page-&gt;index,
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0EROFS_V(mapping-&gt;<wbr>host)-&gt;nid);
<br>=C2=A0
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0bio =3D NULL;
<br>@@ -407,7 +408,7 @@ static int erofs_raw_access_readpages(<wbr>struct f=
ile *filp,
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0DBG_BUGON(!list_<=
wbr>empty(pages));
<br>=C2=A0
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* the rare case =
(end in gaps) */
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (unlikely(bio !=3D =
NULL))
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (unlikely(bio))
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0__submit_bio(<wbr>bio, REQ_OP_READ, 0);
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return 0;
<br>=C2=A0}
<br>@@ -417,4 +418,3 @@ const struct address_space_operations erofs_raw_acc=
ess_aops =3D {
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0.readpage =3D ero=
fs_raw_access_readpage,
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0.readpages =3D er=
ofs_raw_access_readpages,
<br>=C2=A0};
<br>-
<br>--=20
<br>2.19.0
<br>
<br>
<br></blockquote></div>
------=_Part_972_258307943.1538760674656--

------=_Part_971_292546559.1538760674655--

