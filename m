X-GM-THRID: 7018981355604148224
X-Received: by 2002:a19:c192:: with SMTP id r140mr6504745lff.448.1634657292804;
        Tue, 19 Oct 2021 08:28:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:5c87:: with SMTP id q129ls3523488ljb.3.gmail; Tue, 19
 Oct 2021 08:28:11 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJz8BP2i6JzUtgP6RIQ5PIBNINwY/dwqoPpf+Uztd+3W0X3KnKV5lBWz+A2TNHS2uIsHV1TD
X-Received: by 2002:a2e:bf26:: with SMTP id c38mr7501639ljr.523.1634657291143;
        Tue, 19 Oct 2021 08:28:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634657291; cv=none;
        d=google.com; s=arc-20160816;
        b=qq8lzyG844xCyY9XFlnuiIgDt0pPHI2j4sJ/FRwIdtnB1LDXQ2VaGAd7xQHHJgHQ22
         DQyZ32nnugPXMCUj4bK+cZQOGLEPJHZOcCk1ufxst+YR76ekvIGi+mY4cvgfv1AIIMGm
         yjj+oyqhkKg73ZV0+cqx2PjTt5Zw99CmTyAp1gzEdCId0Bvn+mOVnMwRWnYTcppxzp0v
         vDgInUdSC8iE8U+oEqcgLlHzHmUSWs8Cbh1nIgZJOwZ49uIEVlWyC2h5gcBnLRf0/UTX
         vwxjP6PEk/ZRs00uyVhXL7Tv3NjPhVwSeP4+xXUUhDMKE1hu/2ZYHIuFner8BdlLBlBA
         ihUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=GJcuPBfZJ/L238fjTagmquQe48LcgF/6CR/rPjnc0qQ=;
        b=PADvqhgiebYnNX5MOgbCahQRLqfeWXIcQPZCEz7ieMMUALNPIe5W8laA6JiH0nTyV4
         jqhlagVZQZSQUwD+ApbHtWm8+SaEADTOqVRYrHHc+5v1ewPOdlZewUpfb5Gan8lDT9bm
         7riMqbL/xwcoq4/Kpy8Fzks00BunZ93FYxlRQdte17hpbC120vl6c6FfJo5UYlaBRnCo
         h20eY3VUjf3x+eF/xh0mtOGCx7ewEY9JhM4+OEIYXlCzk+s7MI3xyP6rFD0m47YdUQKf
         yyDt0CmzOJ0FQzrDKeENwmEXpH7hd1OofgJagBIm+999F55En9OBtawQZM1UJl1wwt7C
         uTKg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of alison.schofield@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=alison.schofield@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Return-Path: <alison.schofield@intel.com>
Received: from mga09.intel.com (mga09.intel.com. [134.134.136.24])
        by gmr-mx.google.com with ESMTPS id z12si449182lfd.12.2021.10.19.08.28.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Oct 2021 08:28:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of alison.schofield@intel.com designates 134.134.136.24 as permitted sender) client-ip=134.134.136.24;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of alison.schofield@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=alison.schofield@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
X-IronPort-AV: E=McAfee;i="6200,9189,10142"; a="228424747"
X-IronPort-AV: E=Sophos;i="5.87,164,1631602800"; 
   d="scan'208";a="228424747"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Oct 2021 08:28:07 -0700
X-IronPort-AV: E=Sophos;i="5.87,164,1631602800"; 
   d="scan'208";a="443927982"
Received: from alison-desk.jf.intel.com (HELO alison-desk) ([10.54.74.41])
  by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Oct 2021 08:28:07 -0700
Date: Tue, 19 Oct 2021 08:36:01 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: Karolina Drobnik <karolinadrobnik@gmail.com>,
	Outreachy Linux Kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Help maintain the First Patch Tutorial
Message-ID: <20211019153601.GA451103@alison-desk>
References: <20211014174207.GA426328@alison-desk>
 <c924b4477fa4067b040e9a0d72af3d8eeb882a98.camel@gmail.com>
 <20211018175420.GA446414@alison-desk>
 <YW5jiKHmi3/cjXQW@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YW5jiKHmi3/cjXQW@kroah.com>

On Tue, Oct 19, 2021 at 08:19:52AM +0200, Greg KH wrote:
> On Mon, Oct 18, 2021 at 10:54:20AM -0700, Alison Schofield wrote:
> > On Mon, Oct 18, 2021 at 10:59:42AM +0100, Karolina Drobnik wrote:
> > > Hi Alison,
> > > 
> > > I updated the `get_maintainer.pl` code section and split it up a bit,
> > > hope it's fine. Additionally, I decided to extract the note on
> > > `vc04_services` so it's more visible and add a comment on including the
> > > outreachy list (as a reminder).
> > > 
> > > One thing - should I use double-spaces while editing this wiki? I see
> > > they're used there, I added some in but I wouldn't be surprised if I
> > > missed some.
> > 
> > Is that the double spaces between sentences you are referring too?
> > HA HA - that shows that this writing is dated, because double space
> > between sentences, use to be the standard, but is not anymore ;)
> 
> It is still the standard for plain-text email where your email client
> shows text in fixed-width fonts.  Just like the old typewriters where
> this style was created for.
> 

Greg -

I understand the background.  I had not thought of it in terms of plain
test email, and by extension, patch logs and cover letters.  Is that a
guideline or rule for Linux Patches, or are am I just going down a rat
hole now?

Alison

