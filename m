X-GM-THRID: 6394061646033059840
X-Received: by 10.25.193.213 with SMTP id r204mr1536881lff.24.1488736293551;
        Sun, 05 Mar 2017 09:51:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.139.82 with SMTP id n79ls875419wmd.19.gmail; Sun, 05 Mar
 2017 09:51:32 -0800 (PST)
X-Received: by 10.223.183.26 with SMTP id l26mr360356wre.20.1488736292804;
        Sun, 05 Mar 2017 09:51:32 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-lf0-x244.google.com (mail-lf0-x244.google.com. [2a00:1450:4010:c07::244])
        by gmr-mx.google.com with ESMTPS id v70si756238wmf.0.2017.03.05.09.51.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 05 Mar 2017 09:51:32 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2a00:1450:4010:c07::244 as permitted sender) client-ip=2a00:1450:4010:c07::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2a00:1450:4010:c07::244 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x244.google.com with SMTP id v2so5123822lfi.2
        for <outreachy-kernel@googlegroups.com>; Sun, 05 Mar 2017 09:51:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=uPHB6w5dYw6FCz1Yvhp+g1Wz+OJIiSjZlLMRuLJvU+k=;
        b=QdGMAuHT6m3Bt/ENvjBcb6XL+InAc5L0EGHaoXrZhk6T+CbLKFCCQqwb3K342gS5mv
         ndYUnHHrNgiaPI4zVBl35jUTazyEDwQ/SpLH3qE1/bwchw1pbMmevpLDIj4NIcmYyXz4
         UCB/ycErHSStdk2Uqo2i08aglPRJFxrNTzkHMuSz05dzH4HxVPNOHHiaTYp7Ze03GMW4
         rpgz4Rc6UGKcgEjOYHtAO70TxC686uuuiaCuTiiOFRRVBNYpjeuo8Tkulh2wyKRBEFey
         sY/6+U5a5ZkH8ItnBTadDTblHCkoDnbHSUVKBMCM5JrHN8cusWrp6KUecOaK70tZVKjQ
         N77Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=uPHB6w5dYw6FCz1Yvhp+g1Wz+OJIiSjZlLMRuLJvU+k=;
        b=oUVl5E0FSMH18RC2aDdX5C97cHPbi9Mhge/2g6FOk6IQz7Vyw34EKh5Ao19w9bGxJf
         wjlZIbPG2c1u9Vrg0o/V79axH5ObK6VR3T1oxZuz2P4amfhKODjS0jYhpBHgIeCV5V3G
         EAp1+Pg0NRbJF2UTeWH/3KeYUUjUgtDaa0huAR3K77cW8Q1Xno3PDV0VKjY756bJzkZR
         +9mCy4YqiIfwtbe1VAmqBSYi+WESatEtWoX1oBK07E/pZdjEAgJWfDZLj4KhiNeO9XQU
         Db4oE+dKj6fTuiveazY4b1vOpjVOPJDRpuKKZOdT5c9dYtc17k133Uv0qkgjBG4OJqZ/
         M7Eg==
X-Gm-Message-State: AMke39m2VkPVX+rIoHNGwTkC6OqKT3KYyEF5I/m39vZ2s+3SDFJ0keUHgxCwUyhffumFwxkgmje341Tn71+qpw==
X-Received: by 10.46.21.89 with SMTP id 25mr4190155ljv.19.1488736292251; Sun,
 05 Mar 2017 09:51:32 -0800 (PST)
MIME-Version: 1.0
Received: by 10.25.15.39 with HTTP; Sun, 5 Mar 2017 09:51:31 -0800 (PST)
In-Reply-To: <alpine.DEB.2.20.1703051847410.3052@hadrien>
References: <1488733610-22289-1-git-send-email-singhalsimran0@gmail.com>
 <1488733610-22289-6-git-send-email-singhalsimran0@gmail.com>
 <alpine.DEB.2.20.1703051816120.3052@hadrien> <CALrZqyPnQMLJn3yz3c07osksRD9oOp1qt=1Wd-3SO9LLPz14dQ@mail.gmail.com>
 <alpine.DEB.2.20.1703051847410.3052@hadrien>
From: SIMRAN SINGHAL <singhalsimran0@gmail.com>
Date: Sun, 5 Mar 2017 23:21:31 +0530
Message-ID: <CALrZqyPYyhFXQWJz924S2t3xKLV+fjqvoGyG-bVVucHHjAL2OA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 5/5] staging: lustre: osc_page.c: Use list_for_each_entry_safe
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: oleg.drokin@intel.com, andreas.dilger@intel.com, jsimmons@infradead.org, 
	Greg KH <gregkh@linuxfoundation.org>, lustre-devel@lists.lustre.org, 
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
	outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Sun, Mar 5, 2017 at 11:18 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Sun, 5 Mar 2017, SIMRAN SINGHAL wrote:
>
>> On Sun, Mar 5, 2017 at 10:47 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>> > By the way, the above subject line is not correct.  Normally one does not
>> > put .c/.h in the subject line.  Indeed, there is not really any
>> > deterministic algorithm for choosing the subject line.  You need to run
>> > git log --oneline filename to see what others have done.
>>
>> So this would be fine Subject:-
>> staging: lustre: osc_page: Use list_for_each_entry_safe
>
> Looking at the result of git log --oneline, I would say:
>
> staging: lustre: osc:
>
> For example that it what is used by 86df598, which also only changes the
> file modified by this patch.
>
Actually, I can't use this as its already subject of one of a patch of
this patch
series.

> julia
>
>>
>> >
>> > julia
>> >
>> > On Sun, 5 Mar 2017, simran singhal wrote:
>> >
>> >> Doubly linked lists which are  iterated  using list_empty
>> >> and list_entry macros have been replaced with list_for_each_entry_safe
>> >> macro.
>> >> This makes the iteration simpler and more readable.
>> >>
>> >> This patch replaces the while loop containing list_empty and list_entry
>> >> with list_for_each_entry_safe.
>> >>
>> >> This was done with Coccinelle.
>> >>
>> >> @@
>> >> expression E1;
>> >> identifier I1, I2;
>> >> type T;
>> >> iterator name list_for_each_entry_safe;
>> >> @@
>> >>
>> >> T *I1;
>> >> + T *tmp;
>> >> ...
>> >> - while (list_empty(&E1) == 0)
>> >> + list_for_each_entry_safe (I1, tmp, &E1, I2)
>> >> {
>> >> ...when != T *I1;
>> >> - I1 = list_entry(E1.next, T, I2);
>> >> ...
>> >> }
>> >>
>> >> Signed-off-by: simran singhal <singhalsimran0@gmail.com>
>> >> ---
>> >>  drivers/staging/lustre/lustre/osc/osc_page.c | 11 ++++-------
>> >>  1 file changed, 4 insertions(+), 7 deletions(-)
>> >>
>> >> diff --git a/drivers/staging/lustre/lustre/osc/osc_page.c b/drivers/staging/lustre/lustre/osc/osc_page.c
>> >> index ed8a0dc..e8b974f 100644
>> >> --- a/drivers/staging/lustre/lustre/osc/osc_page.c
>> >> +++ b/drivers/staging/lustre/lustre/osc/osc_page.c
>> >> @@ -542,6 +542,7 @@ long osc_lru_shrink(const struct lu_env *env, struct client_obd *cli,
>> >>       struct cl_object *clobj = NULL;
>> >>       struct cl_page **pvec;
>> >>       struct osc_page *opg;
>> >> +     struct osc_page *tmp;
>> >>       int maxscan = 0;
>> >>       long count = 0;
>> >>       int index = 0;
>> >> @@ -572,7 +573,7 @@ long osc_lru_shrink(const struct lu_env *env, struct client_obd *cli,
>> >>       if (force)
>> >>               cli->cl_lru_reclaim++;
>> >>       maxscan = min(target << 1, atomic_long_read(&cli->cl_lru_in_list));
>> >> -     while (!list_empty(&cli->cl_lru_list)) {
>> >> +     list_for_each_entry_safe(opg, tmp, &cli->cl_lru_list, ops_lru) {
>> >>               struct cl_page *page;
>> >>               bool will_free = false;
>> >>
>> >> @@ -582,8 +583,6 @@ long osc_lru_shrink(const struct lu_env *env, struct client_obd *cli,
>> >>               if (--maxscan < 0)
>> >>                       break;
>> >>
>> >> -             opg = list_entry(cli->cl_lru_list.next, struct osc_page,
>> >> -                              ops_lru);
>> >>               page = opg->ops_cl.cpl_page;
>> >>               if (lru_page_busy(cli, page)) {
>> >>                       list_move_tail(&opg->ops_lru, &cli->cl_lru_list);
>> >> @@ -1043,6 +1042,7 @@ unsigned long osc_cache_shrink_scan(struct shrinker *sk,
>> >>  {
>> >>       struct client_obd *stop_anchor = NULL;
>> >>       struct client_obd *cli;
>> >> +     struct client_obd *tmp;
>> >>       struct lu_env *env;
>> >>       long shrank = 0;
>> >>       u16 refcheck;
>> >> @@ -1059,10 +1059,7 @@ unsigned long osc_cache_shrink_scan(struct shrinker *sk,
>> >>               return SHRINK_STOP;
>> >>
>> >>       spin_lock(&osc_shrink_lock);
>> >> -     while (!list_empty(&osc_shrink_list)) {
>> >> -             cli = list_entry(osc_shrink_list.next, struct client_obd,
>> >> -                              cl_shrink_list);
>> >> -
>> >> +     list_for_each_entry_safe(cli, tmp, &osc_shrink_list, cl_shrink_list) {
>> >>               if (!stop_anchor)
>> >>                       stop_anchor = cli;
>> >>               else if (cli == stop_anchor)
>> >> --
>> >> 2.7.4
>> >>
>> >> --
>> >> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> >> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> >> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> >> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1488733610-22289-6-git-send-email-singhalsimran0%40gmail.com.
>> >> For more options, visit https://groups.google.com/d/optout.
>> >>
>>

