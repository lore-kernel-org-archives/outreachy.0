X-GM-THRID: 6609263444479705088
X-Received: by 2002:a9d:490e:: with SMTP id e14mr15579968otf.43.1539178045284;
        Wed, 10 Oct 2018 06:27:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:2947:: with SMTP id d65ls3807373otb.13.gmail; Wed, 10
 Oct 2018 06:27:24 -0700 (PDT)
X-Google-Smtp-Source: ACcGV637nvAI0HZqNSLNPDpczfiCr5K9034IT4eGv+Uv9gx5mtHwh9T7HHP6zehSyGPf3OY/ct7Z
X-Received: by 2002:a9d:4338:: with SMTP id s53mr21414632ote.4.1539178044689;
        Wed, 10 Oct 2018 06:27:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1539178044; cv=none;
        d=google.com; s=arc-20160816;
        b=tpBb2b5zw6sEBIXcptaJVU26ThyZgXeEiOZBufcdFOxiD210QFyZAApErJhtYRXknU
         gguBWVpZuvghSQRw3hLatTS1DMlLdAjPA7+8jDxN+VK1ldH+Pq6Eymj9X3tkCKkMwoVV
         9ll8e6Zt+PO0deysfUg0PxHj5QkBEcA+TyK5xTL/SUbvUnXN+Zz7HdickmkS+Fsx/Ipa
         RfZZanpoPSNquiC6CaGLixVCaDA8fXiuK6pKnw1uEiTRgNrPz+PujMJyBULJjw6EWGPK
         R7L4JCeEEckeaKZMVwEzR602D4YPJE/7sGaxrSDcjR4U43HlZx7ITNGF+blR5Y7iF+IL
         6BpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature:dkim-signature;
        bh=3dltdC6FGf383qEcgVfTSldU5DcuSkgQ7XPmJaWrX7E=;
        b=LLyG12nhWGimZkPgKiMHN9NqKjArY9zn24n77dRti9AdHxnnpVd5sSrqwpdRHukSjk
         P21yXSdfFhMkiAxyjhYVdZovXHhegszXU938Q8eoCf4m+Kfx6n+WeWjxRBWj31DjM2N1
         XkNseW1cowUCXz+DmMhH7ILek+UvVUMuidPwJRqODUwOzRzct09QE7ZyiBuRpfwEpQsF
         m5Wi6lUU/rUyEcnt0nfNjtwvUbZecWzCnv1VNIT0lJwD7TM1jKP545Gtf6U2Y5HOx4pb
         beeZyPQ3eCppC3mnO+vrI7UdFNPoVx1ZILOScaZ78AnUnsl27YWdz95oHcyKfpEtHAG0
         fsvA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm2 header.b=WFw+Khda;
       dkim=pass header.i=@messagingengine.com header.s=fm1 header.b=Uovy9yLx;
       spf=pass (google.com: domain of greg@kroah.com designates 64.147.123.24 as permitted sender) smtp.mailfrom=greg@kroah.com
Return-Path: <greg@kroah.com>
Received: from wout1-smtp.messagingengine.com (wout1-smtp.messagingengine.com. [64.147.123.24])
        by gmr-mx.google.com with ESMTPS id u207-v6si999021oie.0.2018.10.10.06.27.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Oct 2018 06:27:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of greg@kroah.com designates 64.147.123.24 as permitted sender) client-ip=64.147.123.24;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm2 header.b=WFw+Khda;
       dkim=pass header.i=@messagingengine.com header.s=fm1 header.b=Uovy9yLx;
       spf=pass (google.com: domain of greg@kroah.com designates 64.147.123.24 as permitted sender) smtp.mailfrom=greg@kroah.com
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
	by mailout.west.internal (Postfix) with ESMTP id ADC75C3C;
	Wed, 10 Oct 2018 09:27:22 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute6.internal (MEProxy); Wed, 10 Oct 2018 09:27:23 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
	date:from:to:cc:subject:message-id:references:mime-version
	:content-type:in-reply-to; s=fm2; bh=3dltdC6FGf383qEcgVfTSldU5Dc
	uSkgQ7XPmJaWrX7E=; b=WFw+KhdaPWzRuxT5IWmTEpqgTU176QzixrIY++BtB5J
	YcpYivyLdmYPrCe5W65yCtmX+/n0X6GAIi1vejYG1IoTB4CjPAis6Ol7g+BAaWUp
	PX2xeHhLGbGQh+NT7ZQ8eln+lnk1K54SDAenlRK6VYvg1dlQsD1kEDG4VPw+oPVd
	BxDjNLdLt5T/B6M9l8qpD4OiVy9C8CTz8rh1QWLLlESu0zGaS/Pf5hPSAC6K5Lh1
	3O4pu0j2A6sSjrVd9cefTTiIBXSgqJoAR0sWm/eIvLYH6J82CVnW0WjitV3TS/Gw
	9z0YgvaDzS3hrXRvEKfiw8XkkY847LA4mSYRL3DH10w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=3dltdC
	6FGf383qEcgVfTSldU5DcuSkgQ7XPmJaWrX7E=; b=Uovy9yLxA79PvPlcI52aJ8
	UoviwN7gocQScXzhXQ6cIKEsUOCx7qVA0SKid543MjNFWDhgRR6mOIZQdx36ekWM
	aRMdNKDlVx+0zBchfAB2pG2+ADOATmwpq7kMhtyRJ/BRmRSBlVZk2fmJzVsXBddZ
	stoJDSJuufaV1bp09Hqwlci2QYo7M2BxAZ7Ko0XHPZznUjTLWyfVgjn1YD6qOuZM
	u/S2551s0IiwQXLuBi6GXetMkV72riZ5vQPxrmZ3McVLkUtWtm+YW3zVywsMythN
	qCL8XXA7mG45eeLuIppWUn9EmObXjvkwjbTdqGvMnMSYgy6C7N2XCfs51pVlXnaA
	==
