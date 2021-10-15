X-GM-THRID: 7019053574676021248
X-Received: by 2002:a5d:64e2:: with SMTP id g2mr12706325wri.253.1634288049507;
        Fri, 15 Oct 2021 01:54:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:600c:3b9a:: with SMTP id n26ls3977219wms.1.gmail; Fri,
 15 Oct 2021 01:54:08 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJypmaHmyzyop/1U6tFMt3vcOSkuZdEQcfcTUjkxU9fQtIJKPeIgzmxTuWChw4saoMVvfoxY
X-Received: by 2002:a1c:e906:: with SMTP id q6mr25221516wmc.126.1634288047927;
        Fri, 15 Oct 2021 01:54:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634288047; cv=none;
        d=google.com; s=arc-20160816;
        b=BAs9TcB4YVC5+RPs++/JNTU9e2wjonlCyxKgW4E41XDjo1om66aPL1kaLyJ/m6iWi1
         wm669FWnA23KAhXyancyWVMRCY5NmlEQPKYku8QbXILQFe37ThZrSqGJfuUNYJbAr/OL
         GkCJWT4gBjLPQWoXL2sgeKvmirmE/+5ZOjr/4DBBPxbpsmoBorUZWqPMzSw3P4G0cBUK
         98KjvVEhJPZXpq3BRAhXZWvzD+KlHBHVzAN4xIpqVIWxs6TuDsQrkMDEEsW9D+vbCU9b
         UMaBhNROAXNlYU/nwyKPwF2SDFwYlQVehoPqtmvXc/HKEJUSJMH9rNQwOrxt1ijkXjce
         cdbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:message-id:date:to:cc:from:subject:references
         :in-reply-to:content-transfer-encoding:mime-version:dkim-signature;
        bh=65AnN7seWYnn8G488ORsonj1U03qrc5tviv5J3rBW5M=;
        b=dTnDpRFxXyz7vonN99zAqrZfDWQcOOjETXxCqEdRaVpHowHfN+EtXA0SH/zqgMVO7l
         TLBWC34c7WPlLvpiCvRyeFzntEPuMLLNq9qec6sHYzZQwFu+efSKXJCa4xuetrrsjxTB
         IFkP6DEHNic52+NhmXg2gSDpZu7HN+RsZxMVtSEOTEo9mOZ3R6059cy63FD9fg5zHQwc
         Rd7kVTg9Ou4WlxxRpeCObFCJgtU2V/0X9seHGxJo0n6xLBZ0M9/YLX0FSNfm+XFdDrjQ
         JVfga/X+4xAjZ9dRF166jJFL275tcWAcGOlVvh5j0EX0sutrxsNTOgTGsUjNlroU4Slg
         4UAw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass (test mode) header.i=@ideasonboard.com header.s=mail header.b="r2xHa+y/";
       spf=pass (google.com: domain of kieran.bingham@ideasonboard.com designates 213.167.242.64 as permitted sender) smtp.mailfrom=kieran.bingham@ideasonboard.com
Return-Path: <kieran.bingham@ideasonboard.com>
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com. [213.167.242.64])
        by gmr-mx.google.com with ESMTPS id a11si259442wrh.5.2021.10.15.01.54.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Oct 2021 01:54:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of kieran.bingham@ideasonboard.com designates 213.167.242.64 as permitted sender) client-ip=213.167.242.64;
Authentication-Results: gmr-mx.google.com;
       dkim=pass (test mode) header.i=@ideasonboard.com header.s=mail header.b="r2xHa+y/";
       spf=pass (google.com: domain of kieran.bingham@ideasonboard.com designates 213.167.242.64 as permitted sender) smtp.mailfrom=kieran.bingham@ideasonboard.com
