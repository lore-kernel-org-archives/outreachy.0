X-GM-THRID: 6620077565776232448
X-Received: by 2002:ab0:185f:: with SMTP id j31mr17535769uag.9.1541358129298;
        Sun, 04 Nov 2018 11:02:09 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1f:2c15:: with SMTP id s21ls3298137vks.5.gmail; Sun, 04 Nov
 2018 11:02:08 -0800 (PST)
X-Google-Smtp-Source: AJdET5eA5FjH2WR8XX46g6KmY25w5GESEWZYtXxdkAyYL1HISI0thJo+1RoOtoELj8Mq5u3Lvltg
X-Received: by 2002:a1f:acc9:: with SMTP id v192-v6mr17656847vke.18.1541358128604;
        Sun, 04 Nov 2018 11:02:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1541358128; cv=none;
        d=google.com; s=arc-20160816;
        b=fpcemLqPAH92ZiAIetFi72h/cRlYKeF4Q6FEuBRXs7jP2NpaSMdDYRrKc/cqqPooF6
         8AfV1GP7U8lsgB1KZrKL+exkN4+aWt3pPykc4srPFJd/qRoPCWRdDtheE6ortz/M1a7x
         AemL1tGSwTjk3oc1FsES9nR/oMiZYvcMT1GocCkRxMX545jwQzuP9qcxk3cRijyV+JVd
         vx/Tr1/Y3vllJzisOSRtzvE+hy4IfvjhsyteMtjr38EzqQNdYEwDZdm4yyPinIEqSa6m
         erxMJ9HVEeOridxRVFpnug/8yGV6lV2uLn/fB2WGBQGDmfU1JO+UcEyVw3LfvooROY5W
         gbyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=SvFSHx5Ij7YqfMsO3X33/YHuRIml6V5vrPsImSO+hD8=;
        b=E8zsuwr5DmPWMxm8vFRFow74bzooMdatRv6DEioF0CrpzVmki0ez2FU2wfBgieeiri
         IBale+dpxlt25fYzno9MXPjsV09aaQ4Vg5Xj2OWnnRGBXcfpXPB8EI39chS1a6ERTjdM
         wSBWTlYCwsjiUTYCSjvCgzSxjeFkrY/Gp/wMql2z1PeTaV821DP5ClG9aL749jcBpcJg
         IT8y1q9/+wvW02eF0lapuGT7F4VHUbsuRuhm8MjLgsyH6CEJVvwBo+4Gux8M66YKBGZO
         1eme5z2WvaeaSP7mjod7SYIIYevxXk58HmcuvcQsniObC9HSH+3Cj099/1lhKJDLjd/j
         rbkQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KgA8p6mB;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::734 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <digholebhagyashri@gmail.com>
Received: from mail-qk1-x734.google.com (mail-qk1-x734.google.com. [2607:f8b0:4864:20::734])
        by gmr-mx.google.com with ESMTPS id 67si903320uas.1.2018.11.04.11.02.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Nov 2018 11:02:08 -0800 (PST)
Received-SPF: pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::734 as permitted sender) client-ip=2607:f8b0:4864:20::734;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KgA8p6mB;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::734 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qk1-x734.google.com with SMTP id e4so11281920qkh.6
        for <outreachy-kernel@googlegroups.com>; Sun, 04 Nov 2018 11:02:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=SvFSHx5Ij7YqfMsO3X33/YHuRIml6V5vrPsImSO+hD8=;
        b=KgA8p6mBCWFIwt6HQEiDqzBalHhog01AvKdq3MFmxwLbbaF0cJt0BtRPAWh/iU2rpU
         Ro3MtazgE2G5LO9ke9461FbVrR6LfisOdMpQi9eWy7jhio0w2A4LwkiMI7q/qtwqZw3s
         fhzgUQ8yP/VYjlaReOjovTcHDjedLCefsrGFrVTNZzeb31vQ24fJ4v4kQFGgCq+FufJ5
         g5HajtZKfrnR7DcDGEE9Y9ETSgvXNCC1+Dl/r12Vosi3Ru1ELUZa+5HVRYThCdVg1jkS
         Qdz7r3ujo7IANmHezrcc5Qjb1J3mcgM+AyFB02dJXvv5hVRZggtXKiBVOiWV7uiARJRp
         UzEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=SvFSHx5Ij7YqfMsO3X33/YHuRIml6V5vrPsImSO+hD8=;
        b=hmu+FY2m4mzuthBIvsPXFtH+qnM7K8kDX8TRbSuGroSLGyecQCwrsnuliJGf5RTSkH
         QTTqd6abko65WFprL7t6vf4wyR0CCb8h97CB33HneWhc/ms5vZx3ZJU353Ej31/PMA4t
         8A+3VWg1YP9+biesTliJPH+RfgMoBUHSACKeD2VqSMKsXialLZD3iu4xNA6Q6FVxyMq8
         y82XDeoG7r1hSlNcPFORKhsbDJ97J8PAarMPynCIPWQfG08mUM/9xu9GTb2xHb0vaZGM
         8BcgBrOBOzBl6zqG3nLzg907r0tpO93pLXSg4Pt7T+wiPZt+VJlqxyWaWSqMTQdXjXoo
         wgyw==
