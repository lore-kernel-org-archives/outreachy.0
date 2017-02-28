X-GM-THRID: 6392026082663464960
X-Received: by 10.36.39.213 with SMTP id g204mr335416ita.26.1488269931781;
        Tue, 28 Feb 2017 00:18:51 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.59.194 with SMTP id k60ls500466otc.22.gmail; Tue, 28 Feb
 2017 00:18:51 -0800 (PST)
X-Received: by 10.13.220.198 with SMTP id f189mr319571ywe.121.1488269930825;
        Tue, 28 Feb 2017 00:18:50 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id c123si191020pfa.4.2017.02.28.00.18.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Feb 2017 00:18:50 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [37.164.217.185])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 2DAF6905;
	Tue, 28 Feb 2017 08:18:50 +0000 (UTC)
Date: Tue, 28 Feb 2017 09:18:40 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Gargi Sharma <gs051095@gmail.com>
Cc: Julia Lawall <julia.lawall@lip6.fr>, outreachy-kernel@googlegroups.com,
	oleg.drokin@intel.com, andreas.dilger@intel.com,
	jsimmons@infradead.org
Subject: Re: [Outreachy kernel] [PATCH v2] staging: lustre: Replace typedef
 with struct
Message-ID: <20170228081840.GA1035@kroah.com>
References: <1488265307-24641-1-git-send-email-gs051095@gmail.com>
 <alpine.DEB.2.20.1702280805150.2078@hadrien>
 <CAOCi2DEvajT69tumvzBPYQjBBOkVB49FO+paGJSGasY+BZSeyg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAOCi2DEvajT69tumvzBPYQjBBOkVB49FO+paGJSGasY+BZSeyg@mail.gmail.com>
User-Agent: Mutt/1.8.0 (2017-02-23)

On Tue, Feb 28, 2017 at 01:20:59PM +0530, Gargi Sharma wrote:
> On Tue, Feb 28, 2017 at 12:36 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >
> >
> >
> > On Tue, 28 Feb 2017, Gargi Sharma wrote:
> >
> > > As per the Linux kernel coding style guidelines, using typedef for a
> > > structure type is not recommended. Hence, occurences of typedefs have
> > > been removed. To find the occurences of the structures grep was used
> > > and no uses were found.
> >
> > Actually, I'm not sure to understand.� No uses of the structures were
> > found at all?� If so, they should just be dropped.� Or are there uses, but
> > they already have the word "struct" in front of them?
> 
> The first structure "ext_acl_xattr_entry" is used as one of the fields in the�
> other structure "ext_acl_xattr_header". I could not find any uses of the
> structure
> "ext_acl_xattr_header" inside the staging directory. Should I drop these two
> structures then?

I think so, we shouldn't keep around structures that are not actually
used.

Unless the Lustre maintainers are hiding something somewhere else that
uses these?

thanks,

greg k-h

