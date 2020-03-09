X-GM-THRID: 6801912764487958528
X-Received: by 2002:a17:90a:a4ca:: with SMTP id l10mr17890863pjw.174.1583758769762;
        Mon, 09 Mar 2020 05:59:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:df41:: with SMTP id h1ls3489093pgj.8.gmail; Mon, 09 Mar
 2020 05:59:27 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vt804UNG3EizotFsk9zi2H0ndD4eb7OXUPogIAu3lYOWdP+mtpFZrJrR+TGDppBuNVQOWKq
X-Received: by 2002:a62:7696:: with SMTP id r144mr16545524pfc.177.1583758767701;
        Mon, 09 Mar 2020 05:59:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583758767; cv=none;
        d=google.com; s=arc-20160816;
        b=OZwPOCHSnkNiDFThrld8u7hJHXLN1cn6ws18HIzbvCBqCYDBUqmRemQX9PPDsXcHej
         ttQhm949G+6yI34K8aIfUWDcIcWHxyfRo5iNqhIl7iEN322GrGgnc91IQ4SdTkPUmyg2
         k9RSou1dMcywGN43eJfgJBY37TKkPawuQpKQDtLOA/RllajtAGD2oo5MKjZ9bVXvTNmN
         XWhgEAaUbCAC05yCz7bealJ/EYJgrZ36bN0jmCf/fvfVuNxmDA2FFy9ijrgKYLzERY7y
         qmSjp+IrWQ4IEYfNhxXweA8yIrEE8YenJsxOGcUY1CZU4ImzNhDwVulQulxoiHRKL3Zg
         6Ekw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=hNwBVyL0E9rl8Ny2PQyvlZF+Ndge7s/4MH5yRGdACVw=;
        b=itPoewpapftOMjsYUpS0tzG7uMAjmaZ+LVvzUQaenN9eSZCnDGDx1u18lBbAn8sm/I
         4Q0FUUYg9jf6FpkGQ48NYEJ2Dqw4BXtgnTTk76i0AZmaaV877ejBwkEdv0BEjTYHgJGf
         Y1TNpCExIzEzdk7jmLNUtfnB3OtXPHpw66MeNjH2xky+HIFNdbpvLUwDG7L7k4VLU2vU
         U7LlE+iK6eeoiPP+CBpGN0W93h+68j1vLNgBDZvSt4B2MKAbmHN2fqhYCJBCc4aPZ3MC
         qDPAQFVmvL6i6T49T7nonvUH4iJUomdnr1/yGrEjS1Z0/wYEAyv9ckJctF5c5aou4wT5
         j3cQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=dGWYTPp9;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com. [205.139.110.61])
        by gmr-mx.google.com with ESMTPS id 83si256189pge.4.2020.03.09.05.59.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Mar 2020 05:59:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.61 as permitted sender) client-ip=205.139.110.61;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=dGWYTPp9;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1583758766;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=hNwBVyL0E9rl8Ny2PQyvlZF+Ndge7s/4MH5yRGdACVw=;
	b=dGWYTPp9MVQZv1AWJHNQGuCNO+3S3GW+pSkI2R+yNL+TgBF8lvavrqNhw05n6YHJuNt3RL
	eOFC0n7QmTB85XL9rR96KDRFT3RfCVEMwSfy1R9YFBiBqdzbxJIGir8NxN64h4nsVt9WJM
	Y+5ZbHqM5qt0UtYR38vH3itZtT9Ts18=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-76-u1SsjMi9OTOFN5seSvwtEQ-1; Mon, 09 Mar 2020 08:59:25 -0400
X-MC-Unique: u1SsjMi9OTOFN5seSvwtEQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 33456107ACCD;
	Mon,  9 Mar 2020 12:59:24 +0000 (UTC)
Received: from elisabeth (ovpn-200-26.brq.redhat.com [10.40.200.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EB09160BFB;
	Mon,  9 Mar 2020 12:59:22 +0000 (UTC)
Date: Mon, 9 Mar 2020 13:58:52 +0100
From: Stefano Brivio <sbrivio@redhat.com>
To: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] [Outreachy kernel] staging: wfx: alignment should match
 open parenthesis
Message-ID: <20200309135852.3134f4b8@elisabeth>
In-Reply-To: <CAJyzNhmr11fNVVdKTUQeTGJE+a81mr4kJN_exk=Hn3Z2tVGDBg@mail.gmail.com>
References: <20200308185518.5838-1-payalskshirsagar1234@gmail.com>
	<20200309124106.703d5e1a@elisabeth>
	<CAJyzNhmr11fNVVdKTUQeTGJE+a81mr4kJN_exk=Hn3Z2tVGDBg@mail.gmail.com>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Mon, 9 Mar 2020 17:23:42 +0530
Payal Kshirsagar <payalskshirsagar1234@gmail.com> wrote:

> On Mon, Mar 9, 2020, 5:11 PM Stefano Brivio <sbrivio@redhat.com> wrote:
> 
> > On Mon,  9 Mar 2020 00:25:18 +0530
> > Payal Kshirsagar <payalskshirsagar1234@gmail.com> wrote:
> >  
> > > Align code to open parenthesis.
> > >
> > > Signed-off-by: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
> > > ---
> > >  drivers/staging/wfx/data_tx.c | 6 +++---
> > >  1 file changed, 3 insertions(+), 3 deletions(-)
> > >
> > > diff --git a/drivers/staging/wfx/data_tx.c  
> > b/drivers/staging/wfx/data_tx.c  
> > > index 8b0c52392319..0038dc7666cf 100644
> > > --- a/drivers/staging/wfx/data_tx.c
> > > +++ b/drivers/staging/wfx/data_tx.c
> > > @@ -301,8 +301,8 @@ static void wfx_tx_manage_pm(struct wfx_vif *wvif,  
> > struct ieee80211_hdr *hdr,  
> > >  }
> > >
> > >  static u8 wfx_tx_get_raw_link_id(struct wfx_vif *wvif,
> > > -                                   struct ieee80211_sta *sta,
> > > -                                   struct ieee80211_hdr *hdr)
> > > +                              struct ieee80211_sta *sta,
> > > +                              struct ieee80211_hdr *hdr)
> > >  {
> > >       struct wfx_sta_priv *sta_priv =
> > >               sta ? (struct wfx_sta_priv *) &sta->drv_priv : NULL;
> > > @@ -369,7 +369,7 @@ static void wfx_tx_fixup_rates(struct  
> > ieee80211_tx_rate *rates)  
> > >  }
> > >
> > >  static u8 wfx_tx_get_rate_id(struct wfx_vif *wvif,
> > > -                               struct ieee80211_tx_info *tx_info)
> > > +                          struct ieee80211_tx_info *tx_info)
> > >  {
> > >       bool tx_policy_renew = false;
> > >       u8 rate_id;  
> >
> > Change looks good, more Cc:'s needed.
> >  
> 
> Is is needed to resend all these patches to send them to the other
> maintainers?

I think it would be nice, yes.

-- 
Stefano


