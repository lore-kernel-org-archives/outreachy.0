X-GM-THRID: 6523503828984135680
X-Gmail-Labels: Topic type: DISCUSSION
X-Received: by 10.28.3.11 with SMTP id 11mr1683156wmd.4.1518873922559;
        Sat, 17 Feb 2018 05:25:22 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.45.2 with SMTP id t2ls28278wmt.2.canary-gmail; Sat, 17 Feb
 2018 05:25:21 -0800 (PST)
X-Google-Smtp-Source: AH8x224W8S4fFzq02Xxot5RxXL5nHIxrfQ0eXfW9GSzttAIBzl4ASn9JQrhGQE+gxyW0tJB0iOQ7
X-Received: by 10.28.156.12 with SMTP id f12mr1652030wme.4.1518873921130;
        Sat, 17 Feb 2018 05:25:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1518873921; cv=none;
        d=google.com; s=arc-20160816;
        b=n52MQrqkEpqDI4MYFGWIMMLWbdOROrUW6G8B5YXleeP7mVQlah3Ae/4cwVt5nChbl6
         /j1sLkv2K4SHK4YqtLz0092jpwbRLwP+1MCxuXAkuSc4sLR2ghU+26HiSmrAFR+8yRSn
         ytqmk6Yg0+xCctTvQH0KsuqHeE0t6x/Xe5PYEqu2P84D/UnGk+y1z8s6BE+wvkIe8iIf
         KFk9hisLqTv9fqbTBoF6lBmG/w1eXrj5yWOXyWZu4LjMzdxp8d2k2ICZxMp/fjJg2P33
         IPrrlLDaJO17R/OMVjacpE8yfu3MRwfM2fyDtUElTJwJw3eQ02Th14dX6RvfKRcyUIQo
         4PkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=gDXlTQTP7kG+/vzBu+M8Hj7mJko21bN/KONeHQTF5Rc=;
        b=omC0QXCiafI96KuB4TYzzFHaLKOoRPu5BD1FZlwDsFgYhyH3lFqx+xvHBUthZGs3qf
         EwhO8r7y8yrrjE4523tj++qZQ/yZvOE48S5uNA3oYREaa/e+nc+DkMs7hUXYFGiuk//d
         Jkhn69BDJwkVqiHA9VFWtpPKygvkAbEK1N99wyF7iyFf6HYKY6T8cAlYwEkcY2SH+V47
         gHPgS2xklYymOfzdFF9OE13/Zf0NTLGqks37KQ9jDgc1TrM2p/0kU3wFztHiS8fCNx54
         LTSHk3EDAWn5KaSZqI4nhU+fboeFlZ4BOBJnlPG8eo5b+Ju4UVYhwQiprP4VaMdoNwej
         L9tw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 200si325241wml.2.2018.02.17.05.25.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Feb 2018 05:25:21 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [205.185.223.213])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 66A891032;
	Sat, 17 Feb 2018 13:25:19 +0000 (UTC)
Date: Sat, 17 Feb 2018 14:19:50 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Dafna Hirschfeld <dafna3@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] fixing warning "else is not generally useful
 after a break or return"
Message-ID: <20180217131950.GA28194@kroah.com>
References: <f8e55043-fbe6-4046-baee-c3ca4e8d3c8e@googlegroups.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f8e55043-fbe6-4046-baee-c3ca4e8d3c8e@googlegroups.com>
User-Agent: Mutt/1.9.3 (2018-01-21)

On Sat, Feb 17, 2018 at 04:46:35AM -0800, Dafna Hirschfeld wrote:
> Hi,
> I see this warning "else is not generally useful after a break or return":
> 
> #532: FILE: drivers/staging/vt6655/rxtx.c:532:
> +                       return buf->duration_a;
> +               } else {
> 
> So the standard is to remove the "else" line when it is not necessary ? 
> 
> In the function s_uFillDataHead 
> <https://elixir.bootlin.com/linux/v3.4/source/drivers/staging/vt6655/rxtx.c#L712> there 
> are more "else" statements that are redundant, for example this 

Note, the v3.4 kernel is _very_ old (it was released back in May of
2012).  Please look at the most recent kernel source tree.

That being said, yes, removing the else line after a return statement is
a good thing to do.

thanks,

greg k-h

