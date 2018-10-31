X-GM-THRID: 6615609378154217472
X-Received: by 2002:a62:11cb:: with SMTP id 72-v6mr1421182pfr.127.1540998358233;
        Wed, 31 Oct 2018 08:05:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a65:6103:: with SMTP id z3-v6ls4439954pgu.15.gmail; Wed, 31
 Oct 2018 08:05:57 -0700 (PDT)
X-Google-Smtp-Source: AJdET5ceoTAHcSJjU8CcYrmjGUI2DLHOyZwAUhII8YXqqgewWg6IpU2fuIqhkRSEvXqFrBWN3ypE
X-Received: by 2002:a63:1004:: with SMTP id f4-v6mr1406396pgl.147.1540998357033;
        Wed, 31 Oct 2018 08:05:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540998357; cv=none;
        d=google.com; s=arc-20160816;
        b=ir4ioEWyy6cJVaycrSFwTkc4t9irgfwzCBd4jFP+TB8BNVpyxJArtDffnqmyeJbHyb
         cGBJ6T5EDeR+q6FpBoL75HHuWxJcPoYPdRfELl6r+OxhrZFd9jxHGBv3CCIXV48rSG4o
         lnHTyq9v6hfVzcldM47hWj2T5FtzkTM3Jmf7PkEd9G21VtOnm09YRvaXb17u+93MC+W3
         +zeAqQ+YkJC5psw1g22a4uDyL/RJa3MShRLBVk9214nzlPRBjAm7RZF/e4t7/uWKM/Cj
         CwlI3lFFcF+2FjB/9d/qKdb74LHRtNDRiYBYQk+diwPOXm5Lw1BopGUxD8MXeTlPeBkr
         7Peg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=yoGNBfCO1JwO7VB9ITTONXH9UmwYxniTYC7o6VC8y1Y=;
        b=J4/NmHVbv61CULTv6T3U7aQC1O2yoDLVwbeS3Nu21vJFf8mJ8i9Mtr97YQsuCC46B+
         ksdxoKXr6RaowQDsYcAWz9Zn6MszLauDFkz26EzjOJsIcUfoXMcU6nzxPaC4a0X/t+EO
         YRIjUPdli/CSo830lXk2qYcrADlvBMIltfEaUShUJGB24gurAswRARmvxUzdNCe03ROv
         nW9mE2yqv6bv1P0QzPwwJPgOObRa76Wt2MMInMQ5asWu8KabgqFuOLB1cHoR+zDxJR56
         ZbY8K1/FMR4K2H7zw5DIkRQOCS4sm1bbrr4S2TsTywNEo71S8866SHdxFKV8dGbyUU3a
         t8+g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=avEiB4Kj;
       spf=pass (google.com: domain of shayenneluzmoura@gmail.com designates 2607:f8b0:4864:20::72b as permitted sender) smtp.mailfrom=shayenneluzmoura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <shayenneluzmoura@gmail.com>
Received: from mail-qk1-x72b.google.com (mail-qk1-x72b.google.com. [2607:f8b0:4864:20::72b])
        by gmr-mx.google.com with ESMTPS id s138-v6si1479943pgs.1.2018.10.31.08.05.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 31 Oct 2018 08:05:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of shayenneluzmoura@gmail.com designates 2607:f8b0:4864:20::72b as permitted sender) client-ip=2607:f8b0:4864:20::72b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=avEiB4Kj;
       spf=pass (google.com: domain of shayenneluzmoura@gmail.com designates 2607:f8b0:4864:20::72b as permitted sender) smtp.mailfrom=shayenneluzmoura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qk1-x72b.google.com with SMTP id u68so5981557qkg.9
        for <outreachy-kernel@googlegroups.com>; Wed, 31 Oct 2018 08:05:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=yoGNBfCO1JwO7VB9ITTONXH9UmwYxniTYC7o6VC8y1Y=;
        b=avEiB4KjNCqaw3g9I9DuDiA8b7OnwUPZaSqIoi/LbHGM6z3IK2e7yLtSmYqbxZXdhl
         xEFninH32KXp5GEG+Z4275na5OzpH6lHPsg5NCig2hl+0qD3zwCv6R9KpCtsefDk7Et+
         OCQJwPsh0QZCJ+mGnGIT1qOMOCAJCSHwclrQcO/znXR7N6AE0rtN9/ym21yGZ+/oDHAO
         wtuUK4U6CeZuMSrc+gPeD+RND/ZUPrxStv74tT1hsTKLnOD5UIg8qabwBVY4RDaLAJ9Z
         gffk0CikURe6HsgNa6aTpwnlEY3pc/7ikBeUm527zdXck0c6Xqoi+LcI/Tjj5yQt4NM8
         XXVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=yoGNBfCO1JwO7VB9ITTONXH9UmwYxniTYC7o6VC8y1Y=;
        b=LLqcjzgoohYOPn+993yukubGZCxhqKG9M0YOrTur0+0jSm7twlUk6xVKiYkuFOM4Rx
         7T+y3GE8tRLic+asAZAuNKfzBPaadg6BGOXbnOY9TQw1S6LQP3A7hfn22pfFx7F6L0pT
         DxbnJhqHdgm+8ulZaCVVbo8E0SSUn6mspaZ6f93q91XEZAQwQlqjBZH1P7VWMQPJLkO2
         j6gz24hzKtWZ0x1i1FPB+J7g5RjmCYraY/Uvagy5LxWB6aH7C5zYUn5gRwVyB8VPK4IA
         d4QNjVHmLb6foHnJqAlgL0vdKn/OvK/kGtrNs2qgoP9dKO/55xyXbiP4fUeywLMtrm2J
         JhsA==
