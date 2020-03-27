X-GM-THRID: 6807662174396219392
X-Received: by 2002:a65:53cc:: with SMTP id z12mr12054484pgr.399.1585290866269;
        Thu, 26 Mar 2020 23:34:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:bb93:: with SMTP id m19ls6090551pls.6.gmail; Thu, 26
 Mar 2020 23:34:24 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vu46ZQS3rHWxXjVT6NbwVxKg7q+MutocnyMJdVReYu+Y+KgqgTIUpz4PMFQ6MTnH+/tMlDS
X-Received: by 2002:a17:90a:36e5:: with SMTP id t92mr4344470pjb.51.1585290864809;
        Thu, 26 Mar 2020 23:34:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585290864; cv=none;
        d=google.com; s=arc-20160816;
        b=EkccMg1KDQe8AGgRNt9jOVPJlZK1HWX55X3FLIFjlA+pqHSG4LnS2MAUue3Yg/NeWq
         /LigKaC4PXI298Xw/euLyFsTL6h8ysA40C67uO7UdH90noi9Eqb2OYby+cm/IdoLZNV6
         rUzHD5iMY+S1TuMaVOt125QeXG3TJJikzJHfIOjXZiLi0SFqVTlht7E5vJwPFy9sekVr
         J9nmMkeWsvbrWpLhWBjt6alXN5Qle7E9QF1IiQcj6HlEXGuebnDjrxB3gUTRgGsaFTDs
         ZbCH5Q1UWH7ZviNMgUjk6i5QmdJIE4n+5f0OmqhLH3Bw8x4IdlEVCuwzi+HZA27R9mcQ
         rJQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=TVIRAkEw3+w+mr9vQ8oiNroLRkiuyLtNoZgweKVB22w=;
        b=MG5Na5XqyeBJfW4aE5xtNI/1wWX0qT0mcFU2dzEqeiOs1hMjrGNNxAv8I1kNt2s1FP
         2fGnm+4wPR4JciVb8sjSDQJs30aFsS+0/XagMQuZfb/u2Wjxvn1egHRNVnPu6RaJSEEj
         xt4msdCNsdG+JY1S5m1RNjsoYI7TKfr8b15r5vi5WfB8ZS3e2ji9VyurPn+XrGf3bOx1
         fsPbOrlpzPtrsvc8nUa0yHub1oprizz0q+ybX7o+SluzSFefvbnCp/FvoDYh8Jhz1EhQ
         W0LHA0eEKCSRi19DRpabvvA50uVe93ofm1h/II8GQFKZXpQFFNN4ZnINti+JJij3pk0N
         +aog==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="RLr/sxHl";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id w18si412097pfi.4.2020.03.26.23.34.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Mar 2020 23:34:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="RLr/sxHl";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 0FF6320663;
	Fri, 27 Mar 2020 06:34:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1585290864;
	bh=yPMu1/YIe+UvY/qao1gNG1F6g/LaZMY1FNZPicRGQFk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=RLr/sxHladDu7YK0CHsxZ9WObyFJuC33EeMhxBpYsHQzAWX0DsJli2v50NLGdb19c
	 jBxRc2ToSTStTmfglXV6vONj9X7tUaDAyjKKs/E23n9+5AQm6e7xM/FYsUnY13AXci
	 NAtXBTVBaQsLenFsersmNqZw4GeJpGQN3w6XTT40=
Date: Fri, 27 Mar 2020 07:34:21 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: John Wyatt <jbwyatt4@gmail.com>
Cc: Quentin Deslandes <quentin.deslandes@itdev.co.uk>,
	Julia Lawall <julia.lawall@inria.fr>,
	Stefano Brivio <sbrivio@redhat.com>,
	"outreachy-kernel@googlegroups.com" <outreachy-kernel@googlegroups.com>
Subject: Re: [PATCH 1/2] staging: vt6656: remove unneeded variable: ret
Message-ID: <20200327063421.GG1601217@kroah.com>
References: <20200324064545.1832227-1-jbwyatt4@gmail.com>
 <20200324064545.1832227-2-jbwyatt4@gmail.com>
 <20200324100323.GB7693@jiffies>
 <575f10ed4f3be74c2515464220d17e17d9eae8dc.camel@gmail.com>
 <20200325091541.GA15158@jiffies>
 <61efe5ca2f1cb286d697504828b232455f2be44f.camel@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <61efe5ca2f1cb286d697504828b232455f2be44f.camel@gmail.com>

On Thu, Mar 26, 2020 at 04:26:13PM -0700, John Wyatt wrote:
> On Wed, 2020-03-25 at 09:15 +0000, Quentin Deslandes wrote:
> > On 03/24/20 17:32:01, John Wyatt wrote:
> > > I do not know what these functions do.
> > > 
> > > There is no function documentation for:
> > > vnt_exit_deep_sleep
> > > vnt_mac_reg_bits_on
> > > vnt_mac_reg_bits_off
> > 
> > I understand, however discarding the return value of functions that
> > could
> > fail is not the best thing to do. Whatever those 3 functions are
> > doing,
> > you should rely on their return code, and if one of those fail,
> > vnt_radio_power_on() should fail too.
> > 
> > > I am a new kernel developer intern with the Outreachy program. I am
> > > trying to fix a style issue reported by Coccinelle. I do not have
> > > that
> > > much experience with writing drivers yet.
> > 
> > Don't worry, I'm not that experienced either. If my request is out of
> > scope for an Outreachy mentee, a more experienced contributor will
> > pop
> > in the discussion.
> 
> To any of the Outreachy mentors please advise on what to do.
> 
> I was asked by Greg Kroah-Hartman to make this patch set, but Quentin
> Deslandes asked to return undocumented return codes for this patch to
> solve this coccinelle issue.

What do you mean by "undocumented return codes"?  Just pick an error
value that you think matches what went wrong and try that.  Worst thing
is we review the patch and tell you to pick a different one :)

thanks,

greg k-h

