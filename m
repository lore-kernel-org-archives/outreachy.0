X-GM-THRID: 6751365568986611712
X-Received: by 2002:a6b:c305:: with SMTP id t5mr9367561iof.87.1572115757305;
        Sat, 26 Oct 2019 11:49:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a92:3552:: with SMTP id c79ls201595ila.12.gmail; Sat, 26 Oct
 2019 11:49:16 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzX25oo+BEfBjRm6yFr/xmDjsQmRI836BAZdctJFtMJQzfX5m7MP8UpxAfQ5H1WxoVebIDO
X-Received: by 2002:a92:58d3:: with SMTP id z80mr11986708ilf.164.1572115756087;
        Sat, 26 Oct 2019 11:49:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572115756; cv=none;
        d=google.com; s=arc-20160816;
        b=n59LwOZj4xP4YEaMIzqUGAVgnXPGy41GsyE9FP85nI4zhmMpN+c/8FsYo0Wy3ZJzhZ
         pnF+8Nav2P6oSBGhTF2BpaiaIgZOEnxpqKqNviLnZI6Czl89pSxXQiXI+yBwUWW0vdsl
         m0m6+ZFVwQw58Ot1eXvazN6+7DvIjo5AauB3UU/bE35MYYeZawYH3cqLOIIEbbtmp9du
         9VBW60nz6vPLIYMPhlFsld0P7YVqJuWzVPg4qwpW9K5SkPcJ+SvDgKHY3F5DsMggywD7
         GFiuM8h4TCmZgtdJPWzps738+A5ZAOlDKEeSdS6viQToulblHYYM2vPb+xXZ35p6cs1J
         6AlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=4mkl/vIW+C8nBKyv2MWDcbegCr0RPuwYt3VGPQcWdGY=;
        b=hXxkuCILp55ZR5kcqu8JJTMeOMHpHbnfc8AsybzYjjjRfX0Sn3ZfVZgBLKWVPZg+BF
         CehYUXzre9JyUygjPoc1fTiKpnakL5w0nZ+alLETMsmJmSLplN9W6MoBBfT9OEJluM4D
         5bV0ALR3jXg4Ga4BjctbbpRl7K2/ANj2xO9u7FjPfPwCXrl1xXnYE4Oy6KNSo0iR+HGL
         WMSCIl6HgKGMD2R3SfUK4B3d1PdLLYURkza3FgPM372gHDsFGnhNdHJNIKP0FfcH4Lh5
         t/wu7o7EKIg4g1hc94nI7S1Jxp6uhO+PTSrXOSTaGtZvStQnE+ueP8X3KBv+47uu/Jwd
         8NMw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VHIGjJwg;
       spf=pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=cristianenavescardoso09@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <cristianenavescardoso09@gmail.com>
Received: from mail-qt1-x841.google.com (mail-qt1-x841.google.com. [2607:f8b0:4864:20::841])
        by gmr-mx.google.com with ESMTPS id x18si287667ill.2.2019.10.26.11.49.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 26 Oct 2019 11:49:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) client-ip=2607:f8b0:4864:20::841;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VHIGjJwg;
       spf=pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=cristianenavescardoso09@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x841.google.com with SMTP id t8so8454449qtc.6
        for <outreachy-kernel@googlegroups.com>; Sat, 26 Oct 2019 11:49:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=4mkl/vIW+C8nBKyv2MWDcbegCr0RPuwYt3VGPQcWdGY=;
        b=VHIGjJwgjb/EIqKStjMHXUajwlQ3/n/momTzUPVXS5/hTpQwtS1OU2+uU8rN3L9zjk
         9KCVt5J6gpYqHEPZlQsH/MxImvCuF/B6OoY+hoacPa45a9ImAquXbXOsf15PUY+ejCK9
         eEuP9CXijW+6oWIKynFgCEY1cM59saWX1YsSuY9/ffYHq6gnrCHjv8DQD1xpjV4K8bkr
         dwGIupmJJ0b2aG15dQdFTQGD5Z3DDp9vGW9StLH9ow8KPk7WKOPy1TT+Xjh6jEtTg5XN
         n53Oxm6pRRSZrO7bW/DVRrW9ijJjHasKl6RFjP0tQBL0E9NBZpcNFtBBp4pgREiHVTR4
         Doww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=4mkl/vIW+C8nBKyv2MWDcbegCr0RPuwYt3VGPQcWdGY=;
        b=P0plXH9YKg8/MnsT0vK8nDAsbAv1Xtq9rd2SRv1OasS1Gz8K8kkT2+k1JYRZmNhPBs
         Kfrz1rvJDhFkvy9OCmejRL5l8vOWZKKlWh02OAhwi318xWf2HgE/w7vSRHuz2iODm6Ku
         Tc/dpuW3h67VtDEQJFwed11OSGxmaDIrmIQ3SURbQSpVIolbdHu+gdhHu3XCMoqczgdY
         oip5WSVCW/mj5XkdBUJP+kFL3/EyvvI2K2I7i02J3nmfgcb+dHEucgRsU6zxX+Ost6iC
         7EEG4fPVFlhyu85MPuF+JlbbxXUgeRzztOrmpnlc68nmobTdUsrUMR39NBVB+89TgzKu
         KMKQ==
