X-GM-THRID: 6674971503318007808
X-Received: by 2002:a1c:700d:: with SMTP id l13mr1493411wmc.16.1554183825882;
        Mon, 01 Apr 2019 22:43:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:7014:: with SMTP id l20ls204946wmc.0.canary-gmail; Mon,
 01 Apr 2019 22:43:45 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz9ijgvIgW1uI0Fr9DjkAdrWtI/gjUsmdwrj6g+9fDPTgWaijHLw9Ebt0lqk6tMSq7F7j78
X-Received: by 2002:a1c:9d49:: with SMTP id g70mr1351278wme.6.1554183825054;
        Mon, 01 Apr 2019 22:43:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554183825; cv=none;
        d=google.com; s=arc-20160816;
        b=qO4JezGn8C3YQAJYsXZ1iAqZXKlUnIQLS58s753paPtgKAW1RpwUPKLla9L8XjElBk
         ji+6tczgjtrMkOLstwe/o9OsetHx1A+YClBmZdgTgocme8fQityxH/i6/z4P8UyViYbE
         SiejlzBsyv8eqdMClibNIZIDxyKHWDjOtN2/gUGbvtcmptCJ7mTlnHIZ8vdHtCNiHt7T
         biXm3YX1EyNmCg1U2EVHL3Iqd/c9T0VYWVY76Ei7j3kY4GU2pavxmR3tFb5vHNtU1jBZ
         cmo0YvclzAXULBkNpRqJeZ5+Ryxd2cbs3VIreyRea+5jfvG8KSw5qZfkkMmSyfIlqk1V
         1lsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=nfCvdYeL/YLXfC0vnzbYxBlSs1nFR+L0SzEMHSZAhlA=;
        b=LmRzpK1GNjUZWHqejjx3uOdRabE1YATn8aAnmaNImQrL/JWzKW6qk0v9BkNL85+1kU
         9oRscagOeBypdJJhpr0g9TrnvTgg7gE0QAhwBJdZ8m67XThC3QMTfuHnlgB5bgJppKmA
         sVDwDtBcogoWkoKxe0oKTM+AmF6A+uj2vqzX/0UzMzYk825eYfaz84+czlRz9A8udNqg
         kFZmLmWyGiPUHmNHeJ/TzfvzXSroyWdfOuGwhvvZ79LefmDvU+MFUqIhwHJX2ItYpZUQ
         iU//QwG+D33mtGuvebuV2SW0XQUO8JWQqaPbcdCf+dsP+UYjyU9FoVUdbU7/W1uvyrCy
         j1+A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id n65si494223wma.1.2019.04.01.22.43.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Apr 2019 22:43:45 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,298,1549926000"; 
   d="scan'208";a="376746524"
Received: from abo-75-106-68.mrs.modulonet.fr (HELO hadrien) ([85.68.106.75])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 02 Apr 2019 07:43:44 +0200
Date: Tue, 2 Apr 2019 07:43:44 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Madhumthia Prabakaran <madhumithabiw@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8192u: Use list_entry in
 ieee80211_wx_sync_scan_wq()
In-Reply-To: <20190401215305.GB11046@madhuleo>
Message-ID: <alpine.DEB.2.21.1904020742260.2664@hadrien>
References: <20190401165827.18731-1-madhumithabiw@gmail.com> <alpine.DEB.2.21.1904012138510.2530@hadrien> <20190401215305.GB11046@madhuleo>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 1 Apr 2019, Madhumthia Prabakaran wrote:

> On Mon, Apr 01, 2019 at 09:39:32PM +0200, Julia Lawall wrote:
> >
> >
> > On Mon, 1 Apr 2019, Madhumitha Prabakaran wrote:
> >
> > > Use list_entry() instead of container_of() in function,
> > > ieee80211_wx_sync_scan_wq(), as the function to return the
> > > parent structure containing any list_head is defined to use
> > > list_entry() as per the definition in include/linux/list.h#L348.
> >
> > list_entry is for lists.  The wx_sync_scan_wq field has type work_struct.
>
> Thats true. Though the wx_sync_scan_wq has type work_struct, the structure
> work_struct has a member of struct list_head in it.

The field name itself should have type list_head.  You can write your
Coccinelle script to check for this.  Since structure types are often
defined in header files, you may need to use the command line argument
--all-includes (try to include all mentioned header files).

julia


>
> thanks
>
>
> >
> > julia
> >
> > >
> > > Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> > > ---
> > >  drivers/staging/rtl8192u/ieee80211/ieee80211_softmac_wx.c | 4 +++-
> > >  1 file changed, 3 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac_wx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac_wx.c
> > > index 81020fbcdc20..76daec98212e 100644
> > > --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac_wx.c
> > > +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac_wx.c
> > > @@ -300,7 +300,9 @@ EXPORT_SYMBOL(ieee80211_wx_set_mode);
> > >
> > >  void ieee80211_wx_sync_scan_wq(struct work_struct *work)
> > >  {
> > > -	struct ieee80211_device *ieee = container_of(work, struct ieee80211_device, wx_sync_scan_wq);
> > > +	struct ieee80211_device *ieee = list_entry(work,
> > > +						   struct ieee80211_device,
> > > +						   wx_sync_scan_wq);
> > >  	short chan;
> > >  	enum ht_extension_chan_offset chan_offset = 0;
> > >  	enum ht_channel_width bandwidth = 0;
> > > --
> > > 2.17.1
> > >
> > > --
> > > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190401165827.18731-1-madhumithabiw%40gmail.com.
> > > For more options, visit https://groups.google.com/d/optout.
> > >
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.1904012138510.2530%40hadrien.
> > For more options, visit https://groups.google.com/d/optout.
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190401215305.GB11046%40madhuleo.
> For more options, visit https://groups.google.com/d/optout.
>

