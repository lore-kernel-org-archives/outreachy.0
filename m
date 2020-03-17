X-GM-THRID: 6803757345304215552
X-Received: by 2002:a37:6388:: with SMTP id x130mr2650037qkb.429.1584408186127;
        Mon, 16 Mar 2020 18:23:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:4695:: with SMTP id g21ls7691039qto.3.gmail; Mon, 16 Mar
 2020 18:23:05 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsEi6nS/fxHMae0VTZUZ17gwV7AgLz8/C9UM/W28nyLQXwM0i0XFBebwm6R+oPqrmTDJp0Y
X-Received: by 2002:ac8:4602:: with SMTP id p2mr3133504qtn.220.1584408184953;
        Mon, 16 Mar 2020 18:23:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584408184; cv=none;
        d=google.com; s=arc-20160816;
        b=OcB3mZWfguPnp398nkxI4G2K8eBvlpH9xyCb7IWIcM5Or5nB+V3jBNZ75ZH6ANbOfN
         ZxO5WR07EhOgrLCAD5rVO8SKq2/9eiu0hRcWyVibgWkZ77T6lMs2GVrwMNjcfxps5V5f
         EUAJZtEZymCiDhQTYR3Purj6+iqwijUxb/SgHVuXUnEMCH4tKbN+CMh/zBrLMhlTMcik
         WE0faJ/9LARxqBXvlGGDrKAOfs70tmRNZ2U/NZpkL+gqEdM8WFRB+PBSiPtDgRN6SHEy
         HHV2dAnjNEFka+opto0hNt1q/7KdiI+khB7eaPN3IQHtwcBspPygrycRf8SPsI/Z1+Ex
         +LGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=iJb4KZrfZ5WT3s+b1GrDRc9GL7laoDvPktbcFEjhwgY=;
        b=ZOS4coY75thZftxVHtPsBYwBXPTFwQ9QRG/+UdcfdWJ5NYuo5OWZWOvlXBBS90GTWJ
         vLScrc68wvLwx8rl8DMB26WRvxsROT9QGUt9gaT3bBrtgt263RWW4Ko+oRTDSiJMRehq
         8pAje50aQdBkFxmM2Xo0y46TPdzyjNfMfx5kDIp8GNAKXBdJnk1ebW6WnPXFV7zNDJMa
         ake3RJDU6X/yUcEMxhZvAwSdIQsuGPw0xAwWhNiPZS8GtBjOiWpJdaFqJ0bUQn7KaZSC
         rzL9wpKEn2HM/gsRNuT66hco3MzY11rfwFt0J91LFZdyDM+iKfsJ819hfQ023NGUbsIj
         OkVQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=LM3O9SaX;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com. [216.205.24.74])
        by gmr-mx.google.com with ESMTPS id x11si133635qka.4.2020.03.16.18.23.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Mar 2020 18:23:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) client-ip=216.205.24.74;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=LM3O9SaX;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1584408184;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=iJb4KZrfZ5WT3s+b1GrDRc9GL7laoDvPktbcFEjhwgY=;
	b=LM3O9SaXxRQfWOMO0Z/ATCHvdePKRNH+QIPfVbnXRhpVCNM207HuoQXyTe4FWsFnfXday/
	IjjwR91doCpl8+8ouXJRO312l2/iGyHYteDTMCVdZ3v44w97az7vvD59L9a9lV/1gJ1OZI
	ruaHkqH6upIxQu4VKxJvErlQ1pxMaK4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-469-KN1YimioO5GbfSkO_YyHiQ-1; Mon, 16 Mar 2020 21:23:03 -0400
X-MC-Unique: KN1YimioO5GbfSkO_YyHiQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 760938010F0;
	Tue, 17 Mar 2020 01:23:01 +0000 (UTC)
Received: from elisabeth (unknown [10.40.208.5])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7E49F19757;
	Tue, 17 Mar 2020 01:22:58 +0000 (UTC)
Date: Tue, 17 Mar 2020 02:22:52 +0100
From: Stefano Brivio <sbrivio@redhat.com>
To: Deepak R Varma <mh12gx2825@gmail.com>
Cc: Helen Koike <helen@koikeco.de>, outreachy-kernel@googlegroups.com,
 gregkh@linuxfoundation.org, daniel.baluta@gmail.com, mchehab@kernel.org,
 sakari.ailus@linux.intel.com
Subject: Re: [Outreachy kernel] [PATCH] media: staging/intel-ipu3: css:
 simplify expression
Message-ID: <20200317022252.15b6edef@elisabeth>
In-Reply-To: <20200317020241.0fdeaebd@elisabeth>
References: <20200313181305.GA20332@deeUbuntu>
	<ca6bf858-feba-2298-c719-2da0131ff9a5@koikeco.de>
	<20200317020241.0fdeaebd@elisabeth>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Tue, 17 Mar 2020 02:05:58 +0100
Stefano Brivio <sbrivio@redhat.com> wrote:

> On Fri, 13 Mar 2020 15:21:28 -0300
> Helen Koike <helen@koikeco.de> wrote:
> 
> > Hi Deepak,
> > 
> > On 3/13/20 3:13 PM, Deepak R Varma wrote:  
> > > An array index computed inside square brackets leading to complexity
> > > and code line exceeding 80 character. Add new variable to compute  
> 
> The first statement isn't really a statement ("leads" instead of
> "leading"?)
> 
> > > array index separately and use it as an index during assignment.
> > > 
> > > Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
> > > ---
> > >  drivers/staging/media/ipu3/ipu3-css-params.c | 5 +++--
> > >  1 file changed, 3 insertions(+), 2 deletions(-)
> > > 
> > > diff --git a/drivers/staging/media/ipu3/ipu3-css-params.c b/drivers/staging/media/ipu3/ipu3-css-params.c
> > > index 4533dacad4be..4b15e767bf32 100644
> > > --- a/drivers/staging/media/ipu3/ipu3-css-params.c
> > > +++ b/drivers/staging/media/ipu3/ipu3-css-params.c
> > > @@ -50,12 +50,13 @@ imgu_css_scaler_setup_lut(unsigned int taps, unsigned int input_width,
> > >  	int exponent = imgu_css_scaler_get_exp(output_width, input_width);
> > >  	int mantissa = (1 << exponent) * output_width;
> > >  	unsigned int phase_step;
> > > +	int phase_taps = 0;    
> > 
> > No need to initialized it to zero.
> > 
> > Also, it seems phase_taps can't be negative, so you can use unsigned int
> >   
> > >  
> > >  	if (input_width == output_width) {
> > >  		for (phase = 0; phase < IMGU_SCALER_PHASES; phase++) {
> > > +			phase_taps = phase * IMGU_SCALER_FILTER_TAPS;    
> > 
> > You can also declare it here:
> >  +			unsigned int offset = phase * IMGU_SCALER_FILTER_TAPS;
> >   
> > >  			for (tap = 0; tap < taps; tap++) {  
> 
> Also, at that point, you should extend this to the loop for
> input_width != output_width below, for consistency.

Sorry, I missed v2 and v3 of this, never mind.

-- 
Stefano