X-Gm-Message-State: AGRZ1gIBTcA0NOLYkkm/hMDyWJa9PR84zEZnBFGi7xsvEh6CSiqiEze3
	KS5R5Q+vSRmAw+bAXnQ6Rk/NVVwZXJHVayfVSg8=
X-Received: by 2002:aed:3121:: with SMTP id 30-v6mr18950438qtg.180.1541358128183;
 Sun, 04 Nov 2018 11:02:08 -0800 (PST)
MIME-Version: 1.0
References: <20181104184947.GA16811@bhagyashri-Lenovo-G570> <alpine.DEB.2.21.1811041951120.2360@hadrien>
In-Reply-To: <alpine.DEB.2.21.1811041951120.2360@hadrien>
From: Bhagyashri Dighole <digholebhagyashri@gmail.com>
Date: Mon, 5 Nov 2018 00:31:55 +0530
Message-ID: <CAOMPgjjNTB1tSq14=d5DgL_SqvstEZdsbs7+D7HwusWSUNYwKw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: erofs: Fix alignment issues
 and warnings.
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: alexander.levin@microsoft.com, outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="000000000000b3be3c0579db6787"

--000000000000b3be3c0579db6787
Content-Type: text/plain; charset="UTF-8"

Hi Julia,

Thanks Julia for your suggestions.
I will modify as per your suggestions and I will submit patch again. The
patch will have only one change.


On Mon, Nov 5, 2018, 12:23 AM Julia Lawall <julia.lawall@lip6.fr> wrote:

