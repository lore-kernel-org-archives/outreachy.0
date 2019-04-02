X-GM-THRID: 6674267883353145344
X-Received: by 2002:a1c:1ad6:: with SMTP id a205mr1384640wma.15.1554186930605;
        Mon, 01 Apr 2019 23:35:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:5582:: with SMTP id i2ls1501966wrv.1.gmail; Mon, 01 Apr
 2019 23:35:29 -0700 (PDT)
X-Google-Smtp-Source: APXvYqw+4azq5lZlKxJgJdbMIv+ieTQs/zBSGtXyHpLonLXy1de3BoaTLLXQ0/J4LovqmAzeuGWW
X-Received: by 2002:adf:ef50:: with SMTP id c16mr2000184wrp.24.1554186929881;
        Mon, 01 Apr 2019 23:35:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554186929; cv=none;
        d=google.com; s=arc-20160816;
        b=Jjv3u/wf4uWK7mlB7T3d4pBTPMJ43dkCFJMveak98wt5qk/dy4G+zASTkYMNnHLs3m
         0VxP07Xfo3suA7cV+osEFkjK2BxmBTa68HII/9ur2aTT9g2srf3EWVwTYsKbxB4HNN1e
         InRDZVq6Jd9BNZ8iMuCzG+us6r9jpBb8vyIQ3nwUd5MCA1Jv7eV+oXB1AiuPM2AV06Kl
         /Yp1huXIUvB5XkqhNgf9vPDOZgZKJCBuxdnisgr7pDl+rYIKE8kmktZVsJhsJxHUxGe2
         0yQv+r07RCaFsRYLEYM5ijLo1XBL4zKb2EeO0/fnI91paxzItwDNRnztPHdRe7B2rTr2
         veHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=ebOSlP/OtBynxEGUS/++TnNhtF6fOrA/edQPKLCsLP4=;
        b=tJPTugDqg2s7chqrQUTfja28W9dKfbb0cpn03ZkuFmcPcAZbcIQStPtsseZYXDKp6Z
         SEqiUbV0ZxqWAHcHJTxB8+/HB6eBJ6oUiGB8LK0Foj3u+VwChnHjV7z949UQKlNq98e0
         5xLqPJ+YO+abaIMkO/K+lmzyOYeJtlQVwCmtSzAPYdT7aM2rnK9mwX187Mu6d4KM7CMr
         Iw24h2D0PwGv6p9pdIMYtIO7rmyrbPjHLcYDwj9fZAEuuPk1h8CnJ7r/h+U1UDK90UXg
         /nQGml609hOfHFSGPk9gnBOh4PfUSw0Wr9BP8eMKeimS8qJuSBGg+tnuUaEdqRPNohiW
         QqcA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id o3si649703wmf.0.2019.04.01.23.35.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Apr 2019 23:35:29 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,298,1549926000"; 
   d="scan'208";a="376752718"
Received: from abo-75-106-68.mrs.modulonet.fr (HELO hadrien) ([85.68.106.75])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 02 Apr 2019 08:35:29 +0200
Date: Tue, 2 Apr 2019 08:35:29 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Greg KH <gregkh@linuxfoundation.org>
cc: Himadri Pandya <himadri18.07@gmail.com>, Larry.Finger@lwfinger.net, 
    florian.c.schilhabel@googlemail.com, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH v4 6/6] staging: rtl8712: use
 list_entry in function r8712_select_and_join_from_scan
In-Reply-To: <20190402055701.GJ14075@kroah.com>
Message-ID: <alpine.DEB.2.21.1904020831350.2664@hadrien>
References: <20190401200955.98744-1-himadri18.07@gmail.com> <20190401200955.98744-7-himadri18.07@gmail.com> <20190402055701.GJ14075@kroah.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 2 Apr 2019, Greg KH wrote:

> On Tue, Apr 02, 2019 at 01:39:55AM +0530, Himadri Pandya wrote:
> > struct wlan_network contains field list of type list_head. Hence,
> > getting the address of wlan_network using list_entry is equivalent
> > of using container_of to do the same. And to use list_entry for list
> > manipulations is a better choice.
> >
> > Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
> > ---
> > Changes in V4:
> > 	- Change log message
> > Changes in V3:
> > 	- Improve log message
> > ---
> >  drivers/staging/rtl8712/rtl871x_mlme.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/staging/rtl8712/rtl871x_mlme.c b/drivers/staging/rtl8712/rtl871x_mlme.c
> > index 1a15c45aa83b..164422b3ac07 100644
> > --- a/drivers/staging/rtl8712/rtl871x_mlme.c
> > +++ b/drivers/staging/rtl8712/rtl871x_mlme.c
> > @@ -1117,8 +1117,8 @@ int r8712_select_and_join_from_scan(struct mlme_priv *pmlmepriv)
> >  			}
> >  			return _FAIL;
> >  		}
> > -		pnetwork = container_of(pmlmepriv->pscanned,
> > -					struct wlan_network, list);
> > +		pnetwork = list_entry(pmlmepriv->pscanned,
> > +				      struct wlan_network, list);
> >  		if (pnetwork == NULL)
> >  			return _FAIL;
>
> A list entry can not be null, so this check is very odd.

I guess it could be, if the value is NULL, because the list field is at
the top of the structure.  However, it looks like the list is build
properly, with init_list_head and then list_add_tail, so the NULL test
should not be needed.

Himadri, there are several very simple loops on lists that could be nicely
converted to list_for_each or list_for_each_entry.  Search for
end_of_queue_search.

julia


>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190402055701.GJ14075%40kroah.com.
> For more options, visit https://groups.google.com/d/optout.
>

