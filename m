X-GM-THRID: 6948900055812145152
X-Received: by 2002:a17:90a:3b4c:: with SMTP id t12mr7199872pjf.142.1618142095210;
        Sun, 11 Apr 2021 04:54:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:c70c:: with SMTP id o12ls1835544pjt.3.canary-gmail;
 Sun, 11 Apr 2021 04:54:54 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwmizHi9fdZwAR6th10qGNsTXVIBwFeIqBx/zsgHln/xQkGIW9+rOOXCmglVa7ZN2dNIsQ4
X-Received: by 2002:a17:902:8f8d:b029:ea:e059:84a6 with SMTP id z13-20020a1709028f8db02900eae05984a6mr2987254plo.35.1618142094131;
        Sun, 11 Apr 2021 04:54:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618142094; cv=none;
        d=google.com; s=arc-20160816;
        b=LOtCM0g7kZhu1E6Ks9GtVT6tlD6ZyP5t5KtVCJijxQccM9ukja/pvem538zhSjW64z
         u1R58V9w1SYltvlochLMkNGVptwcgRWjrV6RrZLq9fBuilMTHLta9o1w6VrYSm/GwJf+
         qUw7NzT5ikXVP93bEUm4v83cuGjdwWTh6a0mqmHDjsOHtXBbl8o9TPiV7Z4EHIO+Foi6
         4SzVXilYxCcY+gtqhoHFa5WqVbxe0QW3bAltHLYRl93adDbyWxFG5FqKsabaCPpZ46lw
         9DSUO5sqUtsMMhY6thRfhW7amwXItt7Ey9eNH8KxVtywGRXK6D7tppOswk+OmifSX7Rn
         LUeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=jj39pWnpe68QjHt1F0v3GC/JaiqRPmwqsSayHN84pLc=;
        b=L299id2JmtiCN8pWjyQOibEKXGEAGoIdFHft3sWugciuxkwkUFyo15fYpr54xcft1y
         od8nt8ZHtHCfMjmc7L68XBRDPoht6kFmAK929ifhGo41R8fwQDqbubRRRArqLPB+Lbck
         pZB1Rlav7WVwU1DwpZlI7oRs977zEnivgVrPH0RRYuM8cdamoypCEREI9g4GLvccP61o
         Ptr+yyo75bc4Tat2dxoyzloMuzF2nj5fEhH3uE5gGCitwGFBJPL6yr7Z7nnSTPyyJF/n
         a4GnNdiDWa8/fyzfta+3V8kxdhSFTXQ4lD9wU9bMsopm3xJA1teQGahVloLwwV59DHxC
         4tIw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dTU5duck;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::533 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pg1-x533.google.com (mail-pg1-x533.google.com. [2607:f8b0:4864:20::533])
        by gmr-mx.google.com with ESMTPS id t5si768615pgv.4.2021.04.11.04.54.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 11 Apr 2021 04:54:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::533 as permitted sender) client-ip=2607:f8b0:4864:20::533;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dTU5duck;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::533 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x533.google.com with SMTP id p12so7210759pgj.10
        for <outreachy-kernel@googlegroups.com>; Sun, 11 Apr 2021 04:54:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=jj39pWnpe68QjHt1F0v3GC/JaiqRPmwqsSayHN84pLc=;
        b=dTU5duck9yoxb9EsoiJ3eUPCeP+4rusRpUsqcIvaLGglYmC7TOwycIg5NiX3fdQRU4
         wV0zKmdK1fvnvu6cFOv71E7ireN9om7saabEZQf1TnTdX2B5K29ExP73/N2S/lSfzA7H
         QZJ4/UUQoyWQT9K6sCZeazNAu55qrU+Vz2vbhYu0kn02K54tqOXxGH7QsyFzMYis19kW
         C/mqJcjCHw1nyL4GcwD4+fWnyDYveiFVxTH7n6hnOXHai685o7izne6kpOhD+k9hllaA
         tn4AaWT8SGCbeA7JMTI7MqWMr6p76PaBdZ0OhuyjKkOIXEBJRCygtaZMQ3HawW4P0Acq
         JjTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=jj39pWnpe68QjHt1F0v3GC/JaiqRPmwqsSayHN84pLc=;
        b=UuhUgaKeNv/uzWtpaek99pDBvMo47+q4DNVBxthKB8uk82gva1b2FhJ6wUj/QYuKCL
         98VHsYIdArmQ4zOJcqpNekNgU0cZD0OAGzq/Y3mRwMtFu/tATx3eZNY4/SHsM/F8MrH5
         7fd3aiMz6bOEg841AuY9oiPGf9RLkAGpbi7VNpLD8Nn39bgYr03kIbasn5Kea0OueQV+
         EETCt2u4QpqyYLk49lsjnxpJFOE64mNPcy+1v7UXs5KaW0Q67tPbfJPEH4GPBpsbCz84
         mmMaI1Rn9MMzgQN+IrLRyg07BNSmAJTIVhKE/xWhJk9/JV/P4veT//ul/OpAHC9UzvX0
         7oaw==
