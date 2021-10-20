X-GM-THRID: 7018981355604148224
X-Received: by 2002:adf:e44c:: with SMTP id t12mr139047wrm.113.1634740973305;
        Wed, 20 Oct 2021 07:42:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:ef8b:: with SMTP id d11ls3060975wro.2.gmail; Wed, 20 Oct
 2021 07:42:51 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy/1YBDCQQ64ZFvCUM1Wco/z4F4JCn5gC+5ahZm7GTmD71MVEpEJEIs/ri3yAp9iGug4WN8
X-Received: by 2002:a5d:5846:: with SMTP id i6mr184094wrf.294.1634740971850;
        Wed, 20 Oct 2021 07:42:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634740971; cv=none;
        d=google.com; s=arc-20160816;
        b=d6HFBS+Dp/QyIE/e8aD7BBQijfJDIsEfqbNN8yTOYSvBDKTeXMR/J6FjXM0ASipPDe
         31RGk21Oh5iL+KtRHlCL5rNRXg7lpjVO0NJmSmG2Vh3ElBWYzNLQ9uqPpPXYBR6cuZA4
         RSpeYH53ZPF3Xas7C9Xd5W8cPKcrd8M4FBKEoon1JLjwcPHO99+staOAp7y7XLX9zEOM
         eZ/PX7i+rDmZEEidxAxDpiA/HHUlzP/kMkoZEdtRLHeZPnAlXlcvAxyEETGnhVYzJ5J4
         iKXL99mVUZpYNKjvwtifuV9eli+/PRKUf4ce4rihLZ0NSKPkklDhxi00Z1huOBT2u6bX
         wNPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=jfkLzSYBxAi0dMDIu6K6FayMeokK9qEzFpa1SRl6NpA=;
        b=ohu2qrZjk5fl+X7z72EdilfOaOfCBRfoPB1tqQcc/31FjnqZ3hbhjmeiJVUMHo6/BN
         w8NnxUKrJ0pXZAnY1ei+UtX3bWi0VV3/f9PVYSWcARsTWtWGRdZZz/LYnjxz6E1aShG1
         JWspzfxvEUqNde2roV43FgB5ltJYI/QBVwgfS8n3BDKccZkjr70/Zc1c9mViAf7pBqOB
         NMQ4yZoabFGbxB/L9hgyYrJ3e0WrVeF7Clqan0OLtiBWPRYmmz+v6qm3sJ3bpFkc/TDV
         0k20Pv4JlJzoDpx9c44SeYTjmMyvxc8odLx1bnkpCB9JoUy4IWIyqljUBNR2zjJDKyWg
         +6tg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of alison.schofield@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=alison.schofield@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Return-Path: <alison.schofield@intel.com>
Received: from mga02.intel.com (mga02.intel.com. [134.134.136.20])
        by gmr-mx.google.com with ESMTPS id h11si174890wrs.3.2021.10.20.07.42.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Oct 2021 07:42:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of alison.schofield@intel.com designates 134.134.136.20 as permitted sender) client-ip=134.134.136.20;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of alison.schofield@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=alison.schofield@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
X-IronPort-AV: E=McAfee;i="6200,9189,10143"; a="215960011"
X-IronPort-AV: E=Sophos;i="5.87,167,1631602800"; 
   d="scan'208";a="215960011"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Oct 2021 07:42:49 -0700
X-IronPort-AV: E=Sophos;i="5.87,167,1631602800"; 
   d="scan'208";a="567584832"
Received: from alison-desk.jf.intel.com (HELO alison-desk) ([10.54.74.41])
  by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Oct 2021 07:42:49 -0700
Date: Wed, 20 Oct 2021 07:50:41 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: Karolina Drobnik <karolinadrobnik@gmail.com>
Cc: Outreachy Linux Kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Help maintain the First Patch Tutorial
Message-ID: <20211020145041.GA455623@alison-desk>
References: <20211014174207.GA426328@alison-desk>
 <c924b4477fa4067b040e9a0d72af3d8eeb882a98.camel@gmail.com>
 <20211018175420.GA446414@alison-desk>
 <YW5jiKHmi3/cjXQW@kroah.com>
 <20211019153601.GA451103@alison-desk>
 <1577825bc2e16cf0132521772b248950de276099.camel@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1577825bc2e16cf0132521772b248950de276099.camel@gmail.com>

On Wed, Oct 20, 2021 at 02:00:12PM +0100, Karolina Drobnik wrote:
> Hi Alison,
> 
> What do you think about my changes? Can I (or you, if you prefer this
> way) update this wiki section?

The info is improved. Add it.
Thanks!
Alison

> 
> 
> Thanks,
> Karolina
> 
> On Tue, 2021-10-19 at 11:04 +0200, Julia Lawall wrote:
> > 
> > 
> > On Tue, 19 Oct 2021, Karolina Drobnik wrote:
> > 
> > > Hi,
> > > 
> > > Thank you very much for your comments. You can find an updated
> > > version
> > > of this section below.
> > 
> > 
> > OK for me.  Thanks!
> > 
> > julia
> 
> 

