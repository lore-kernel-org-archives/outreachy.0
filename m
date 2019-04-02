X-GM-THRID: 6674971503318007808
X-Received: by 2002:a67:ed05:: with SMTP id l5mr8469518vsp.23.1554184054389;
        Mon, 01 Apr 2019 22:47:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1f:3c51:: with SMTP id j78ls1972365vka.1.gmail; Mon, 01 Apr
 2019 22:47:33 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxrJh8J5eemX06YBDxCqCTYEcG9fOoyx2gc7bBx8qYSf7d5y9tRD+LROdFyCQ+yy4fgTso8
X-Received: by 2002:a1f:6095:: with SMTP id u143mr7825025vkb.13.1554184053732;
        Mon, 01 Apr 2019 22:47:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554184053; cv=none;
        d=google.com; s=arc-20160816;
        b=FmJT+Z0OYXT3YDzHGh0OMcvJlgumj1o29ho5O1dcFDeENgcHjd7myU4XUEfQO1YWLk
         kER70HjXG48mt/aWpJpW2FQdJKqIDuZuWUbqZ8XwCei9vCPD/8bmSoh7K3LfpzHF0KBa
         +tao3qhjPVIlv98y9fj0L54wdRv4vZ0gn49uXwQ8CX3SF1HtB9Y+cjqEtsN4RG/hL+bp
         aiGsTZyn7FfWaf8UHEa3blmWL3Z4fph+o91FbPyiUFIamR/busRdEwNNTYj0U+IAjmAh
         07aDFonkmmrqzeSPAsKJZK9Go/COC9O7V77fqyk2Djs7bWlFlJ7mI4h7HZT15jTfhPHN
         Mzmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=dBLTnin0axFBfwmmFgW9JyOY+cNUlOLiIU0aRP+u1Jg=;
        b=ahcQRe6Q2ntAYQonx33MTHr6Vr83dy1pSs329cOAIJ3CRIaaBAJgAjIrOMKgCIyGbj
         u9S9Rp1GWx1WJwneSFV7RRWPRUBNXpvCSRg4vFOO7vpA+SCmlwAAuGqdR0OyzouMGPy0
         rflbKHiyz6A/fy7FVQ/h5BAzaRtdczwcizr2i9DSX19i0e/t3HXb5zfl+UQc7SFNw3/j
         wOpnAB3mBo3lEssCMfxva91hySBhGD0pAJ3wyD8tz6o4MP5dn2+8/QZy3//zROpjV+D+
         QoXGV8m9XxAHFpElcvZX5n+3tmO2i4C5fVWi0QxXeSomR8KprJZ+GcRKkMTVl3rRq6DQ
         W/hQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="Vt05xwO/";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id o80si663534vke.1.2019.04.01.22.47.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Apr 2019 22:47:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="Vt05xwO/";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 1B1E720830;
	Tue,  2 Apr 2019 05:47:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1554184052;
	bh=qNb4olVbJ5j+aQZ7xG03xbbVehHGUhNwNZOtcRKhGIo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Vt05xwO/rFa4Nm4Q9Dk38MnR5SKYb6BsEFZOzw/spvn0x3gdwUad2W0cF67y42Bt4
	 je4+7mmkYenGH9TLW8FHwKXKXQNqjpELomSQiIbeTRqvv4uHg+S+rfpZgaKM5xAFuW
	 4pUOfh2GT6VLeC7sDQqCXgltzuFBQNB/4Nr9LrYQ=
Date: Tue, 2 Apr 2019 07:47:26 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Madhumthia Prabakaran <madhumithabiw@gmail.com>,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8192u: Use list_entry in
 ieee80211_wx_sync_scan_wq()
Message-ID: <20190402054726.GA14075@kroah.com>
References: <20190401165827.18731-1-madhumithabiw@gmail.com>
 <alpine.DEB.2.21.1904012138510.2530@hadrien>
 <20190401215305.GB11046@madhuleo>
 <alpine.DEB.2.21.1904020742260.2664@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1904020742260.2664@hadrien>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Tue, Apr 02, 2019 at 07:43:44AM +0200, Julia Lawall wrote:
> 
> 
> On Mon, 1 Apr 2019, Madhumthia Prabakaran wrote:
> 
> > On Mon, Apr 01, 2019 at 09:39:32PM +0200, Julia Lawall wrote:
> > >
> > >
> > > On Mon, 1 Apr 2019, Madhumitha Prabakaran wrote:
> > >
> > > > Use list_entry() instead of container_of() in function,
> > > > ieee80211_wx_sync_scan_wq(), as the function to return the
> > > > parent structure containing any list_head is defined to use
> > > > list_entry() as per the definition in include/linux/list.h#L348.
> > >
> > > list_entry is for lists.  The wx_sync_scan_wq field has type work_struct.
> >
> > Thats true. Though the wx_sync_scan_wq has type work_struct, the structure
> > work_struct has a member of struct list_head in it.
> 
> The field name itself should have type list_head.  You can write your
> Coccinelle script to check for this.  Since structure types are often
> defined in header files, you may need to use the command line argument
> --all-includes (try to include all mentioned header files).

Yes, do not use list_entry() for things that are not a list.  I'll go
drop this patch from my tree now.

thanks,

greg k-h

