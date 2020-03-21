X-GM-THRID: 6806226770839207936
X-Received: by 2002:a02:2a4a:: with SMTP id w71mr12121370jaw.75.1584783981099;
        Sat, 21 Mar 2020 02:46:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a92:79c7:: with SMTP id u190ls2141014ilc.10.gmail; Sat, 21
 Mar 2020 02:46:19 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsCbgyTwHRH8ctFLyJSQm6hIrZvTYjt3hR3k8P9G8GNccvJGPKV80wvjIwnzXEU5o+pF5HH
X-Received: by 2002:a92:c7af:: with SMTP id f15mr9116071ilk.288.1584783979803;
        Sat, 21 Mar 2020 02:46:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584783979; cv=none;
        d=google.com; s=arc-20160816;
        b=surPXxgnFSDU8v6budvismgf36qLXuKAKmi3mKklEPOqmkjJO9xsUClWNypFvn++Wk
         PpTU60DM6zj5ofZzXpKwWmYwzzwbz5VZ6UB/dslB26e1zXB5v55Hh/1y5ennxMYbcDKQ
         WxuxbvFvVvHPiuQp0kNiIAYn8Gv4IAMUWeY0Uv9+A4hG+rLEtqUywJR2Sb/xM1pvqBr7
         MMPYAw66a8inR92ZrA/uIL6+25gKLJO6SYuvtZUP7Z/BRslogf/ozj+Y3JxPwx/SfRMA
         WSwkP9ZPzSvF2aPBfjN7PJz9HefA/chm9tF6AYB3BDwsZaywQbnoaSlE8SuOlfy4K2cb
         Q4zQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=KrkMqpk3XJ+HOqSAqYhr5FP3EExFi88gZsHngPZbLxk=;
        b=MneqarBbFDTpDOo+GTupzTgM9T84pM4Kuwa2G7pNBXnw7StV3oNFS5PNeAAxLDCQAa
         FfNRLe5OWPbuJitzzUM9CnszrQiSUUWuPxQCV/eInxEiOsGkIKTesn4rQ/NsuFXdj3fs
         mE1XUCvjQDfAUiN4zkHBlIFyOPPkfltdbxul7Z3lugIT69+0G6DdLjkHy4spAyfpGpj5
         C5KWsqrTYIWRE8tHQnOY3AeIcKFcqyUp7YadXJvV4xbHVfge5U3ttJptmd1oEfhCFMrD
         Nc8mNwwczHfc8XA2gxEtQNxVCIal04xfKy9uM9T7oEC7pdc3flupUazXZz2VcXWBXi3Y
         EQbg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=FmNfrmeV;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com. [216.205.24.74])
        by gmr-mx.google.com with ESMTPS id d207si11672iof.3.2020.03.21.02.46.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Mar 2020 02:46:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) client-ip=216.205.24.74;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=FmNfrmeV;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1584783978;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=KrkMqpk3XJ+HOqSAqYhr5FP3EExFi88gZsHngPZbLxk=;
	b=FmNfrmeVWmW3YbAWkcCJrBsi44yN/dNdyNfjYpm38oYOdk82lBqBuju43Fiq6EwleaH2lg
	isrXxgCi+5Xwv6XC6MuuESuSKm8qSf7DAw6v88cjsbh1OFLNqiwfDNAVYNm2mF89ZPZuhb
	cS02aIeel1huie4R4R4HvAV+0D1QebQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-199-jeRRrpKvOmm_01p6Zfp5Nw-1; Sat, 21 Mar 2020 05:46:14 -0400
X-MC-Unique: jeRRrpKvOmm_01p6Zfp5Nw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 12BC9100550D;
	Sat, 21 Mar 2020 09:46:13 +0000 (UTC)
Received: from elisabeth (unknown [10.40.208.6])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0DD9F5DA7C;
	Sat, 21 Mar 2020 09:46:09 +0000 (UTC)
Date: Sat, 21 Mar 2020 10:46:04 +0100
From: Stefano Brivio <sbrivio@redhat.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: "John B. Wyatt IV" <jbwyatt4@gmail.com>,
 outreachy-kernel@googlegroups.com, Tim Collier <osdevtc@gmail.com>, Nikola
 Jelic <nikola.jelic83@gmail.com>, Moritz Muehlenhoff <jmm@debian.org>,
 Julia Lawall <julia.lawall@inria.fr>
Subject: Re: [Outreachy kernel] Re: [PATCH v2] staging: wlan-ng: Fix third
 argument going over 80 characters
Message-ID: <20200321104604.4d43bd25@elisabeth>
In-Reply-To: <20200321093402.GD917692@kroah.com>
References: <20200321013905.2422334-1-jbwyatt4@gmail.com>
	<20200321093402.GD917692@kroah.com>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Sat, 21 Mar 2020 10:34:02 +0100
Greg Kroah-Hartman <gregkh@linuxfoundation.org> wrote:

> On Fri, Mar 20, 2020 at 06:39:05PM -0700, John B. Wyatt IV wrote:
> > Create a new 'status' variable to store the value of a long argument
> > that goes over 80 characters. The status variable is also used for
> > an if check. Replacing that long statement in both places makes the
> > code much easier to read.
> > 
> > Note: the status variable is assigned after a needed byte order
> > conversion for usbin->rxfrm.desc.status, which uses a reference.
> > 
> > Issue reported by checkpatch.
> > 
> > Suggested-by: Stefano Brivio <sbrivio@redhat.com>
> > Signed-off-by: John B. Wyatt IV <jbwyatt4@gmail.com>
> > ---
> > v2: Resubmitting after git rebase and comments from Julia Lawall 
> > <julia.lawall@inria.fr>
> > 
> >  drivers/staging/wlan-ng/hfa384x_usb.c | 9 +++++----
> >  1 file changed, 5 insertions(+), 4 deletions(-)
> > 
> > diff --git a/drivers/staging/wlan-ng/hfa384x_usb.c b/drivers/staging/wlan-ng/hfa384x_usb.c
> > index f8485601aead..9016e6b32efc 100644
> > --- a/drivers/staging/wlan-ng/hfa384x_usb.c
> > +++ b/drivers/staging/wlan-ng/hfa384x_usb.c
> > @@ -3252,15 +3252,16 @@ static void hfa384x_usbin_rx(struct wlandevice *wlandev, struct sk_buff *skb)
> >  	struct hfa384x *hw = wlandev->priv;
> >  	int hdrlen;
> >  	struct p80211_rxmeta *rxmeta;
> > -	u16 data_len;
> > -	u16 fc;
> > +	u16 data_len, fc, status;  
> 
> No need to change data_len, or fc definitions, just add a new line here
> instead for status.

My bad, I suggested that John would change that because to me:

	u16 data_len;
	u16 fc;
	u16 status;

looks only slightly worse than:

	u16 data_len;
	u16 fc;

but still it's horrible. If the idea is to avoid unrelated changes,
yeah, I get it :)

-- 
Stefano