X-Gm-Message-State: AGRZ1gKN59AaFB+et6GHZLhvYDqWgJTobNTc9tbhfvFSkCMPRIcljGq8
	fOZqbvqAfnnH/rrO/zwPiaA=
X-Received: by 2002:a0c:93e2:: with SMTP id g31mr3034133qvg.194.1540998356558;
        Wed, 31 Oct 2018 08:05:56 -0700 (PDT)
Return-Path: <shayenneluzmoura@gmail.com>
Received: from smtp.gmail.com ([143.107.45.1])
        by smtp.gmail.com with ESMTPSA id 24-v6sm23000009qts.19.2018.10.31.08.05.54
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 31 Oct 2018 08:05:56 -0700 (PDT)
Date: Wed, 31 Oct 2018 12:05:51 -0300
From: Shayenne Moura <shayenneluzmoura@gmail.com>
To: Sasha Levin <sashal@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Hans de Goede <hdegoede@redhat.com>,
	Michael Thayer <michael.thayer@oracle.com>,
	devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com,
	linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] Re: [PATCH v2] staging: vboxvideo: Remove
 unnecessary parentheses
Message-ID: <20181031150551.kmkhqsvsy3arm4lc@smtp.gmail.com>
References: <20181023174304.iq4ra7vafwujr3ex@smtp.gmail.com>
 <20181030092539.GA10009@kroah.com>
 <20181030231757.24ooubt25oykmgkt@smtp.gmail.com>
 <20181030234826.GE194472@sasha-vm>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20181030234826.GE194472@sasha-vm>
User-Agent: NeoMutt/20171215

On 10/30, Sasha Levin wrote:
> On Tue, Oct 30, 2018 at 08:17:57PM -0300, Shayenne Moura wrote:
> > On 10/30, Greg Kroah-Hartman wrote:
> > > On Tue, Oct 23, 2018 at 02:43:04PM -0300, Shayenne da Luz Moura wrote:
> > > > Remove unneeded parentheses around the arguments of ||. This reduces
> > > > clutter and code behave in the same way.
> > > > Change suggested by checkpatch.pl.
> > > >
> > > > vbox_main.c:119: CHECK: Unnecessary parentheses around 'rects[i].x2 <
> > > > crtc->x'
> > > >
> > > > Signed-off-by: Shayenne da Luz Moura <shayenneluzmoura@gmail.com>
> > > > Reviewed-by: Hans de Goede <hdegoede@redhat.com>
> > > > ---
> > > > Changes in v2:
> > > >   - Make the commit message more clearer.
> > > 
> > > This patch does not apply to the latest kernel tree at all :(
> > > 
> > > Please fix up and resend.
> > > 
> > > thanks,
> > > 
> > > greg k-h
> > 
> > Hi Greg!
> > 
> > Sorry, I do not know what branch are expected to be used.
> > I used the drm-misc-next to create this patch and I could not
> > find any merge problem.
> > 
> > Could you please tell me the details?
> 
> Hi Shayenne,
> 
> There's an easy trick for this: the kernel tree has a script that can
> help you find both the relevant maintainers, and their development tree
> for each file in the kernel.
> 
> Simply run:
> 
> 	./scripts/get_maintainer.pl --scm -f [filename]
> 
> For example, in this case, you'd run:
> 
> 	$ ./scripts/get_maintainer.pl --scm -f drivers/staging/vboxvideo/vbox_main.c
> 	Greg Kroah-Hartman <gregkh@linuxfoundation.org> (supporter:STAGING SUBSYSTEM,commit_signer:10/10=100%)
> 	Hans de Goede <hdegoede@redhat.com> (commit_signer:7/10=70%,authored:6/10=60%,added_lines:31/37=84%,removed_lines:153/159=96%)
> 	Fabio Rafael da Rosa <fdr@pid42.net> (commit_signer:1/10=10%,authored:1/10=10%)
> 	Alexander Kapshuk <alexander.kapshuk@gmail.com> (commit_signer:1/10=10%,authored:1/10=10%)
> 	Nicholas Mc Guire <der.herr@hofr.at> (commit_signer:1/10=10%)
> 	Thomas Zimmermann <tzimmermann@suse.de> (authored:1/10=10%,added_lines:2/37=5%)
> 	Daniel Junho <djunho@gmail.com> (authored:1/10=10%,added_lines:2/37=5%)
> 	devel@driverdev.osuosl.org (open list:STAGING SUBSYSTEM)
> 	linux-kernel@vger.kernel.org (open list)
> 	git git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git
> 
> The list of people and mailing lists are the ones that should be the
> recipients of your patch, and the last line is the git tree on which the
> patch should be based on.
> 
> --
> Thanks,
> Sasha

Thanks Sasha!

It is a very nice tip! 

Best regards,
Shayenne

