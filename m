X-GM-THRID: 6620077565776232448
X-Received: by 2002:a0c:879a:: with SMTP id 26mr15122768qvj.62.1541360374471;
        Sun, 04 Nov 2018 11:39:34 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:9e2f:: with SMTP id p47ls2305110qve.5.gmail; Sun, 04 Nov
 2018 11:39:33 -0800 (PST)
X-Google-Smtp-Source: AJdET5cDh71JFkqySCFx9bLEy+7KkH+HOs4b65Ccw8XZwCL/H4Mu1SFH8gaxL+IbpmqF0yvVwhrT
X-Received: by 2002:a0c:8b65:: with SMTP id d37mr15618496qvc.54.1541360373876;
        Sun, 04 Nov 2018 11:39:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1541360373; cv=none;
        d=google.com; s=arc-20160816;
        b=n1B+jnGXbMdNPTZi+DTkdVWaDCcWb2BBr6VpFr+d5oMOL0K6bf6szzjpBMXL6j4aQM
         y7LYhiK77bT82yGAhe1orBjHYmiaM86zx4AKhIdsLgsDl1EJIOzeSw2VDwglYaddejBG
         phNGtCmKBwX/KPYM2WXxCZTl0VNLMAZDdHKHPi8qA88v1ekrvbb3dT52cRffl88ALUx0
         UuFHUjizDZ+PiPp7wexuwBJDbApubt10CBKJOu3MChAVHrd4j18ArxCryh5B4rgiH1uw
         9QWBBxfTlbEsYX4CKuQXI8iTrV/Ce6OrdB+b/kxvANXgD7IqsuyAH6mfRrWOxTrKVPUu
         iwXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=UJ6ZT7SGSbPD582SmhrFkHnK5LuQSGxeUiJg5BuW6/s=;
        b=dagKyJJNHe9cYUM2B6QQmsyNz/i7pbfqTSfxp9GMHBVX+NVORV3j5uud6VIG6SDHuE
         UnjJqeNY9DEICh9a4ALXnbO4ims2DOLdgClQJRJRf6c7eNv60xHGjBzpcBVA8dO+B6X0
         khlGNU8uyMgWHzFuDGRJ+yhbVAAhI4YO6WJ40ZvEcBjiVJaN4d7jYz+w17bJbEDvKtdd
         HNh4GEkWswDnaO8fyss+lA31yTYH5Q92PWnGMK5WB6PSmumEmoQKsKGQon/r5XACr2e/
         KHFdO1fJOcUNrOkw6Sf6/aH1CfRSjMLteN7SvPNzdyYCWKc2DV/tKUcymgPz+OO9QJ0o
         oDoQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=E88ZK5xw;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <digholebhagyashri@gmail.com>
Received: from mail-qk1-x743.google.com (mail-qk1-x743.google.com. [2607:f8b0:4864:20::743])
        by gmr-mx.google.com with ESMTPS id q124-v6si500161qkb.0.2018.11.04.11.39.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Nov 2018 11:39:33 -0800 (PST)
Received-SPF: pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) client-ip=2607:f8b0:4864:20::743;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=E88ZK5xw;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qk1-x743.google.com with SMTP id d19so11379173qkg.5
        for <outreachy-kernel@googlegroups.com>; Sun, 04 Nov 2018 11:39:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=UJ6ZT7SGSbPD582SmhrFkHnK5LuQSGxeUiJg5BuW6/s=;
        b=E88ZK5xw/h1T3oITRXgMXLfrI0M22aDNAlRbAWvx9DN3IWEMEhV4zRz2e6QHdxnCfu
         I0QISNdXs39jXG6rIP7Df4jqqqerYCdjsBimDeP1FwFl3n9Q7b1AuOp7tTdyxnh4vnZE
         k6Sl0UFiRpBLropV+cAfgeycmLcThxXmDPXfa+lkbaOP6aTjRIaz+Lp+OzFXcj7tOeWv
         qtlL+GrkPVGE48S19Vzv136EZ15gzcwLClr2m7k+J45Ie1YLR64O+AlOTX3wcIHHCazC
         ijAXk+uM4PONQ3Xn6lRW0plDW+Ej93ipsgNz3Z/3lhL9MW5YdpaXCkj5NSFoQ8EvZUD5
         vavg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=UJ6ZT7SGSbPD582SmhrFkHnK5LuQSGxeUiJg5BuW6/s=;
        b=QJ2Ex9HD3/2QbbY8y4GWXKcDocWzwrOLJoLtOZJyTk0am+ZAcpZAijjt1ABMxssbU8
         rNkXk0rs5wqoTEXn8GAbBAjb10LKzExYllGRdPO2WlKmjIMI/qVC3H/zf06Xez/i3BXy
         yuJc8KXrCV8OADNosowgRIZV+UmBjAF0TIIjTWCyZfH7hCU1xOH6dCDrGYMjuocHCiOd
         xBG8HFZrKXLifKqB98uR8vpT/8rD5jaw+mBewXmSjg1G1LsQAlAalDkVWOTaE4NGXOwi
         Tap/aP1n6a6siwEkSS9+TKjJPc62wr+/1DNIzDkXiZ8NtPVHy6cVzhQNZJMmgBWyoyvS
         FWXw==
X-Gm-Message-State: AGRZ1gKL9FEqV3pWNIrMxdR9yNAj1UhwcvE/DYIxuobSBXPnf3Gr1xyb
	/CE7pc8a0C3Bjbf4u66ANWNPnuQWxH4AlbA09kd2pFZD
X-Received: by 2002:a0c:d78f:: with SMTP id z15mr19006250qvi.127.1541360373427;
 Sun, 04 Nov 2018 11:39:33 -0800 (PST)
