X-GM-THRID: 6467597635831201792
X-Received: by 10.25.19.201 with SMTP id 70mr348lft.35.1505856843953;
        Tue, 19 Sep 2017 14:34:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.215.13 with SMTP id o13ls1193lfg.1.gmail; Tue, 19 Sep 2017
 14:34:02 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QDnD6xzL7V3sqYa/6cgRkHPhC1OUewe3FA8s23RbBsbgKCZvV0+hdWiFnEpkEaDGAQR5hE0
X-Received: by 10.25.229.18 with SMTP id c18mr918lfh.1.1505856842515;
        Tue, 19 Sep 2017 14:34:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505856842; cv=none;
        d=google.com; s=arc-20160816;
        b=ddNK/pUNXS9aNVYkRLI7BnXaJd7H19mBeXqsTfeR3mQXOgFe+e9LGlEYk///QRLM70
         pPRbiVWRNd71twriYHOj11Lz4T+DP722bw7DlX00oVjLGSYMweEcl19RCDzj6cmQREnq
         tDM/pxL7qLtEBYYWzKp4Q2p+DwpZWfygzfzeBBOwUzAcZuaXGkAsSyhrZqAvSNcPgbZL
         etHGV4L2wnTm2ibbL6NwoqFsE/cmAwt7fnOWKcYIH6balwMxEHoq8hSMyvZ9AHuRtd/P
         Xrte+ivMYgMgwptQNIlfo37ImKZTvGApTYVVb1wyNI089qUoZFZThlSRMpypakfLQHcw
         F61g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=NstunYYiLyh6I2t6ANVWpQFDmirxWrHjDiA3ZyWotRU=;
        b=n+XOtWhW2ogkABedgXB9kSU93bRy8tWL6Z5Q2s7K3HG6N++f0PCaamX/XQo6LjessL
         N+frCebpCPoborSfSZ787Gy0oeknUVF2mSw1mfFhXE72Jr5CyOEvTFNcMuz5Rs90ZQj6
         X9FoWQpQfpanABVhEG9qQ0B9RXFUWi+jJJ+Br3gTLQPr6m0/p5OzXv2TOdUCwUi2J1U2
         76qWKloekR3Ybf6FOLstGDa09HURSQFSgAO+Xcevx5lMMikd/xkqHJy7v6aBHWjuPaM5
         Zy6WRQ1IAA4xK+WfanBGy46ouQsVEAX75J/Y1I7GjaVamX+57OOPt7qNDhuE6ZwGr24l
         CrGA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id c142si42571wmh.3.2017.09.19.14.34.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Sep 2017 14:34:02 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,418,1500933600"; 
   d="scan'208";a="238065376"
Received: from 85-171-60-79.rev.numericable.fr (HELO [192.168.0.15]) ([85.171.60.79])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 19 Sep 2017 23:33:57 +0200
Date: Tue, 19 Sep 2017 23:33:57 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Georgiana Chelu <georgiana.chelu93@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, 
    Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtlwifi: halmac: Remove
 unnecessary 'out of memory' messages
In-Reply-To: <CALta04xQ91BxdN4KmXMGWTS2gpX_QOLrm4dLjQMZtcWPw=870w@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1709192333260.2518@hadrien>
References: <20170919210157.44uf4sm27tjshxn6@fireworks> <alpine.DEB.2.20.1709192312550.2518@hadrien> <CALta04xQ91BxdN4KmXMGWTS2gpX_QOLrm4dLjQMZtcWPw=870w@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 20 Sep 2017, Georgiana Chelu wrote:

> On 20 September 2017 at 00:13, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >
> >
> > On Wed, 20 Sep 2017, Georgiana Chelu wrote:
> >
> >> Remove unnecessary messages because OOM (Out Of Memory Manager)
> >> reports memory allocation fail messages.
> >>
> >> Fix issue found by by checkpatch.pl.
> >> WARNING: Possible unnecessary 'out of memory' message.
> >
> > Do you need to add the comments?  Looking at the code, it seems pretty
> > obvious from the few lines above what the problem is.
> >
> > julia
> >
> >
>
> I saw similar comments in this file, so I thought it would be nice
> to have uniformity in the code. But, as you say, the return error is
> obvious. So, I will send a second version of the patch without the
> 'out of memory' comments.

