X-GM-THRID: 6608926139833384960
X-Received: by 2002:a37:b0c2:: with SMTP id z185-v6mr10062486qke.19.1538787902138;
        Fri, 05 Oct 2018 18:05:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:b928:: with SMTP id u40-v6ls3690229qvf.7.gmail; Fri, 05
 Oct 2018 18:05:01 -0700 (PDT)
X-Received: by 2002:a0c:932a:: with SMTP id d39-v6mr10286886qvd.33.1538787901661;
        Fri, 05 Oct 2018 18:05:01 -0700 (PDT)
Received: by 2002:a37:c17:0:0:0:0:0 with SMTP id 23-v6msqkm;
        Fri, 5 Oct 2018 15:56:15 -0700 (PDT)
X-Google-Smtp-Source: ACcGV63j0EMcp65ucRcHuDGQ44PrlLVtNppAQY4YfyUDp7z/Wp+YwbqNwaAhjI0OOU4WF/vxiy89inQmow==
X-Received: by 2002:a0c:b7a3:: with SMTP id l35-v6mr144864qve.4.1538780174247;
        Fri, 05 Oct 2018 15:56:14 -0700 (PDT)
X-Google-Thread-Subscription: Yes
X-Google-Web-Client: true
Date: Fri, 5 Oct 2018 15:56:13 -0700 (PDT)
From: gaoxiang25@huawei.com
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <bea8d10c-4958-4a68-8dca-551a974b07a2@googlegroups.com>
In-Reply-To: <20181005172841.GA26217@kvasir.local>
References: <20181005172841.GA26217@kvasir.local>
Subject: Re: [PATCH] staging: erofs: fix indenting to conform to kernel
 coding style
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_949_1134597551.1538780174042"
X-Google-Token: EI3Y390F6Arxqvz6D_00
X-Google-IP: 178.79.142.42

------=_Part_949_1134597551.1538780174042
Content-Type: multipart/alternative; 
	boundary="----=_Part_950_1291269775.1538780174043"

------=_Part_950_1291269775.1538780174043
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Ioannis,

Could you please resend this email to staging-devel/erofs mailing list?
I cannot reply this by @huawei.com since we are in the Chinese National Day=
=20
public holiday.

=E5=9C=A8 2018=E5=B9=B410=E6=9C=886=E6=97=A5=E6=98=9F=E6=9C=9F=E5=85=AD UTC=
+8=E4=B8=8A=E5=8D=881:28:46=EF=BC=8CIoannis Valasakis=E5=86=99=E9=81=93=EF=
=BC=9A
>
> Cleanup all inconsistent indenting to conform to kernel coding style.=20
> Reported by checkpatch.
>

I have to raise a question... is all inconsistent indentings out there?
Could you please fix them all? Thanks.
=20

