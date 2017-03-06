X-GM-THRID: 6394061646033059840
X-Received: by 10.25.199.212 with SMTP id x203mr2276007lff.9.1488827621918;
        Mon, 06 Mar 2017 11:13:41 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.69.198 with SMTP id s189ls1580178lja.6.gmail; Mon, 06 Mar
 2017 11:13:40 -0800 (PST)
X-Received: by 10.25.104.21 with SMTP id d21mr2201715lfc.31.1488827620776;
        Mon, 06 Mar 2017 11:13:40 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-lf0-x243.google.com (mail-lf0-x243.google.com. [2a00:1450:4010:c07::243])
        by gmr-mx.google.com with ESMTPS id e72si100803wma.0.2017.03.06.11.13.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Mar 2017 11:13:40 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2a00:1450:4010:c07::243 as permitted sender) client-ip=2a00:1450:4010:c07::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2a00:1450:4010:c07::243 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x243.google.com with SMTP id v2so7391415lfi.2
        for <outreachy-kernel@googlegroups.com>; Mon, 06 Mar 2017 11:13:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=tYhmuaRid6lm6TrsM/b97IsPJVWiZ/q2YVqq32p+NZo=;
        b=BTe+LHi8t0DvwP//n3l8HUsWsOuGzijwuaFSvuH+oyZNZHd5xBbvZot6dqCy0rzYPe
         UNfO3Ru9AyrYNG/uT8vJKzlelfd78a5U9p3i08mkUprG5EojK+TZSNKpdY6DOVnCZlIz
         CkDzNupRakOzVEEhYt82ElBdjwKJX/eKbTZRJsyr333cDUkysEJnoAMASglIN3EMNJAU
         OXfJEKgCYyr80ObmvUU9w8XgENT434VJ+/c+KH40v2PDlwEXhHERNP+wMn91jgS2w9g9
         5LYPRt2l8CGvBnC5LI11wf/P+k5ILTVL9PDK8Hd4Ni0Ua13bNW4rwzbmBcTZOiPY7NNp
         IMag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=tYhmuaRid6lm6TrsM/b97IsPJVWiZ/q2YVqq32p+NZo=;
        b=ccjdjPGM/EFpHHZpTPcOx9zDgjsyWvvsKOROMPSYiyKEfAh2pcMEDWSxhAa1SvBhhk
         JREmQgLKUEG8B5R/qIP0fL/1YYqbfP6foaZoJqfUZRzsLu3wG+1nWUkondd3i0ZLkZq3
         lYrmFzkA2yACpZg+Jft7e3aaRFGm00mjNzOgQ+hzzQ8cJYkTUs6cTDEDS4smfAvHoyVM
         q/T+aKv9VCe89gkkenNR+5HLTJvKJVKmhQMkODjmgzg7/aH5D7P00c+1m1aYWly/6/6J
         qNGqELZjT+jU7jwruSar+2m9j1g3j/nwEYyXXYh7cY0o3Y9a7y52a2XvOVSncjBg4TwR
         a0iw==
X-Gm-Message-State: AMke39k2L6SrPDN/3WlFzzo+LnPIPx/cd4OH+wMxpchrvFBehZhR7O/idFHj1IT7Pi0WfoOLI0x3WbSStbX+cA==
X-Received: by 10.46.20.72 with SMTP id 8mr6024662lju.23.1488827620437; Mon,
 06 Mar 2017 11:13:40 -0800 (PST)
MIME-Version: 1.0
Received: by 10.25.15.39 with HTTP; Mon, 6 Mar 2017 11:13:39 -0800 (PST)
In-Reply-To: <alpine.LFD.2.20.1703061512070.30144@casper.infradead.org>
References: <1488733610-22289-1-git-send-email-singhalsimran0@gmail.com>
 <1488733610-22289-6-git-send-email-singhalsimran0@gmail.com> <alpine.LFD.2.20.1703061512070.30144@casper.infradead.org>
From: SIMRAN SINGHAL <singhalsimran0@gmail.com>
Date: Tue, 7 Mar 2017 00:43:39 +0530
Message-ID: <CALrZqyOpdt0weNy8qWb2CKLO_0_rd77rLy5sbnyQN83A5dJAtQ@mail.gmail.com>
Subject: Re: [PATCH 5/5] staging: lustre: osc_page.c: Use list_for_each_entry_safe
To: James Simmons <jsimmons@infradead.org>
Cc: oleg.drokin@intel.com, andreas.dilger@intel.com, 
	Greg KH <gregkh@linuxfoundation.org>, lustre-devel@lists.lustre.org, 
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
	outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Mon, Mar 6, 2017 at 8:50 PM, James Simmons <jsimmons@infradead.org> wrote:
>
>> Doubly linked lists which are  iterated  using list_empty
>> and list_entry macros have been replaced with list_for_each_entry_safe
>> macro.
>> This makes the iteration simpler and more readable.
>>
>> This patch replaces the while loop containing list_empty and list_entry
>> with list_for_each_entry_safe.
>>
>> This was done with Coccinelle.
>>
>> @@
>> expression E1;
>> identifier I1, I2;
>> type T;
>> iterator name list_for_each_entry_safe;
>> @@
>>
>> T *I1;
>> + T *tmp;
>> ...
>> - while (list_empty(&E1) == 0)
>> + list_for_each_entry_safe (I1, tmp, &E1, I2)
>> {
>> ...when != T *I1;
>> - I1 = list_entry(E1.next, T, I2);
>> ...
>> }
>>
>> Signed-off-by: simran singhal <singhalsimran0@gmail.com>
>
> NAK!!!!!!
>
> This change was reverted in commit
>
> cd15dd6ef4ea11df87f717b8b1b83aaa738ec8af
>
> Doing these while (list_empty(..)) to list_for_entry...
> are not simple changes and have broken things in lustre
> before. Unless you really understand the state machine of
> the lustre code I don't recommend these kinds of change
> for lustre.
>

Is this for this particular patch or for all the patches of this patch-series.

>> ---
>>  drivers/staging/lustre/lustre/osc/osc_page.c | 11 ++++-------
>>  1 file changed, 4 insertions(+), 7 deletions(-)
>>
>> diff --git a/drivers/staging/lustre/lustre/osc/osc_page.c b/drivers/staging/lustre/lustre/osc/osc_page.c
>> index ed8a0dc..e8b974f 100644
>> --- a/drivers/staging/lustre/lustre/osc/osc_page.c
>> +++ b/drivers/staging/lustre/lustre/osc/osc_page.c
>> @@ -542,6 +542,7 @@ long osc_lru_shrink(const struct lu_env *env, struct client_obd *cli,
>>       struct cl_object *clobj = NULL;
>>       struct cl_page **pvec;
>>       struct osc_page *opg;
>> +     struct osc_page *tmp;
>>       int maxscan = 0;
>>       long count = 0;
>>       int index = 0;
>> @@ -572,7 +573,7 @@ long osc_lru_shrink(const struct lu_env *env, struct client_obd *cli,
>>       if (force)
>>               cli->cl_lru_reclaim++;
>>       maxscan = min(target << 1, atomic_long_read(&cli->cl_lru_in_list));
>> -     while (!list_empty(&cli->cl_lru_list)) {
>> +     list_for_each_entry_safe(opg, tmp, &cli->cl_lru_list, ops_lru) {
>>               struct cl_page *page;
>>               bool will_free = false;
>>
>> @@ -582,8 +583,6 @@ long osc_lru_shrink(const struct lu_env *env, struct client_obd *cli,
>>               if (--maxscan < 0)
>>                       break;
>>
>> -             opg = list_entry(cli->cl_lru_list.next, struct osc_page,
>> -                              ops_lru);
>>               page = opg->ops_cl.cpl_page;
>>               if (lru_page_busy(cli, page)) {
>>                       list_move_tail(&opg->ops_lru, &cli->cl_lru_list);
>> @@ -1043,6 +1042,7 @@ unsigned long osc_cache_shrink_scan(struct shrinker *sk,
>>  {
>>       struct client_obd *stop_anchor = NULL;
>>       struct client_obd *cli;
>> +     struct client_obd *tmp;
>>       struct lu_env *env;
>>       long shrank = 0;
>>       u16 refcheck;
>> @@ -1059,10 +1059,7 @@ unsigned long osc_cache_shrink_scan(struct shrinker *sk,
>>               return SHRINK_STOP;
>>
>>       spin_lock(&osc_shrink_lock);
>> -     while (!list_empty(&osc_shrink_list)) {
>> -             cli = list_entry(osc_shrink_list.next, struct client_obd,
>> -                              cl_shrink_list);
>> -
>> +     list_for_each_entry_safe(cli, tmp, &osc_shrink_list, cl_shrink_list) {
>>               if (!stop_anchor)
>>                       stop_anchor = cli;
>>               else if (cli == stop_anchor)
>> --
>> 2.7.4
>>
>>