X-ME-Sender: <xms:Of69W3hrI26bf1KXj855HIvfcf9cYL_SCX_o2RanJSpQzjJsbqpSVQ>
X-ME-Proxy: <xmx:Of69WyOgAtLTkqn2GjNvoRrp8VbXzyKcUFMk7bhU5hP2HtADatTpTA>
    <xmx:Of69WyMm4nY4DvyzpBGE0MBOIl9Uvqu-PJ41HgiofvpdMWivY9Nncg>
    <xmx:Ov69W7BTm_Wnb7VJGad0UrJ5zGTMNPhrQHy3wMSvVJ8f-b_mcmGz9g>
    <xmx:Ov69W8IaEDe4PpmmJdUuV5n2WXjl6U3aYp2T75tHqFInXzJH1wZeMA>
    <xmx:Ov69W6qbIpqXzs-sxqN_3HEsjkIQ6CtzAxScoh_HLqEsk3qdr4fcOQ>
    <xmx:Ov69W8NMDSkgs8A1_YgEilneoSeBZpgBIRQuZ4ibUL8xtlddB1zhLQ>
Received: from localhost (ip-213-127-77-176.ip.prioritytelecom.net [213.127.77.176])
	by mail.messagingengine.com (Postfix) with ESMTPA id 9CA2EE4428;
	Wed, 10 Oct 2018 09:27:21 -0400 (EDT)
Date: Wed, 10 Oct 2018 15:27:20 +0200
From: Greg KH <greg@kroah.com>
To: Mamta Shukla <mamtashukla555@gmail.com>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.com,
	Rob Springer <rspringer@google.com>,
	Todd Poynor <toddpoynor@google.com>, benchan@chromium.org
Subject: Re: [PATCH] staging: gasket: Replace symbolic permissions with octal
 permissions
Message-ID: <20181010132720.GA785@kroah.com>
References: <20181006143316.GA23864@armorer>
 <20181009125546.GA2700@kroah.com>
 <CAMNCNOUWh4XCOxJ_Ovy2CmEs=zT8PQzGr_8U4H-0uAqfifhzgQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAMNCNOUWh4XCOxJ_Ovy2CmEs=zT8PQzGr_8U4H-0uAqfifhzgQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)

On Wed, Oct 10, 2018 at 06:40:54PM +0530, Mamta Shukla wrote:
> On Tue, Oct 9, 2018 at 6:25 PM Greg KH <greg@kroah.com> wrote:
> 
> > On Sat, Oct 06, 2018 at 08:03:16PM +0530, Mamta Shukla wrote:
> > > Use octal permissions in place of symbolic permissions to fix checkpatch
> > > warning.
> > > WARNING: Symbolic permissions 'S_IRUGO' are not preferred. Consider
> > > using octal permissions '0444'.
> > >
> > > Signed-off-by: Mamta Shukla <mamtashukla555@gmail.com>
> > > ---
> > >  drivers/staging/gasket/gasket_sysfs.h | 4 ++--
> > >  1 file changed, 2 insertions(+), 2 deletions(-)
> > >
> > > diff --git a/drivers/staging/gasket/gasket_sysfs.h
> > b/drivers/staging/gasket/gasket_sysfs.h
> > > index f32eaf8..8b563d2 100644
> > > --- a/drivers/staging/gasket/gasket_sysfs.h
> > > +++ b/drivers/staging/gasket/gasket_sysfs.h
> > > @@ -40,7 +40,7 @@
> > >   */
> > >  #define GASKET_END_OF_ATTR_ARRAY
> >        \
> > >       {
> >     \
> > > -             .attr = __ATTR(GASKET_ARRAY_END_TOKEN, S_IRUGO, NULL,
> > NULL),   \
> > > +             .attr = __ATTR(GASKET_ARRAY_END_TOKEN, 0444, NULL, NULL),
> >  \
> >
> > >This is very odd, why is this define even needed?
> >
> 
> This  gasket_sysfs.h and gasket_sysfs.c utility allows gasket driver
> framework to maintain their own set of sysfs entries. This was for
> terminating
> gasket_sysfs_attr array.
> Is this understanding correct?

That seems correct.  But the code should just be using a NULL attribute
instead, no other subsystem has stuff like this.  So the code should be
changed to not need this.  And really, the permission here is just
pointless anyway...

> > >               .data.attr_type = 0,
> >      \
> > >       }
> > >
> > > @@ -75,7 +75,7 @@ struct gasket_sysfs_attribute {
> > >
> > >  #define GASKET_SYSFS_RO(_name, _show_function, _attr_type)
> >        \
> > >       {
> >     \
> > > -             .attr = __ATTR(_name, S_IRUGO, _show_function, NULL),
> >     \
> > > +             .attr = __ATTR(_name, 0444, _show_function, NULL),
> >   \
> >
> > >This should use __ATTR_RO() instead, right?
> >
> 
> Yes, this should be of Read only type attribute.This driver deals with
> 'raw' sysfs attributes.
> Can I write a different patch for this?

Yes, please just redo this patch and use __ATTR_RO() instead of this
change.

thanks,

greg k-h