MIME-Version: 1.0
References: <20181104184153.GA16136@bhagyashri-Lenovo-G570> <9047C53C18267742AB12E43B65C7F9F7152EE963@DGGEMI525-MBS.china.huawei.com>
In-Reply-To: <9047C53C18267742AB12E43B65C7F9F7152EE963@DGGEMI525-MBS.china.huawei.com>
From: Bhagyashri Dighole <digholebhagyashri@gmail.com>
Date: Mon, 5 Nov 2018 01:09:20 +0530
Message-ID: <CAOMPgjhWAiBae_MF1Ta1FRBzV7j-QmDMNYy8j-FJ248NuG6VvA@mail.gmail.com>
Subject: Re: [PATCH] staging: erofs: Fix alignment issues and warnings.
To: "Gaoxiang (OS)" <gaoxiang25@huawei.com>
Cc: Outreachy <outreachy-kernel@googlegroups.com>, "Yuchao (T)" <yuchao0@huawei.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: multipart/alternative; boundary="0000000000008772000579dbed5a"

--0000000000008772000579dbed5a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Gao,

Thank you for your suggestions.

I will resubmit the patch as Julia and Sasha pointed out. I will also add
linux-erofs mailing list in CC.

Regards
Bhagyashri

On Mon, Nov 5, 2018, 12:48 AM Gaoxiang (OS) <gaoxiang25@huawei.com> wrote:

