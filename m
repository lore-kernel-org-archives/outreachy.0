X-GM-THRID: 6394061646033059840
X-Received: by 10.46.21.11 with SMTP id s11mr1870692ljd.23.1488736353128;
        Sun, 05 Mar 2017 09:52:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.8.73 with SMTP id g9ls32200ljd.33.gmail; Sun, 05 Mar 2017
 09:52:32 -0800 (PST)
X-Received: by 10.25.56.6 with SMTP id f6mr1531705lfa.4.1488736352594;
        Sun, 05 Mar 2017 09:52:32 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id v70si756358wmf.0.2017.03.05.09.52.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 05 Mar 2017 09:52:32 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,249,1484002800"; 
   d="scan'208";a="263196944"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 05 Mar 2017 18:52:32 +0100
Date: Sun, 5 Mar 2017 18:52:21 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: SIMRAN SINGHAL <singhalsimran0@gmail.com>
cc: Julia Lawall <julia.lawall@lip6.fr>, oleg.drokin@intel.com, 
    andreas.dilger@intel.com, jsimmons@infradead.org, 
    Greg KH <gregkh@linuxfoundation.org>, lustre-devel@lists.lustre.org, 
    devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 5/5] staging: lustre: osc_page.c: Use
 list_for_each_entry_safe
In-Reply-To: <CALrZqyPYyhFXQWJz924S2t3xKLV+fjqvoGyG-bVVucHHjAL2OA@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1703051852060.3052@hadrien>
References: <1488733610-22289-1-git-send-email-singhalsimran0@gmail.com> <1488733610-22289-6-git-send-email-singhalsimran0@gmail.com> <alpine.DEB.2.20.1703051816120.3052@hadrien> <CALrZqyPnQMLJn3yz3c07osksRD9oOp1qt=1Wd-3SO9LLPz14dQ@mail.gmail.com>
 <alpine.DEB.2.20.1703051847410.3052@hadrien> <CALrZqyPYyhFXQWJz924S2t3xKLV+fjqvoGyG-bVVucHHjAL2OA@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 5 Mar 2017, SIMRAN SINGHAL wrote:

> On Sun, Mar 5, 2017 at 11:18 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >
> >
> > On Sun, 5 Mar 2017, SIMRAN SINGHAL wrote:
> >
> >> On Sun, Mar 5, 2017 at 10:47 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >> > By the way, the above subject line is not correct.  Normally one does not
> >> > put .c/.h in the subject line.  Indeed, there is not really any
> >> > deterministic algorithm for choosing the subject line.  You need to run
> >> > git log --oneline filename to see what others have done.
> >>
> >> So this would be fine Subject:-
> >> staging: lustre: osc_page: Use list_for_each_entry_safe
> >
> > Looking at the result of git log --oneline, I would say:
> >
> > staging: lustre: osc:
> >
> > For example that it what is used by 86df598, which also only changes the
> > file modified by this patch.
> >
> Actually, I can't use this as its already subject of one of a patch of
> this patch
> series.

OK, then what you suggested would be ok.

julia