X-Gm-Message-State: AOAM532gSrZI/Jv87LC8rKEWCTIwPTx2kuGw/aTnbHIxS+RFcN2kywPP
	trPxarVQ4hIPV4jGsxFHs6s=
X-Received: by 2002:a62:7992:0:b029:249:9dfb:426d with SMTP id u140-20020a6279920000b02902499dfb426dmr6089863pfc.68.1618142093744;
        Sun, 11 Apr 2021 04:54:53 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([103.141.87.254])
        by smtp.gmail.com with ESMTPSA id y194sm7230272pfb.90.2021.04.11.04.54.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Apr 2021 04:54:53 -0700 (PDT)
Date: Sun, 11 Apr 2021 17:24:43 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: Hans Verkuil <hverkuil@xs4all.nl>
Cc: clabbe@baylibre.com, mchehab@kernel.org, gregkh@linuxfoundation.org,
	linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
	mitali_s@me.iitr.ac.in
Subject: Re: [PATCH] staging: media: zoran: reduce length of a line
Message-ID: <YHLjg3U1M358bBxh@kali>
References: <YG9zvMnYlZVbJhQn@kali>
 <003b2d17-2fe4-c3f3-6b1e-60d0301a1413@xs4all.nl>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <003b2d17-2fe4-c3f3-6b1e-60d0301a1413@xs4all.nl>

On Fri, Apr 09, 2021 at 09:26:48AM +0200, Hans Verkuil wrote:
> Hi Mitali,
> 
> Something to improve:
> 
> On 08/04/2021 23:21, Mitali Borkar wrote:
> > Reduced length of a line which exceed the 100 columns limit by splitting
> > the line into two statements and commenting it with '*'
> > Reported by checkpatch.
> > 
> > Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
> > ---
> >  drivers/staging/media/zoran/zr36060.c | 4 +++-
> >  1 file changed, 3 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/staging/media/zoran/zr36060.c b/drivers/staging/media/zoran/zr36060.c
> > index 4f9eb9ff2c42..035634fc1c6d 100644
> > --- a/drivers/staging/media/zoran/zr36060.c
> > +++ b/drivers/staging/media/zoran/zr36060.c
> > @@ -249,7 +249,9 @@ static const char zr36060_ta[8] = { 0, 1, 1, 0, 0, 0, 0, 0 };	//table idx's AC
> >  static const char zr36060_decimation_h[8] = { 2, 1, 1, 0, 0, 0, 0, 0 };
> >  static const char zr36060_decimation_v[8] = { 1, 1, 1, 0, 0, 0, 0, 0 };
> >  
> > -/* SOF (start of frame) segment depends on width, height and sampling ratio of each color component */
> > +/* SOF (start of frame) segment depends on width,
> > + * height and sampling ratio of each color component
> > + */
> 
> See the coding style guidelines: the preferred style for long comments is:
> 
> /*
>  * text
>  * text
>  */
>
I have sent v2 patch two days ago and I have not got reply till now,
Should I resend this?

> Regards,
> 
> 	Hans
> 
> >  static int zr36060_set_sof(struct zr36060 *ptr)
> >  {
> >  	char sof_data[34];	// max. size of register set
> > 
> 