> Hi Bhagyashri=E2=80=8E,
>
> Thanks for your patch and I think it is helpful to fix erofs coding style
> as the kernel suggested.
>
> could you please fix your patch as Julia / Sasha pointed out.
>
> p.s. could you please kindly Cc: linux-erofs mailing list
> linux-erofs@lists.ozlabs.org as well?
> since I am very hard to access my @huawei.com conveniently off work
> (usually at the weekend).
>
> I have to do some special to reply at the weekend if some email didn't
> post to the linux-erofs mailing list,
> and I have to use M$ Outlook email client like this.... :(
>
> Thanks,
> Gao Xiang
>
> ________________________________________
> =E5=8F=91=E4=BB=B6=E4=BA=BA: Bhagyashri P. Dighole [digholebhagyashri@gma=
il.com]
> =E5=8F=91=E9=80=81=E6=97=B6=E9=97=B4: 2018=E5=B9=B411=E6=9C=885=E6=97=A5 =
2:41
> =E6=94=B6=E4=BB=B6=E4=BA=BA: Gaoxiang (OS); Yuchao (T); Greg Kroah-Hartma=
n
> =E6=8A=84=E9=80=81: Outreachy
> =E4=B8=BB=E9=A2=98: [PATCH] staging: erofs: Fix alignment issues and warn=
ings.
>
> This patch includes modifications for alignment and warnings
> as per the coding standards. Also, this patch includes fix
> for syntanctical and logical errors.
>
> Signed-off-by: Bhagyashri P. Dighole <digholebhagyashri@gmail.com>
> ---
>  drivers/staging/erofs/data.c | 65
> ++++++++++++++++++++++----------------------
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
> -       erofs_blk_t blkaddr, bool prio, bool nofail)
> +                                  erofs_blk_t blkaddr, bool prio, bool
> nofail)
>  {
>         struct inode *const bd_inode =3D sb->s_bdev->bd_inode;
>         struct address_space *const mapping =3D bd_inode->i_mapping;
> @@ -53,7 +53,7 @@ struct page *__erofs_get_meta_page(struct super_block
> *sb,
>
>  repeat:
>         page =3D find_or_create_page(mapping, blkaddr, gfp);
> -       if (unlikely(page =3D=3D NULL)) {
> +       if (unlikely(!page)) {
>                 DBG_BUGON(nofail);
>                 return ERR_PTR(-ENOMEM);
>         }
> @@ -76,7 +76,7 @@ struct page *__erofs_get_meta_page(struct super_block
> *sb,
>                 }
>
>                 __submit_bio(bio, REQ_OP_READ,
> -                       REQ_META | (prio ? REQ_PRIO : 0));
> +                            REQ_META | (prio ? REQ_PRIO : 0));
>
>                 lock_page(page);
>
> @@ -107,8 +107,8 @@ struct page *__erofs_get_meta_page(struct super_block
> *sb,
>  }
>
>  static int erofs_map_blocks_flatmode(struct inode *inode,
> -       struct erofs_map_blocks *map,
> -       int flags)
> +                                    struct erofs_map_blocks *map,
> +                                    int flags)
>  {
>         int err =3D 0;
>         erofs_blk_t nblocks, lastblk;
> @@ -151,7 +151,7 @@ static int erofs_map_blocks_flatmode(struct inode
> *inode,
>                 map->m_flags |=3D EROFS_MAP_META;
>         } else {
>                 errln("internal error @ nid: %llu (size %llu), m_la
> 0x%llx",
> -                       vi->nid, inode->i_size, map->m_la);
> +                     vi->nid, inode->i_size, map->m_la);
>                 DBG_BUGON(1);
>                 err =3D -EIO;
>                 goto err_out;
> @@ -167,16 +167,17 @@ static int erofs_map_blocks_flatmode(struct inode
> *inode,
>
>  #ifdef CONFIG_EROFS_FS_ZIP
>  extern int z_erofs_map_blocks_iter(struct inode *,
> -       struct erofs_map_blocks *, struct page **, int);
> +                                  struct erofs_map_blocks *,
> +                                  struct page **, int);
>  #endif
>
>  int erofs_map_blocks_iter(struct inode *inode,
> -       struct erofs_map_blocks *map,
> -       struct page **mpage_ret, int flags)
> +                         struct erofs_map_blocks *map,
> +                         struct page **mpage_ret, int flags)
>  {
>         /* by default, reading raw data never use erofs_map_blocks_iter *=
/
>         if (unlikely(!is_inode_layout_compression(inode))) {
> -               if (*mpage_ret !=3D NULL)
> +               if (*mpage_ret)
>                         put_page(*mpage_ret);
>                 *mpage_ret =3D NULL;
>
> @@ -192,27 +193,26 @@ int erofs_map_blocks_iter(struct inode *inode,
>  }
>
>  int erofs_map_blocks(struct inode *inode,
> -       struct erofs_map_blocks *map, int flags)
> +                    struct erofs_map_blocks *map, int flags)
>  {
>         if (unlikely(is_inode_layout_compression(inode))) {
>                 struct page *mpage =3D NULL;
>                 int err;
>
>                 err =3D erofs_map_blocks_iter(inode, map, &mpage, flags);
> -               if (mpage !=3D NULL)
> +               if (mpage)
>                         put_page(mpage);
>                 return err;
>         }
>         return erofs_map_blocks_flatmode(inode, map, flags);
>  }
>
> -static inline struct bio *erofs_read_raw_page(
> -       struct bio *bio,
> -       struct address_space *mapping,
> -       struct page *page,
> -       erofs_off_t *last_block,
> -       unsigned int nblocks,
> -       bool ra)
> +static inline struct bio *erofs_read_raw_page(struct bio *bio,
> +                                             struct address_space
> *mapping,
> +                                             struct page *page,
> +                                             erofs_off_t *last_block,
> +                                             unsigned int nblocks,
> +                                             bool ra)
>  {
>         struct inode *inode =3D mapping->host;
>         erofs_off_t current_block =3D (erofs_off_t)page->index;
> @@ -232,15 +232,15 @@ static inline struct bio *erofs_read_raw_page(
>         }
>
>         /* note that for readpage case, bio also equals to NULL */
> -       if (bio !=3D NULL &&
> -               /* not continuous */
> -               *last_block + 1 !=3D current_block) {
> +       if (bio &&
> +           /* not continuous */
> +           *last_block + 1 !=3D current_block) {
>  submit_bio_retry:
>                 __submit_bio(bio, REQ_OP_READ, 0);
>                 bio =3D NULL;
>         }
>
> -       if (bio =3D=3D NULL) {
> +       if (bio) {
>                 struct erofs_map_blocks map =3D {
>                         .m_la =3D blknr_to_addr(current_block),
>                 };
> @@ -307,7 +307,7 @@ static inline struct bio *erofs_read_raw_page(
>                         nblocks =3D BIO_MAX_PAGES;
>
>                 bio =3D erofs_grab_bio(inode->i_sb,
> -                       blknr, nblocks, read_endio, false);
> +                                    blknr, nblocks, read_endio, false);
>
>                 if (IS_ERR(bio)) {
>                         err =3D PTR_ERR(bio);
> @@ -342,7 +342,7 @@ static inline struct bio *erofs_read_raw_page(
>         unlock_page(page);
>
>         /* if updated manually, continuous pages has a gap */
> -       if (bio !=3D NULL)
> +       if (!bio)
>  submit_bio_out:
>                 __submit_bio(bio, REQ_OP_READ, 0);
>
> @@ -361,7 +361,7 @@ static int erofs_raw_access_readpage(struct file
> *file, struct page *page)
>         trace_erofs_readpage(page, true);
>
>         bio =3D erofs_read_raw_page(NULL, page->mapping,
> -               page, &last_block, 1, false);
> +                                 page, &last_block, 1, false);
>
>         if (IS_ERR(bio))
>                 return PTR_ERR(bio);
> @@ -371,8 +371,9 @@ static int erofs_raw_access_readpage(struct file
> *file, struct page *page)
>  }
>
>  static int erofs_raw_access_readpages(struct file *filp,
> -       struct address_space *mapping,
> -       struct list_head *pages, unsigned int nr_pages)
> +                                     struct address_space *mapping,
> +                                     struct list_head *pages,
> +                                     unsigned int nr_pages)
>  {
>         erofs_off_t last_block;
>         struct bio *bio =3D NULL;
> @@ -389,13 +390,13 @@ static int erofs_raw_access_readpages(struct file
> *filp,
>
>                 if (!add_to_page_cache_lru(page, mapping, page->index,
> gfp)) {
>                         bio =3D erofs_read_raw_page(bio, mapping, page,
> -                               &last_block, nr_pages, true);
> +                                                 &last_block, nr_pages,
> true);
>
>                         /* all the page errors are ignored when readahead
> */
>                         if (IS_ERR(bio)) {
>                                 pr_err("%s, readahead error at page %lu o=
f
> nid %llu\n",
> -                                       __func__, page->index,
> -                                       EROFS_V(mapping->host)->nid);
> +                                      __func__, page->index,
> +                                      EROFS_V(mapping->host)->nid);
>
>                                 bio =3D NULL;
>                         }
> @@ -407,7 +408,7 @@ static int erofs_raw_access_readpages(struct file
> *filp,
>         DBG_BUGON(!list_empty(pages));
>
>         /* the rare case (end in gaps) */
> -       if (unlikely(bio !=3D NULL))
> +       if (unlikely(bio))
>                 __submit_bio(bio, REQ_OP_READ, 0);
>         return 0;
>  }
> --
> 2.7.4

--0000000000008772000579dbed5a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: base64

PGRpdiBkaXI9ImF1dG8iPkhpIEdhbyw8ZGl2IGRpcj0iYXV0byI+PGJyPjwvZGl2PjxkaXYgZGly
PSJhdXRvIj5UaGFuayB5b3UgZm9yIHlvdXIgc3VnZ2VzdGlvbnMuPC9kaXY+PGRpdiBkaXI9ImF1
dG8iPjxicj48L2Rpdj48ZGl2IGRpcj0iYXV0byI+SSB3aWxsIHJlc3VibWl0IHRoZSBwYXRjaCBh
cyBKdWxpYSBhbmQgU2FzaGEgcG9pbnRlZCBvdXQuIEkgd2lsbCBhbHNvIGFkZCBsaW51eC1lcm9m
cyBtYWlsaW5nIGxpc3QgaW4gQ0MuPC9kaXY+PGRpdiBkaXI9ImF1dG8iPjxicj48L2Rpdj48ZGl2
IGRpcj0iYXV0byI+UmVnYXJkczwvZGl2PjxkaXYgZGlyPSJhdXRvIj5CaGFneWFzaHJpPC9kaXY+
PC9kaXY+PGJyPjxkaXYgY2xhc3M9ImdtYWlsX3F1b3RlIj48ZGl2IGRpcj0ibHRyIj5PbiBNb24s
IE5vdiA1LCAyMDE4LCAxMjo0OCBBTSBHYW94aWFuZyAoT1MpICZsdDs8YSBocmVmPSJtYWlsdG86
Z2FveGlhbmcyNUBodWF3ZWkuY29tIj5nYW94aWFuZzI1QGh1YXdlaS5jb208L2E+Jmd0OyB3cm90
ZTo8YnI+PC9kaXY+PGJsb2NrcXVvdGUgY2xhc3M9ImdtYWlsX3F1b3RlIiBzdHlsZT0ibWFyZ2lu
OjAgMCAwIC44ZXg7Ym9yZGVyLWxlZnQ6MXB4ICNjY2Mgc29saWQ7cGFkZGluZy1sZWZ0OjFleCI+
SGkgQmhhZ3lhc2hyaeKAjiw8YnI+DQo8YnI+DQpUaGFua3MgZm9yIHlvdXIgcGF0Y2ggYW5kIEkg
dGhpbmsgaXQgaXMgaGVscGZ1bCB0byBmaXggZXJvZnMgY29kaW5nIHN0eWxlIGFzIHRoZSBrZXJu
ZWwgc3VnZ2VzdGVkLjxicj4NCjxicj4NCmNvdWxkIHlvdSBwbGVhc2UgZml4IHlvdXIgcGF0Y2gg
YXMgSnVsaWEgLyBTYXNoYSBwb2ludGVkIG91dC48YnI+DQo8YnI+DQpwLnMuIGNvdWxkIHlvdSBw
bGVhc2Uga2luZGx5IENjOiBsaW51eC1lcm9mcyBtYWlsaW5nIGxpc3QgPGEgaHJlZj0ibWFpbHRv
OmxpbnV4LWVyb2ZzQGxpc3RzLm96bGFicy5vcmciIHRhcmdldD0iX2JsYW5rIiByZWw9Im5vcmVm
ZXJyZXIiPmxpbnV4LWVyb2ZzQGxpc3RzLm96bGFicy5vcmc8L2E+IGFzIHdlbGw/PGJyPg0Kc2lu
Y2UgSSBhbSB2ZXJ5IGhhcmQgdG8gYWNjZXNzIG15IEA8YSBocmVmPSJodHRwOi8vaHVhd2VpLmNv
bSIgcmVsPSJub3JlZmVycmVyIG5vcmVmZXJyZXIiIHRhcmdldD0iX2JsYW5rIj5odWF3ZWkuY29t
PC9hPiBjb252ZW5pZW50bHkgb2ZmIHdvcmsgKHVzdWFsbHkgYXQgdGhlIHdlZWtlbmQpLjxicj4N
Cjxicj4NCkkgaGF2ZSB0byBkbyBzb21lIHNwZWNpYWwgdG8gcmVwbHkgYXQgdGhlIHdlZWtlbmQg
aWYgc29tZSBlbWFpbCBkaWRuJiMzOTt0IHBvc3QgdG8gdGhlIGxpbnV4LWVyb2ZzIG1haWxpbmcg
bGlzdCw8YnI+DQphbmQgSSBoYXZlIHRvIHVzZSBNJCBPdXRsb29rIGVtYWlsIGNsaWVudCBsaWtl
IHRoaXMuLi4uIDooPGJyPg0KPGJyPg0KVGhhbmtzLDxicj4NCkdhbyBYaWFuZzxicj4NCjxicj4N
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX188YnI+DQrlj5Hku7bkuro6
IEJoYWd5YXNocmkgUC4gRGlnaG9sZSBbPGEgaHJlZj0ibWFpbHRvOmRpZ2hvbGViaGFneWFzaHJp
QGdtYWlsLmNvbSIgdGFyZ2V0PSJfYmxhbmsiIHJlbD0ibm9yZWZlcnJlciI+ZGlnaG9sZWJoYWd5
YXNocmlAZ21haWwuY29tPC9hPl08YnI+DQrlj5HpgIHml7bpl7Q6IDIwMTjlubQxMeaciDXml6Ug
Mjo0MTxicj4NCuaUtuS7tuS6ujogR2FveGlhbmcgKE9TKTsgWXVjaGFvIChUKTsgR3JlZyBLcm9h
aC1IYXJ0bWFuPGJyPg0K5oqE6YCBOiBPdXRyZWFjaHk8YnI+DQrkuLvpopg6IFtQQVRDSF0gc3Rh
Z2luZzogZXJvZnM6IEZpeCBhbGlnbm1lbnQgaXNzdWVzIGFuZCB3YXJuaW5ncy48YnI+DQo8YnI+
DQpUaGlzIHBhdGNoIGluY2x1ZGVzIG1vZGlmaWNhdGlvbnMgZm9yIGFsaWdubWVudCBhbmQgd2Fy
bmluZ3M8YnI+DQphcyBwZXIgdGhlIGNvZGluZyBzdGFuZGFyZHMuIEFsc28sIHRoaXMgcGF0Y2gg
aW5jbHVkZXMgZml4PGJyPg0KZm9yIHN5bnRhbmN0aWNhbCBhbmQgbG9naWNhbCBlcnJvcnMuPGJy
Pg0KPGJyPg0KU2lnbmVkLW9mZi1ieTogQmhhZ3lhc2hyaSBQLiBEaWdob2xlICZsdDs8YSBocmVm
PSJtYWlsdG86ZGlnaG9sZWJoYWd5YXNocmlAZ21haWwuY29tIiB0YXJnZXQ9Il9ibGFuayIgcmVs
PSJub3JlZmVycmVyIj5kaWdob2xlYmhhZ3lhc2hyaUBnbWFpbC5jb208L2E+Jmd0Ozxicj4NCi0t
LTxicj4NCsKgZHJpdmVycy9zdGFnaW5nL2Vyb2ZzL2RhdGEuYyB8IDY1ICsrKysrKysrKysrKysr
KysrKysrKystLS0tLS0tLS0tLS0tLS0tLS0tLS0tPGJyPg0KwqAxIGZpbGUgY2hhbmdlZCwgMzMg
aW5zZXJ0aW9ucygrKSwgMzIgZGVsZXRpb25zKC0pPGJyPg0KPGJyPg0KZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvc3RhZ2luZy9lcm9mcy9kYXRhLmMgYi9kcml2ZXJzL3N0YWdpbmcvZXJvZnMvZGF0YS5j
PGJyPg0KaW5kZXggNjM4NGY3My4uNmZlYzVlNiAxMDA2NDQ8YnI+DQotLS0gYS9kcml2ZXJzL3N0
YWdpbmcvZXJvZnMvZGF0YS5jPGJyPg0KKysrIGIvZHJpdmVycy9zdGFnaW5nL2Vyb2ZzL2RhdGEu
Yzxicj4NCkBAIC00MCw3ICs0MCw3IEBAIHN0YXRpYyBpbmxpbmUgdm9pZCByZWFkX2VuZGlvKHN0
cnVjdCBiaW8gKmJpbyk8YnI+DQo8YnI+DQrCoC8qIHByaW8gLS0gdHJ1ZSBpcyB1c2VkIGZvciBk
aXIgKi88YnI+DQrCoHN0cnVjdCBwYWdlICpfX2Vyb2ZzX2dldF9tZXRhX3BhZ2Uoc3RydWN0IHN1
cGVyX2Jsb2NrICpzYiw8YnI+DQotwqAgwqAgwqAgwqBlcm9mc19ibGtfdCBibGthZGRyLCBib29s
IHByaW8sIGJvb2wgbm9mYWlsKTxicj4NCivCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCBlcm9mc19ibGtfdCBibGthZGRyLCBib29sIHByaW8sIGJvb2wg
bm9mYWlsKTxicj4NCsKgezxicj4NCsKgIMKgIMKgIMKgIHN0cnVjdCBpbm9kZSAqY29uc3QgYmRf
aW5vZGUgPSBzYi0mZ3Q7c19iZGV2LSZndDtiZF9pbm9kZTs8YnI+DQrCoCDCoCDCoCDCoCBzdHJ1
Y3QgYWRkcmVzc19zcGFjZSAqY29uc3QgbWFwcGluZyA9IGJkX2lub2RlLSZndDtpX21hcHBpbmc7
PGJyPg0KQEAgLTUzLDcgKzUzLDcgQEAgc3RydWN0IHBhZ2UgKl9fZXJvZnNfZ2V0X21ldGFfcGFn
ZShzdHJ1Y3Qgc3VwZXJfYmxvY2sgKnNiLDxicj4NCjxicj4NCsKgcmVwZWF0Ojxicj4NCsKgIMKg
IMKgIMKgIHBhZ2UgPSBmaW5kX29yX2NyZWF0ZV9wYWdlKG1hcHBpbmcsIGJsa2FkZHIsIGdmcCk7
PGJyPg0KLcKgIMKgIMKgIMKgaWYgKHVubGlrZWx5KHBhZ2UgPT0gTlVMTCkpIHs8YnI+DQorwqAg
wqAgwqAgwqBpZiAodW5saWtlbHkoIXBhZ2UpKSB7PGJyPg0KwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgREJHX0JVR09OKG5vZmFpbCk7PGJyPg0KwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgcmV0dXJu
IEVSUl9QVFIoLUVOT01FTSk7PGJyPg0KwqAgwqAgwqAgwqAgfTxicj4NCkBAIC03Niw3ICs3Niw3
IEBAIHN0cnVjdCBwYWdlICpfX2Vyb2ZzX2dldF9tZXRhX3BhZ2Uoc3RydWN0IHN1cGVyX2Jsb2Nr
ICpzYiw8YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCB9PGJyPg0KPGJyPg0KwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgX19zdWJtaXRfYmlvKGJpbywgUkVRX09QX1JFQUQsPGJyPg0KLcKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgUkVRX01FVEEgfCAocHJpbyA/IFJFUV9QUklP
IDogMCkpOzxicj4NCivCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCBS
RVFfTUVUQSB8IChwcmlvID8gUkVRX1BSSU8gOiAwKSk7PGJyPg0KPGJyPg0KwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgbG9ja19wYWdlKHBhZ2UpOzxicj4NCjxicj4NCkBAIC0xMDcsOCArMTA3LDgg
QEAgc3RydWN0IHBhZ2UgKl9fZXJvZnNfZ2V0X21ldGFfcGFnZShzdHJ1Y3Qgc3VwZXJfYmxvY2sg
KnNiLDxicj4NCsKgfTxicj4NCjxicj4NCsKgc3RhdGljIGludCBlcm9mc19tYXBfYmxvY2tzX2Zs
YXRtb2RlKHN0cnVjdCBpbm9kZSAqaW5vZGUsPGJyPg0KLcKgIMKgIMKgIMKgc3RydWN0IGVyb2Zz
X21hcF9ibG9ja3MgKm1hcCw8YnI+DQotwqAgwqAgwqAgwqBpbnQgZmxhZ3MpPGJyPg0KK8KgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIHN0cnVjdCBl
cm9mc19tYXBfYmxvY2tzICptYXAsPGJyPg0KK8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIGludCBmbGFncyk8YnI+DQrCoHs8YnI+DQrCoCDCoCDC
oCDCoCBpbnQgZXJyID0gMDs8YnI+DQrCoCDCoCDCoCDCoCBlcm9mc19ibGtfdCBuYmxvY2tzLCBs
YXN0YmxrOzxicj4NCkBAIC0xNTEsNyArMTUxLDcgQEAgc3RhdGljIGludCBlcm9mc19tYXBfYmxv
Y2tzX2ZsYXRtb2RlKHN0cnVjdCBpbm9kZSAqaW5vZGUsPGJyPg0KwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgbWFwLSZndDttX2ZsYWdzIHw9IEVST0ZTX01BUF9NRVRBOzxicj4NCsKgIMKgIMKgIMKg
IH0gZWxzZSB7PGJyPg0KwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgZXJybG4oJnF1b3Q7aW50ZXJu
YWwgZXJyb3IgQCBuaWQ6ICVsbHUgKHNpemUgJWxsdSksIG1fbGEgMHglbGx4JnF1b3Q7LDxicj4N
Ci3CoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHZpLSZndDtuaWQsIGlub2RlLSZn
dDtpX3NpemUsIG1hcC0mZ3Q7bV9sYSk7PGJyPg0KK8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgdmktJmd0O25pZCwgaW5vZGUtJmd0O2lfc2l6ZSwgbWFwLSZndDttX2xhKTs8YnI+DQrC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCBEQkdfQlVHT04oMSk7PGJyPg0KwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgZXJyID0gLUVJTzs8YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCBnb3RvIGVy
cl9vdXQ7PGJyPg0KQEAgLTE2NywxNiArMTY3LDE3IEBAIHN0YXRpYyBpbnQgZXJvZnNfbWFwX2Js
b2Nrc19mbGF0bW9kZShzdHJ1Y3QgaW5vZGUgKmlub2RlLDxicj4NCjxicj4NCsKgI2lmZGVmIENP
TkZJR19FUk9GU19GU19aSVA8YnI+DQrCoGV4dGVybiBpbnQgel9lcm9mc19tYXBfYmxvY2tzX2l0
ZXIoc3RydWN0IGlub2RlICosPGJyPg0KLcKgIMKgIMKgIMKgc3RydWN0IGVyb2ZzX21hcF9ibG9j
a3MgKiwgc3RydWN0IHBhZ2UgKiosIGludCk7PGJyPg0KK8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIHN0cnVjdCBlcm9mc19tYXBfYmxvY2tzICosPGJy
Pg0KK8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIHN0
cnVjdCBwYWdlICoqLCBpbnQpOzxicj4NCsKgI2VuZGlmPGJyPg0KPGJyPg0KwqBpbnQgZXJvZnNf
bWFwX2Jsb2Nrc19pdGVyKHN0cnVjdCBpbm9kZSAqaW5vZGUsPGJyPg0KLcKgIMKgIMKgIMKgc3Ry
dWN0IGVyb2ZzX21hcF9ibG9ja3MgKm1hcCw8YnI+DQotwqAgwqAgwqAgwqBzdHJ1Y3QgcGFnZSAq
Km1wYWdlX3JldCwgaW50IGZsYWdzKTxicj4NCivCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoHN0cnVjdCBlcm9mc19tYXBfYmxvY2tzICptYXAsPGJyPg0KK8KgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgc3RydWN0IHBhZ2UgKiptcGFnZV9yZXQsIGludCBm
bGFncyk8YnI+DQrCoHs8YnI+DQrCoCDCoCDCoCDCoCAvKiBieSBkZWZhdWx0LCByZWFkaW5nIHJh
dyBkYXRhIG5ldmVyIHVzZSBlcm9mc19tYXBfYmxvY2tzX2l0ZXIgKi88YnI+DQrCoCDCoCDCoCDC
oCBpZiAodW5saWtlbHkoIWlzX2lub2RlX2xheW91dF9jb21wcmVzc2lvbihpbm9kZSkpKSB7PGJy
Pg0KLcKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgaWYgKCptcGFnZV9yZXQgIT0gTlVMTCk8YnI+DQor
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBpZiAoKm1wYWdlX3JldCk8YnI+DQrCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCBwdXRfcGFnZSgqbXBhZ2VfcmV0KTs8YnI+DQrCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCAqbXBhZ2VfcmV0ID0gTlVMTDs8YnI+DQo8YnI+DQpAQCAtMTkyLDI3
ICsxOTMsMjYgQEAgaW50IGVyb2ZzX21hcF9ibG9ja3NfaXRlcihzdHJ1Y3QgaW5vZGUgKmlub2Rl
LDxicj4NCsKgfTxicj4NCjxicj4NCsKgaW50IGVyb2ZzX21hcF9ibG9ja3Moc3RydWN0IGlub2Rl
ICppbm9kZSw8YnI+DQotwqAgwqAgwqAgwqBzdHJ1Y3QgZXJvZnNfbWFwX2Jsb2NrcyAqbWFwLCBp
bnQgZmxhZ3MpPGJyPg0KK8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIHN0cnVjdCBlcm9m
c19tYXBfYmxvY2tzICptYXAsIGludCBmbGFncyk8YnI+DQrCoHs8YnI+DQrCoCDCoCDCoCDCoCBp
ZiAodW5saWtlbHkoaXNfaW5vZGVfbGF5b3V0X2NvbXByZXNzaW9uKGlub2RlKSkpIHs8YnI+DQrC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCBzdHJ1Y3QgcGFnZSAqbXBhZ2UgPSBOVUxMOzxicj4NCsKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIGludCBlcnI7PGJyPg0KPGJyPg0KwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgZXJyID0gZXJvZnNfbWFwX2Jsb2Nrc19pdGVyKGlub2RlLCBtYXAsICZhbXA7bXBh
Z2UsIGZsYWdzKTs8YnI+DQotwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBpZiAobXBhZ2UgIT0gTlVM
TCk8YnI+DQorwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBpZiAobXBhZ2UpPGJyPg0KwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgcHV0X3BhZ2UobXBhZ2UpOzxicj4NCsKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIHJldHVybiBlcnI7PGJyPg0KwqAgwqAgwqAgwqAgfTxicj4NCsKgIMKg
IMKgIMKgIHJldHVybiBlcm9mc19tYXBfYmxvY2tzX2ZsYXRtb2RlKGlub2RlLCBtYXAsIGZsYWdz
KTs8YnI+DQrCoH08YnI+DQo8YnI+DQotc3RhdGljIGlubGluZSBzdHJ1Y3QgYmlvICplcm9mc19y
ZWFkX3Jhd19wYWdlKDxicj4NCi3CoCDCoCDCoCDCoHN0cnVjdCBiaW8gKmJpbyw8YnI+DQotwqAg
wqAgwqAgwqBzdHJ1Y3QgYWRkcmVzc19zcGFjZSAqbWFwcGluZyw8YnI+DQotwqAgwqAgwqAgwqBz
dHJ1Y3QgcGFnZSAqcGFnZSw8YnI+DQotwqAgwqAgwqAgwqBlcm9mc19vZmZfdCAqbGFzdF9ibG9j
ayw8YnI+DQotwqAgwqAgwqAgwqB1bnNpZ25lZCBpbnQgbmJsb2Nrcyw8YnI+DQotwqAgwqAgwqAg
wqBib29sIHJhKTxicj4NCitzdGF0aWMgaW5saW5lIHN0cnVjdCBiaW8gKmVyb2ZzX3JlYWRfcmF3
X3BhZ2Uoc3RydWN0IGJpbyAqYmlvLDxicj4NCivCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHN0cnVjdCBhZGRyZXNzX3Nw
YWNlICptYXBwaW5nLDxicj4NCivCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHN0cnVjdCBwYWdlICpwYWdlLDxicj4NCivC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoGVyb2ZzX29mZl90ICpsYXN0X2Jsb2NrLDxicj4NCivCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHVuc2ln
bmVkIGludCBuYmxvY2tzLDxicj4NCivCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoGJvb2wgcmEpPGJyPg0KwqB7PGJyPg0K
wqAgwqAgwqAgwqAgc3RydWN0IGlub2RlICppbm9kZSA9IG1hcHBpbmctJmd0O2hvc3Q7PGJyPg0K
wqAgwqAgwqAgwqAgZXJvZnNfb2ZmX3QgY3VycmVudF9ibG9jayA9IChlcm9mc19vZmZfdClwYWdl
LSZndDtpbmRleDs8YnI+DQpAQCAtMjMyLDE1ICsyMzIsMTUgQEAgc3RhdGljIGlubGluZSBzdHJ1
Y3QgYmlvICplcm9mc19yZWFkX3Jhd19wYWdlKDxicj4NCsKgIMKgIMKgIMKgIH08YnI+DQo8YnI+
DQrCoCDCoCDCoCDCoCAvKiBub3RlIHRoYXQgZm9yIHJlYWRwYWdlIGNhc2UsIGJpbyBhbHNvIGVx
dWFscyB0byBOVUxMICovPGJyPg0KLcKgIMKgIMKgIMKgaWYgKGJpbyAhPSBOVUxMICZhbXA7JmFt
cDs8YnI+DQotwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAvKiBub3QgY29udGludW91cyAqLzxicj4N
Ci3CoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCpsYXN0X2Jsb2NrICsgMSAhPSBjdXJyZW50X2Jsb2Nr
KSB7PGJyPg0KK8KgIMKgIMKgIMKgaWYgKGJpbyAmYW1wOyZhbXA7PGJyPg0KK8KgIMKgIMKgIMKg
IMKgIMKgLyogbm90IGNvbnRpbnVvdXMgKi88YnI+DQorwqAgwqAgwqAgwqAgwqAgwqAqbGFzdF9i
bG9jayArIDEgIT0gY3VycmVudF9ibG9jaykgezxicj4NCsKgc3VibWl0X2Jpb19yZXRyeTo8YnI+
DQrCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCBfX3N1Ym1pdF9iaW8oYmlvLCBSRVFfT1BfUkVBRCwg
MCk7PGJyPg0KwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgYmlvID0gTlVMTDs8YnI+DQrCoCDCoCDC
oCDCoCB9PGJyPg0KPGJyPg0KLcKgIMKgIMKgIMKgaWYgKGJpbyA9PSBOVUxMKSB7PGJyPg0KK8Kg
IMKgIMKgIMKgaWYgKGJpbykgezxicj4NCsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIHN0cnVjdCBl
cm9mc19tYXBfYmxvY2tzIG1hcCA9IHs8YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCAubV9sYSA9IGJsa25yX3RvX2FkZHIoY3VycmVudF9ibG9jayksPGJyPg0KwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgfTs8YnI+DQpAQCAtMzA3LDcgKzMwNyw3IEBAIHN0YXRpYyBpbmxp
bmUgc3RydWN0IGJpbyAqZXJvZnNfcmVhZF9yYXdfcGFnZSg8YnI+DQrCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCBuYmxvY2tzID0gQklPX01BWF9QQUdFUzs8YnI+DQo8YnI+DQrC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCBiaW8gPSBlcm9mc19ncmFiX2Jpbyhpbm9kZS0mZ3Q7aV9z
Yiw8YnI+DQotwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBibGtuciwgbmJsb2Nr
cywgcmVhZF9lbmRpbywgZmFsc2UpOzxicj4NCivCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCBibGtuciwgbmJsb2NrcywgcmVhZF9lbmRpbywgZmFs
c2UpOzxicj4NCjxicj4NCsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIGlmIChJU19FUlIoYmlvKSkg
ezxicj4NCsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIGVyciA9IFBUUl9FUlIo
YmlvKTs8YnI+DQpAQCAtMzQyLDcgKzM0Miw3IEBAIHN0YXRpYyBpbmxpbmUgc3RydWN0IGJpbyAq
ZXJvZnNfcmVhZF9yYXdfcGFnZSg8YnI+DQrCoCDCoCDCoCDCoCB1bmxvY2tfcGFnZShwYWdlKTs8
YnI+DQo8YnI+DQrCoCDCoCDCoCDCoCAvKiBpZiB1cGRhdGVkIG1hbnVhbGx5LCBjb250aW51b3Vz
IHBhZ2VzIGhhcyBhIGdhcCAqLzxicj4NCi3CoCDCoCDCoCDCoGlmIChiaW8gIT0gTlVMTCk8YnI+
DQorwqAgwqAgwqAgwqBpZiAoIWJpbyk8YnI+DQrCoHN1Ym1pdF9iaW9fb3V0Ojxicj4NCsKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIF9fc3VibWl0X2JpbyhiaW8sIFJFUV9PUF9SRUFELCAwKTs8YnI+
DQo8YnI+DQpAQCAtMzYxLDcgKzM2MSw3IEBAIHN0YXRpYyBpbnQgZXJvZnNfcmF3X2FjY2Vzc19y
ZWFkcGFnZShzdHJ1Y3QgZmlsZSAqZmlsZSwgc3RydWN0IHBhZ2UgKnBhZ2UpPGJyPg0KwqAgwqAg
wqAgwqAgdHJhY2VfZXJvZnNfcmVhZHBhZ2UocGFnZSwgdHJ1ZSk7PGJyPg0KPGJyPg0KwqAgwqAg
wqAgwqAgYmlvID0gZXJvZnNfcmVhZF9yYXdfcGFnZShOVUxMLCBwYWdlLSZndDttYXBwaW5nLDxi
cj4NCi3CoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHBhZ2UsICZhbXA7bGFzdF9ibG9jaywgMSwgZmFs
c2UpOzxicj4NCivCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoHBhZ2UsICZhbXA7bGFzdF9ibG9jaywgMSwgZmFsc2UpOzxicj4NCjxicj4NCsKgIMKgIMKg
IMKgIGlmIChJU19FUlIoYmlvKSk8YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCByZXR1cm4g
UFRSX0VSUihiaW8pOzxicj4NCkBAIC0zNzEsOCArMzcxLDkgQEAgc3RhdGljIGludCBlcm9mc19y
YXdfYWNjZXNzX3JlYWRwYWdlKHN0cnVjdCBmaWxlICpmaWxlLCBzdHJ1Y3QgcGFnZSAqcGFnZSk8
YnI+DQrCoH08YnI+DQo8YnI+DQrCoHN0YXRpYyBpbnQgZXJvZnNfcmF3X2FjY2Vzc19yZWFkcGFn
ZXMoc3RydWN0IGZpbGUgKmZpbHAsPGJyPg0KLcKgIMKgIMKgIMKgc3RydWN0IGFkZHJlc3Nfc3Bh
Y2UgKm1hcHBpbmcsPGJyPg0KLcKgIMKgIMKgIMKgc3RydWN0IGxpc3RfaGVhZCAqcGFnZXMsIHVu
c2lnbmVkIGludCBucl9wYWdlcyk8YnI+DQorwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBzdHJ1Y3QgYWRkcmVzc19zcGFjZSAqbWFwcGluZyw8
YnI+DQorwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqBzdHJ1Y3QgbGlzdF9oZWFkICpwYWdlcyw8YnI+DQorwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqB1bnNpZ25lZCBpbnQgbnJfcGFnZXMp
PGJyPg0KwqB7PGJyPg0KwqAgwqAgwqAgwqAgZXJvZnNfb2ZmX3QgbGFzdF9ibG9jazs8YnI+DQrC
oCDCoCDCoCDCoCBzdHJ1Y3QgYmlvICpiaW8gPSBOVUxMOzxicj4NCkBAIC0zODksMTMgKzM5MCwx
MyBAQCBzdGF0aWMgaW50IGVyb2ZzX3Jhd19hY2Nlc3NfcmVhZHBhZ2VzKHN0cnVjdCBmaWxlICpm
aWxwLDxicj4NCjxicj4NCsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIGlmICghYWRkX3RvX3BhZ2Vf
Y2FjaGVfbHJ1KHBhZ2UsIG1hcHBpbmcsIHBhZ2UtJmd0O2luZGV4LCBnZnApKSB7PGJyPg0KwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgYmlvID0gZXJvZnNfcmVhZF9yYXdfcGFn
ZShiaW8sIG1hcHBpbmcsIHBhZ2UsPGJyPg0KLcKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgJmFtcDtsYXN0X2Jsb2NrLCBucl9wYWdlcywgdHJ1ZSk7PGJyPg0K
K8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgJmFtcDtsYXN0X2Jsb2NrLCBucl9wYWdlcywgdHJ1ZSk7PGJyPg0K
PGJyPg0KwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgLyogYWxsIHRoZSBwYWdl
IGVycm9ycyBhcmUgaWdub3JlZCB3aGVuIHJlYWRhaGVhZCAqLzxicj4NCsKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIGlmIChJU19FUlIoYmlvKSkgezxicj4NCsKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIHByX2VycigmcXVvdDslcywgcmVh
ZGFoZWFkIGVycm9yIGF0IHBhZ2UgJWx1IG9mIG5pZCAlbGx1XG4mcXVvdDssPGJyPg0KLcKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgX19m
dW5jX18sIHBhZ2UtJmd0O2luZGV4LDxicj4NCi3CoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoEVST0ZTX1YobWFwcGluZy0mZ3Q7aG9zdCkt
Jmd0O25pZCk7PGJyPg0KK8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIF9fZnVuY19fLCBwYWdlLSZndDtpbmRleCw8YnI+DQorwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgRVJPRlNfViht
YXBwaW5nLSZndDtob3N0KS0mZ3Q7bmlkKTs8YnI+DQo8YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCBiaW8gPSBOVUxMOzxicj4NCsKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIH08YnI+DQpAQCAtNDA3LDcgKzQwOCw3IEBAIHN0YXRp
YyBpbnQgZXJvZnNfcmF3X2FjY2Vzc19yZWFkcGFnZXMoc3RydWN0IGZpbGUgKmZpbHAsPGJyPg0K
wqAgwqAgwqAgwqAgREJHX0JVR09OKCFsaXN0X2VtcHR5KHBhZ2VzKSk7PGJyPg0KPGJyPg0KwqAg
wqAgwqAgwqAgLyogdGhlIHJhcmUgY2FzZSAoZW5kIGluIGdhcHMpICovPGJyPg0KLcKgIMKgIMKg
IMKgaWYgKHVubGlrZWx5KGJpbyAhPSBOVUxMKSk8YnI+DQorwqAgwqAgwqAgwqBpZiAodW5saWtl
bHkoYmlvKSk8YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCBfX3N1Ym1pdF9iaW8oYmlvLCBS
RVFfT1BfUkVBRCwgMCk7PGJyPg0KwqAgwqAgwqAgwqAgcmV0dXJuIDA7PGJyPg0KwqB9PGJyPg0K
LS08YnI+DQoyLjcuNDwvYmxvY2txdW90ZT48L2Rpdj4NCg==
--0000000000008772000579dbed5a--