>
>
> On Mon, 5 Nov 2018, Bhagyashri P. Dighole wrote:
>
> > This patch includes modifications for alignment and warnings
> > as per the coding standards. Also, this patch includes fix
> > for syntanctical and logical errors.
>
> This is the same as the previous patch, but to a different recipient list?
> If th problem is that you forgot to include Sasha, it would be better to
> send the whole thing again to everyone, including Sasha, so that everyone
> sees any replies, and most importantly to explain under the --- why you
> are sending the same thing twice.
>
> julia
>
> >
> > Signed-off-by: Bhagyashri P. Dighole <digholebhagyashri@gmail.com>
> > ---
> >  drivers/staging/erofs/data.c | 65
> ++++++++++++++++++++++----------------------
> >  1 file changed, 33 insertions(+), 32 deletions(-)
> >
> > diff --git a/drivers/staging/erofs/data.c b/drivers/staging/erofs/data.c
> > index 6384f73..6fec5e6 100644
> > --- a/drivers/staging/erofs/data.c
> > +++ b/drivers/staging/erofs/data.c
> > @@ -40,7 +40,7 @@ static inline void read_endio(struct bio *bio)
> >
> >  /* prio -- true is used for dir */
> >  struct page *__erofs_get_meta_page(struct super_block *sb,
> > -     erofs_blk_t blkaddr, bool prio, bool nofail)
> > +                                erofs_blk_t blkaddr, bool prio, bool
> nofail)
> >  {
> >       struct inode *const bd_inode = sb->s_bdev->bd_inode;
> >       struct address_space *const mapping = bd_inode->i_mapping;
> > @@ -53,7 +53,7 @@ struct page *__erofs_get_meta_page(struct super_block
> *sb,
> >
> >  repeat:
> >       page = find_or_create_page(mapping, blkaddr, gfp);
> > -     if (unlikely(page == NULL)) {
> > +     if (unlikely(!page)) {
> >               DBG_BUGON(nofail);
> >               return ERR_PTR(-ENOMEM);
> >       }
> > @@ -76,7 +76,7 @@ struct page *__erofs_get_meta_page(struct super_block
> *sb,
> >               }
> >
> >               __submit_bio(bio, REQ_OP_READ,
> > -                     REQ_META | (prio ? REQ_PRIO : 0));
> > +                          REQ_META | (prio ? REQ_PRIO : 0));
> >
> >               lock_page(page);
> >
> > @@ -107,8 +107,8 @@ struct page *__erofs_get_meta_page(struct
> super_block *sb,
> >  }
> >
> >  static int erofs_map_blocks_flatmode(struct inode *inode,
> > -     struct erofs_map_blocks *map,
> > -     int flags)
> > +                                  struct erofs_map_blocks *map,
> > +                                  int flags)
> >  {
> >       int err = 0;
> >       erofs_blk_t nblocks, lastblk;
> > @@ -151,7 +151,7 @@ static int erofs_map_blocks_flatmode(struct inode
> *inode,
> >               map->m_flags |= EROFS_MAP_META;
> >       } else {
> >               errln("internal error @ nid: %llu (size %llu), m_la
> 0x%llx",
> > -                     vi->nid, inode->i_size, map->m_la);
> > +                   vi->nid, inode->i_size, map->m_la);
> >               DBG_BUGON(1);
> >               err = -EIO;
> >               goto err_out;
> > @@ -167,16 +167,17 @@ static int erofs_map_blocks_flatmode(struct inode
> *inode,
> >
> >  #ifdef CONFIG_EROFS_FS_ZIP
> >  extern int z_erofs_map_blocks_iter(struct inode *,
> > -     struct erofs_map_blocks *, struct page **, int);
> > +                                struct erofs_map_blocks *,
> > +                                struct page **, int);
> >  #endif
> >
> >  int erofs_map_blocks_iter(struct inode *inode,
> > -     struct erofs_map_blocks *map,
> > -     struct page **mpage_ret, int flags)
> > +                       struct erofs_map_blocks *map,
> > +                       struct page **mpage_ret, int flags)
> >  {
> >       /* by default, reading raw data never use erofs_map_blocks_iter */
> >       if (unlikely(!is_inode_layout_compression(inode))) {
> > -             if (*mpage_ret != NULL)
> > +             if (*mpage_ret)
> >                       put_page(*mpage_ret);
> >               *mpage_ret = NULL;
> >
> > @@ -192,27 +193,26 @@ int erofs_map_blocks_iter(struct inode *inode,
> >  }
> >
> >  int erofs_map_blocks(struct inode *inode,
> > -     struct erofs_map_blocks *map, int flags)
> > +                  struct erofs_map_blocks *map, int flags)
> >  {
> >       if (unlikely(is_inode_layout_compression(inode))) {
> >               struct page *mpage = NULL;
> >               int err;
> >
> >               err = erofs_map_blocks_iter(inode, map, &mpage, flags);
> > -             if (mpage != NULL)
> > +             if (mpage)
> >                       put_page(mpage);
> >               return err;
> >       }
> >       return erofs_map_blocks_flatmode(inode, map, flags);
> >  }
> >
> > -static inline struct bio *erofs_read_raw_page(
> > -     struct bio *bio,
> > -     struct address_space *mapping,
> > -     struct page *page,
> > -     erofs_off_t *last_block,
> > -     unsigned int nblocks,
> > -     bool ra)
> > +static inline struct bio *erofs_read_raw_page(struct bio *bio,
> > +                                           struct address_space
> *mapping,
> > +                                           struct page *page,
> > +                                           erofs_off_t *last_block,
> > +                                           unsigned int nblocks,
> > +                                           bool ra)
> >  {
> >       struct inode *inode = mapping->host;
> >       erofs_off_t current_block = (erofs_off_t)page->index;
> > @@ -232,15 +232,15 @@ static inline struct bio *erofs_read_raw_page(
> >       }
> >
> >       /* note that for readpage case, bio also equals to NULL */
> > -     if (bio != NULL &&
> > -             /* not continuous */
> > -             *last_block + 1 != current_block) {
> > +     if (bio &&
> > +         /* not continuous */
> > +         *last_block + 1 != current_block) {
> >  submit_bio_retry:
> >               __submit_bio(bio, REQ_OP_READ, 0);
> >               bio = NULL;
> >       }
> >
> > -     if (bio == NULL) {
> > +     if (bio) {
> >               struct erofs_map_blocks map = {
> >                       .m_la = blknr_to_addr(current_block),
> >               };
> > @@ -307,7 +307,7 @@ static inline struct bio *erofs_read_raw_page(
> >                       nblocks = BIO_MAX_PAGES;
> >
> >               bio = erofs_grab_bio(inode->i_sb,
> > -                     blknr, nblocks, read_endio, false);
> > +                                  blknr, nblocks, read_endio, false);
> >
> >               if (IS_ERR(bio)) {
> >                       err = PTR_ERR(bio);
> > @@ -342,7 +342,7 @@ static inline struct bio *erofs_read_raw_page(
> >       unlock_page(page);
> >
> >       /* if updated manually, continuous pages has a gap */
> > -     if (bio != NULL)
> > +     if (!bio)
> >  submit_bio_out:
> >               __submit_bio(bio, REQ_OP_READ, 0);
> >
> > @@ -361,7 +361,7 @@ static int erofs_raw_access_readpage(struct file
> *file, struct page *page)
> >       trace_erofs_readpage(page, true);
> >
> >       bio = erofs_read_raw_page(NULL, page->mapping,
> > -             page, &last_block, 1, false);
> > +                               page, &last_block, 1, false);
> >
> >       if (IS_ERR(bio))
> >               return PTR_ERR(bio);
> > @@ -371,8 +371,9 @@ static int erofs_raw_access_readpage(struct file
> *file, struct page *page)
> >  }
> >
> >  static int erofs_raw_access_readpages(struct file *filp,
> > -     struct address_space *mapping,
> > -     struct list_head *pages, unsigned int nr_pages)
> > +                                   struct address_space *mapping,
> > +                                   struct list_head *pages,
> > +                                   unsigned int nr_pages)
> >  {
> >       erofs_off_t last_block;
> >       struct bio *bio = NULL;
> > @@ -389,13 +390,13 @@ static int erofs_raw_access_readpages(struct file
> *filp,
> >
> >               if (!add_to_page_cache_lru(page, mapping, page->index,
> gfp)) {
> >                       bio = erofs_read_raw_page(bio, mapping, page,
> > -                             &last_block, nr_pages, true);
> > +                                               &last_block, nr_pages,
> true);
> >
> >                       /* all the page errors are ignored when readahead
> */
> >                       if (IS_ERR(bio)) {
> >                               pr_err("%s, readahead error at page %lu of
> nid %llu\n",
> > -                                     __func__, page->index,
> > -                                     EROFS_V(mapping->host)->nid);
> > +                                    __func__, page->index,
> > +                                    EROFS_V(mapping->host)->nid);
> >
> >                               bio = NULL;
> >                       }
> > @@ -407,7 +408,7 @@ static int erofs_raw_access_readpages(struct file
> *filp,
> >       DBG_BUGON(!list_empty(pages));
> >
> >       /* the rare case (end in gaps) */
> > -     if (unlikely(bio != NULL))
> > +     if (unlikely(bio))
> >               __submit_bio(bio, REQ_OP_READ, 0);
> >       return 0;
> >  }
> > --
> > 2.7.4
> >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
> an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/20181104184947.GA16811%40bhagyashri-Lenovo-G570
> .
> > For more options, visit https://groups.google.com/d/optout.
> >
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.1811041951120.2360%40hadrien
> .
> For more options, visit https://groups.google.com/d/optout.
>
>

--000000000000b3be3c0579db6787
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hi Julia,<div dir=3D"auto"><br></div><div dir=3D"auto">Th=
anks Julia for your suggestions.=C2=A0</div><div dir=3D"auto">I will modify=
 as per your suggestions and I will submit patch again. The patch will have=
 only one change.<br></div><br><br><div class=3D"gmail_quote" dir=3D"auto">=
<div dir=3D"ltr">On Mon, Nov 5, 2018, 12:23 AM Julia Lawall &lt;<a href=3D"=
mailto:julia.lawall@lip6.fr" target=3D"_blank" rel=3D"noreferrer">julia.law=
all@lip6.fr</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><br>
<br>
On Mon, 5 Nov 2018, Bhagyashri P. Dighole wrote:<br>
<br>
&gt; This patch includes modifications for alignment and warnings<br>
&gt; as per the coding standards. Also, this patch includes fix<br>
&gt; for syntanctical and logical errors.<br>
<br>
This is the same as the previous patch, but to a different recipient list?<=
br>
If th problem is that you forgot to include Sasha, it would be better to<br=
>
send the whole thing again to everyone, including Sasha, so that everyone<b=
r>
sees any replies, and most importantly to explain under the --- why you<br>
are sending the same thing twice.<br>
<br>
julia<br>
<br>
&gt;<br>
&gt; Signed-off-by: Bhagyashri P. Dighole &lt;<a href=3D"mailto:digholebhag=
yashri@gmail.com" rel=3D"noreferrer noreferrer" target=3D"_blank">digholebh=
agyashri@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/erofs/data.c | 65 ++++++++++++++++++++++--------=
--------------<br>
&gt;=C2=A0 1 file changed, 33 insertions(+), 32 deletions(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/erofs/data.c b/drivers/staging/erofs/data=
.c<br>
&gt; index 6384f73..6fec5e6 100644<br>
&gt; --- a/drivers/staging/erofs/data.c<br>
&gt; +++ b/drivers/staging/erofs/data.c<br>
&gt; @@ -40,7 +40,7 @@ static inline void read_endio(struct bio *bio)<br>
&gt;<br>
&gt;=C2=A0 /* prio -- true is used for dir */<br>
&gt;=C2=A0 struct page *__erofs_get_meta_page(struct super_block *sb,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0erofs_blk_t blkaddr, bool prio, bool nofail)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 erofs_blk_t blkaddr, bool prio, =
bool nofail)<br>
&gt;=C2=A0 {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct inode *const bd_inode =3D sb-&gt;s_bd=
ev-&gt;bd_inode;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct address_space *const mapping =3D bd_i=
node-&gt;i_mapping;<br>
&gt; @@ -53,7 +53,7 @@ struct page *__erofs_get_meta_page(struct super_bloc=
k *sb,<br>
&gt;<br>
&gt;=C2=A0 repeat:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0page =3D find_or_create_page(mapping, blkadd=
r, gfp);<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if (unlikely(page =3D=3D NULL)) {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (unlikely(!page)) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0DBG_BUGON(nofail=
);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return ERR_PTR(-=
ENOMEM);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; @@ -76,7 +76,7 @@ struct page *__erofs_get_meta_page(struct super_bloc=
k *sb,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0__submit_bio(bio=
, REQ_OP_READ,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0REQ_META | (prio ? REQ_PRIO : 0));<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 REQ_META | (prio ? REQ_PRIO : 0));<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0lock_page(page);=
<br>
&gt;<br>
&gt; @@ -107,8 +107,8 @@ struct page *__erofs_get_meta_page(struct super_bl=
ock *sb,<br>
&gt;=C2=A0 }<br>
&gt;<br>
&gt;=C2=A0 static int erofs_map_blocks_flatmode(struct inode *inode,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0struct erofs_map_blocks *map,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0int flags)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 struct erofs_map_blocks *=
map,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 int flags)<br>
&gt;=C2=A0 {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0int err =3D 0;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0erofs_blk_t nblocks, lastblk;<br>
&gt; @@ -151,7 +151,7 @@ static int erofs_map_blocks_flatmode(struct inode =
*inode,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0map-&gt;m_flags =
|=3D EROFS_MAP_META;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0} else {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0errln(&quot;inte=
rnal error @ nid: %llu (size %llu), m_la 0x%llx&quot;,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0vi-&gt;nid, inode-&gt;i_size, map-&gt;m_la);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
vi-&gt;nid, inode-&gt;i_size, map-&gt;m_la);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0DBG_BUGON(1);<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0err =3D -EIO;<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0goto err_out;<br=
>
&gt; @@ -167,16 +167,17 @@ static int erofs_map_blocks_flatmode(struct inod=
e *inode,<br>
&gt;<br>
&gt;=C2=A0 #ifdef CONFIG_EROFS_FS_ZIP<br>
&gt;=C2=A0 extern int z_erofs_map_blocks_iter(struct inode *,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0struct erofs_map_blocks *, struct page **, int);<=
br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 struct erofs_map_blocks *,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 struct page **, int);<br>
&gt;=C2=A0 #endif<br>
&gt;<br>
&gt;=C2=A0 int erofs_map_blocks_iter(struct inode *inode,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0struct erofs_map_blocks *map,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0struct page **mpage_ret, int flags)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0struct erofs_map_blocks *map,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0struct page **mpage_ret, int flags)<br>
&gt;=C2=A0 {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0/* by default, reading raw data never use er=
ofs_map_blocks_iter */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (unlikely(!is_inode_layout_compression(in=
ode))) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (*mpage_ret !=3D N=
ULL)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (*mpage_ret)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0put_page(*mpage_ret);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0*mpage_ret =3D N=
ULL;<br>
&gt;<br>
&gt; @@ -192,27 +193,26 @@ int erofs_map_blocks_iter(struct inode *inode,<b=
r>
&gt;=C2=A0 }<br>
&gt;<br>
&gt;=C2=A0 int erofs_map_blocks(struct inode *inode,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0struct erofs_map_blocks *map, int flags)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 struct=
 erofs_map_blocks *map, int flags)<br>
&gt;=C2=A0 {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (unlikely(is_inode_layout_compression(ino=
de))) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0struct page *mpa=
ge =3D NULL;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0int err;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0err =3D erofs_ma=
p_blocks_iter(inode, map, &amp;mpage, flags);<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (mpage !=3D NULL)<=
br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (mpage)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0put_page(mpage);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return err;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0return erofs_map_blocks_flatmode(inode, map,=
 flags);<br>
&gt;=C2=A0 }<br>
&gt;<br>
&gt; -static inline struct bio *erofs_read_raw_page(<br>
&gt; -=C2=A0 =C2=A0 =C2=A0struct bio *bio,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0struct address_space *mapping,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0struct page *page,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0erofs_off_t *last_block,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0unsigned int nblocks,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0bool ra)<br>
&gt; +static inline struct bio *erofs_read_raw_page(struct bio *bio,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0struct address_space *mapping,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0struct page *page,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0erofs_off_t *last_block,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0unsigned int nblocks,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0bool ra)<br>
&gt;=C2=A0 {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct inode *inode =3D mapping-&gt;host;<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0erofs_off_t current_block =3D (erofs_off_t)p=
age-&gt;index;<br>
&gt; @@ -232,15 +232,15 @@ static inline struct bio *erofs_read_raw_page(<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0/* note that for readpage case, bio also equ=
als to NULL */<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if (bio !=3D NULL &amp;&amp;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/* not continuous */<=
br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0*last_block + 1 !=3D =
current_block) {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (bio &amp;&amp;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/* not continuous */<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0*last_block + 1 !=3D current_block)=
 {<br>
&gt;=C2=A0 submit_bio_retry:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0__submit_bio(bio=
, REQ_OP_READ, 0);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bio =3D NULL;<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if (bio =3D=3D NULL) {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (bio) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0struct erofs_map=
_blocks map =3D {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0.m_la =3D blknr_to_addr(current_block),<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0};<br>
&gt; @@ -307,7 +307,7 @@ static inline struct bio *erofs_read_raw_page(<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0nblocks =3D BIO_MAX_PAGES;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bio =3D erofs_gr=
ab_bio(inode-&gt;i_sb,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0blknr, nblocks, read_endio, false);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 blknr, nblocks, read_endi=
o, false);<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (IS_ERR(bio))=
 {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0err =3D PTR_ERR(bio);<br>
&gt; @@ -342,7 +342,7 @@ static inline struct bio *erofs_read_raw_page(<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0unlock_page(page);<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0/* if updated manually, continuous pages has=
 a gap */<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if (bio !=3D NULL)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (!bio)<br>
&gt;=C2=A0 submit_bio_out:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0__submit_bio(bio=
, REQ_OP_READ, 0);<br>
&gt;<br>
&gt; @@ -361,7 +361,7 @@ static int erofs_raw_access_readpage(struct file *=
file, struct page *page)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0trace_erofs_readpage(page, true);<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0bio =3D erofs_read_raw_page(NULL, page-&gt;m=
apping,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0page, &amp;last_block=
, 1, false);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0page, &amp;last_block, 1, false);=
<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (IS_ERR(bio))<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return PTR_ERR(b=
io);<br>
&gt; @@ -371,8 +371,9 @@ static int erofs_raw_access_readpage(struct file *=
file, struct page *page)<br>
&gt;=C2=A0 }<br>
&gt;<br>
&gt;=C2=A0 static int erofs_raw_access_readpages(struct file *filp,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0struct address_space *mapping,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0struct list_head *pages, unsigned int nr_pages)<b=
r>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0struct address_spac=
e *mapping,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0struct list_head *p=
ages,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned int nr_pag=
es)<br>
&gt;=C2=A0 {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0erofs_off_t last_block;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct bio *bio =3D NULL;<br>
&gt; @@ -389,13 +390,13 @@ static int erofs_raw_access_readpages(struct fil=
e *filp,<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (!add_to_page=
_cache_lru(page, mapping, page-&gt;index, gfp)) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0bio =3D erofs_read_raw_page(bio, mapping, page,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&amp;last_block, nr_pages, true);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0&amp;last_block, nr_pages, true);<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0/* all the page errors are ignored when readahead */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0if (IS_ERR(bio)) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0pr_err(&quot;%s, readahead error a=
t page %lu of nid %llu\n&quot;,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0__func__, pa=
ge-&gt;index,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0EROFS_V(mapp=
ing-&gt;host)-&gt;nid);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 __func__, page-&gt=
;index,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 EROFS_V(mapping-&g=
t;host)-&gt;nid);<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bio =3D NULL;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0}<br>
&gt; @@ -407,7 +408,7 @@ static int erofs_raw_access_readpages(struct file =
*filp,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0DBG_BUGON(!list_empty(pages));<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0/* the rare case (end in gaps) */<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if (unlikely(bio !=3D NULL))<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (unlikely(bio))<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0__submit_bio(bio=
, REQ_OP_READ, 0);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0return 0;<br>
&gt;=C2=A0 }<br>
&gt; --<br>
&gt; 2.7.4<br>
&gt;<br>
&gt; --<br>
&gt; You received this message because you are subscribed to the Google Gro=
ups &quot;outreachy-kernel&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
 an email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.=
com" rel=3D"noreferrer noreferrer" target=3D"_blank">outreachy-kernel+unsub=
scribe@googlegroups.com</a>.<br>
&gt; To post to this group, send email to <a href=3D"mailto:outreachy-kerne=
l@googlegroups.com" rel=3D"noreferrer noreferrer" target=3D"_blank">outreac=
hy-kernel@googlegroups.com</a>.<br>
&gt; To view this discussion on the web visit <a href=3D"https://groups.goo=
gle.com/d/msgid/outreachy-kernel/20181104184947.GA16811%40bhagyashri-Lenovo=
-G570" rel=3D"noreferrer noreferrer noreferrer" target=3D"_blank">https://g=
roups.google.com/d/msgid/outreachy-kernel/20181104184947.GA16811%40bhagyash=
ri-Lenovo-G570</a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 rel=3D"noreferrer noreferrer noreferrer" target=3D"_blank">https://groups.=
google.com/d/optout</a>.<br>
&gt;<br>
<br>
-- <br>
You received this message because you are subscribed to the Google Groups &=
quot;outreachy-kernel&quot; group.<br>
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.com" =
rel=3D"noreferrer noreferrer" target=3D"_blank">outreachy-kernel+unsubscrib=
e@googlegroups.com</a>.<br>
To post to this group, send email to <a href=3D"mailto:outreachy-kernel@goo=
glegroups.com" rel=3D"noreferrer noreferrer" target=3D"_blank">outreachy-ke=
rnel@googlegroups.com</a>.<br>
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/outreachy-kernel/alpine.DEB.2.21.1811041951120.2360%40hadrien" r=
el=3D"noreferrer noreferrer noreferrer" target=3D"_blank">https://groups.go=
ogle.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.1811041951120.2360%40hadr=
ien</a>.<br>
For more options, visit <a href=3D"https://groups.google.com/d/optout" rel=
=3D"noreferrer noreferrer noreferrer" target=3D"_blank">https://groups.goog=
le.com/d/optout</a>.<br><br>
</blockquote></div>
</div>

--000000000000b3be3c0579db6787--

