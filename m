X-GM-THRID: 6807521221589073920
X-Received: by 2002:a50:aca3:: with SMTP id x32mr26247336edc.368.1585046727338;
        Tue, 24 Mar 2020 03:45:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:8ad5:: with SMTP id k21ls9704918edk.0.gmail; Tue, 24 Mar
 2020 03:45:26 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvnNSiHG1Nvw/4hbxUm+rgfUlWWMUuFhAxNrM4nrUWo9QNVdOkwJhZos51rsNXWXOXSZhEr
X-Received: by 2002:a50:8e1c:: with SMTP id 28mr26465128edw.199.1585046726118;
        Tue, 24 Mar 2020 03:45:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585046726; cv=none;
        d=google.com; s=arc-20160816;
        b=rsP88I3fYswhJhbhuyEN87IMUqTE4jH9CQGkkNO7wIIEna/1LcTWwvI5h0PDUeSivl
         vsUREEWxAb16m/YxfUfvEcTiOzULWPWbyz7Rgu1DLeIJMwH7o4zYdurbyYt6VnXtUB2r
         Xf0lr0SoYPAB60faRV7ZgKZqulULE1hc2v9B2R2k8XO+Nlrak8eFoT+iXGWupoZsSrZa
         ZhpOMCJETdxmmZ1fMDySKS+CDNl1CwbxHtEC/RlpW3/mZRd28XrfPkVwkkhJnWA/W3m8
         /fWftDAfUOlD+LNCvGrWFYBiID59rJi5ePZcYodOodPg2MqCS40otn0+vVFWyQTtBosm
         Ls5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=agU/aJlJlmKF9UbNz6M7ieVLiwY755vGJb16n0EGc6g=;
        b=qz9cxmU/s8ePi0Rmr52xpOZb1A9W6ua3YuKq7NhRseUKbj+aFg2iwn2Iya7a29vPKh
         y0TOPiQs29GjQTLCq+VJW2ljdgO/ZB7xtzY0GraD+vSSQJ4OzgAmupyFR1DFIH6qLUip
         iX1z93jr8Y1U7vdX0a6ra9XQoaGABaXjR0nYEIK+34OFOuiyCUroWEUlZKzn4FaRfqQZ
         FQDI/XIURSlZhqUxlUBAZeX9085WFft3gA+V8NSrczAaBrrIgK7gOFXisgjdLEggrglM
         FI9u9izmJcEVFi6jYSDJ+JzU2qCdj5xyInMD0lpEbjS8yJ6a5j4vNbOLI6ZNawuf40Yr
         nuiQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JCHHUy7P;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jane.pnx9@gmail.com>
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com. [2a00:1450:4864:20::341])
        by gmr-mx.google.com with ESMTPS id ck3si927790edb.5.2020.03.24.03.45.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Mar 2020 03:45:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) client-ip=2a00:1450:4864:20::341;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JCHHUy7P;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x341.google.com with SMTP id v25so780754wmh.5
        for <outreachy-kernel@googlegroups.com>; Tue, 24 Mar 2020 03:45:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=agU/aJlJlmKF9UbNz6M7ieVLiwY755vGJb16n0EGc6g=;
        b=JCHHUy7POAx5cuoRT5zECwm6lDxEgX2MqJAFYo4bPumgk+D8g2SNyP0uI395d4BN6x
         /xmJrVjMkYs/dGBUC4qfYrZLIVMLRXrp341M8vKF0WSlzkbveBbgNCcc0i5/343ME6OU
         hJbNucEce+egBwgqJJ7jZL+AxUI9WE5eTTi4TDhFHsXVwBLxaSgeJOiz9xXU3VjHjc6W
         f9dj355hA+J+rmVHyGXQXnFdJCva3T0njF95ILXvZ1icV8rQ657qNN2mrtRXBO+cujkh
         55k6TL7VIg1B89vsM9LOFaBien71tld6Sp/+6qvrurBHZ0fWIYs3tdZHc3DvD3llEDiP
         My4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=agU/aJlJlmKF9UbNz6M7ieVLiwY755vGJb16n0EGc6g=;
        b=HG4/F5uMiVOezBAJyqJx8P7iNyKXjWAjB9bHBbLDv4DYxausIxRZ2/IpcqZUgJRbQH
         Mafq59Mr4j0m1vlLVf34X38nJuD9KC1S0I2i6eTDTPx3EBPHh9B3YEXfQfoiTbOtL7wc
         XTZCnK1JHF8n5PZKVxd0PY9PvOUQFmKBL2UfgfyTN+ZZhX2VHhAA4XMdGwysDUIbrYk6
         UCnr5M61hJ2eT+8fDt+0x+f8xbY8K72P6W96qWvAQ0VhkKqJ4FQgEZluZ/4Pe7/jnrHi
         OHz6NT0Ikfq1j4F3d595tp20MsVi2j/qTFL95gu9WlWUgHKOj8m+T7ZrsgSoRZ4pacPj
         8/jw==
