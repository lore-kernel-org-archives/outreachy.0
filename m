X-GM-THRID: 6807884729429262336
X-Received: by 2002:ab0:74cd:: with SMTP id f13mr6886442uaq.111.1585576326317;
        Mon, 30 Mar 2020 06:52:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:684c:: with SMTP id d73ls2328799vsc.7.gmail; Mon, 30 Mar
 2020 06:52:04 -0700 (PDT)
X-Google-Smtp-Source: APiQypLvg4yjg0oBi0eB+qpCwiNxwWcQHcL8WYl9Hg/CNapRgqcHWRs+8nSHClFFNEAm/bUu4k7Y
X-Received: by 2002:a67:d60d:: with SMTP id n13mr8853925vsj.230.1585576324571;
        Mon, 30 Mar 2020 06:52:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585576324; cv=none;
        d=google.com; s=arc-20160816;
        b=OuOgeOL8SsSTrpVe6hvoE1NWNsiCIa1Q73XiY5rDRbkECeOcyIZI1j3vsR+5m8kx4Q
         m7vVOT6m+GrwM70znq+bIDOKsRjRH2spqCpYK48MUNtNzPe78disjH1bBAo08ZKPLhdS
         7t0OfummQ9pv9K7U517pdLCFtsX+4AFHEMmyk5hDIcUwT93SNzgn8fpAdBdW+0/AsVUA
         rzZwanh+6rsrUnFfgDZYvvCaMN7aP0Y4CunkDD0lvm6/38dLaOdrTNJYMk2czgctof2h
         MTqlGNXuMDdxD8ubw8dSw9NPRJeIaCbgu/lNFdpugeaEfZvw5+fYjyR9gm0d7RGBmX3f
         YKkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=eKksIWMKGyhBxmOyEKEsU58pSh/Wz0oPF6i8BW6IapA=;
        b=pp56QhEbG3lgxjZNLnkcuTkaC3BCIhMhdA/e8PGx8AXykM3GWGnJcuxw2VZpToXLSV
         ijGV7BeAXmgWzwmj+dcgLGH71WcDASlnvAh4jCNOp2Nt2q0ZShNiucyhs9NsZZanjWGN
         Mzxb3YwnE9mB1Vc1IUfQf6v6+medw2B5gUV6V2fmWYANc2yVcAohuyHJdRhI8aMbX9VI
         Y5EL3OGM76ETPozjHF34bkjLUtsmSw3aBpgrzmRHCU4afKMqdBaYeLyN8TAhfj/ff+lQ
         IH0VoUhRQhayoTqcgMxj/076n/fV9S2wWnMCdjg1bqhzRlQ/d6PhtNBAKmsQBQJumeTw
         Fpeg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="T6RhtEr/";
       spf=pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com. [216.205.24.74])
        by gmr-mx.google.com with ESMTPS id t191si881970vkt.0.2020.03.30.06.52.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 30 Mar 2020 06:52:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) client-ip=216.205.24.74;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="T6RhtEr/";
       spf=pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1585576323;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=eKksIWMKGyhBxmOyEKEsU58pSh/Wz0oPF6i8BW6IapA=;
	b=T6RhtEr/whVBqb2EH4Q/LOtA1tu5mTG+oWIzawlGE+x/7p029B7mvsCLXSkwOoaQ8Epp1H
	DZs0MHy4EV//Nd/sCxrIoOA+oQl2encAdvkgqJUbLIgzjG+4XK9756/Ebpy3Rv3VQW7Rlc
	8GCJ3tVBafiWlpTdFzHSPKvaybxYxhI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-353-cxWyhzK9NJu0cjeIp10t3A-1; Mon, 30 Mar 2020 09:51:59 -0400
X-MC-Unique: cxWyhzK9NJu0cjeIp10t3A-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 884808010F6;
	Mon, 30 Mar 2020 13:51:58 +0000 (UTC)
Received: from elisabeth (unknown [10.36.110.63])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1200160C85;
	Mon, 30 Mar 2020 13:51:56 +0000 (UTC)
Date: Mon, 30 Mar 2020 15:51:51 +0200
From: Stefano Brivio <sbrivio@redhat.com>
To: Sam Muhammed <jane.pnx9@gmail.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 2/7] Staging: kpc2000: kpc_dma:
 Use sizeof(*var) in kzalloc().
Message-ID: <20200330155151.590dbd98@elisabeth>
In-Reply-To: <a8827e9f7e29b2db976a3f77b0f9f2e5d0da55f9.camel@gmail.com>
References: <cover.1585143581.git.jane.pnx9@gmail.com>
	<bbb3adbd20ae89db6a0d3360bc09d22eed778e86.1585143581.git.jane.pnx9@gmail.com>
	<20200330030433.4b924c5e@elisabeth>
	<1e4819bb3fc9377f19755625518b0cafabaed509.camel@gmail.com>
	<20200330145605.285d8877@elisabeth>
	<a8827e9f7e29b2db976a3f77b0f9f2e5d0da55f9.camel@gmail.com>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Mon, 30 Mar 2020 09:10:27 -0400
Sam Muhammed <jane.pnx9@gmail.com> wrote:

> On Mon, 2020-03-30 at 14:56 +0200, Stefano Brivio wrote:
> > On Mon, 30 Mar 2020 06:45:00 -0400
> > Sam Muhammed <jane.pnx9@gmail.com> wrote:
> >   
> > > On Mon, 2020-03-30 at 03:04 +0200, Stefano Brivio wrote:  
> > > > On Wed, 25 Mar 2020 10:26:37 -0400
> > > > Sam Muhammed <jane.pnx9@gmail.com> wrote:
> > > >     
> > > > > kzalloc(sizeof(*var), ...) was the format been used
> > > > > across the driver, which is the preferred format,
> > > > > but missed two instances, correct them to match the
> > > > > coding standards.
> > > > > 
> > > > > Checkpatch.pl CHECK: Prefer kzalloc(sizeof(*var)...)
> > > > > over kzalloc(sizeof(struct var)...)
> > > > > 
> > > > > Signed-off-by: Sam Muhammed <jane.pnx9@gmail.com>
> > > > > ---
> > > > > Changes in v2:
> > > > > - Update the log message to be more descriptive.    
> > > > 
> > > > It would be nicer to refer here to the person who suggested the change,
> > > > if it's not you directly noticing the problem (you can just mention
> > > > them by name, name and surname, or explicitly say "suggested by ...",
> > > > "requested by ...", etc). There are many recent examples on this list.
> > > >     
> > > Ohh, Sorry for that, i thought this tag is more of a code related
> > > change. since being new to the process, most of the time log messages
> > > and subject lines will be commented on to follow the conventions. which
> > > i thought is a different case than changes in the patch itself.  
> > 
> > Wait, I wasn't talking about tags here:
> > 
> > - use a Suggested-by: tag if the patch itself was suggested by somebody
> >   (which is not the case for this patch)
> > 
> > - v2 was prompted by comments you received for v1 by Julia, so it would
> >   be appropriate to state, in the history of log changes:
> > 	- Update the log message to be more descriptive (suggested by
> > 	  Julia Lawall)
> >   
> 
> My bad, yes.
> 
> Now is there a way to add this and your Reviewed-by tag over the series
> since the changes have already been made?

Ah, no. "This" doesn't end up in git anyway, so there's no need and no
way to add it. My Reviewed-by: tag was just functional to get this
merged, but I didn't notice it was merged already. Never mind then.

-- 
Stefano