If the other ones are similarly obvious, perhaps they could go too :)

julia

>
> >>
> >> Signed-off-by: Georgiana Chelu <georgiana.chelu93@example.com>
> >> ---
> >>  drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_func_88xx.c | 10 +++++-----
> >>  1 file changed, 5 insertions(+), 5 deletions(-)
> >>
> >> diff --git a/drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_func_88xx.c b/drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_func_88xx.c
> >> index f33024e4d853..269c9e082165 100644
> >> --- a/drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_func_88xx.c
> >> +++ b/drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_func_88xx.c
> >> @@ -277,7 +277,7 @@ halmac_dump_efuse_drv_88xx(struct halmac_adapter *halmac_adapter)
> >>       if (!halmac_adapter->hal_efuse_map) {
> >>               halmac_adapter->hal_efuse_map = kzalloc(efuse_size, GFP_KERNEL);
> >>               if (!halmac_adapter->hal_efuse_map) {
> >> -                     pr_err("[ERR]halmac allocate efuse map Fail!!\n");
> >> +                     /* out of memory */
> >>                       return HALMAC_RET_MALLOC_FAIL;
> >>               }
> >>       }
> >> @@ -538,7 +538,7 @@ halmac_read_logical_efuse_map_88xx(struct halmac_adapter *halmac_adapter,
> >>       if (!halmac_adapter->hal_efuse_map_valid) {
> >>               efuse_map = kzalloc(efuse_size, GFP_KERNEL);
> >>               if (!efuse_map) {
> >> -                     pr_err("[ERR]halmac allocate local efuse map Fail!!\n");
> >> +                     /* out of memory */
> >>                       return HALMAC_RET_MALLOC_FAIL;
> >>               }
> >>
> >> @@ -554,7 +554,7 @@ halmac_read_logical_efuse_map_88xx(struct halmac_adapter *halmac_adapter,
> >>                       halmac_adapter->hal_efuse_map =
> >>                               kzalloc(efuse_size, GFP_KERNEL);
> >>                       if (!halmac_adapter->hal_efuse_map) {
> >> -                             pr_err("[ERR]halmac allocate efuse map Fail!!\n");
> >> +                             /* out of memory */
> >>                               kfree(efuse_map);
> >>                               return HALMAC_RET_MALLOC_FAIL;
> >>                       }
> >> @@ -3579,7 +3579,7 @@ halmac_verify_send_rsvd_page_88xx(struct halmac_adapter *halmac_adapter)
> >>       rsvd_buf = kzalloc(h2c_pkt_verify_size, GFP_KERNEL);
> >>
> >>       if (!rsvd_buf) {
> >> -             /*pr_err("[ERR]rsvd buffer malloc fail!!\n");*/
> >> +             /* out of memory */
> >>               return HALMAC_RET_MALLOC_FAIL;
> >>       }
> >>
> >> @@ -3598,7 +3598,7 @@ halmac_verify_send_rsvd_page_88xx(struct halmac_adapter *halmac_adapter)
> >>                           GFP_KERNEL);
> >>
> >>       if (!rsvd_page) {
> >> -             pr_err("[ERR]rsvd page malloc fail!!\n");
> >> +             /* out of memory */
> >>               kfree(rsvd_buf);
> >>               return HALMAC_RET_MALLOC_FAIL;
> >>       }
> >> --
> >> 2.11.0
> >>
> >> --
> >> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> >> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> >> To post to this group, send email to outreachy-kernel@googlegroups.com.
> >> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170919210157.44uf4sm27tjshxn6%40fireworks.
> >> For more options, visit https://groups.google.com/d/optout.
> >>
>

