X-GM-THRID: 7020448359173324800
X-Received: by 2002:a25:b115:: with SMTP id g21mr10370913ybj.321.1634581348927;
        Mon, 18 Oct 2021 11:22:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:d4:: with SMTP id 203ls5195460yba.1.gmail; Mon, 18 Oct
 2021 11:22:28 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJx5OBhHzp7h8D6pQB5oZIbBf1uf/hH48elq2Js0XcISlDu8fUv3/Gsa9w5TZwcnv4MJm3Bw
X-Received: by 2002:a25:2ac1:: with SMTP id q184mr32331318ybq.387.1634581347957;
        Mon, 18 Oct 2021 11:22:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634581347; cv=none;
        d=google.com; s=arc-20160816;
        b=WlW5xRSu5nlW+3E6GTg7n5xc/rdhGuf6MrhD5Vfesrhe+o1ev5oZ68acR9MYSad99M
         nUFmj3g4ITh38If8ejs16giZ5xkXr8LLu9sgRiLW5gME1VZhgPBYXm9Ihg94nuYM1Uih
         iyTbgkS+yJSc4lkbvxNRrrdB1FhL9N7svVa+YoTG8hEwuqcvwIYAZM9C3QXR+iDR7SsH
         gcJBT5miWv/yyW31Ce4O4Ig3Gpuw+QsQVaoZKogAiOiMqWBMZwkZVHlanYlxIErZeZQB
         cE7lPGsxDbQnObEMOAJOeD4dIyc30IPU0gcSGBcYdiEBJVR3QheBiE7Xr+uFg8DHK2/m
         5fmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=V5UhBx2Xc9ClXi/ulaQSz1PYqA0AYk+w0eX07VqAaz0=;
        b=JBpJX/awbkCatWXjjDp2zJTAh3/zIFGwF6hahWhKw/In2oS9rL8wtJWFZUEfHhMtp/
         M/kl7rjqcMFoCmaBHuBsRGB05FhMrZCfLndli3DOtJyGYtlWdRDLzz2Wa6gW0alDmqh7
         YmFaqVZHZ0r3LI8o3fzVL0V5KldFS/SiPwNk+HzSp8bzGGl/FfKhl+hZo8l/SP60P2n1
         esJfo8vsHe1PLkicoyfXaSftf65oCTmHCRMOs3fmq/DsjzUUzMi9iX504kYtFivZkbYO
         rGESvB0KxjH2htSfUXuRd7kTBoe8BJBWh+zO5Y+8hOer3gWKnNuldI1bvEm51H4w+Kng
         KCZg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.21 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Return-Path: <joe@perches.com>
Received: from smtprelay.hostedemail.com (smtprelay0021.hostedemail.com. [216.40.44.21])
        by gmr-mx.google.com with ESMTPS id o13si145191ybu.3.2021.10.18.11.22.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Oct 2021 11:22:27 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.21 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.21;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.21 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from omf10.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay06.hostedemail.com (Postfix) with ESMTP id 26F371803D5FA;
	Mon, 18 Oct 2021 18:22:27 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: joe@perches.com) by omf10.hostedemail.com (Postfix) with ESMTPA id A5EF12351F8;
	Mon, 18 Oct 2021 18:22:25 +0000 (UTC)
Message-ID: <0f0eb2e6b72bc5188d5eca3aa49eba1d8db0effd.camel@perches.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: sm750fb: make pointers in
 array const
From: Joe Perches <joe@perches.com>
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>, Julia Lawall
	 <julia.lawall@inria.fr>
Cc: sudipm.mukherjee@gmail.com, teddy.wang@siliconmotion.com, 
	gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com, 
	mike.rapoport@gmail.com, kushalkothari2850@gmail.com, Kushal Kothari
	 <kushalkothari285@gmail.com>
Date: Mon, 18 Oct 2021 11:22:23 -0700
In-Reply-To: <9033544.t7rfKEcqWj@localhost.localdomain>
References: <20211018164431.26462-1-kushalkothari285@gmail.com>
	 <163460335.XzdQGyDEVH@localhost.localdomain>
	 <alpine.DEB.2.22.394.2110181900410.3174@hadrien>
	 <9033544.t7rfKEcqWj@localhost.localdomain>
Content-Type: text/plain; charset="ISO-8859-1"
User-Agent: Evolution 3.40.4-1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: rspamout03
X-Rspamd-Queue-Id: A5EF12351F8
X-Spam-Status: No, score=-1.40
X-Stat-Signature: g4766bwbmb3xu9xfz6rp7n36fg798hen
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Session-ID: U2FsdGVkX18GxJgD9J+gUykGYblx6OrqnT1SsPP3JBo=
X-HE-Tag: 1634581345-172753

On Mon, 2021-10-18 at 19:18 +0200, Fabio M. De Francesco wrote:
> On Monday, October 18, 2021 7:01:42 PM CEST Julia Lawall wrote:
> > 
> > On Mon, 18 Oct 2021, Fabio M. De Francesco wrote:
> > 
> > > On Monday, October 18, 2021 6:44:31 PM CEST Kushal Kothari wrote:
> > > > Change the parameters of functions from const char *g_fbmode[] to
> > > > const char * const g_fbmode[]. This additional const is needed to
> > > > allow us to fix  checkpatch warning, as well as being good
> > > > programming practice.
> > > > 
> > > > For the checkpatch warnings, if we have a set of command line
> > > > args that we want to check defined as:
> > > > 	static const char * g_fbmode[] = {NULL, NULL};
> > > > 
> > > > checkpatch will complain:
> > > > 	WARNING: static const char * array should probably be static 
> const
> > > char * const
> > > > 
> > > > Signed-off-by: Kushal Kothari <kushalkothari285@gmail.com>
> > > > ---
> > > > 
> > > > [...]
> > > > 
> > > > -static const char *g_fbmode[] = {NULL, NULL};
> > > > +static const char * const g_fbmode[] = {NULL, NULL};
> > > 
> > > You have introduced a logical change (g_fbmode[] entries cannot be 
> assigned
> > > any more) and a build error (because there is code somewhere that assigns
> > > values to those slots).
> > 
> > I wonder if this warning makes much sense when the array elements are
> > NULL.  I don't know if checkpatch could easily detect that.

No, it couldn't really.  It's a line by line parser and most frequently
these are on separate lines.

> However, it should be an easy fix in whatever programming language: 
> checkpatch should warn if and only if the array elements are assigned with 
> non 'NULL' values, because it's pretty clear that somewhere else there must 
> be some lines that assign values to them.

Don't take checkpatch warning too seriously and do compile
and test any change you make _before_ you submit a patch.



