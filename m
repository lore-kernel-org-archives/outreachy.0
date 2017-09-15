X-GM-THRID: 6465312034582953984
X-Received: by 10.25.19.201 with SMTP id 70mr63033lft.35.1505459079262;
        Fri, 15 Sep 2017 00:04:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.161.206 with SMTP id k197ls223701lfe.29.gmail; Fri, 15 Sep
 2017 00:04:37 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QDRMR9CndrojT9PXLDacbW0dODOp76v4GrEVqCRWXPz2w7eC7h/c304P2NChDofPCu4WwGP
X-Received: by 10.46.91.143 with SMTP id m15mr182245lje.2.1505459077745;
        Fri, 15 Sep 2017 00:04:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505459077; cv=none;
        d=google.com; s=arc-20160816;
        b=E1o0bEqoDrzU/D3nk/Ec6kYmjIX5JiIn19JVXO3s9fVXOFvP6y4zw31VNCCZ/XvvMD
         Uudj8speYuGSLiftFM7WVM9Dt5pDHXXr9Onoaml5TBL541vZ47M7bJgs6rWr+kU3dnyZ
         3k8IZ6OmrsYjGjKYSRw8nEfFUwwn2zTBxJwCUwnM9AD3lDIUao3MHZ6wAtTzp81gprc/
         rik8XsikOMpQpke0r4bjR3F5bM2sV+aPDIX4RusPPWy5jG4G+zt40T2JElfIcTPN21jC
         NyxRkvYzmI1poosj6em+u/qhBBMP1irXHNPh8lMd/SyRb0whfZMCV1fOsgJ7f6E4ycdo
         EDEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=IntvXjmq082OXH/Z8qkJekAVACgbfE8Ff2SNGw4w0Sc=;
        b=kyY5OgiNRe+QcGK+EVLp7MHzkkhlYyQyxu7j23ByKVQc90DMtyH6LprcHHhY8Wa18f
         so3lsmMK1fXScAtrcHdQ9+nBzW/J7b7P1mkskMJdE236iOdDPD1sqm94DsGZK8PckEPR
         FeB/dhv59WgUfgQ/gAurC5xgJxD4DexRZst7s1r1KGfUU/l0TB60LHRjsS0u7f8oxvjP
         Sj25qCeyynI9ZOS9eNG1SEXr2DLf1KgWW8J6VziMvB26Ggr67TYJ9nbzO5wmMGvahq0B
         yscVk7J/3Z3OeMQafz/lZN4jQi87PxQnp9yle1I9saijOSo6uIYpp4b4ldOwI9UigXHs
         Fgig==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id p70si28574wma.1.2017.09.15.00.04.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Sep 2017 00:04:37 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,396,1500933600"; 
   d="scan'208";a="291190577"
Received: from 85-171-60-79.rev.numericable.fr (HELO [192.168.0.15]) ([85.171.60.79])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 15 Sep 2017 09:04:36 +0200
Date: Fri, 15 Sep 2017 09:04:35 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Keerthi Reddy <keerthigd4990@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: Android: follow coding
 guidlines
In-Reply-To: <df162e84-1763-4fc6-8d3d-8aee1151f515@googlegroups.com>
Message-ID: <alpine.DEB.2.20.1709150903550.2287@hadrien>
References: <20170913171234.GA4052@manoharreddy> <alpine.DEB.2.20.1709132210210.2920@hadrien> <df162e84-1763-4fc6-8d3d-8aee1151f515@googlegroups.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-138574832-1505459076=:2287"

--8323329-138574832-1505459076=:2287
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Fri, 15 Sep 2017, Keerthi Reddy wrote:

> I would like to ask will this patch be merged into Greg's Staging driver
> development tree?

Yes, normally it will, or if there is a problem you will get a message
about it.  If it is merged, you will get a message about that too.

julia

> If not what kind of what of patches will be merged into
> Greg's tree?
> Thanks,
> Keerthi. 
>
> On Thursday, September 14, 2017 at 1:40:50 AM UTC+5:30, Julia Lawall wrote:
>
>
>       On Wed, 13 Sep 2017, Keerthi Reddy wrote:
>
>       > - Add a new line after struct declaration
>       > - remove extra new line.
>       >
>       > Signed-off-by: Keerthi Reddy <keerth...@gmail.com>
>
>       Acked-by: Julia Lawall <julia....@lip6.fr>
>
>       > ---
>       >  drivers/staging/android/ion/ion.h | 2 +-
>       >  1 file changed, 1 insertion(+), 1 deletion(-)
>       >
>       > diff --git a/drivers/staging/android/ion/ion.h
>       b/drivers/staging/android/ion/ion.h
>       > index 621e5f7..f5f9cd6 100644
>       > --- a/drivers/staging/android/ion/ion.h
>       > +++ b/drivers/staging/android/ion/ion.h
>       > @@ -86,6 +86,7 @@ struct ion_buffer {
>       >          struct sg_table *sg_table;
>       >          struct list_head attachments;
>       >  };
>       > +
>       >  void ion_buffer_destroy(struct ion_buffer *buffer);
>       >
>       >  /**
>       > @@ -299,7 +300,6 @@ size_t ion_heap_freelist_shrink(struct
>       ion_heap *heap,
>       >   */
>       >  size_t ion_heap_freelist_size(struct ion_heap *heap);
>       >
>       > -
>       >  /**
>       >   * functions for creating and destroying a heap pool --
>       allows you
>       >   * to keep a pool of pre allocated memory to use from your
>       heap.  Keeping
>       > --
>       > 2.7.4
>       >
>       > --
>       > You received this message because you are subscribed to the
>       Google Groups "outreachy-kernel" group.
>       > To unsubscribe from this group and stop receiving emails from
>       it, send an email to outreachy-kern...@googlegroups.com.
>       > To post to this group, send email to
>       outreach...@googlegroups.com.
>       > To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/20170913171234.GA4052%40
>       manoharreddy.
>       > For more options, visit https://groups.google.com/d/optout.
>       >
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/df162e84-1763-4fc6-8d3d-
> 8aee1151f515%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-138574832-1505459076=:2287--

