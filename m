X-GM-THRID: 6808532332710985728
X-Received: by 2002:a63:4752:: with SMTP id w18mr12303482pgk.379.1585576239106;
        Mon, 30 Mar 2020 06:50:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:a9c1:: with SMTP id b1ls12446686plr.11.gmail; Mon,
 30 Mar 2020 06:50:37 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvAZIVVMwdMHA/yjEqSxy2IS9sSITAyf/LU9MnJkjeYa0XkWp7kGgYkhT7rWvGqJc45JXCi
X-Received: by 2002:a17:90a:c482:: with SMTP id j2mr16123246pjt.71.1585576237763;
        Mon, 30 Mar 2020 06:50:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585576237; cv=none;
        d=google.com; s=arc-20160816;
        b=jZJEK3nSKk9g9mDnVlDqNK0WZdu6G4FxyW8FZv8sAispT7GlAtYQeBIjVE4bgXbpYP
         Q240O88DrkM8sKqqGESF68Y/M6xdKZ3wkNgTGJqt0QXF3geLXdeJRxft5PHUz+7ejxyX
         TxdTqNyguj+akuTeqcPSSUXqWh7b/920Ws6phOzcLpDWiZtVaVtyv3E/WxZW76r08t3b
         lwEhB1O35oswwkv4cKqfonbwVuuotu8Gz4klxxRLwqSoVKi6b6iBrXTsmOOgctRTP1h4
         Mf5kqGhyNq4W5JoGP+wBn4D7YhioM+z7u1osxWCLgzEM9GsXPaAkdp02ZjHzQn3SD3gJ
         l/eg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=6l27H2qBmHg1rHivkXLei3tj4wqX7FN7/aEmhnS4tEM=;
        b=cNEXr5lbnuzOsaKDx6/eAvHuSV6FGIjYXvWNXNJFT+Izr79IluNf1fYJoo/XqREwvX
         MNmOm7MEZx+r2EsWhD9y3O2Wg2JT0vKH3SCw4FA9dmOUzwrzRdMa+zWnYllD0B5dz0Fb
         I4/n0QPedLi4R735dzAj6YzvhCcR3u0IZe9UWslOM3ydFfJ6xG2KpTE2lZmcgmlkDpGg
         wyoWMpVBQxhENycD9zy+ZWxgwkT32Gw6ZRiTvlb+kteO2HnqZdlEqE2SOmVg/ZzusQWp
         E7HPF1fIgmyZ1hxlv4I4IFnTdNAWRkn5W/IlO+FhpSzgHWc+eWvHACp6kZoaCUFrfLZ/
         ucCA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=GDVbjx5E;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com. [63.128.21.74])
        by gmr-mx.google.com with ESMTPS id c207si854810pfc.3.2020.03.30.06.50.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 30 Mar 2020 06:50:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) client-ip=63.128.21.74;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=GDVbjx5E;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1585576236;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=6l27H2qBmHg1rHivkXLei3tj4wqX7FN7/aEmhnS4tEM=;
	b=GDVbjx5EmRAYpSNOA2sLN0fZ3CBO2rcDyokMSZgJgdz7l/Pb9SCJqQKqffDsJ8sEcj5pup
	7HpPyFrJoGphZXWjLg9X0RVdE1gWri9AB1L5v4K9cyT/guk3x1CbGbV/bv9NW1ir6v8Psm
	1eDzz242SOv2obQkVAZO/ptIG23eN2E=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-74-eH1JQh7oP4G_WubnCPN0Ug-1; Mon, 30 Mar 2020 09:50:35 -0400
X-MC-Unique: eH1JQh7oP4G_WubnCPN0Ug-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1555C80256D;
	Mon, 30 Mar 2020 13:50:34 +0000 (UTC)
Received: from elisabeth (unknown [10.36.110.63])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A965A19925;
	Mon, 30 Mar 2020 13:50:32 +0000 (UTC)
Date: Mon, 30 Mar 2020 15:50:18 +0200
From: Stefano Brivio <sbrivio@redhat.com>
To: Sam Muhammed <jane.pnx9@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, Greg Kroah-Hartman
  <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH 1/4] Staging: rtl8192u: ieee80211:
 Use netdev_dbg() for debug messages.
Message-ID: <20200330155018.3db23c64@elisabeth>
In-Reply-To: <7ade5ee43581a6fb3bdb8d5a567b28976525b843.camel@gmail.com>
References: <cover.1585233434.git.jane.pnx9@gmail.com>
	<84dc7e33954509457efce2a35fb293e631845a96.1585233434.git.jane.pnx9@gmail.com>
	<20200330095924.4824f330@elisabeth>
	<7ade5ee43581a6fb3bdb8d5a567b28976525b843.camel@gmail.com>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Mon, 30 Mar 2020 09:01:19 -0400
Sam Muhammed <jane.pnx9@gmail.com> wrote:

> On Mon, 2020-03-30 at 09:59 +0200, Stefano Brivio wrote:
> > On Thu, 26 Mar 2020 11:02:35 -0400
> > Sam Muhammed <jane.pnx9@gmail.com> wrote:
> >   
> > > +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_wx.c
> > > @@ -436,7 +436,7 @@ int ieee80211_wx_set_encode(struct ieee80211_device *ieee,
> > >  	if (ieee->reset_on_keychange &&
> > >  	    ieee->iw_mode != IW_MODE_INFRA &&
> > >  	    ieee->reset_port && ieee->reset_port(dev)) {
> > > -		printk(KERN_DEBUG "%s: reset_port failed\n", dev->name);
> > > +		netdev_dbg(ieee->dev, "reset_port failed\n");  
> > 
> > I guess you should stick to 'dev' here -- it's the same as ieee->dev,
> > but reset_port() is invoked on 'dev', so it would be less confusing.
> 
> Thank You for pointing this out! this got me hesitant but i thought i
> could be more explicit?

Hmm, I see. Look, these would be my points, in order of priority:

1. ieee->reset_port(dev), port reset failed on dev, nothing else

2. it's nice to have a 'dev' pointer representing the device instead of
   having to spell out ieee->dev every time in this function,
   especially as the container is called 'ieee', which has a very weak
   meaning

2. having a 'dev' variable is useless, ieee->dev leaves no room for
   interpretation and wondering (when was 'dev' assigned? where does it
   come from?)

So if I understand correctly you are referring to the second "2."
point. About those two points, I really have no preference. I also
couldn't decide myself. I guess I'd instinctively go for "ieee->dev"
everywhere.

However, I guess point 1. is arguably the most important here.

> Now since this change is already been made, i guess i should make this
> a new patch?

Ouch, I missed that. Yes.

> is there any information i should say to tie it with this series? or
> should be treated like a new separate patch?

It's a separate patch. You can use the Fixes: tag as documented in
submitting-patches.rst, but this is really subject to interpretation.

My personal interpretation is that it's not a functional fix and the
Fixes: tag should be omitted, even though you should refer to the merged
commit in the message of the new change.

Some maintainers want it no matter what. I don't recall having ever
sent a patch directly to Greg, so I don't know :) Try without :)

-- 
Stefano