X-Gm-Message-State: APjAAAXdFhdPBk8vW62yWP8kpBuvp6CdrxDJnn19ciOsBYXy6m1/9L6P
	U+9L++0F7oAX9Sy2WrGP+VE=
X-Received: by 2002:aed:2088:: with SMTP id 8mr9935369qtb.295.1572115755447;
        Sat, 26 Oct 2019 11:49:15 -0700 (PDT)
Return-Path: <cristianenavescardoso09@gmail.com>
Received: from cristiane-Inspiron-5420 ([131.100.148.220])
        by smtp.gmail.com with ESMTPSA id h27sm2626506qtk.37.2019.10.26.11.49.13
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 26 Oct 2019 11:49:14 -0700 (PDT)
Date: Sat, 26 Oct 2019 15:49:11 -0300
From: Cristiane Naves <cristianenavescardoso09@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [RESEND PATCH] staging: gasket: Fix lines
 ending with a '('
Message-ID: <20191026184911.GB8685@cristiane-Inspiron-5420>
References: <20191025232935.GA813@cristiane-Inspiron-5420>
 <alpine.DEB.2.21.1910260642250.2559@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1910260642250.2559@hadrien>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sat, Oct 26, 2019 at 06:43:46AM +0200, Julia Lawall wrote:
> 
> 
> On Fri, 25 Oct 2019, Cristiane Naves wrote:
> 
> > Fix lines ending with a '('. Issue found by checkpatch.
> 
> You sent another patch on this file (the one I acked) and they are notin a
> series, so Greg won't know how to apply them.  Please collect the whole
> thing again, and either put both changes in the same patch, or send a
> series with the different changes on this file.  You could put v2, so that
> Greg knows to ignore your other changes on the file.
> 
> julia
>
I will join the two patches in just 1 and I will resend as v2.
Thanks!
> >
> > Signed-off-by: Cristiane Naves <cristianenavescardoso09@gmail.com>
> > ---
> >  drivers/staging/gasket/gasket_ioctl.c | 12 ++++++------
> >  1 file changed, 6 insertions(+), 6 deletions(-)
> >
> > diff --git a/drivers/staging/gasket/gasket_ioctl.c b/drivers/staging/gasket/gasket_ioctl.c
> > index d1b3e9a..e3047d3 100644
> > --- a/drivers/staging/gasket/gasket_ioctl.c
> > +++ b/drivers/staging/gasket/gasket_ioctl.c
> > @@ -54,9 +54,9 @@ static int gasket_read_page_table_size(struct gasket_dev *gasket_dev,
> >  	ibuf.size = gasket_page_table_num_entries(
> >  		gasket_dev->page_table[ibuf.page_table_index]);
> >
> > -	trace_gasket_ioctl_page_table_data(
> > -		ibuf.page_table_index, ibuf.size, ibuf.host_address,
> > -		ibuf.device_address);
> > +	trace_gasket_ioctl_page_table_data(ibuf.page_table_index, ibuf.size,
> > +					   ibuf.host_address,
> > +					   ibuf.device_address);
> >
> >  	if (copy_to_user(argp, &ibuf, sizeof(ibuf)))
> >  		return -EFAULT;
> > @@ -101,9 +101,9 @@ static int gasket_partition_page_table(struct gasket_dev *gasket_dev,
> >  	if (copy_from_user(&ibuf, argp, sizeof(struct gasket_page_table_ioctl)))
> >  		return -EFAULT;
> >
> > -	trace_gasket_ioctl_page_table_data(
> > -		ibuf.page_table_index, ibuf.size, ibuf.host_address,
> > -		ibuf.device_address);
> > +	trace_gasket_ioctl_page_table_data(ibuf.page_table_index, ibuf.size,
> > +					   ibuf.host_address,
> > +					   ibuf.device_address);
> >
> >  	if (ibuf.page_table_index >= gasket_dev->num_page_tables)
> >  		return -EFAULT;
> > --
> > 2.7.4
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20191025232935.GA813%40cristiane-Inspiron-5420.
> >
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.1910260642250.2559%40hadrien.

