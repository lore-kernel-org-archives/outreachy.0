X-GM-THRID: 6809557952024805376
X-Received: by 2002:a05:6830:1dfa:: with SMTP id b26mr9572484otj.13.1585590080703;
        Mon, 30 Mar 2020 10:41:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:ec0a:: with SMTP id k10ls7726394oih.8.gmail; Mon, 30 Mar
 2020 10:41:19 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvSbvOWbIEY+5b6J5dqm8+2pANgan3dh6qfdRPM8rqA4WHlCmHrbZmMkUXp7p645E6ZIrOS
X-Received: by 2002:aca:fd0d:: with SMTP id b13mr308529oii.179.1585590079520;
        Mon, 30 Mar 2020 10:41:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585590079; cv=none;
        d=google.com; s=arc-20160816;
        b=hkcOFo6o39WUpmFIgwcsDtYMvZTuMduSXZ0unHn5rLRm+OmdrHVbK2IhRTBRah1PLL
         +KXrLQk+tPtbGFyatYCK1MqWeFNDRWIkKFMPJajVgHCGyklHg3R4KKbv89G/1VPxyew2
         LfJK7e/lv1d0cmX0go6/LztpywgkW8K8Rcp6bdqQD8vCrOy2qpelwISn+YQkLA/Bvjqd
         M4TIcLZNH8omOkMJzpUhsi+5AKWLPHbjtzCL5vmq5A6pxxaUDcKrHrHvXaoBzT1JzMrR
         YBWo1AAzwMW6dVhOGdORlKqzhRbNluOZp126LbTIHRvB65Ggq1xf/D+aXs6tdaPiBJFX
         oSYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=YGHvH2P6nK7TQrcIUAsAOYU1x8zpv/Ba4jDsyhsFhTg=;
        b=Khx9FiAL4qRzSdmsI2Dsname56rysIra4XpEa3N2whPm/E6PtWfi9yCcig8zCUQ16C
         zCAvRSRzqB2veGfs5tdF6hLa/EVjJuTaR2aHe5e6UVjR2G1tRZ4dSv/mc600QYSkCIGK
         mFpum2NoERAi17dgXW3BjWN35WhITvk2RIpd5bA+LT2jXYl4jet81bpWn81nSn85adCP
         yt9RtXdnF0+aQwQVaOzA01uJBp030PlExIzudAJrr5cI/EowXYzzXBj/GFQORNH/iWKK
         23txtLGV56wV+BUe3REzr3j0+mOiJanMwJtMs5zjST1G00GynE6n5CPHJFlAF0muCFiq
         L9bg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=UCMpPqRR;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com. [216.205.24.74])
        by gmr-mx.google.com with ESMTPS id n5si17206otf.3.2020.03.30.10.41.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 30 Mar 2020 10:41:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) client-ip=216.205.24.74;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=UCMpPqRR;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1585590078;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=YGHvH2P6nK7TQrcIUAsAOYU1x8zpv/Ba4jDsyhsFhTg=;
	b=UCMpPqRRaesbakLTnE6tBzVCL0ueKS64hTODQLUyPe3MWiIJEVA83Al+grGnT9It4hEUQW
	a3bbHuolBy+hCWQ1c09OZH1rwTKlBaLmjpWYtHfER05s26XYO1kklJrRIZxE0rkvSXXIID
	ECT/H+WU/iMvRBjj1uiDs3yciMnMkNw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-109-vixzt7PyMZC7dnLS7w5LvQ-1; Mon, 30 Mar 2020 13:41:03 -0400
X-MC-Unique: vixzt7PyMZC7dnLS7w5LvQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2189B1B2C980;
	Mon, 30 Mar 2020 17:41:00 +0000 (UTC)
Received: from elisabeth (unknown [10.36.110.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E96E7CDBFF;
	Mon, 30 Mar 2020 17:40:54 +0000 (UTC)
Date: Mon, 30 Mar 2020 19:40:43 +0200
From: Stefano Brivio <sbrivio@redhat.com>
To: John Wyatt <jbwyatt4@gmail.com>
Cc: Julia Lawall <julia.lawall@inria.fr>, Soumyajit Deb
 <debsoumyajit100@gmail.com>, outreachy-kernel@googlegroups.com, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>, Payal Kshirsagar
 <payal.s.kshirsagar.98@gmail.com>, dri-devel@lists.freedesktop.org,
 linux-fbdev@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH] staging: fbtft: Replace udelay with
 preferred usleep_range
Message-ID: <20200330194043.56c79bb8@elisabeth>
In-Reply-To: <alpine.DEB.2.21.2003291235590.2990@hadrien>
References: <20200329092204.770405-1-jbwyatt4@gmail.com>
	<alpine.DEB.2.21.2003291127230.2990@hadrien>
	<2fccf96c3754e6319797a10856e438e023f734a7.camel@gmail.com>
	<alpine.DEB.2.21.2003291144460.2990@hadrien>
	<CAMS7mKBEhqFat8fWi=QiFwfLV9+skwi1hE-swg=XxU48zk=_tQ@mail.gmail.com>
	<alpine.DEB.2.21.2003291235590.2990@hadrien>
Organization: Red Hat
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11

On Sun, 29 Mar 2020 12:37:18 +0200 (CEST)
Julia Lawall <julia.lawall@inria.fr> wrote:

> On Sun, 29 Mar 2020, Soumyajit Deb wrote:
>=20
> > I had the same doubt the other day about the replacement of udelay() wi=
th
> > usleep_range(). The corresponding range for the single argument value of
> > udelay() is quite confusing as I couldn't decide the range.=C2=A0But as=
 much as I
> > noticed checkpatch.pl gives warning for replacing udelay() with
> > usleep_range() by checking the argument value of udelay(). In the
> > documentation, it is written udelay() should be used for a sleep time o=
f at
> > most 10 microseconds but between 10 microseconds and 20 milliseconds,
> > usleep_range() should be used.=C2=A0
> > I think the range is code specific and will depend on what range is
> > acceptable and doesn't break the code.
> > =C2=A0Please correct me if I am wrong. =20
>=20
> The range depends on the associated hardware.

John, by the way, here you could have checked the datasheet of this LCD
controller. It's a pair of those:
	https://www.sparkfun.com/datasheets/LCD/ks0108b.pdf

reset time is 1=C2=B5s minimum, which is the only actual constraint here.
The rise time should then be handled by power supply and reflected
with some appropriate usage of the regulator framework.

That 120ms delay, however, must be there for a reason, that is, most
likely to develop this quickly without exposing a proper model of the
power supplies to the driver.

So... in this case, with the datasheet alone, you won't go very far,
you would need the actual module (probably connected to a Raspberry Pi
to catch a typical usage). Still, it's usually worth a check. In any
case, most likely, as Andy suggested, this function can eventually be
dropped.

--=20
Stefano


