X-GM-THRID: 6805399652543758336
X-Received: by 2002:a17:902:a70b:: with SMTP id w11mr5093312plq.59.1584552672645;
        Wed, 18 Mar 2020 10:31:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:b203:: with SMTP id t3ls6357694plr.1.gmail; Wed, 18
 Mar 2020 10:31:10 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvvu8qvkCBOcJtgcoEdKq12CaX2KQaEr8zLUQeTdH3InanilRRUvarvvpRi1OMdEuY2B6+I
X-Received: by 2002:a17:902:9349:: with SMTP id g9mr5077791plp.16.1584552670792;
        Wed, 18 Mar 2020 10:31:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584552670; cv=none;
        d=google.com; s=arc-20160816;
        b=nbuTcsfiMMl0yfGZPMoHFlAv0fp38CeShV38AJ8Qhes3WqHM6AgsrYt7HrtPsZPC9M
         5wiSKihjMyhGKxiWNb8ZUSXTBO4MdskD39iJg0uphrvSdGRYrp9mOUaz/7pkyWHmqPHG
         j9QUXdzZ4xc0X9qnTPNHs+Us0iIUnsIdWGa9byfzAD1ni5nKP5RJhAwWGnEm71oh74Mw
         ZFJFOHyJYLnNaWnjXMbbf/rmE/t2Zix88DqEi2838Ty0P1sUDJ3m/ME5nC07q5SiaTfb
         vJ9qAGccRqZE1Xu+X16Sk8A5NsazY0Jh0u2kffvDecBQ8DClNPjMgBkaVY2Me80oAuJs
         Dpkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=HTqD50UmZr45My6NDxgCN8OAOaGi7lH1op3LMlJyHq8=;
        b=NmQmenDu27Fkk9O9WX87m/bmr9gktvsiXgJzF1q6HNowcOePgx4U6n5Ye3QskrXt86
         LH11Oh77fPfEhogMmp1gxmt+fmmusqq3r0anv0NoCx73tOOQHLDoOx/gFOHDJC0/CAzy
         1o7iXMWdLWItIMWGAeDW8/cG0+9YJbEAThcttA4efUNtFAPGTHVq9+GVnvsrqgfnJK6Q
         yhXcp/BqkFcDUkC8HZ80NG95h1r/lesi51af2ws1stax0pmzmW6du3x1fmEjGFhjC1B6
         1FW78mKs8S4MaerLGZm5B876enYAEQySxDpp02uaGdM5RZ1mV56MeWdAGELYUVUZJgQ7
         hxkQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=h5ffyvKM;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id y13si480240plp.0.2020.03.18.10.31.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Mar 2020 10:31:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=h5ffyvKM;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id 3so6408111pff.4
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Mar 2020 10:31:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=HTqD50UmZr45My6NDxgCN8OAOaGi7lH1op3LMlJyHq8=;
        b=h5ffyvKMJRys5b/9wFJ7Bms4kpRKV0vgeD1c7kybEAMBadJZ0WgnLXvaNXieJRyDYl
         lQIj/g2NQnBk/ZDCbsUsnmfH6aV668g4vjIf5hkvVCNygF9/+9RRCt4QJHL+Mmhbz9Fl
         IToLMKMeCmDEMte81ZgJCdGps2TZBL6dwPTi5DhpfDRySWYTvXN78AHVKDhJkgElRtjU
         N9bZY1UzPdeU/3Zj/xBbZGwmbDcq0LuSmfQkMh2pb3gbaTBo3D+c1Ar65dXkcFzkCdWE
         UrWyS10EbIYWWUMU73xqP/y8PTnZkrkav78JVVFgIxVvDL6xO0OIDMY7nWm+5g8kvKhB
         RYKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=HTqD50UmZr45My6NDxgCN8OAOaGi7lH1op3LMlJyHq8=;
        b=jemK8urt2hsdyzps04GytJA4LDxOwScz4gKOamJhJ0xPQJ3Z0s1dz/13UqSGPcGKPR
         zgQdoBQwQAguc2G8enuqF3rTDJiLKvqpvqybqJea7lpgA7S1RTDo85+jYrHgy9sR+mhB
         PtEVb0UjWxXHIAoQHgB0Mo7XlsMK0kJwyragysihkYLNfKn19Vl7S35ShQdRPU/h914W
         WE7Ca3P7w3aXSyl54raiXCf537IwbOMNbmlL48WcfsGtcJV8bBwcrgDnj3EIKLXHhq4R
         PHRi5QH7DjoAYM4HDyUoTWxfF9oeYG9g1iXxePmTFn6kZEYafRejG3SXhY+aqjDa9rx1
         u8Vg==
X-Gm-Message-State: ANhLgQ3DpetugbvJJzCuHtrfPhnDI0VCSDGerNihHhWk2MGFpRUQYLVd
	hddOHd0jEKM9PCdbIk3BX2g=