X-Gm-Message-State: ANhLgQ0896j2+eXVJ2bpmVfqs8JthrHItXwn3hCDjmjQlQ2BAJSGCRCT
	iHBI7+oOWoGzHS7I/4o/BNE=
X-Received: by 2002:a05:600c:34b:: with SMTP id u11mr5025293wmd.92.1585046725713;
        Tue, 24 Mar 2020 03:45:25 -0700 (PDT)
Return-Path: <jane.pnx9@gmail.com>
Received: from debian ([197.34.93.161])
        by smtp.gmail.com with ESMTPSA id t2sm3754030wml.30.2020.03.24.03.45.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Mar 2020 03:45:25 -0700 (PDT)
Message-ID: <973062345ef443487d68c9a4d9c0ee7608952e6d.camel@gmail.com>
Subject: Re: [Outreachy kernel] Re: [PATCH v2 1/2] Staging: speakup: Use
 sizeof(*var) in kmalloc().
From: Sam Muhammed <jane.pnx9@gmail.com>
To: Samuel Thibault <samuel.thibault@ens-lyon.org>
Cc: William Hubbs <w.d.hubbs@gmail.com>, Chris Brannon
 <chris@the-brannons.com>,  Kirk Reiser <kirk@reisers.ca>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>, 
 outreachy-kernel@googlegroups.com
Date: Tue, 24 Mar 2020 06:45:23 -0400
In-Reply-To: <20200324002552.sq2zitqg7l65alz5@function>
References: <cover.1585006374.git.jane.pnx9@gmail.com>
	 <19494bdab5709693126e0c0ee14b179a3b601207.1585006374.git.jane.pnx9@gmail.com>
	 <20200324002552.sq2zitqg7l65alz5@function>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

On Tue, 2020-03-24 at 01:25 +0100, Samuel Thibault wrote:
> Sam Muhammed, le lun. 23 mars 2020 19:50:51 -0400, a ecrit:
> > Modifying struct allocation in kmalloc() to match the
> > coding standards.
> > 
> > Checkpatch.pl CHECK: Prefer kmalloc(sizeof(*ldisc_data)...)
> > over kmalloc(sizeof(struct spk_ldisc_data)...)
> > 
> > Signed-off-by: Sam Muhammed <jane.pnx9@gmail.com>
> 
> Since there was no change since last version in both patches, you can
> already put my previous Reviewed-by tag for both.
> 

Missed that.
Thanks!

Sam

> > ---
> > Changes in v2:
> > - None.
> > 
> >  drivers/staging/speakup/spk_ttyio.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/staging/speakup/spk_ttyio.c b/drivers/staging/speakup/spk_ttyio.c
> > index 5a9eff08cb96..9b95f77f9265 100644
> > --- a/drivers/staging/speakup/spk_ttyio.c
> > +++ b/drivers/staging/speakup/spk_ttyio.c
> > @@ -51,7 +51,7 @@ static int spk_ttyio_ldisc_open(struct tty_struct *tty)
> >  		return -EOPNOTSUPP;
> >  	speakup_tty = tty;
> > 
> > -	ldisc_data = kmalloc(sizeof(struct spk_ldisc_data), GFP_KERNEL);
> > +	ldisc_data = kmalloc(sizeof(*ldisc_data), GFP_KERNEL);
> >  	if (!ldisc_data)
> >  		return -ENOMEM;
> > 
> > ---
> > 2.20.1
> > 
> 
> -- 
> Samuel
>  > Voici mon problème, j'ai deux PCs relies par des cartes ethernet, 
>  > configures avec le protocole PPP.
>  -+- Romain in Guide du linuxien pervers - "Ils sont fous ces romains !" -+-
> 



