X-GM-THRID: 6663210271515869184
X-Received: by 2002:aed:2ac3:: with SMTP id t61mr1990483qtd.37.1551427170192;
        Thu, 28 Feb 2019 23:59:30 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:aa9d:: with SMTP id f29ls3104051qvb.4.gmail; Thu, 28 Feb
 2019 23:59:29 -0800 (PST)
X-Google-Smtp-Source: APXvYqwLsd5hXDBln+yo7+Q4D5LDCbnbWHVJgSRa7vYuvSOFS0Jqrc1xD0s6eciZI51CZSK49UxP
X-Received: by 2002:a0c:89d2:: with SMTP id 18mr1966001qvs.9.1551427169696;
        Thu, 28 Feb 2019 23:59:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551427169; cv=none;
        d=google.com; s=arc-20160816;
        b=F8zEUdFIRIqJcpaQzzsutmgt7rgDQasEKPzwlvkUwGrZya1zaFvrzV3rtBpA9Ydbv7
         bB89doYBxc8RdHT4gUXvxvGcfGJnBJ1IL8Otr57slGo+XBJIYjSUf3ZNdW1eiapzO9SY
         J0rZOj82qa6FqnJd2wCxdzKjN4I7EYxz2px3mlJ9msNkUQPCO6bTlrkhH0cB91wcwxlp
         bAnktEQFV/y9sI37hRr3DDNCe2i1lbfn0U3YoLvZrkqo+Z2Aw6WFmC219ur248hFL+lu
         vg8uXccFe/VzbMQn4Wlh+cOrnMIf3MvUgdQsNafsN4SMhiQMBlcg8OKAgCpRJJxz0UJ9
         xX9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=u5DM2v8LAVBlIILnPrV23bnZ44f0vSwhzDlT2mTO1Z8=;
        b=TDmI1Zy3VM2pLbjR66T92jUAfLrLsUhrH/LaS1DAg7UOCKy5p8qT9H/A5+nlMBB//Z
         bFwM33izYcdrOECNKt5UiOSRhnxsT66nqELMqKpZuFPsBwJXPG3kAO7aWpek3fYbeu2S
         u90A5UqzfeOoM1lQYNPtnWKAeNvGfHpTMlEhIE2zLEK2f8XoLREY18vhGmu7KB3zHXXw
         sjaiFep0bXJk8eWa5c9wUvbquuVcklzO3lyKY87URT+cATYTwsXbCdE2VsxJe158FqVU
         H4ZpV6R/eL4r1gnDkzCZEVOJODFvGgnbMos9UkKUldkS0aWmF+wROKPpqajMmuBDkw59
         1bpg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=BK1Zhxj7;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p1si1116354qkg.3.2019.02.28.23.59.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Feb 2019 23:59:29 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=BK1Zhxj7;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 240902087E;
	Fri,  1 Mar 2019 07:59:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1551427168;
	bh=LmZr6tGmTHyO6Hh6PEHSCv7fnvAUqZIdf5R+cyA6zvQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BK1Zhxj7xUaXYRAdGgMsw0prtbjv5RZI9Ksqehw3U0ZEH0cxctYxJbt9yQlL5ftz/
	 BF2katTtfWBSenb4nKEwbSyEqN/1UPUqmhyeXr46BGvmMLwD3P+Z/ClGfu9xCHKazv
	 Llo05aRaOmb+WaFhOZrBUOB8RJNGzLxC0hMr5tNY=
Date: Fri, 1 Mar 2019 08:59:26 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Jules Irenge <jbi.octave@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [v3 1/2] staging: mt7621-eth: Add SPDX license identifier
Message-ID: <20190301075926.GC13643@kroah.com>
References: <20190301001417.16556-1-jbi.octave@gmail.com>
 <20190301001417.16556-2-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190301001417.16556-2-jbi.octave@gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Fri, Mar 01, 2019 at 12:14:16AM +0000, Jules Irenge wrote:
> Add the SPDX GPL-2.0 license identifier to fix checkpatch.pl warning
> Issue reported by checkpatch.pl warning:
> "WARNING: Missing or malformed SPDX-License-Identifier tag in line 1"
> 
> Signed-off-by: Jules Irenge <jbi.octave@gmail.com>

This is fine, but where did the PATCH go in the subject line?

thanks,

greg k-h

