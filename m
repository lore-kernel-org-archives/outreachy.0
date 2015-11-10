X-GM-THRID: 6210359704363728896
X-Received: by 10.50.142.1 with SMTP id rs1mr2018697igb.0.1447130243590;
        Mon, 09 Nov 2015 20:37:23 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.29.37 with SMTP id g5ls1520952obh.14.gmail; Mon, 09 Nov
 2015 20:37:23 -0800 (PST)
X-Received: by 10.182.80.198 with SMTP id t6mr1306930obx.32.1447130243086;
        Mon, 09 Nov 2015 20:37:23 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-ig0-x22c.google.com (mail-ig0-x22c.google.com. [2607:f8b0:4001:c05::22c])
        by gmr-mx.google.com with ESMTPS id tg5si601895igb.2.2015.11.09.20.37.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Nov 2015 20:37:23 -0800 (PST)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:4001:c05::22c as permitted sender) client-ip=2607:f8b0:4001:c05::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:4001:c05::22c as permitted sender) smtp.mailfrom=ksenija.stanojevic@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-ig0-x22c.google.com with SMTP id xm8so65669649igb.1
        for <outreachy-kernel@googlegroups.com>; Mon, 09 Nov 2015 20:37:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=0LKAMI2JLrRrkpMEW0SFBn4oJQuzKKd3rJpFbTUQZkk=;
        b=CuUfFELh5QdyxabqW5kFNxBMC1xv7rxDrGapaZmbYPOTkfZD33SgQTnuz/Dfac5yhP
         ASrhz/RcyvPMHzuj4V86hQdUpN8IeOZexSs+15LQUgAO9ob6ikMGXNDCuZ6J0qrA1565
         1ouVPbUp+/6qizS1BcXkWhbzW/Tsr2pV1Az90fsyfINPqeWJ4F565NkfX27pYgH2LA2X
         yMcnNNqPBX050QohBoqQgjAbydl0bGP/yAuWmBDdyXj8q7dAdu+YZu2VwBqmNfLZqydE
         keopQbbIzkU3AAMg0W2EZVYWSo1TetDFJH7fZRySxjpnmBzWVf5BnUbSk+40Z23quj27
         Zz7Q==
MIME-Version: 1.0
X-Received: by 10.50.43.162 with SMTP id x2mr1828106igl.82.1447130242960; Mon,
 09 Nov 2015 20:37:22 -0800 (PST)
Received: by 10.107.149.205 with HTTP; Mon, 9 Nov 2015 20:37:22 -0800 (PST)
In-Reply-To: <8412799.SPuinIILNH@wuerfel>
References: <cover.1445960986.git.ksenija.stanojevic@gmail.com>
	<d860ec8de84b6ac84510505a1fef14c8ccc60a67.1445960986.git.ksenija.stanojevic@gmail.com>
	<8412799.SPuinIILNH@wuerfel>
Date: Mon, 9 Nov 2015 20:37:22 -0800
Message-ID: <CAL7P5jK=pbSvFURGN55TYUfbhPedOuNyi+Rm=wRKbxxuQdnU5Q@mail.gmail.com>
Subject: Re: [Y2038] [PATCH 2/5] fs: nfsd: Replace time_t with u32 in nfsd4_lease
From: =?UTF-8?Q?Ksenija_Stanojevi=C4=87?= <ksenija.stanojevic@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: y2038@lists.linaro.org, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Tue, Nov 3, 2015 at 4:14 PM, Arnd Bergmann <arnd@arndb.de> wrote:
> On Tuesday 27 October 2015 09:09:35 Ksenija Stanojevic wrote:
>> Replace time_t type and get_seconds function which are not y2038 safe on
>> 32-bit systems. Function ktime_get_seconds use monotonic instead of real
>> time and therefore will not cause overflow.
>>
>> Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
>
> You are missing an explanation about why the u32 type is used. The
> change to that type looks absolutely appropriate here, but it seems
> unrelated to what you write above.

It' safe to assume that system will be rebooted in 136 years and 32-bit
number is enough to store a monotonic time value.

