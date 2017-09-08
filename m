X-GM-THRID: 6463333308428189696
X-Received: by 10.223.134.37 with SMTP id 34mr139137wrv.1.1504864596112;
        Fri, 08 Sep 2017 02:56:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.47.207 with SMTP id v198ls266862wmv.10.gmail; Fri, 08 Sep
 2017 02:56:35 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QARgVsxmnmQM183n83MfdOsFW5LPtCWg4UBAKRemh6SuD4v35NuXCHiXg0TfC12GgJNPEO1
X-Received: by 10.28.21.65 with SMTP id 62mr164201wmv.22.1504864593290;
        Fri, 08 Sep 2017 02:56:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504864592; cv=none;
        d=google.com; s=arc-20160816;
        b=F3eSi05rTkScblFki+3TPG13qYtxAuXhzwFrrHj3kk3KujseNcamhF/Ck+eb6eOz2w
         XNSFzyGdV0Wo1qsPtoFMp4NbHexWfk0Vzv9iArK3pxK+yu0geCo8Ls5ji4vx7RXF/Pcz
         a9QPnQ/k7LTxdQjfsoZ43zvq/rFPs0nBcO1dJ9UZ3GUQ6TGWRkN72U5pH419ys2hIrmU
         0MQw03mIuwKkwEq8PBkcM+4ebWL9f16u6t8jv60uxBJRb9YT7h9XmZnKKVOECpMtfR02
         QElOifNV6Jb9BHCvhzuxaI38JgU2mh6c4xaXoZAIwnOyNBXbeYvM/T4yCyL9yI4lT8Tg
         S0cw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=8MJ2i+CmEpZqKQqC4kwtOuAh4yU2CbTXlBRjRSQ1w/o=;
        b=Jb5HJIa0TynVW4cIf/r48TXCnAghdvMzEgThPTgY1uwc7g0ej+bZKYd2rNFvI7DNQ2
         M/XcXsVPHdRSs6cB45gdWqVVIs4wzf1+ZAL/elVNwqkZhVb+eUyaLL2aKQsc13Uq8oxY
         pgcxO+GVJxzGNvFkrGyu8aYgJ/FrCFUC5pEhmT8cyukOgX1fTsMCtPzkIhgp1oKRwRfS
         vmTTtEEonzFj/JmRNnCKfC5++sC3x6a7uhFSX4kcnJbhCJ3u7OHfQ5L/wG+2MAgIi1Fz
         6JI0eygpQvKS5jdXw3gz/CTS2h2azS6nYFJ2+21VEhjzo+g42P4XEk0Lv/JSQ/+NldYD
         uMeA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id r3si86891wmg.6.2017.09.08.02.56.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 08 Sep 2017 02:56:32 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,360,1500933600"; 
   d="scan'208";a="290147048"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 08 Sep 2017 11:56:31 +0200
Date: Fri, 8 Sep 2017 11:56:01 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Dan Carpenter <dan.carpenter@oracle.com>
cc: harsha <harshasharmaiitr@gmail.com>, devel@driverdev.osuosl.org, 
    gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v4] staging: pi433: Fixes minor typo
 errors
In-Reply-To: <20170908095039.ns6kjwa2j5jbrrbi@mwanda>
Message-ID: <alpine.DEB.2.20.1709081152520.3165@hadrien>
References: <1504863598-16301-1-git-send-email-harshasharmaiitr@gmail.com> <alpine.DEB.2.20.1709081143430.3165@hadrien> <20170908095039.ns6kjwa2j5jbrrbi@mwanda>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 8 Sep 2017, Dan Carpenter wrote:

> On Fri, Sep 08, 2017 at 11:45:20AM +0200, Julia Lawall wrote:
> >
> >
> > On Fri, 8 Sep 2017, harsha wrote:
> >
> > > From: Harsha Sharma <harshasharmaiitr@gmail.com>
> > >
> > > Fixes checkpatch warning -- "occured" and "succesfully" are misspelled
> > >
> > > Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
> > > ---
> > > Changes in v4:
> > >  -Correct the format of the subject.
> > >  -Signed-off properly.
> >
> > It's not signed off properly.  Like Greg just said (maybe the mails
> > crossed), the sign off needs to be the same as the From line.  This
> > probably relates to your git configuration or your mailer.  Send the patch
> > to yourself before sending it out on the mailing list to be sure that
> > everything is ok.
> >
>
> This is actually OK-ish...  It's better when we don't have the extra
> From: and there is no need for that with gmail, but we sometimes allow
> it for companies which have broken mailservers.

Oops, I'm sorry. I didn't see the extra From line.

SubmittingPatches says that the From line should be provided:

The ``from`` line must be the very first line in the message body,
and has the form:

        From: Original Author <author@example.com>

It does say:

If the ``from`` line is missing, then the ``From:`` line from the email
header will be used to determine the patch author in the changelog.

But it doesn't convey the same spirit as "we sometimes allow".

julia


>
> regards,
> dan carpenter
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170908095039.ns6kjwa2j5jbrrbi%40mwanda.
> For more options, visit https://groups.google.com/d/optout.
>

