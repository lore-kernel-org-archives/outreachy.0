X-GM-THRID: 6805867897863274496
X-Received: by 2002:a63:7a1a:: with SMTP id v26mr3136015pgc.152.1584622071007;
        Thu, 19 Mar 2020 05:47:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:3e0c:: with SMTP id l12ls1534504pga.7.gmail; Thu, 19 Mar
 2020 05:47:49 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vspMNxeRZKEvYpl9HNIGtvgLzmnXf1vFKtrrVzTN/Ihll9kg+VzOAOdv1hnu5K9cFVEE05B
X-Received: by 2002:a63:b91d:: with SMTP id z29mr3385473pge.52.1584622069239;
        Thu, 19 Mar 2020 05:47:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584622069; cv=none;
        d=google.com; s=arc-20160816;
        b=vZx9DVmwk3uAoZ5Kwd1Tzojnq9lzAlpDUK7In7dUx8qd2ATdwWV4rs59lpdp16GzCT
         wkYRdgZIV3tpDe/fVhDAvDriZoH4OK2JYEKQBClsYXiTkArifktpdnbX+y6mQSB96FFq
         GiUDdBP9R5TKy3pDEpRyC3MlDdpqQqfZxhZNfv5LF7Oqgo4CnnpSuZrS56Y9izBn3ITw
         IJOXjbkxkTBybgx0cxRexfI7sc0eUfT79JISdYNXhFTBKqRhfIy7zYSYZuXPAZIHVL30
         OUfc1oPSCoppMEk3Por29RsnyWUuxAtF7TdAbjcEGOyq4l6RMzMYbUuIejVTO8LXQzKa
         uAWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=du2n3esCWvVzjZfB2mAS0Wc2eyLa+dLI1r5Madj0ESw=;
        b=VmF+F6WNodAHBStWHykFy194sHtW3qw2M2aoIVVrvxX68wKUPP53n/DcGkdK7mrf5r
         uy8nlXHqXv3f1PgMAYiqnDnEzP0S9UaMrzKzTJnAcLAUkXTqMECIMOyg37GTQN4r5t/0
         Ur7184K7ecS226rBW1kxEP1FYaKqENP/h4AwL0sA2F1QU8X6gWTNku48gILXqejrSyP3
         xYlh/JUxIcpyvVr9hD+LRaLY06PQFZpRuC+vkHFZUEe6Z0dBI3rMu8Xh48noxCq0XXFr
         OnPQ3crit0hdMBEwdKh/t7BCC2QLo3BQgHrzYT5fW6Hpv+iJdNzCphfKk4M6Inoja3Nf
         F6ZQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Ess3RBq5;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 74si151005pfy.0.2020.03.19.05.47.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Mar 2020 05:47:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Ess3RBq5;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 71F1520722;
	Thu, 19 Mar 2020 12:47:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1584622068;
	bh=DAr0YstcaQ7DmYCV7F8g+uHjEKQCugbh1DYjL0SpFSw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Ess3RBq5sNRYQy1QZf3FO8HW9CsPJaAJpnUla9LQA264PWaw4es8M6cfp3ruO0UY0
	 r9X8ZpBX3ZNlnoW96vnOdtBGCiJYWe5CK8U6bN4WcQ0RR2ZAuyhfjw4SRLedpr7mwU
	 BTlVV7ZKbWA6/NjnqHsYzcOL2t065RDUOWii9Uy4=
Date: Thu, 19 Mar 2020 13:47:46 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: R Veera Kumar <vkor@vkten.in>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Re: [PATCH v2 0/4] Correction of typos in
 comments
Message-ID: <20200319124746.GA3955966@kroah.com>
References: <cover.1584517384.git.vkor@vkten.in>
 <20200319121407.GA3802220@kroah.com>
 <20200319124432.GA4276@tulip.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200319124432.GA4276@tulip.local>

On Thu, Mar 19, 2020 at 06:14:33PM +0530, R Veera Kumar wrote:
> On Thu, Mar 19, 2020 at 01:14:07PM +0100, Greg Kroah-Hartman wrote:
> > On Thu, Mar 19, 2020 at 04:26:37PM +0530, R Veera Kumar wrote:
> > > Correct typos in comments.
> > > Misspellings found using checkpatch.pl
> > > 
> > > ---
> > > R Veera Kumar (4):
> > >   staging: rtl8723bs: os_dep: Correct typos in comments
> > >   staging: rtl8723bs: os_dep: Correct typos in comments
> > >   staging: rtl8723bs: os_dep: Correct typo in comment
> > >   staging: rtl8723bs: os_dep: Correct typo in comment
> > 
> > You need unique subject lines, please.
> > 
> 
> I do not know what to put.
> Should I put the file names in subject. Someone told not to do so.
> All the four patches correct one or two single letter misspellings
> in one or two comments.
> 
> Can you give me a suggestion.

That is up to you.  If you are not doing something unique in each
individual patch, then why did you think to break them up?  If they are
not doing the same exact thing, then you should be able to describe them
in a unique way.

good luck!

greg k-h