>
> Signed-off-by: Ioannis Valasakis <co...@wizofe.uk <javascript:>>=20
> ---=20
>  drivers/staging/erofs/data.c | 56 ++++++++++++++++++------------------=
=20
>  1 file changed, 28 insertions(+), 28 deletions(-)=20
>
> diff --git a/drivers/staging/erofs/data.c b/drivers/staging/erofs/data.c=
=20
> index 6384f73e5418..ffd392e74803 100644=20
> --- a/drivers/staging/erofs/data.c=20
> +++ b/drivers/staging/erofs/data.c=20
> @@ -40,7 +40,7 @@ static inline void read_endio(struct bio *bio)=20
>  =20
>  /* prio -- true is used for dir */=20
>  struct page *__erofs_get_meta_page(struct super_block *sb,=20
> -        erofs_blk_t blkaddr, bool prio, bool nofail)=20
> +                                   erofs_blk_t blkaddr, bool prio, bool=
=20
> nofail)=20
>  {=20
>          struct inode *const bd_inode =3D sb->s_bdev->bd_inode;=20
>          struct address_space *const mapping =3D bd_inode->i_mapping;=20
> @@ -53,7 +53,7 @@ struct page *__erofs_get_meta_page(struct super_block=
=20
> *sb,=20
>  =20
>  repeat:=20
>          page =3D find_or_create_page(mapping, blkaddr, gfp);=20
> -        if (unlikely(page =3D=3D NULL)) {
>

Yeah, as Himanshu said. here is another one which should be fixed.
It is better to use another patch.

Thanks,
Gao Xiang
=20

> +        if (unlikely(!page)) {=20
>                  DBG_BUGON(nofail);=20
>                  return ERR_PTR(-ENOMEM);=20
>          }=20
> @@ -76,7 +76,7 @@ struct page *__erofs_get_meta_page(struct super_block=
=20
> *sb,=20
>                  }=20
>  =20
>                  __submit_bio(bio, REQ_OP_READ,=20
> -                        REQ_META | (prio ? REQ_PRIO : 0));=20
> +                             REQ_META | (prio ? REQ_PRIO : 0));=20
>  =20
>                  lock_page(page);=20
>  =20
> @@ -107,7 +107,7 @@ struct page *__erofs_get_meta_page(struct super_block=
=20
> *sb,=20
>  }=20
>  =20
>  static int erofs_map_blocks_flatmode(struct inode *inode,=20
> -        struct erofs_map_blocks *map,=20
> +                                     struct erofs_map_blocks *map,=20
>          int flags)=20
>  {=20
>          int err =3D 0;=20
> @@ -151,7 +151,7 @@ static int erofs_map_blocks_flatmode(struct inode=20
> *inode,=20
>                  map->m_flags |=3D EROFS_MAP_META;=20
>          } else {=20
>                  errln("internal error @ nid: %llu (size %llu), m_la=20
> 0x%llx",=20
> -                        vi->nid, inode->i_size, map->m_la);=20
> +                      vi->nid, inode->i_size, map->m_la);=20
>                  DBG_BUGON(1);=20
>                  err =3D -EIO;=20
>                  goto err_out;=20
> @@ -167,16 +167,17 @@ static int erofs_map_blocks_flatmode(struct inode=
=20
> *inode,=20
>  =20
>  #ifdef CONFIG_EROFS_FS_ZIP=20
>  extern int z_erofs_map_blocks_iter(struct inode *,=20
> -        struct erofs_map_blocks *, struct page **, int);=20
> +                                   struct erofs_map_blocks *,=20
> +                                   struct page **, int);=20
>  #endif=20
>  =20
>  int erofs_map_blocks_iter(struct inode *inode,=20
> -        struct erofs_map_blocks *map,=20
> +                          struct erofs_map_blocks *map,=20
>          struct page **mpage_ret, int flags)=20
>  {=20
>          /* by default, reading raw data never use erofs_map_blocks_iter=
=20
> */=20
>          if (unlikely(!is_inode_layout_compression(inode))) {=20
> -                if (*mpage_ret !=3D NULL)=20
> +                if (*mpage_ret)=20
>                          put_page(*mpage_ret);=20
>                  *mpage_ret =3D NULL;=20
>  =20
> @@ -192,27 +193,27 @@ int erofs_map_blocks_iter(struct inode *inode,=20
>  }=20
>  =20
>  int erofs_map_blocks(struct inode *inode,=20
> -        struct erofs_map_blocks *map, int flags)=20
> +                     struct erofs_map_blocks *map, int flags)=20
>  {=20
>          if (unlikely(is_inode_layout_compression(inode))) {=20
>                  struct page *mpage =3D NULL;=20
>                  int err;=20
>  =20
>                  err =3D erofs_map_blocks_iter(inode, map, &mpage, flags)=
;=20
> -                if (mpage !=3D NULL)=20
> +                if (mpage)=20
>                          put_page(mpage);=20
>                  return err;=20
>          }=20
>          return erofs_map_blocks_flatmode(inode, map, flags);=20
>  }=20
>  =20
> -static inline struct bio *erofs_read_raw_page(=20
> -        struct bio *bio,=20
> -        struct address_space *mapping,=20
> -        struct page *page,=20
> -        erofs_off_t *last_block,=20
> -        unsigned int nblocks,=20
> -        bool ra)=20
> +static inline struct bio *erofs_read_raw_page=20
> +        (struct bio *bio,=20
> +         struct address_space *mapping,=20
> +         struct page *page,=20
> +         erofs_off_t *last_block,=20
> +         unsigned int nblocks,=20
> +         bool ra)=20
>  {=20
>          struct inode *inode =3D mapping->host;=20
>          erofs_off_t current_block =3D (erofs_off_t)page->index;=20
> @@ -232,15 +233,15 @@ static inline struct bio *erofs_read_raw_page(=20
>          }=20
>  =20
>          /* note that for readpage case, bio also equals to NULL */=20
> -        if (bio !=3D NULL &&=20
> -                /* not continuous */=20
> +        if (bio &&=20
> +            /* not continuous */=20
>                  *last_block + 1 !=3D current_block) {=20
>  submit_bio_retry:=20
>                  __submit_bio(bio, REQ_OP_READ, 0);=20
>                  bio =3D NULL;=20
>          }=20
>  =20
> -        if (bio =3D=3D NULL) {=20
> +        if (!bio) {=20
>                  struct erofs_map_blocks map =3D {=20
>                          .m_la =3D blknr_to_addr(current_block),=20
>                  };=20
> @@ -307,7 +308,7 @@ static inline struct bio *erofs_read_raw_page(=20
>                          nblocks =3D BIO_MAX_PAGES;=20
>  =20
>                  bio =3D erofs_grab_bio(inode->i_sb,=20
> -                        blknr, nblocks, read_endio, false);=20
> +                                     blknr, nblocks, read_endio, false);=
=20
>  =20
>                  if (IS_ERR(bio)) {=20
>                          err =3D PTR_ERR(bio);=20
> @@ -342,7 +343,7 @@ static inline struct bio *erofs_read_raw_page(=20
>          unlock_page(page);=20
>  =20
>          /* if updated manually, continuous pages has a gap */=20
> -        if (bio !=3D NULL)=20
> +        if (bio)=20
>  submit_bio_out:=20
>                  __submit_bio(bio, REQ_OP_READ, 0);=20
>  =20
> @@ -361,7 +362,7 @@ static int erofs_raw_access_readpage(struct file=20
> *file, struct page *page)=20
>          trace_erofs_readpage(page, true);=20
>  =20
>          bio =3D erofs_read_raw_page(NULL, page->mapping,=20
> -                page, &last_block, 1, false);=20
> +                                  page, &last_block, 1, false);=20
>  =20
>          if (IS_ERR(bio))=20
>                  return PTR_ERR(bio);=20
> @@ -371,7 +372,7 @@ static int erofs_raw_access_readpage(struct file=20
> *file, struct page *page)=20
>  }=20
>  =20
>  static int erofs_raw_access_readpages(struct file *filp,=20
> -        struct address_space *mapping,=20
> +                                      struct address_space *mapping,=20
>          struct list_head *pages, unsigned int nr_pages)=20
>  {=20
>          erofs_off_t last_block;=20
> @@ -389,12 +390,12 @@ static int erofs_raw_access_readpages(struct file=
=20
> *filp,=20
>  =20
>                  if (!add_to_page_cache_lru(page, mapping, page->index,=
=20
> gfp)) {=20
>                          bio =3D erofs_read_raw_page(bio, mapping, page,=
=20
> -                                &last_block, nr_pages, true);=20
> +                                                  &last_block, nr_pages,=
=20
> true);=20
>  =20
>                          /* all the page errors are ignored when readahea=
d=20
> */=20
>                          if (IS_ERR(bio)) {=20
>                                  pr_err("%s, readahead error at page %lu=
=20
> of nid %llu\n",=20
> -                                        __func__, page->index,=20
> +                                       __func__, page->index,=20
>                                          EROFS_V(mapping->host)->nid);=20
>  =20
>                                  bio =3D NULL;=20
> @@ -407,7 +408,7 @@ static int erofs_raw_access_readpages(struct file=20
> *filp,=20
>          DBG_BUGON(!list_empty(pages));=20
>  =20
>          /* the rare case (end in gaps) */=20
> -        if (unlikely(bio !=3D NULL))=20
> +        if (unlikely(bio))=20
>                  __submit_bio(bio, REQ_OP_READ, 0);=20
>          return 0;=20
>  }=20
> @@ -417,4 +418,3 @@ const struct address_space_operations=20
> erofs_raw_access_aops =3D {=20
>          .readpage =3D erofs_raw_access_readpage,=20
>          .readpages =3D erofs_raw_access_readpages,=20
>  };=20
> -=20
> --=20
> 2.19.0=20
>
>
>
------=_Part_950_1291269775.1538780174043
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Ioannis,<div><br></div><div>Could you please resend thi=
s email to staging-devel/erofs mailing list?</div><div>I cannot reply this =
by @huawei.com since we are in the Chinese National Day public holiday.</di=
v><br>=E5=9C=A8 2018=E5=B9=B410=E6=9C=886=E6=97=A5=E6=98=9F=E6=9C=9F=E5=85=
=AD UTC+8=E4=B8=8A=E5=8D=881:28:46=EF=BC=8CIoannis Valasakis=E5=86=99=E9=81=
=93=EF=BC=9A<blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-lef=
t: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">Cleanup all incons=
istent indenting to conform to kernel coding style.
<br>Reported by checkpatch.<br></blockquote><div><br></div><div>I have to r=
aise a question... is all inconsistent indentings out there?</div><div>Coul=
d you please fix them all? Thanks.</div><div>=C2=A0</div><blockquote class=
=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex;border-left: 1px #cc=
c solid;padding-left: 1ex;">
<br>Signed-off-by: Ioannis Valasakis &lt;<a href=3D"javascript:" target=3D"=
_blank" gdf-obfuscated-mailto=3D"Io-AmvWqAgAJ" rel=3D"nofollow" onmousedown=
=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.href=3D=
&#39;javascript:&#39;;return true;">co...@wizofe.uk</a>&gt;
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
=3D NULL)) {<br></blockquote><div><br></div><div>Yeah, as Himanshu said. he=
re is another one which should be fixed.</div><div>It is better to use anot=
her patch.</div><div><br></div><div>Thanks,</div><div>Gao Xiang</div><div>=
=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-lef=
t: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">+=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (unlikely(!page)) {
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
------=_Part_950_1291269775.1538780174043--

------=_Part_949_1134597551.1538780174042--

