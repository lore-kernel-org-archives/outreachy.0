X-GM-THRID: 6663442013681090560
X-Received: by 2002:a17:902:2aab:: with SMTP id j40mr2178438plb.61.1551470468365;
        Fri, 01 Mar 2019 12:01:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:6e02:: with SMTP id j2ls3878775pfc.5.gmail; Fri, 01 Mar
 2019 12:01:07 -0800 (PST)
X-Google-Smtp-Source: APXvYqytHWLhl3qHZsZBFJ8nprxXovJhqTiONsgLYQOuC5qtbZ5NdLJ35J8J0OAYcpefja9FCpqC
X-Received: by 2002:a63:88c1:: with SMTP id l184mr2668238pgd.128.1551470467575;
        Fri, 01 Mar 2019 12:01:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551470467; cv=none;
        d=google.com; s=arc-20160816;
        b=hENraHks6J/Dqi2WnmZ1u+oPLOyBqVGEPUfF55fnMjlkrKRlDQOx/vzN/9aFvBPjR5
         vNZjXGif2mhyXIcgLIJVNdZIbcVsMrkgPyELWLPqZUO47nmRL7hjsy711smdsm9F5EQB
         kOhfLakF2ZpfA9uOtkYnlz8WO1CS3Zg4FKalZLeMvEl5Zau4r2wSNxe/HECnDa4uKRFp
         TRD8Hskq7VnEPzaRkLdYiYyMe3s/yH+9K2FcpjQJWfiI0UDlmUuAC9Qap2/7h0a9Haj+
         YFgQ0cyZa9o2OLXSTQj06b7FxyPJA7vudlwKQ1lyR1/QnxuIxPHVBO/9LjyIS5fmr3iW
         C9Vg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=ZJ69htjMIAH3ZY832W80qUVwvIt0et6QdG/53Fv4ciA=;
        b=hJ43mDC/gkiiWIC1PRWxqMmEQdzfeYVi8nQ0FFMxmz/L/0DtFqhxOZW938oEGUxqGQ
         CRVhJh+Bxdp5Gfz8uY1+hOGvpCGHxPZ4LC5tA/wq6rm1AHxa0p73MizMAd7uGd4VUJ53
         FWcvyIpqIkO0/AJ9/vqtwkuGhpRm7qn+iLgUfOq3hkwjf2WkiyTdtMML/WMCEXjGg0yF
         m4Jfj7V1oSJ2s4M+jdjftCeIAImqNoyuGOBGOSP/RKW0kBnMNUTjWw5gXAoiXL1W0SXI
         ZMcauU49rczy8gL7G+eJnslzyu+lu/6cOQbnvIuzNQ7qm3lhXQPDwRs3EkZDm557DzK5
         85ig==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="sv12D/cS";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id h15si1140994plr.5.2019.03.01.12.01.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 01 Mar 2019 12:01:07 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="sv12D/cS";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id C97C220848;
	Fri,  1 Mar 2019 20:01:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1551470467;
	bh=qlSm/knF/Jm+F4yMuKm9hXD5uDBF1Dru7qgx+0n4mNw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=sv12D/cSI0bxNne1jkh2/TOg89zfruEnumDnTyaJVFKh8NbuO7Ie9OQ4tsA6mx6qj
	 Ushg21atNz7kDCWPe8KatLVtS7HhF50aWQkVmpsBhO8BJJ+3OTSUH6l6bciRGMy4Dd
	 Ww63zyVnSpl4KOfUwy+knxcm7w/YugaNIxxYupdE=
Date: Fri, 1 Mar 2019 21:01:04 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Jules Octave <jbi.octave@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 1/2] staging: mt7621-dma: add SPDX GPL-2.0 or later
 version license identifier
Message-ID: <20190301200104.GA19353@kroah.com>
References: <20190301151801.7886-1-jbi.octave@gmail.com>
 <20190301151801.7886-2-jbi.octave@gmail.com>
 <20190301153935.GA3877@kroah.com>
 <CAOuULM6W1PtuaysLX7=z+nXhXnM35Wyz65Gx++urmrLJcbGe2w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAOuULM6W1PtuaysLX7=z+nXhXnM35Wyz65Gx++urmrLJcbGe2w@mail.gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)

A: http://en.wikipedia.org/wiki/Top_post
Q: Were do I find info about this thing called top-posting?
A: Because it messes up the order in which people normally read text.
Q: Why is top-posting such a bad thing?
A: Top-posting.
Q: What is the most annoying thing in e-mail?

A: No.
Q: Should I include quotations after my reply?


http://daringfireball.net/2007/07/on_top

On Fri, Mar 01, 2019 at 05:38:58PM +0000, Jules Octave wrote:
> Some people say  GPL-2.0+ has deprecated (
> https://www.drupal.org/project/lightning/issues/2938910 ) but I will

That is drupal, not the kernel.

> change it to GPL-2.0+.
> I tried looking  on  https://spdx.org/licenses/

That's a nice place to read as well, but we are using an "older" version
of spdx.

Always read the in-kernel documentation, we write it for a reason :)

Look at Documentation/process/license-rules.rst please, it shows that
you should use the "GPL-2.0+" marking.

thanks,

greg k-h

