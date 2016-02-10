X-GM-THRID: 6249484870068731904
X-Received: by 10.25.18.227 with SMTP id 96mr233007lfs.4.1455094586466;
        Wed, 10 Feb 2016 00:56:26 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.6.15 with SMTP id 15ls103252wmg.50.gmail; Wed, 10 Feb 2016
 00:56:26 -0800 (PST)
X-Received: by 10.28.172.194 with SMTP id v185mr1100478wme.5.1455094586052;
        Wed, 10 Feb 2016 00:56:26 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id w10si639294wmw.3.2016.02.10.00.56.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Feb 2016 00:56:26 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,425,1449529200"; 
   d="scan'208";a="202424543"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 10 Feb 2016 09:56:25 +0100
Date: Wed, 10 Feb 2016 09:56:23 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Janani Ravichandran <janani.rvchndrn@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: lustre: Modify arguments of
 sizeof() to pointer variables
In-Reply-To: <CANnt6X=tpDfOvw1934mFiuUKL1apk+dJ7C8Ws7wzW7ko0nzHGw@mail.gmail.com>
Message-ID: <alpine.DEB.2.10.1602100955360.2486@hadrien>
References: <20160210073225.GA5118@janani-Inspiron-3521> <alpine.DEB.2.02.1602100751090.2050@localhost6.localdomain6> <CANnt6X=tpDfOvw1934mFiuUKL1apk+dJ7C8Ws7wzW7ko0nzHGw@mail.gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-1222665075-1455094583=:2486"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1222665075-1455094583=:2486
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Wed, 10 Feb 2016, Janani Ravichandran wrote:

>
>
> On Wed, Feb 10, 2016 at 1:55 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>       On Wed, 10 Feb 2016, Janani Ravichandran wrote:
>
>       > It is better when sizeof() takes as an argument the size of
>       the pointer variablewe care about rather than the type. This is
>       because even if the type of the variable changes in the future,
>       we will always get the correct size irrespective of the type.
>
>       You should respect the 80 character limit in the commit
>       message.  This is
>       a paragraph that is just a single line.
>
>       I'm not sure that the description has to be quite so detailed
>       either.  It
>       could be something like: Take the size of a dereference to a
>       variable
>       rather than the associated type, to make the code more resistent
>       to type
>       changes in the future.
>
> I will send a v2 after making these changes.

In the v2, also make it clear that you have checked that the current type
is the same as the type of the thing that you are putting it its place.

julia

>       Finally, did you do this with Coccinelle?  With Coccinelle, you
>       can check
>       that the type in the sizeof is actually the type of the
>       variable.  The
>       change is only correct in that case.
>
> No, Julia, I did not use Coccinelle for this particular issue. I found this
> when
> I was looking at something else and thought I'd send a patch for this.
>
>       julia
>
>       > This patch makes such a change.
>       >
>       > Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
>       > ---
>       >  drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c | 14
>       +++++++-------
>       >  1 file changed, 7 insertions(+), 7 deletions(-)
>       >
>       > diff --git
>       a/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c
>       b/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c
>       > index cb74ae7..49cd333 100644
>       > --- a/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c
>       > +++ b/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c
>       > @@ -1352,7 +1352,7 @@ static void
>       kiblnd_destroy_fmr_pool(kib_fmr_pool_t *pool)
>       >       if (pool->fpo_hdev != NULL)
>       >               kiblnd_hdev_decref(pool->fpo_hdev);
>       >
>       > -     LIBCFS_FREE(pool, sizeof(kib_fmr_pool_t));
>       > +     LIBCFS_FREE(pool, sizeof(*pool));
>       >  }
>       >
>       >  static void kiblnd_destroy_fmr_pool_list(struct list_head
>       *head)
>       > @@ -1410,7 +1410,7 @@ static int
>       kiblnd_create_fmr_pool(kib_fmr_poolset_t *fps,
>       >               CERROR("Failed to create FMR pool: %d\n", rc);
>       >
>       >               kiblnd_hdev_decref(fpo->fpo_hdev);
>       > -             LIBCFS_FREE(fpo, sizeof(kib_fmr_pool_t));
>       > +             LIBCFS_FREE(fpo, sizeof(*fpo));
>       >               return rc;
>       >       }
>       >
>       > @@ -1458,7 +1458,7 @@ static int
>       kiblnd_init_fmr_poolset(kib_fmr_poolset_t *fps, int cpt,
>       >       kib_fmr_pool_t *fpo;
>       >       int rc;
>       >
>       > -     memset(fps, 0, sizeof(kib_fmr_poolset_t));
>       > +     memset(fps, 0, sizeof(*fps));
>       >
>       >       fps->fps_net = net;
>       >       fps->fps_cpt = cpt;
>       > @@ -1606,7 +1606,7 @@ static void
>       kiblnd_init_pool(kib_poolset_t *ps, kib_pool_t *pool, int size)
>       >  {
>       >       CDEBUG(D_NET, "Initialize %s pool\n", ps->ps_name);
>       >
>       > -     memset(pool, 0, sizeof(kib_pool_t));
>       > +     memset(pool, 0, sizeof(*pool));
>       >       INIT_LIST_HEAD(&pool->po_free_list);
>       >       pool->po_deadline = cfs_time_shift(IBLND_POOL_DEADLINE);
>       >       pool->po_owner    = ps;
>       > @@ -1663,7 +1663,7 @@ static int
>       kiblnd_init_poolset(kib_poolset_t *ps, int cpt,
>       >       kib_pool_t *pool;
>       >       int rc;
>       >
>       > -     memset(ps, 0, sizeof(kib_poolset_t));
>       > +     memset(ps, 0, sizeof(*ps));
>       >
>       >       ps->ps_cpt          = cpt;
>       >       ps->ps_net          = net;
>       > @@ -1834,7 +1834,7 @@ static void
>       kiblnd_destroy_tx_pool(kib_pool_t *pool)
>       >                   pool->po_size * sizeof(kib_tx_t));
>       >  out:
>       >       kiblnd_fini_pool(pool);
>       > -     LIBCFS_FREE(tpo, sizeof(kib_tx_pool_t));
>       > +     LIBCFS_FREE(tpo, sizeof(*tpo));
>       >  }
>       >
>       >  static int kiblnd_tx_pool_size(int ncpts)
>       > @@ -1866,7 +1866,7 @@ static int
>       kiblnd_create_tx_pool(kib_poolset_t *ps, int size,
>       >       npg = (size * IBLND_MSG_SIZE + PAGE_SIZE - 1) /
>       PAGE_SIZE;
>       >       if (kiblnd_alloc_pages(&tpo->tpo_tx_pages, ps->ps_cpt,
>       npg) != 0) {
>       >               CERROR("Can't allocate tx pages: %d\n", npg);
>       > -             LIBCFS_FREE(tpo, sizeof(kib_tx_pool_t));
>       > +             LIBCFS_FREE(tpo, sizeof(*tpo));
>       >               return -ENOMEM;
>       >       }
>       >
>       > --
>       > 2.5.0
>       >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it,
> send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to
> outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/20160210073225.GA5118%40
> janani-Inspiron-3521.
> > For more options, visit https://groups.google.com/d/optout.
> >
>
>
>
>
--8323329-1222665075-1455094583=:2486--