Received: from pendragon.ideasonboard.com (cpc89244-aztw30-2-0-cust3082.18-1.cable.virginm.net [86.31.172.11])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 526762E3;
	Fri, 15 Oct 2021 10:54:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1634288047;
	bh=mcekxGzN9HmK52MiYToVFMThi6o+ge4I8GdL5taem50=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=r2xHa+y/Z1DThazOHYjuc7OzrZ6t7sItKgVHGDjiY4RkM4Sr57xC6G+qIVN53N4gL
	 8PJ5jK1DEhAsrVzdVc1WmPB1wGHE9YUVf0kO0pB6C+h0m+qA3PGRn4TuaCwKFSudLO
	 U5CxjAelXeQG+AHldy2p/gO8PMQ4DI3R7qh75wr0=
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20211015022659.GB428161@alison-desk>
References: <20211014223007.596789-1-kushalkothari285@gmail.com> <20211015022659.GB428161@alison-desk>
Subject: Re: [Outreachy kernel] [PATCH] staging : media : atomisp : input_system.c : fixes the error of control reaches end of non-void function [-Werror=return-type]
From: Kieran Bingham <kieran.bingham@ideasonboard.com>
Cc: mike.rapoport@gmail.com, outreachy-kernel@googlegroups.com, mchehab@kernel.org, sakari.ailus@linux.intel.com, gregkh@linuxfoundation.org, kushalkothari2850@gmail.com
To: Alison Schofield <alison.schofield@intel.com>, Kushal Kothari <kushalkothari285@gmail.com>
Date: Fri, 15 Oct 2021 09:54:05 +0100
Message-ID: <163428804505.4050769.15896780268300373948@Monstersaurus>
User-Agent: alot/0.9.1

Hi Kushal,

Quoting Alison Schofield (2021-10-15 03:26:59)
> On Fri, Oct 15, 2021 at 04:00:09AM +0530, Kushal Kothari wrote:
> > The compiler cannot tell from that code if the function will ever reach
> > the end and still return something. To make that clear, replaced the la=
st
> > line with just "else" which fixes the error of "error: control reaches =
end of non-void function [-Werror=3Dreturn-type]"
> >=20
> > Signed-off-by: Kushal Kothari <kushalkothari285@gmail.com>
>=20
> Hi Kushal,
>=20
> Thanks for the patch and welcome to Outreachy.
>=20
> Unfortunately we're not accepting patches in this driver this round.
> Any other driver within media is OK. See the google-groups welcome
> message and the email history since October 8th for more info.
> I also updated the first patch tutorial, because you showed me that
> this restriction was too easy to miss.
>=20
> Anyway, just so your patch isn't for nothing, I'll give you feedback
> on the commit message. You'll want to write that in the imperative mode,
> So, for one like this, maybe something like:
>=20
> 'remove conditional from return in non-void function'
>=20
> Alison
>=20
>=20
> > ---
> >  .../media/atomisp/pci/hive_isp_css_common/host/input_system.c    | 1 +
> >  1 file changed, 1 insertion(+)
> >=20
> > diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host=
/input_system.c b/drivers/staging/media/atomisp/pci/hive_isp_css_common/hos=
t/input_system.c
> > index 8e085dda0c18..91bad8f34efc 100644
> > --- a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/input_=
system.c
> > +++ b/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/input_=
system.c
> > @@ -1587,6 +1587,7 @@ static input_system_err_t input_system_configure_=
channel_sensor(
> >       status =3D set_source_type(&config.source_type, channel.source_ty=
pe,
> >                                &config.source_type_flags);
> >       if (status !=3D INPUT_SYSTEM_ERR_NO_ERROR) return status;
> > +     else return status;

I see the mention that outreachy are not taking patches to this driver
currently, but I saw this and thought it might still be helpful to
highlight that you should look more deeply at this change, and try to
understand why it would not be possible to accept it. Given that a fix
wouldn't be accepted through outreachy, it may not be worth submitting a
new version but please make sure you examine why this would not be
correct:


You are introducing a line which would essentially cut out the rest of
the function, as the compiler would alway return at this point with your
change.
Before your change:

	If A
		return status;

	... many more lines of code ...

After your change:

	If A
		return status;
	else
		return status;

	... many more lines of now unreachable code ...
	=09
Good luck on your outreachy journey.

--
Kieran


> > =20
> >       // Check for conflicts on source (implicitly on multicast, captur=
e unit and input buffer).
> > =20
> > --=20
> > 2.25.1
> >=20
> > --=20
> > You received this message because you are subscribed to the Google Grou=
ps "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send =
an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/ms=
gid/outreachy-kernel/20211014223007.596789-1-kushalkothari285%40gmail.com.
>=20
> --=20
> You received this message because you are subscribed to the Google Groups=
 "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgi=
d/outreachy-kernel/20211015022659.GB428161%40alison-desk.