>> diff --git a/fs/nfsd/netns.h b/fs/nfsd/netns.h
>> index d5cce15..85b114f 100644
>> --- a/fs/nfsd/netns.h
>> +++ b/fs/nfsd/netns.h
>> @@ -94,7 +94,7 @@ struct nfsd_net {
>>       bool in_grace;
>>       struct nfsd4_client_tracking_ops *client_tracking_ops;
>>
>> -     time_t nfsd4_lease;
>> +     u32 nfsd4_lease;
>>       time_t nfsd4_grace;
>>
>>       bool nfsd_net_up;
>> diff --git a/fs/nfsd/nfs4callback.c b/fs/nfsd/nfs4callback.c
>> index e7f50c4..8a177c6 100644
>> --- a/fs/nfsd/nfs4callback.c
>> +++ b/fs/nfsd/nfs4callback.c
>> @@ -681,7 +681,7 @@ static const struct rpc_program cb_program = {
>>  static int max_cb_time(struct net *net)
>>  {
>>       struct nfsd_net *nn = net_generic(net, nfsd_net_id);
>> -     return max(nn->nfsd4_lease/10, (time_t)1) * HZ;
>> +     return max(nn->nfsd4_lease/10, (u32)1) * HZ;
>>  }
>
> coding style: it would be helpful to convert this to use max_t()
> instead of max() to avoid the cast.
>
>>  static struct rpc_cred *callback_cred;
>> diff --git a/fs/nfsd/nfs4state.c b/fs/nfsd/nfs4state.c
>> index 8245236..4bceb878 100644
>> --- a/fs/nfsd/nfs4state.c
>> +++ b/fs/nfsd/nfs4state.c
>> @@ -4332,8 +4332,8 @@ nfs4_laundromat(struct nfsd_net *nn)
>>       struct nfs4_delegation *dp;
>>       struct nfs4_ol_stateid *stp;
>>       struct list_head *pos, *next, reaplist;
>> -     time_t cutoff = get_seconds() - nn->nfsd4_lease;
>> -     time_t t, new_timeo = nn->nfsd4_lease;
>> +     u32 cutoff = ktime_get_seconds() - nn->nfsd4_lease;
>> +     u32 t, new_timeo = nn->nfsd4_lease;
>>
>>       dprintk("NFSD: laundromat service - starting\n");
>>       nfsd4_end_grace(nn);
>
> The change to "cutoff" needs to be done together with the 'cl_time'
> change from patch 1, and all the users of that variable.

You commented in patch 1 that change to cl_time is unrelated to other
changes in that patch. Should I make a new patch which changes cl_time
and cutoff or do all those changes in patch 1?

>> @@ -4399,7 +4399,7 @@ nfs4_laundromat(struct nfsd_net *nn)
>>       }
>>       spin_unlock(&nn->client_lock);
>>
>> -     new_timeo = max_t(time_t, new_timeo, NFSD_LAUNDROMAT_MINTIMEOUT);
>> +     new_timeo = max_t(u32, new_timeo, NFSD_LAUNDROMAT_MINTIMEOUT);
>>       return new_timeo;
>>  }
>>
>> diff --git a/fs/nfsd/nfsctl.c b/fs/nfsd/nfsctl.c
>> index 9690cb4..6e0cfd6 100644
>> --- a/fs/nfsd/nfsctl.c
>> +++ b/fs/nfsd/nfsctl.c
>> @@ -932,7 +932,7 @@ static ssize_t write_maxconn(struct file *file, char *buf, size_t size)
>>
>>  #ifdef CONFIG_NFSD_V4
>>  static ssize_t __nfsd4_write_time(struct file *file, char *buf, size_t size,
>> -                               time_t *time, struct nfsd_net *nn)
>> +                               u32 *time, struct nfsd_net *nn)
>>  {
>>       char *mesg = buf;
>>       int rv, i;
>> @@ -964,7 +964,7 @@ static ssize_t __nfsd4_write_time(struct file *file, char *buf, size_t size,
>>  }
>>
>>  static ssize_t nfsd4_write_time(struct file *file, char *buf, size_t size,
>> -                             time_t *time, struct nfsd_net *nn)
>> +                             u32 *time, struct nfsd_net *nn)
>>  {
>>       ssize_t rv;
>
> This function is called for both nfsd4_lease and nfsd4_grace, so by changing
> only one of the two types, you generate a compiler warning.

Ok, so changes to nfsd4_lease and nfsd4_grace should be done in one patch?

