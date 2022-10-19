Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com [209.85.215.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A6CE187F
	for <outreachy@lists.linux.dev>; Wed, 19 Oct 2022 08:35:16 +0000 (UTC)
Received: by mail-pg1-f173.google.com with SMTP id 128so15638642pga.1
        for <outreachy@lists.linux.dev>; Wed, 19 Oct 2022 01:35:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=CGu10GvLiApsjG4l4tqtJG2lN9kazKANIAC1jUbd6vk=;
        b=fUgmMkAU3unspEXm+QFuzViGBzmAaV12XJ9MYc9AgCLnMIS+o0rDCCj2tSLAhd/q4i
         HPDTmerRHBv0njm0TRRvvYD/dn/bdLq0GJY9BDvbDXLFJmxFiahsqkmZ+Fu/4PeT1xie
         b90/eYxsCDRwOylxCpiSL2O/wPYmQM+zyWkZlIAcz+l4UW5OKUCseLTWlRthxOg3S0Xf
         vId74aOBjEl9cwhV4nj+XGWmqk0D3vAdxd646mY8WtygUh0ah6mBOaiIWUSvVGGYsY/r
         Lo+8Eyf+tq1a7VQwviTlb5/pqI1s1CnSS5UJBEUv0pkCSn/rWJeE1I3ZDpVJe2ugKyyj
         1Hbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CGu10GvLiApsjG4l4tqtJG2lN9kazKANIAC1jUbd6vk=;
        b=ZGLYF5XP72EzxtGKA1t3ChmwGbJs0Ab3fJkQMbdlnvg/loM9L37VRrUsgo039jnWJU
         onieEyjmeI5Y1BYKO0qh+4H9ywj5cAPdHPW9RSHNn/mEElWjeZbBk4+Qpzbx7qk2JuOX
         I4a5AeO75qpOsYbX6q1542CdQWsYZe7ZneYZdKfkzRHyYYNWIajXAY+90H3L8X5XI8vO
         W5Eei0fBp8XFNkLZsqGhZ4pXzzWOrKw/PIvTZr7vAjW6jJ4tgDVei1DbVEfr3wI5dmPZ
         SiCwK9a5MjYgdRjxaFssTnogAePinnwTqSCYXf/28JFJVB0DOLqLEnkqwXo3O1JfrBW1
         0RdA==
X-Gm-Message-State: ACrzQf2Pkch5rBX8byuSLtIxQZPYbV527kn7cgdU8hvPjY/bXNyts8Rh
	rcBR6cho3wQkzWMjBC3j95I=
X-Google-Smtp-Source: AMsMyM4BSitFOaDuRGiOufCbdnHw6JUe97OnSnMJcqDKDgcqbJ2IkLqd4uQ9KfgEU2aQNXfCMidozg==
X-Received: by 2002:a63:f47:0:b0:46a:e00c:24c7 with SMTP id 7-20020a630f47000000b0046ae00c24c7mr6376046pgp.239.1666168516016;
        Wed, 19 Oct 2022 01:35:16 -0700 (PDT)
Received: from marshmallow (192-184-163-51.fiber.dynamic.sonic.net. [192.184.163.51])
        by smtp.gmail.com with ESMTPSA id d13-20020aa797ad000000b00553d573222fsm10752226pfq.199.2022.10.19.01.35.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Oct 2022 01:35:15 -0700 (PDT)
Date: Wed, 19 Oct 2022 01:35:13 -0700
From: Emily Peri <eperi1024@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: outreachy@lists.linux.dev
Subject: Re: [PATCH] staging: rts5208: Move open parenthesis to next line
Message-ID: <Y0+2wU60C/a9Sd/s@marshmallow>
References: <Y0+vw2SZ74AoUPIV@marshmallow>
 <b5834eb5-4d4c-2e89-5814-64cf881636f5@inria.fr>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <b5834eb5-4d4c-2e89-5814-64cf881636f5@inria.fr>

On Wed, Oct 19, 2022 at 10:16:28AM +0200, Julia Lawall wrote:
> 
> 
> On Wed, 19 Oct 2022, Emily Peri wrote:
> 
> > Changed breakpoint for long line in sd.c to comply with checkpatch
> > style warning that lines should not end with '('.
> 
> I think that someone else already did this?  Or at least something very
> similar.  Check the list archives.
Yep, you're right, its the patch "merge unnecessary split lines". Back
to square one...
> Also, the patch should also go to all of the maintainers of the code.  The
> first patch tutorial should show you how to use get_maintainers.pl to get
> the list of recipients.
Okay, got it!
> 
> julia
> 
> >
> > Signed-off-by: Emily Peri <eperi1024@gmail.com>
> > ---
> >  drivers/staging/rts5208/sd.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/staging/rts5208/sd.c b/drivers/staging/rts5208/sd.c
> > index d1fafd530c80..99e951be2802 100644
> > --- a/drivers/staging/rts5208/sd.c
> > +++ b/drivers/staging/rts5208/sd.c
> > @@ -4501,8 +4501,8 @@ int sd_execute_write_data(struct scsi_cmnd *srb, struct rtsx_chip *chip)
> >  			sd_card->sd_lock_notify = 1;
> >  			if (sd_lock_state &&
> >  			    (sd_card->sd_lock_status & SD_LOCK_1BIT_MODE)) {
> > -				sd_card->sd_lock_status |= (
> > -					SD_UNLOCK_POW_ON | SD_SDR_RST);
> > +				sd_card->sd_lock_status |=
> > +					(SD_UNLOCK_POW_ON | SD_SDR_RST);
> >  				if (CHK_SD(sd_card)) {
> >  					retval = reset_sd(chip);
> >  					if (retval != STATUS_SUCCESS) {
> > --
> > 2.34.1
> >
> >
> >
