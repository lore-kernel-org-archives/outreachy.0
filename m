X-GM-THRID: 6802769340290564096
X-Received: by 2002:aca:5014:: with SMTP id e20mr1560670oib.34.1583924883107;
        Wed, 11 Mar 2020 04:08:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:7a85:: with SMTP id l5ls427561otn.0.gmail; Wed, 11 Mar
 2020 04:08:01 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtLWjY0pJEO4HrswvEUfrzMIdRIyiJa6aiFRlMMd94nuxDv7WxWmaNx9KfNk8YysxeRlg55
X-Received: by 2002:a9d:75d1:: with SMTP id c17mr1975290otl.22.1583924881765;
        Wed, 11 Mar 2020 04:08:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583924881; cv=none;
        d=google.com; s=arc-20160816;
        b=fOKkT/xt+XfhXSbD0NtuI23DyjEWGMH6SlbQ2x00c1M9k2MziTGtTvMZunR1XLL6ym
         +0WRDDi4/wKxeHeAncctPnFRaVQ8dbVzVOtwhCqZBe2X7YYT36K2kuoTwf105Oaj22Ml
         /OSK71BPi5vd0IXWEJZ4QpgSk4kYsTNDdsAYrHrLt5XD7si6lLj1en44so2wuVLaTA/n
         IOiqifoBON0R9mUbmVUfM06EjLN1m1/v59E+6tK1vj7Q2QB8AKqKVau3qDkYrXVzVI9d
         V3hcWv1xoo94eSjw2FOPo9m6EwhnMxK0o5GmetgsqLrEz5ibbUip6V7sLMx4u533Yufk
         4vLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=bkt+BfQp1Sq1X0xpjrBVsRauEINlGGnr9U22Yj2kF4w=;
        b=Zecj7lId/T0SvMotgOllhQPyNTaKeZNpT3tObl93mdlWoJU9QqkYFDVmsonROTZenE
         PADVMfWGKI92d7vpX1/siysWYV3HyCu1D+1Qa1DwDfZKzAlT1nKY2+bYNwGeCqT+BVZI
         hq+jQPFnhvGGs4VxCkywTyS3owdMWX1w2f+fJAhQaklF+R6oVmk9r1K489/stDaVG/uT
         5d7ZApQ6SiqwpDlcRbHFguCPHs01CL8sNQ9VEth+tUTUPSsmpIvb6i0TeJu6C6XAkGRn
         /dgIVkkhaeOIuQcPTtdp5XeQczRf1e2J5e6kpLa38/3K2RfYQhfwSu9F866j1LULS5oi
         Xnsg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=gfsw5SKE;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by gmr-mx.google.com with ESMTPS id m132si91314oig.3.2020.03.11.04.08.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Mar 2020 04:08:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.120 as permitted sender) client-ip=207.211.31.120;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=gfsw5SKE;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1583924880;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=bkt+BfQp1Sq1X0xpjrBVsRauEINlGGnr9U22Yj2kF4w=;
	b=gfsw5SKE0VXHZNhlXMOkGA4g7IxFmtmDLCxQLDg7JILJvTM1EAe6YqPM4xmBy7ZpRnWAcw
	koEvyv4pbXB2gqf8DkscjhkV8NvI9g8ptOqa25f47+RQvBFSKwdO1cOrsFiJc3DDbF2Fu8
	MXNgKv9EVGSzqDDwDIVyZt6evrNA9SI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-231-W_G2UJIWMLGf273j-F5HdQ-1; Wed, 11 Mar 2020 07:07:59 -0400
X-MC-Unique: W_G2UJIWMLGf273j-F5HdQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2135C800D48;
	Wed, 11 Mar 2020 11:07:58 +0000 (UTC)
Received: from elisabeth (ovpn-200-42.brq.redhat.com [10.40.200.42])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9852060BF4;
	Wed, 11 Mar 2020 11:07:56 +0000 (UTC)
Date: Wed, 11 Mar 2020 12:07:51 +0100
From: Stefano Brivio <sbrivio@redhat.com>
To: Soumyajit Deb <debsoumyajit100@gmail.com>
Cc: Julia Lawall <julia.lawall@inria.fr>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Question regarding installation of kernel
Message-ID: <20200311120751.2fdfb9b5@elisabeth>
In-Reply-To: <alpine.DEB.2.21.2003110724100.2439@hadrien>
References: <CAMS7mKA1m5JEVhNB+fwytLF3JgFYb-8C9xD9DjOmXm52omC4NQ@mail.gmail.com>
	<alpine.DEB.2.21.2003110724100.2439@hadrien>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, 11 Mar 2020 07:25:13 +0100 (CET)
Julia Lawall <julia.lawall@inria.fr> wrote:

> On Wed, 11 Mar 2020, Soumyajit Deb wrote:
>=20
> > Hii
> > This is my first mail to the outreachy-kernel list. I am Soumyajit Deb.
> > I am currently following the first patch tutorial and accordingly I hav=
e
> > downloaded the Kernel source tree.
> > =C2=A0I have doubt whether I have to build the kernel source code I hav=
e
> > downloaded as I am using ubuntu already? =20
>=20
> You should start with modifying a driver in the kernel you downloaded and
> checking that it is executed.  For that you will need to compile and
> install the kernel you downloaded.

Also note that, while this is not mentioned in the tutorial (I plan to
add some notes when I have a bit more time), it might be a good idea to
set up a Linux virtual machine (running in your existing Linux system)
so that you can test any non-trivial changes by installing (and also
building, if you wish) your kernel there.

This way, you'll need to reboot your virtual machine instead of the
system you're working on, especially in case it's your primary/only
system or if you're using it to communicate, without having the concern
that your new kernel might not boot up.

--=20
Stefano


