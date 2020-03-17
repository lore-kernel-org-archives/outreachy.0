X-GM-THRID: 6803757345304215552
X-Received: by 2002:a17:90a:222d:: with SMTP id c42mr2375499pje.16.1584407181642;
        Mon, 16 Mar 2020 18:06:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:a9c1:: with SMTP id b1ls10629112plr.11.gmail; Mon,
 16 Mar 2020 18:06:19 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vt1PbDzxT/HB6dYvB/IYEZVAmAC1evor+WL9p6r6NYkF5crnCqOuXPbkOybfQwf1vPCVg18
X-Received: by 2002:a17:90a:feb:: with SMTP id 98mr2439010pjz.72.1584407179125;
        Mon, 16 Mar 2020 18:06:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584407179; cv=none;
        d=google.com; s=arc-20160816;
        b=yGQA39xr6arOcwAtmzjNt35SugwWh97b8esl5JgYtWk1cQKBb44yOAeXELwwixPqV2
         /HZSd/nXqoca4CS+Ry/OT7TUm+9q9NUkvXPh5RFEKck1tmOQTXsynf+Fp/hRuZJ4z+Ql
         cR/kqmeTRxdluEfK2kIRo4EKpF6ACxcBtlBX3m5rnhdddW0oGhjH6XK879S8zupBuyld
         kiLECA/fYNgJ1SsWK0EsE8SRrEY9ApHOwH4/ErSC3Yw3r22aF5qTDez9PYTPT04PV+yw
         BtZ81BNuVmcYV8BS/pjAMDwxuOj9YuP3RYTyNm7MjfNUo/jWgNeWyFsBHPQNME6js02Y
         SE/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=7T5/5crpGsJVw/uKbwDF+lmen9TknSrc7HbNgYFw3Ak=;
        b=Q3GzRo2QXYIrlV3+yqqzb1opxssLOpSG396Ia36F3LPjbp9G8pAh+PbOq11UJC2K8y
         8l5cJmx9LIXtjQpf8Qo1g//t2Dl/pPyiZ5F0ptj+ppuv4SLqjy9I0+LhUk60QLCM+IpR
         Ay+26/3DzN+3eOU6r5WxY/aW1hsaD702c1g5TdaIXQSTr3+yhIJAkFx2Z8x9g93hh5kl
         qAR6qwnHpUSeQR/iCB9EXVenvSWj4fZcAKYSr7iKQI3RSbV1DMJMVQTtzhA+GN9xgnJg
         lbh8ulcotvdBqFm57uF/Xb3J/NPKfmj80hde1uBPEobJSMIp596gTSMcD1L+l6qyBBi5
         5x4w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=P+soqh5w;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com. [63.128.21.74])
        by gmr-mx.google.com with ESMTPS id x12si132924plv.3.2020.03.16.18.06.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Mar 2020 18:06:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) client-ip=63.128.21.74;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=P+soqh5w;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1584407177;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=7T5/5crpGsJVw/uKbwDF+lmen9TknSrc7HbNgYFw3Ak=;
	b=P+soqh5wUgPOyL2ZZ1Uq3kXEaizGy1yjWmR62auDRETppDiBn//aRG5R9NMW/MRst6+6P1
	NMbMByJ6KTJWkysSCjB7N5UCIs5A5C0iDNoiqsbE9PeoT8yXKqkYjcBQFqqLcvlED403Gm
	PQjRvmXupL6shs2kjtrh8TqpTQE+aPw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-444-RGzAHlJkPPWZD6wmsFJWPA-1; Mon, 16 Mar 2020 21:06:10 -0400
X-MC-Unique: RGzAHlJkPPWZD6wmsFJWPA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2C8B2800D50;
	Tue, 17 Mar 2020 01:06:08 +0000 (UTC)
Received: from elisabeth (unknown [10.40.208.5])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B4B0F92D0C;
	Tue, 17 Mar 2020 01:06:04 +0000 (UTC)
Date: Tue, 17 Mar 2020 02:05:58 +0100
From: Stefano Brivio <sbrivio@redhat.com>
To: Deepak R Varma <mh12gx2825@gmail.com>
Cc: Helen Koike <helen@koikeco.de>, outreachy-kernel@googlegroups.com,
 gregkh@linuxfoundation.org, daniel.baluta@gmail.com, mchehab@kernel.org,
 sakari.ailus@linux.intel.com
Subject: Re: [Outreachy kernel] [PATCH] media: staging/intel-ipu3: css:
 simplify expression
Message-ID: <20200317020241.0fdeaebd@elisabeth>
In-Reply-To: <ca6bf858-feba-2298-c719-2da0131ff9a5@koikeco.de>
References: <20200313181305.GA20332@deeUbuntu>
	<ca6bf858-feba-2298-c719-2da0131ff9a5@koikeco.de>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Fri, 13 Mar 2020 15:21:28 -0300
Helen Koike <helen@koikeco.de> wrote:

> Hi Deepak,
> 
> On 3/13/20 3:13 PM, Deepak R Varma wrote:
> > An array index computed inside square brackets leading to complexity
> > and code line exceeding 80 character. Add new variable to compute

The first statement isn't really a statement ("leads" instead of
"leading"?)

> > array index separately and use it as an index during assignment.
> > 
> > Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
> > ---
> >  drivers/staging/media/ipu3/ipu3-css-params.c | 5 +++--
> >  1 file changed, 3 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/staging/media/ipu3/ipu3-css-params.c b/drivers/staging/media/ipu3/ipu3-css-params.c
> > index 4533dacad4be..4b15e767bf32 100644
> > --- a/drivers/staging/media/ipu3/ipu3-css-params.c
> > +++ b/drivers/staging/media/ipu3/ipu3-css-params.c
> > @@ -50,12 +50,13 @@ imgu_css_scaler_setup_lut(unsigned int taps, unsigned int input_width,
> >  	int exponent = imgu_css_scaler_get_exp(output_width, input_width);
> >  	int mantissa = (1 << exponent) * output_width;
> >  	unsigned int phase_step;
> > +	int phase_taps = 0;  
> 
> No need to initialized it to zero.
> 
> Also, it seems phase_taps can't be negative, so you can use unsigned int
> 
> >  
> >  	if (input_width == output_width) {
> >  		for (phase = 0; phase < IMGU_SCALER_PHASES; phase++) {
> > +			phase_taps = phase * IMGU_SCALER_FILTER_TAPS;  
> 
> You can also declare it here:
>  +			unsigned int offset = phase * IMGU_SCALER_FILTER_TAPS;
> 
> >  			for (tap = 0; tap < taps; tap++) {

Also, at that point, you should extend this to the loop for
input_width != output_width below, for consistency.

> > -				coeff_lut[phase * IMGU_SCALER_FILTER_TAPS + tap]
> > -					= 0;
> > +				coeff_lut[phase_taps + tap] = 0;

-- 
Stefano


