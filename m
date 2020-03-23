X-GM-THRID: 6807521221589073920
X-Received: by 2002:adf:d84d:: with SMTP id k13mr6144897wrl.298.1585005200222;
        Mon, 23 Mar 2020 16:13:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:f3ca:: with SMTP id g10ls2969454wrp.11.gmail; Mon, 23
 Mar 2020 16:13:18 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsyiShY0wyN5BS8GRZYZWlrOjMbVOMe3/EA6GmjbU3Uovs35AB2PCHoInINBHaj9vdKW4Ct
X-Received: by 2002:a5d:464e:: with SMTP id j14mr32891586wrs.339.1585005198786;
        Mon, 23 Mar 2020 16:13:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585005198; cv=none;
        d=google.com; s=arc-20160816;
        b=k7SvX6HHAV/yZPLMiuVnbHJHLFsV6pM8+QfzRgtvi2g5g+4qjW3dC2mOcOPN/1gBSR
         zDr7ZT8JaZK7uSCGBOfqwNuvfxaps3SKtR14S575MgeYLh0a54jvRgnVhRxKb1D4d7vK
         bdJwZDC8noRYB9M++PCEDQiYHrlsUG8wtVDHs/ifFOFi7zksEfO0RVjFNG1TtTPa+f9Q
         VugEbBoQrN+WENNuV0gXsrq4ecgCKCxi0BxWzIC3gBeovW8MdbyyU6BamYCcpDNQFG3b
         rr76seiTUGozrYpup9y6qGcDAw2kWkm7lXf7FdXC+pJhcsQIUOPQPlde9rOtJH8wMwEO
         mSrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=rSpnY3MCkH18I1m/DZB6WFouspDhm4wgWgfs45TMa+s=;
        b=I3mfF4O12jg41kvBP0YCiyEoH0vSFw3/lFo6hYzcp3GnePbYruf8JB+QiFmJhMTAgR
         1CtZC3fd5MmjqzqX1HVafoQOD/1p9pKOc2l+aOnsYm2fz/N47jf7BckaX/XhD17j2vLI
         +cYLBA0oRh9qjruXzYiIg8uQ5CdppNHK+RsifN8sHvaiUCIrdm7CP4zTsfsPj4ns2FEF
         EmpGVTPr4ciB7RvF71MgqPDi13DHTlcbg+QljTfBFD6vX5LGeLMFjnetLdA/uX7Zbdaa
         +SryRYI0HhxUA4TnGwa+qXTju93jz54/Be4++32fQQ1GSFaDrwtkoXw+tNpyTp1oScYs
         W0zQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sH0g1UAS;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jane.pnx9@gmail.com>
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id i18si101180wml.1.2020.03.23.16.13.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Mar 2020 16:13:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sH0g1UAS;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x444.google.com with SMTP id h9so19283831wrc.8
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Mar 2020 16:13:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=rSpnY3MCkH18I1m/DZB6WFouspDhm4wgWgfs45TMa+s=;
        b=sH0g1UASmnuCq4zGqBehVhM3OV1VOIqM2ZdMBpD0jmPZ93JDNMOPZoF4qggHVA4+G6
         s3fG7SOIWisoyEelScetrCYDCtimut0bw/yRFlTrXULPrtmemd05bQtl2wqlosRTD+Gi
         844Nnwql/0e18eiE/wEwK6mDfU2iULHK+T6LJ1u6JV512uEm9g1x5FYGC5kCKuRPdctq
         c7DVMzXoeRWMhzsGYgQ9ublS7e5CQtpy5ttDd8iXif0Ga36iIXiRtjCMjdM6Bajm1+t/
         muLx3CrDAFgmpFSi5WpF2B24hE+B1S2rRwF0qHwCjyZIFGOQvBfW5l7smAWK9ONzCR1K
         O6SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=rSpnY3MCkH18I1m/DZB6WFouspDhm4wgWgfs45TMa+s=;
        b=PwLCBUnuZySl3PtFJxeoUz/nuVmEr+VD2EaRiXkZ9F2lfyIkKHNazsdt6kURWVXLBG
         sBeDEGiedkIEpM4T3eVJ//95+Vntj72WVrzlEJhiZfqrcb9kHOJ1mk3hCgq0TKubLRoM
         a9Kt2wqrCRK0cnO/K4WhWS0WEOmfsMepQrun6C0xM1u1pSVx//0RVVcB9UJ1uOZrFfIo
         kSMRn1xbCwIQHorpzRtagp2S8T4Pey7alB6gPBwsCiZ0A6SxMFhp0hhbr2PAW21J4Wz6
         5ORwIVtK/OuTwnZq/36HUtVUa25a1uH75cr+wGfXjNJHQidZeVmXnC4mCHOux4dP5d+3
         tZuA==