>
> > julia
> >
> >>
> >> >
> >> > julia
> >> >
> >> > On Sun, 5 Mar 2017, simran singhal wrote:
> >> >
> >> >> Doubly linked lists which are  iterated  using list_empty
> >> >> and list_entry macros have been replaced with list_for_each_entry_safe
> >> >> macro.
> >> >> This makes the iteration simpler and more readable.
> >> >>
> >> >> This patch replaces the while loop containing list_empty and list_entry
> >> >> with list_for_each_entry_safe.
> >> >>
> >> >> This was done with Coccinelle.
> >> >>
> >> >> @@
> >> >> expression E1;
> >> >> identifier I1, I2;
> >> >> type T;
> >> >> iterator name list_for_each_entry_safe;
> >> >> @@
> >> >>
> >> >> T *I1;
> >> >> + T *tmp;
> >> >> ...
> >> >> - while (list_empty(&E1) == 0)
> >> >> + list_for_each_entry_safe (I1, tmp, &E1, I2)
> >> >> {
> >> >> ...when != T *I1;
> >> >> - I1 = list_entry(E1.next, T, I2);
> >> >> ...
> >> >> }
> >> >>
> >> >> Signed-off-by: simran singhal <singhalsimran0@gmail.com>
> >> >> ---
> >> >>  drivers/staging/lustre/lustre/osc/osc_page.c | 11 ++++-------
> >> >>  1 file changed, 4 insertions(+), 7 deletions(-)
> >> >>
> >> >> diff --git a/drivers/staging/lustre/lustre/osc/osc_page.c b/drivers/staging/lustre/lustre/osc/osc_page.c
> >> >> index ed8a0dc..e8b974f 100644
> >> >> --- a/drivers/staging/lustre/lustre/osc/osc_page.c
> >> >> +++ b/drivers/staging/lustre/lustre/osc/osc_page.c
> >> >> @@ -542,6 +542,7 @@ long osc_lru_shrink(const struct lu_env *env, struct client_obd *cli,
> >> >>       struct cl_object *clobj = NULL;
> >> >>       struct cl_page **pvec;
> >> >>       struct osc_page *opg;
> >> >> +     struct osc_page *tmp;
> >> >>       int maxscan = 0;
> >> >>       long count = 0;
> >> >>       int index = 0;
> >> >> @@ -572,7 +573,7 @@ long osc_lru_shrink(const struct lu_env *env, struct client_obd *cli,
> >> >>       if (force)
> >> >>               cli->cl_lru_reclaim++;
> >> >>       maxscan = min(target << 1, atomic_long_read(&cli->cl_lru_in_list));
> >> >> -     while (!list_empty(&cli->cl_lru_list)) {
> >> >> +     list_for_each_entry_safe(opg, tmp, &cli->cl_lru_list, ops_lru) {
> >> >>               struct cl_page *page;
> >> >>               bool will_free = false;
> >> >>
> >> >> @@ -582,8 +583,6 @@ long osc_lru_shrink(const struct lu_env *env, struct client_obd *cli,
> >> >>               if (--maxscan < 0)
> >> >>                       break;
> >> >>
> >> >> -             opg = list_entry(cli->cl_lru_list.next, struct osc_page,
> >> >> -                              ops_lru);
> >> >>               page = opg->ops_cl.cpl_page;
> >> >>               if (lru_page_busy(cli, page)) {
> >> >>                       list_move_tail(&opg->ops_lru, &cli->cl_lru_list);
> >> >> @@ -1043,6 +1042,7 @@ unsigned long osc_cache_shrink_scan(struct shrinker *sk,
> >> >>  {
> >> >>       struct client_obd *stop_anchor = NULL;
> >> >>       struct client_obd *cli;
> >> >> +     struct client_obd *tmp;
> >> >>       struct lu_env *env;
> >> >>       long shrank = 0;
> >> >>       u16 refcheck;
> >> >> @@ -1059,10 +1059,7 @@ unsigned long osc_cache_shrink_scan(struct shrinker *sk,
> >> >>               return SHRINK_STOP;
> >> >>
> >> >>       spin_lock(&osc_shrink_lock);
> >> >> -     while (!list_empty(&osc_shrink_list)) {
> >> >> -             cli = list_entry(osc_shrink_list.next, struct client_obd,
> >> >> -                              cl_shrink_list);
> >> >> -
> >> >> +     list_for_each_entry_safe(cli, tmp, &osc_shrink_list, cl_shrink_list) {
> >> >>               if (!stop_anchor)
> >> >>                       stop_anchor = cli;
> >> >>               else if (cli == stop_anchor)
> >> >> --
> >> >> 2.7.4
> >> >>
> >> >> --
> >> >> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> >> >> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> >> >> To post to this group, send email to outreachy-kernel@googlegroups.com.
> >> >> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1488733610-22289-6-git-send-email-singhalsimran0%40gmail.com.
> >> >> For more options, visit https://groups.google.com/d/optout.
> >> >>
> >>
>