X-Received: by 2002:a63:7783:: with SMTP id s125mr5662374pgc.214.1584552670514;
        Wed, 18 Mar 2020 10:31:10 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from deeUbuntu ([103.241.226.97])
        by smtp.gmail.com with ESMTPSA id x27sm7464069pfj.74.2020.03.18.10.31.06
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 18 Mar 2020 10:31:10 -0700 (PDT)
Date: Wed, 18 Mar 2020 23:01:04 +0530
From: DEEPAK VARMA <mh12gx2825@gmail.com>
To: Lars-Peter Clausen <lars@metafoo.de>
Cc: Rohit Sarkar <rohitsarkar5398@gmail.com>,
	Stefano Brivio <sbrivio@redhat.com>,
	outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
	daniel.baluta@gmail.com, kieran.bingham@ideasonboard.com,
	Michael.Hennerich@analog.com, jic23@kernel.org, knaack.h@gmx.de,
	pmeerw@pmeerw.net, linux-iio@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH 1/2] staging: iio: adc: ad7192:
 Reformat lines crossing 80 columns
Message-ID: <20200318173102.GA23740@deeUbuntu>
References: <cover.1584505215.git.mh12gx2825@gmail.com>
 <50419988d636c90511a07da256c91aa3b3e33bff.1584505215.git.mh12gx2825@gmail.com>
 <20200318093158.192a27ce@elisabeth>
 <20200318160649.GA23154@deeUbuntu>
 <5e724ad5.1c69fb81.7d54e.9f63@mx.google.com>
 <20200318164306.GA23434@deeUbuntu>
 <1fe9df37-4d83-82e6-bd57-ecb4195447a5@metafoo.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1fe9df37-4d83-82e6-bd57-ecb4195447a5@metafoo.de>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Wed, Mar 18, 2020 at 05:44:16PM +0100, Lars-Peter Clausen wrote:
> On 3/18/20 5:43 PM, DEEPAK VARMA wrote:
> > On Wed, Mar 18, 2020 at 09:52:41PM +0530, Rohit Sarkar wrote:
> > > On Wed, Mar 18, 2020 at 09:36:50PM +0530, DEEPAK VARMA wrote:
> > > > On Wed, Mar 18, 2020 at 09:31:58AM +0100, Stefano Brivio wrote:
> > > > > On Wed, 18 Mar 2020 09:56:59 +0530
> > > > > Deepak R Varma <mh12gx2825@gmail.com> wrote:
> > > > > 
> > > > > > Macro arguments are computed at the time of macro invocation. This makes
> > > > > > the lines cross 80 column width. Add variables to perform the
> > > > > > calculations before hand and use these new variable in the macro calls
> > > > > > instead.
> > > > > > 
> > > > > > Also re-indent enum members to address checkpatch warning / check messages.
> > > > > > 
> > > > > > Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
> > > > > > ---
> > > > > >   drivers/staging/iio/adc/ad7192.c | 15 ++++++++-------
> > > > > >   1 file changed, 8 insertions(+), 7 deletions(-)
> > > > > > 
> > > > > > diff --git a/drivers/staging/iio/adc/ad7192.c b/drivers/staging/iio/adc/ad7192.c
> > > > > > index bf3e2a9cc07f..0265f6607d75 100644
> > > > > > --- a/drivers/staging/iio/adc/ad7192.c
> > > > > > +++ b/drivers/staging/iio/adc/ad7192.c
> > > > > > @@ -156,8 +156,8 @@
> > > > > >    */
> > > > > >   enum {
> > > > > > -   AD7192_SYSCALIB_ZERO_SCALE,
> > > > > > -   AD7192_SYSCALIB_FULL_SCALE,
> > > > > > +	AD7192_SYSCALIB_ZERO_SCALE,
> > > > > > +	AD7192_SYSCALIB_FULL_SCALE,
> > > > > >   };
> > > > > >   struct ad7192_state {
> > > > > > @@ -477,17 +477,18 @@ static ssize_t ad7192_set(struct device *dev,
> > > > > >   }
> > > > > >   static void ad7192_get_available_filter_freq(struct ad7192_state *st,
> > > > > > -						    int *freq)
> > > > > > +					     int *freq)
> > > > > >   {
> > > > > >   	unsigned int fadc;
> > > > > > +	unsigned int sync3_filter, sync4_filter;
> > > > > >   	/* Formulas for filter at page 25 of the datasheet */
> > > > > > -	fadc = DIV_ROUND_CLOSEST(st->fclk,
> > > > > > -				 AD7192_SYNC4_FILTER * AD7192_MODE_RATE(st->mode));
> > > > > > +	sync4_filter = AD7192_SYNC4_FILTER * AD7192_MODE_RATE(st->mode);
> > > > > 
> > > > > Have you read page 25 of the datasheet? Why is this called
> > > > > sync4_filter, with a 'y'?
> > > > > 
> > > > 
> > > > Sorry, I am not sure what you are referring to. Can you please elaborate
> > > > or point me to where the data sheet is located?
> > > > 
> > > > Deepak.
> > > 
> > > Hey Deepak,
> > > You can find the datasheet for ad7192 here https://pdf1.alldatasheet.com/datasheet-pdf/view/988287/AD/AD7192.html
> > > 
> > 
> > Thank you Rohit. I got it. I understand Stefano's comments now. I named
> > the variables with a 'y' to keep it similar to the macro
> > AD7192_SYNCn_FILTER. Let me know if the variable name looks odd and I
> > should rename it to sinc4_filter instead.
> 
> Hi,
> 
> Please send a patch to rename the macro to SINC as well. This is a typo in
> the macro.
> 
> Thanks,
> - Lars

Sure. Will send a separate patch for the macro name correction in the same
pathset.

Deepak.