X-Gm-Message-State: ANhLgQ0FoDBGojE0aSVThJEWlJTZ/oe4+2yckARNNS5FSQyEm11Vuwkl
	LTsesq9P4x5HuBPjj9ETikHd3mElZjY=
X-Received: by 2002:a5d:45c7:: with SMTP id b7mr4808056wrs.44.1585005198491;
        Mon, 23 Mar 2020 16:13:18 -0700 (PDT)
Return-Path: <jane.pnx9@gmail.com>
Received: from debian ([197.34.98.222])
        by smtp.gmail.com with ESMTPSA id i21sm1667192wmb.23.2020.03.23.16.13.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Mar 2020 16:13:17 -0700 (PDT)
Message-ID: <a0fb888ec415ab0ac4aa8900f4e744d71599ecad.camel@gmail.com>
Subject: Re: [Outreachy kernel] Re: [PATCH 1/3] Staging: speakup: Avoid
 multiple assignments.
From: Sam Muhammed <jane.pnx9@gmail.com>
To: Samuel Thibault <samuel.thibault@ens-lyon.org>
Cc: William Hubbs <w.d.hubbs@gmail.com>, Chris Brannon
 <chris@the-brannons.com>,  Kirk Reiser <kirk@reisers.ca>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>, 
 outreachy-kernel@googlegroups.com
Date: Mon, 23 Mar 2020 19:13:16 -0400
In-Reply-To: <20200323221342.pdwwo55nu73kgcpl@function>
References: <cover.1584997290.git.jane.pnx9@gmail.com>
	 <b92dd931a07afcd2bcac397387130ffdc3c46223.1584997290.git.jane.pnx9@gmail.com>
	 <20200323221342.pdwwo55nu73kgcpl@function>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

On Mon, 2020-03-23 at 23:13 +0100, Samuel Thibault wrote:
> Hello,
> 
> Sam Muhammed, le lun. 23 mars 2020 17:38:43 -0400, a ecrit:
> > Modify the code to avoid multiple assignments by just
> > doing the assignment in two steps.
> 
> The original version of the code is considered easier to read.
> Yes, the tools say multiple assignments should be avoided, but that's
> not a strict rule :)

Well yes! this got me a bit hesitant, but what got me encouraged to
make this change is that i looked for patches for the same change in
this driver and i found this commit:

	f23519843b01fdc266dd70ca29ef0f0a54f8b064

which was applied for the same file main.c, so i thought this driver
adopted this style, maintaining a common practice?

should i revert this change and drop it from the patchset?

Thank you!

Sam
> 
> > Signed-off-by: Sam Muhammed <jane.pnx9@gmail.com>
> > ---
> >  drivers/staging/speakup/main.c | 18 ++++++++++++------
> >  1 file changed, 12 insertions(+), 6 deletions(-)
> > 
> > diff --git a/drivers/staging/speakup/main.c b/drivers/staging/speakup/main.c
> > index 02471d932d71..6efa0b245bef 100644
> > --- a/drivers/staging/speakup/main.c
> > +++ b/drivers/staging/speakup/main.c
> > @@ -263,9 +263,12 @@ static unsigned char get_attributes(struct vc_data *vc, u16 *pos)
> > 
> >  static void speakup_date(struct vc_data *vc)
> >  {
> > -	spk_x = spk_cx = vc->vc_x;
> > -	spk_y = spk_cy = vc->vc_y;
> > -	spk_pos = spk_cp = vc->vc_pos;
> > +	spk_cx = vc->vc_x;
> > +	spk_x = spk_cx;
> > +	spk_cy = vc->vc_y;
> > +	spk_y = spk_cy;
> > +	spk_cp = vc->vc_pos;
> > +	spk_pos = spk_cp;
> >  	spk_old_attr = spk_attr;
> >  	spk_attr = get_attributes(vc, (u_short *)spk_pos);
> >  }
> > @@ -1672,9 +1675,12 @@ static int speak_highlight(struct vc_data *vc)
> >  		spk_do_flush();
> >  		spkup_write(speakup_console[vc_num]->ht.highbuf[hc],
> >  			    speakup_console[vc_num]->ht.highsize[hc]);
> > -		spk_pos = spk_cp = speakup_console[vc_num]->ht.rpos[hc];
> > -		spk_x = spk_cx = speakup_console[vc_num]->ht.rx[hc];
> > -		spk_y = spk_cy = speakup_console[vc_num]->ht.ry[hc];
> > +		spk_cp = speakup_console[vc_num]->ht.rpos[hc];
> > +		spk_pos = spk_cp;
> > +		spk_cx = speakup_console[vc_num]->ht.rx[hc];
> > +		spk_x = spk_cx;
> > +		spk_cy = speakup_console[vc_num]->ht.ry[hc];
> > +		spk_y = spk_cy;
> >  		return 1;
> >  	}
> >  	return 0;
> > ---
> > 2.20.1
> > 
> 



