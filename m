X-GM-THRID: 6889248551394607104
X-Received: by 2002:adf:9b8e:: with SMTP id d14mr9546239wrc.360.1604145671188;
        Sat, 31 Oct 2020 05:01:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:f00f:: with SMTP id j15ls1128866wro.2.gmail; Sat, 31 Oct
 2020 05:01:09 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwTfl7myy3XkySkWRlHzrUwFEwyMKrQJdhAubYRHd9JVxtiBeUvp62+ogLU2f7K8zNfUwlv
X-Received: by 2002:a5d:5449:: with SMTP id w9mr9507476wrv.182.1604145669268;
        Sat, 31 Oct 2020 05:01:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1604145669; cv=none;
        d=google.com; s=arc-20160816;
        b=CD8MNaiTEMAmqNAPgLYkaD5M6ULDYyXr4OL+R+QifIWwCDuRSA0BNpXsliwEiEQLsz
         6iGPjGhQjwoXp6EO80lAxeG12zGLsbscMadmuUVl7EoVhSrsMsBxlwugMQqqgr4YKm9P
         f9vdtake2U+jK3eNZ4HhsEhgsnsYSooI8dPdZxWeXo2gAplRwuIGt+BU9AHbRP7GFllB
         lOzBkyIkikVBTsdVtlSeF0ZcmxKJcWkCUupOB4aJR5g3nMVQ5dgLEY3BFTVk/EJ6WOEl
         zckU+8CUJReaI7Orw80AFZM+iyiyFW4H8zUF5GGo7DX1FhpQ1Sg5rc9TDpQzxP9vUYWg
         I6ZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=k2LNVl50+Cax3Vmx3XYcuhvPekXEJ9Q0IDuEYpXhQjk=;
        b=eRvYGl0F2F9cY1JbSi6PaZhrvxnJLG9XpnhM+T8yBwoa1LPFKM/Gi0rAL/XJd0u5Bt
         DKvScBVyflDo0GEWFu9rmbBdZsY8OdX1ZO0OeJQUHL1PGWZ3B1OtPdCFrHuii8Xhl1iU
         tRIixwNfck0+22i5YB2rg29rGDlol7D8TUaIVN4gr826fBTqFDcTeErYZnBBW3/lvCjU
         ARZbPKaCPNQjSc2whBXEIqFQqq7dSA+L8JGOdc8CI+5EQwFvS0DGsA1O7kxCWINytrVl
         UCN+wtNLu6DNFPeFhLD249LlxOaaCwGCO4vuhXoN2RuXMEKyQJJoXKXOsuHLliKuuSua
         a+yg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id y14si318671wrq.0.2020.10.31.05.01.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 31 Oct 2020 05:01:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.77,437,1596492000"; 
   d="scan'208";a="475164141"
Received: from 173.121.68.85.rev.sfr.net (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 31 Oct 2020 13:01:08 +0100
Date: Sat, 31 Oct 2020 13:01:08 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Joe Perches <joe@perches.com>
cc: Greg KH <gregkh@linuxfoundation.org>, 
    Deepak R Varma <mh12gx2825@gmail.com>, outreachy-kernel@googlegroups.com, 
    Alex Deucher <alexander.deucher@amd.com>, 
    =?ISO-8859-15?Q?Christian_K=F6nig?= <christian.koenig@amd.com>, 
    David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, 
    amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, 
    linux-kernel@vger.kernel.org, melissa.srw@gmail.com, 
    daniel.vetter@ffwll.ch
Subject: Re: [Outreachy kernel] [PATCH] drm/amdgpu: use DEFINE_DEBUGFS_ATTRIBUTE
 with debugfs_create_file_unsafe()
In-Reply-To: <0b818156537f354904938f437cbb9dd02e765653.camel@perches.com>
Message-ID: <alpine.DEB.2.22.394.2010311300530.2733@hadrien>
References: <20201030032245.GA274478@my--box>  <20201030071120.GA1493629@kroah.com> <20201030075716.GA6976@my--box>  <20201030080316.GA1612206@kroah.com> <0b818156537f354904938f437cbb9dd02e765653.camel@perches.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 31 Oct 2020, Joe Perches wrote:

> On Fri, 2020-10-30 at 09:03 +0100, Greg KH wrote:
> > On Fri, Oct 30, 2020 at 01:27:16PM +0530, Deepak R Varma wrote:
> > > On Fri, Oct 30, 2020 at 08:11:20AM +0100, Greg KH wrote:
> > > > On Fri, Oct 30, 2020 at 08:52:45AM +0530, Deepak R Varma wrote:
> > > > > Using DEFINE_DEBUGFS_ATTRIBUTE macro with debugfs_create_file_unsafe()
> > > > > function in place of the debugfs_create_file() function will make the
> > > > > file operation struct "reset" aware of the file's lifetime. Additional
> > > > > details here: https://lists.archive.carbon60.com/linux/kernel/2369498
> > > > >
> > > > > Issue reported by Coccinelle script:
> > > > > scripts/coccinelle/api/debugfs/debugfs_simple_attr.cocci
> []
> > There is a reason we didn't just do a global search/replace for this in
> > the kernel when the new functions were added, so I don't know why
> > checkpatch is now saying it must be done.
>
> I think it's not a checkpatch warning here.

That is correct, it's a coccinelle script.

julia

>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/0b818156537f354904938f437cbb9dd02e765653.camel%40perches.com.
>

